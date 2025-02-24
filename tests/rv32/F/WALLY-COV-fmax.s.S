///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fmax.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.221899
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


# Testcase cmp_gpr_hazard raw test
fmax.s f7, f22, f17 # perform first operation
fmax.s f1, f7, f15 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmax.s f14, f25, f19 # perform first operation
fmax.s f1, f16, f14 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmax.s f24, f29, f25 # perform first operation
fmax.s f24, f6, f23 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmax.s f7, f6, f3 # perform first operation
fmax.s f7, f24, f15 # perform second operation

# Testcase cmp_gpr_hazard war test
fmax.s f4, f14, f8 # perform first operation
fmax.s f14, f23, f14 # perform second operation

# Testcase cmp_gpr_hazard war test
fmax.s f30, f9, f10 # perform first operation
fmax.s f10, f15, f19 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x6b157473 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02e36168 # load x3 with value 0x02e36168
sw x3, 0(x2) # store 0x02e36168 in memory
flw f0, 0(x2) # load 0x02e36168 from memory into f0
li x3, 0x30913940 # load x3 with value 0x30913940
sw x3, 0(x2) # store 0x30913940 in memory
flw f28, 0(x2) # load 0x30913940 from memory into f28
fmax.s f0, f0, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x8d92431a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb29eb632 # load x3 with value 0xb29eb632
sw x3, 0(x2) # store 0xb29eb632 in memory
flw f1, 0(x2) # load 0xb29eb632 from memory into f1
li x3, 0xbabe6b52 # load x3 with value 0xbabe6b52
sw x3, 0(x2) # store 0xbabe6b52 in memory
flw f9, 0(x2) # load 0xbabe6b52 from memory into f9
fmax.s f1, f1, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x6d742e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77fbaf4a # load x3 with value 0x77fbaf4a
sw x3, 0(x2) # store 0x77fbaf4a in memory
flw f2, 0(x2) # load 0x77fbaf4a from memory into f2
li x3, 0xa63b9200 # load x3 with value 0xa63b9200
sw x3, 0(x2) # store 0xa63b9200 in memory
flw f26, 0(x2) # load 0xa63b9200 from memory into f26
fmax.s f2, f2, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xa02a414e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd78038bd # load x3 with value 0xd78038bd
sw x3, 0(x2) # store 0xd78038bd in memory
flw f3, 0(x2) # load 0xd78038bd from memory into f3
li x3, 0x82fe3957 # load x3 with value 0x82fe3957
sw x3, 0(x2) # store 0x82fe3957 in memory
flw f24, 0(x2) # load 0x82fe3957 from memory into f24
fmax.s f3, f3, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x3e2b10ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61006b78 # load x3 with value 0x61006b78
sw x3, 0(x2) # store 0x61006b78 in memory
flw f4, 0(x2) # load 0x61006b78 from memory into f4
li x3, 0xb8231ec8 # load x3 with value 0xb8231ec8
sw x3, 0(x2) # store 0xb8231ec8 in memory
flw f12, 0(x2) # load 0xb8231ec8 from memory into f12
fmax.s f4, f4, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x453b04ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd791c65 # load x3 with value 0xdd791c65
sw x3, 0(x2) # store 0xdd791c65 in memory
flw f5, 0(x2) # load 0xdd791c65 from memory into f5
li x3, 0xfcfb6109 # load x3 with value 0xfcfb6109
sw x3, 0(x2) # store 0xfcfb6109 in memory
flw f14, 0(x2) # load 0xfcfb6109 from memory into f14
fmax.s f5, f5, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xa88c45be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa397d4dd # load x3 with value 0xa397d4dd
sw x3, 0(x2) # store 0xa397d4dd in memory
flw f6, 0(x2) # load 0xa397d4dd from memory into f6
li x3, 0xc3e1a7ba # load x3 with value 0xc3e1a7ba
sw x3, 0(x2) # store 0xc3e1a7ba in memory
flw f21, 0(x2) # load 0xc3e1a7ba from memory into f21
fmax.s f6, f6, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xc2cb8702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f15c9fe # load x3 with value 0x9f15c9fe
sw x3, 0(x2) # store 0x9f15c9fe in memory
flw f7, 0(x2) # load 0x9f15c9fe from memory into f7
li x3, 0xfc7f8a5b # load x3 with value 0xfc7f8a5b
sw x3, 0(x2) # store 0xfc7f8a5b in memory
flw f27, 0(x2) # load 0xfc7f8a5b from memory into f27
fmax.s f7, f7, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xe6de0ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fc5f12d # load x3 with value 0x0fc5f12d
sw x3, 0(x2) # store 0x0fc5f12d in memory
flw f8, 0(x2) # load 0x0fc5f12d from memory into f8
li x3, 0x8c844609 # load x3 with value 0x8c844609
sw x3, 0(x2) # store 0x8c844609 in memory
flw f6, 0(x2) # load 0x8c844609 from memory into f6
fmax.s f8, f8, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xa4adc3b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda84b673 # load x3 with value 0xda84b673
sw x3, 0(x2) # store 0xda84b673 in memory
flw f9, 0(x2) # load 0xda84b673 from memory into f9
li x3, 0x651166dd # load x3 with value 0x651166dd
sw x3, 0(x2) # store 0x651166dd in memory
flw f20, 0(x2) # load 0x651166dd from memory into f20
fmax.s f9, f9, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xd114f466 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d2e310a # load x3 with value 0x7d2e310a
sw x3, 0(x2) # store 0x7d2e310a in memory
flw f10, 0(x2) # load 0x7d2e310a from memory into f10
li x3, 0x8d41f747 # load x3 with value 0x8d41f747
sw x3, 0(x2) # store 0x8d41f747 in memory
flw f31, 0(x2) # load 0x8d41f747 from memory into f31
fmax.s f10, f10, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x3fc5daa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf39112d # load x3 with value 0xcf39112d
sw x3, 0(x2) # store 0xcf39112d in memory
flw f11, 0(x2) # load 0xcf39112d from memory into f11
li x3, 0xe222c619 # load x3 with value 0xe222c619
sw x3, 0(x2) # store 0xe222c619 in memory
flw f20, 0(x2) # load 0xe222c619 from memory into f20
fmax.s f11, f11, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x3e4b96fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x306d649f # load x3 with value 0x306d649f
sw x3, 0(x2) # store 0x306d649f in memory
flw f12, 0(x2) # load 0x306d649f from memory into f12
li x3, 0xa9d16752 # load x3 with value 0xa9d16752
sw x3, 0(x2) # store 0xa9d16752 in memory
flw f3, 0(x2) # load 0xa9d16752 from memory into f3
fmax.s f12, f12, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xc5b13f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17134ad1 # load x3 with value 0x17134ad1
sw x3, 0(x2) # store 0x17134ad1 in memory
flw f13, 0(x2) # load 0x17134ad1 from memory into f13
li x3, 0x6cc67591 # load x3 with value 0x6cc67591
sw x3, 0(x2) # store 0x6cc67591 in memory
flw f12, 0(x2) # load 0x6cc67591 from memory into f12
fmax.s f13, f13, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xf1b9603c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35e6e9b5 # load x3 with value 0x35e6e9b5
sw x3, 0(x2) # store 0x35e6e9b5 in memory
flw f14, 0(x2) # load 0x35e6e9b5 from memory into f14
li x3, 0xf3e099b1 # load x3 with value 0xf3e099b1
sw x3, 0(x2) # store 0xf3e099b1 in memory
flw f6, 0(x2) # load 0xf3e099b1 from memory into f6
fmax.s f14, f14, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x2d719850 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fadec5f # load x3 with value 0x7fadec5f
sw x3, 0(x2) # store 0x7fadec5f in memory
flw f15, 0(x2) # load 0x7fadec5f from memory into f15
li x3, 0xce43ca0f # load x3 with value 0xce43ca0f
sw x3, 0(x2) # store 0xce43ca0f in memory
flw f31, 0(x2) # load 0xce43ca0f from memory into f31
fmax.s f15, f15, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x0e690495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd780ee17 # load x3 with value 0xd780ee17
sw x3, 0(x2) # store 0xd780ee17 in memory
flw f16, 0(x2) # load 0xd780ee17 from memory into f16
li x3, 0x5365ebc0 # load x3 with value 0x5365ebc0
sw x3, 0(x2) # store 0x5365ebc0 in memory
flw f6, 0(x2) # load 0x5365ebc0 from memory into f6
fmax.s f16, f16, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x88515c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73d2555d # load x3 with value 0x73d2555d
sw x3, 0(x2) # store 0x73d2555d in memory
flw f17, 0(x2) # load 0x73d2555d from memory into f17
li x3, 0x5ce61431 # load x3 with value 0x5ce61431
sw x3, 0(x2) # store 0x5ce61431 in memory
flw f18, 0(x2) # load 0x5ce61431 from memory into f18
fmax.s f17, f17, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x1211ab0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed2f2e7a # load x3 with value 0xed2f2e7a
sw x3, 0(x2) # store 0xed2f2e7a in memory
flw f18, 0(x2) # load 0xed2f2e7a from memory into f18
li x3, 0x9e85b884 # load x3 with value 0x9e85b884
sw x3, 0(x2) # store 0x9e85b884 in memory
flw f17, 0(x2) # load 0x9e85b884 from memory into f17
fmax.s f18, f18, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xf0a09444 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2f19dd1 # load x3 with value 0xe2f19dd1
sw x3, 0(x2) # store 0xe2f19dd1 in memory
flw f19, 0(x2) # load 0xe2f19dd1 from memory into f19
li x3, 0x04df3079 # load x3 with value 0x04df3079
sw x3, 0(x2) # store 0x04df3079 in memory
flw f31, 0(x2) # load 0x04df3079 from memory into f31
fmax.s f19, f19, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x093c12fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e050dc4 # load x3 with value 0x0e050dc4
sw x3, 0(x2) # store 0x0e050dc4 in memory
flw f20, 0(x2) # load 0x0e050dc4 from memory into f20
li x3, 0x96a776cc # load x3 with value 0x96a776cc
sw x3, 0(x2) # store 0x96a776cc in memory
flw f26, 0(x2) # load 0x96a776cc from memory into f26
fmax.s f20, f20, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xf68126bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e220ea # load x3 with value 0xa6e220ea
sw x3, 0(x2) # store 0xa6e220ea in memory
flw f21, 0(x2) # load 0xa6e220ea from memory into f21
li x3, 0x64058443 # load x3 with value 0x64058443
sw x3, 0(x2) # store 0x64058443 in memory
flw f20, 0(x2) # load 0x64058443 from memory into f20
fmax.s f21, f21, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x6607e0a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e473a31 # load x3 with value 0x1e473a31
sw x3, 0(x2) # store 0x1e473a31 in memory
flw f22, 0(x2) # load 0x1e473a31 from memory into f22
li x3, 0x5bfc18b4 # load x3 with value 0x5bfc18b4
sw x3, 0(x2) # store 0x5bfc18b4 in memory
flw f28, 0(x2) # load 0x5bfc18b4 from memory into f28
fmax.s f22, f22, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xfb4633aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3d07224 # load x3 with value 0xa3d07224
sw x3, 0(x2) # store 0xa3d07224 in memory
flw f23, 0(x2) # load 0xa3d07224 from memory into f23
li x3, 0xb1973f6c # load x3 with value 0xb1973f6c
sw x3, 0(x2) # store 0xb1973f6c in memory
flw f21, 0(x2) # load 0xb1973f6c from memory into f21
fmax.s f23, f23, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x0bdcb45a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54cf0054 # load x3 with value 0x54cf0054
sw x3, 0(x2) # store 0x54cf0054 in memory
flw f24, 0(x2) # load 0x54cf0054 from memory into f24
li x3, 0x500f04b9 # load x3 with value 0x500f04b9
sw x3, 0(x2) # store 0x500f04b9 in memory
flw f15, 0(x2) # load 0x500f04b9 from memory into f15
fmax.s f24, f24, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x6e4159a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4797e2d5 # load x3 with value 0x4797e2d5
sw x3, 0(x2) # store 0x4797e2d5 in memory
flw f25, 0(x2) # load 0x4797e2d5 from memory into f25
li x3, 0xd18c4352 # load x3 with value 0xd18c4352
sw x3, 0(x2) # store 0xd18c4352 in memory
flw f12, 0(x2) # load 0xd18c4352 from memory into f12
fmax.s f25, f25, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xfa97f58e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x598b50b2 # load x3 with value 0x598b50b2
sw x3, 0(x2) # store 0x598b50b2 in memory
flw f26, 0(x2) # load 0x598b50b2 from memory into f26
li x3, 0x34e6618d # load x3 with value 0x34e6618d
sw x3, 0(x2) # store 0x34e6618d in memory
flw f19, 0(x2) # load 0x34e6618d from memory into f19
fmax.s f26, f26, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x30b0bef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72d2f78e # load x3 with value 0x72d2f78e
sw x3, 0(x2) # store 0x72d2f78e in memory
flw f27, 0(x2) # load 0x72d2f78e from memory into f27
li x3, 0x8b00849e # load x3 with value 0x8b00849e
sw x3, 0(x2) # store 0x8b00849e in memory
flw f23, 0(x2) # load 0x8b00849e from memory into f23
fmax.s f27, f27, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xd7ffc377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb99370e # load x3 with value 0xbb99370e
sw x3, 0(x2) # store 0xbb99370e in memory
flw f28, 0(x2) # load 0xbb99370e from memory into f28
li x3, 0x7036b9d7 # load x3 with value 0x7036b9d7
sw x3, 0(x2) # store 0x7036b9d7 in memory
flw f2, 0(x2) # load 0x7036b9d7 from memory into f2
fmax.s f28, f28, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x6488c24f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb647e7ff # load x3 with value 0xb647e7ff
sw x3, 0(x2) # store 0xb647e7ff in memory
flw f29, 0(x2) # load 0xb647e7ff from memory into f29
li x3, 0x881ae386 # load x3 with value 0x881ae386
sw x3, 0(x2) # store 0x881ae386 in memory
flw f8, 0(x2) # load 0x881ae386 from memory into f8
fmax.s f29, f29, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x1d59b09e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ab3315e # load x3 with value 0x0ab3315e
sw x3, 0(x2) # store 0x0ab3315e in memory
flw f30, 0(x2) # load 0x0ab3315e from memory into f30
li x3, 0x450de459 # load x3 with value 0x450de459
sw x3, 0(x2) # store 0x450de459 in memory
flw f26, 0(x2) # load 0x450de459 from memory into f26
fmax.s f30, f30, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x0a4cae98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0dc5d157 # load x3 with value 0x0dc5d157
sw x3, 0(x2) # store 0x0dc5d157 in memory
flw f31, 0(x2) # load 0x0dc5d157 from memory into f31
li x3, 0xc7accfaf # load x3 with value 0xc7accfaf
sw x3, 0(x2) # store 0xc7accfaf in memory
flw f29, 0(x2) # load 0xc7accfaf from memory into f29
fmax.s f31, f31, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x0bfc2f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc784fb62 # load x3 with value 0xc784fb62
sw x3, 0(x2) # store 0xc784fb62 in memory
flw f11, 0(x2) # load 0xc784fb62 from memory into f11
li x3, 0x6c3b560c # load x3 with value 0x6c3b560c
sw x3, 0(x2) # store 0x6c3b560c in memory
flw f0, 0(x2) # load 0x6c3b560c from memory into f0
fmax.s f0, f11, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xabf551ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6fa2e1a6 # load x3 with value 0x6fa2e1a6
sw x3, 0(x2) # store 0x6fa2e1a6 in memory
flw f16, 0(x2) # load 0x6fa2e1a6 from memory into f16
li x3, 0x6d29d134 # load x3 with value 0x6d29d134
sw x3, 0(x2) # store 0x6d29d134 in memory
flw f1, 0(x2) # load 0x6d29d134 from memory into f1
fmax.s f1, f16, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xa2100915 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57cfb39b # load x3 with value 0x57cfb39b
sw x3, 0(x2) # store 0x57cfb39b in memory
flw f15, 0(x2) # load 0x57cfb39b from memory into f15
li x3, 0x5c3ba93b # load x3 with value 0x5c3ba93b
sw x3, 0(x2) # store 0x5c3ba93b in memory
flw f2, 0(x2) # load 0x5c3ba93b from memory into f2
fmax.s f2, f15, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x9bc398d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x216f422e # load x3 with value 0x216f422e
sw x3, 0(x2) # store 0x216f422e in memory
flw f17, 0(x2) # load 0x216f422e from memory into f17
li x3, 0x69b938fd # load x3 with value 0x69b938fd
sw x3, 0(x2) # store 0x69b938fd in memory
flw f3, 0(x2) # load 0x69b938fd from memory into f3
fmax.s f3, f17, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x33eb5142 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb64bf32e # load x3 with value 0xb64bf32e
sw x3, 0(x2) # store 0xb64bf32e in memory
flw f24, 0(x2) # load 0xb64bf32e from memory into f24
li x3, 0x5fd26f19 # load x3 with value 0x5fd26f19
sw x3, 0(x2) # store 0x5fd26f19 in memory
flw f4, 0(x2) # load 0x5fd26f19 from memory into f4
fmax.s f4, f24, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x55d46926 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22ff686e # load x3 with value 0x22ff686e
sw x3, 0(x2) # store 0x22ff686e in memory
flw f22, 0(x2) # load 0x22ff686e from memory into f22
li x3, 0xe7eb588b # load x3 with value 0xe7eb588b
sw x3, 0(x2) # store 0xe7eb588b in memory
flw f5, 0(x2) # load 0xe7eb588b from memory into f5
fmax.s f5, f22, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xd738a994 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x920ef3f8 # load x3 with value 0x920ef3f8
sw x3, 0(x2) # store 0x920ef3f8 in memory
flw f6, 0(x2) # load 0x920ef3f8 from memory into f6
li x3, 0x8fbe1034 # load x3 with value 0x8fbe1034
sw x3, 0(x2) # store 0x8fbe1034 in memory
flw f6, 0(x2) # load 0x8fbe1034 from memory into f6
fmax.s f6, f6, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x88aa1778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaadd208d # load x3 with value 0xaadd208d
sw x3, 0(x2) # store 0xaadd208d in memory
flw f4, 0(x2) # load 0xaadd208d from memory into f4
li x3, 0x0b960157 # load x3 with value 0x0b960157
sw x3, 0(x2) # store 0x0b960157 in memory
flw f7, 0(x2) # load 0x0b960157 from memory into f7
fmax.s f7, f4, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x4d95095d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x577d4b5e # load x3 with value 0x577d4b5e
sw x3, 0(x2) # store 0x577d4b5e in memory
flw f21, 0(x2) # load 0x577d4b5e from memory into f21
li x3, 0x324bd29e # load x3 with value 0x324bd29e
sw x3, 0(x2) # store 0x324bd29e in memory
flw f8, 0(x2) # load 0x324bd29e from memory into f8
fmax.s f8, f21, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xf1dd5866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x420a00fd # load x3 with value 0x420a00fd
sw x3, 0(x2) # store 0x420a00fd in memory
flw f17, 0(x2) # load 0x420a00fd from memory into f17
li x3, 0x35bfb617 # load x3 with value 0x35bfb617
sw x3, 0(x2) # store 0x35bfb617 in memory
flw f9, 0(x2) # load 0x35bfb617 from memory into f9
fmax.s f9, f17, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x1489e2f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2bdfe12 # load x3 with value 0xf2bdfe12
sw x3, 0(x2) # store 0xf2bdfe12 in memory
flw f3, 0(x2) # load 0xf2bdfe12 from memory into f3
li x3, 0xc06f33a8 # load x3 with value 0xc06f33a8
sw x3, 0(x2) # store 0xc06f33a8 in memory
flw f10, 0(x2) # load 0xc06f33a8 from memory into f10
fmax.s f10, f3, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x7faf0345 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b1af37a # load x3 with value 0x2b1af37a
sw x3, 0(x2) # store 0x2b1af37a in memory
flw f21, 0(x2) # load 0x2b1af37a from memory into f21
li x3, 0xa8c3851d # load x3 with value 0xa8c3851d
sw x3, 0(x2) # store 0xa8c3851d in memory
flw f11, 0(x2) # load 0xa8c3851d from memory into f11
fmax.s f11, f21, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xc7f97f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0cc9215 # load x3 with value 0xa0cc9215
sw x3, 0(x2) # store 0xa0cc9215 in memory
flw f30, 0(x2) # load 0xa0cc9215 from memory into f30
li x3, 0x432b74bf # load x3 with value 0x432b74bf
sw x3, 0(x2) # store 0x432b74bf in memory
flw f12, 0(x2) # load 0x432b74bf from memory into f12
fmax.s f12, f30, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xa9374273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0ce687c # load x3 with value 0xa0ce687c
sw x3, 0(x2) # store 0xa0ce687c in memory
flw f13, 0(x2) # load 0xa0ce687c from memory into f13
li x3, 0x3b919d1d # load x3 with value 0x3b919d1d
sw x3, 0(x2) # store 0x3b919d1d in memory
flw f13, 0(x2) # load 0x3b919d1d from memory into f13
fmax.s f13, f13, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x09b3451b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2eb5c827 # load x3 with value 0x2eb5c827
sw x3, 0(x2) # store 0x2eb5c827 in memory
flw f16, 0(x2) # load 0x2eb5c827 from memory into f16
li x3, 0x9f734143 # load x3 with value 0x9f734143
sw x3, 0(x2) # store 0x9f734143 in memory
flw f14, 0(x2) # load 0x9f734143 from memory into f14
fmax.s f14, f16, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x7e59348e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf09bf8ea # load x3 with value 0xf09bf8ea
sw x3, 0(x2) # store 0xf09bf8ea in memory
flw f6, 0(x2) # load 0xf09bf8ea from memory into f6
li x3, 0xdfc534db # load x3 with value 0xdfc534db
sw x3, 0(x2) # store 0xdfc534db in memory
flw f15, 0(x2) # load 0xdfc534db from memory into f15
fmax.s f15, f6, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xd72778ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb72a1738 # load x3 with value 0xb72a1738
sw x3, 0(x2) # store 0xb72a1738 in memory
flw f15, 0(x2) # load 0xb72a1738 from memory into f15
li x3, 0xfa225046 # load x3 with value 0xfa225046
sw x3, 0(x2) # store 0xfa225046 in memory
flw f16, 0(x2) # load 0xfa225046 from memory into f16
fmax.s f16, f15, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xc586759c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89400280 # load x3 with value 0x89400280
sw x3, 0(x2) # store 0x89400280 in memory
flw f4, 0(x2) # load 0x89400280 from memory into f4
li x3, 0x7ad4bb94 # load x3 with value 0x7ad4bb94
sw x3, 0(x2) # store 0x7ad4bb94 in memory
flw f17, 0(x2) # load 0x7ad4bb94 from memory into f17
fmax.s f17, f4, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x73fc64a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39693f50 # load x3 with value 0x39693f50
sw x3, 0(x2) # store 0x39693f50 in memory
flw f28, 0(x2) # load 0x39693f50 from memory into f28
li x3, 0x49d5f10c # load x3 with value 0x49d5f10c
sw x3, 0(x2) # store 0x49d5f10c in memory
flw f18, 0(x2) # load 0x49d5f10c from memory into f18
fmax.s f18, f28, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x10e3e229 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d1928f3 # load x3 with value 0x4d1928f3
sw x3, 0(x2) # store 0x4d1928f3 in memory
flw f8, 0(x2) # load 0x4d1928f3 from memory into f8
li x3, 0x7a20fdb8 # load x3 with value 0x7a20fdb8
sw x3, 0(x2) # store 0x7a20fdb8 in memory
flw f19, 0(x2) # load 0x7a20fdb8 from memory into f19
fmax.s f19, f8, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x732fd813 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd95a85c6 # load x3 with value 0xd95a85c6
sw x3, 0(x2) # store 0xd95a85c6 in memory
flw f24, 0(x2) # load 0xd95a85c6 from memory into f24
li x3, 0xf56089d0 # load x3 with value 0xf56089d0
sw x3, 0(x2) # store 0xf56089d0 in memory
flw f20, 0(x2) # load 0xf56089d0 from memory into f20
fmax.s f20, f24, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x29d078ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4398ae99 # load x3 with value 0x4398ae99
sw x3, 0(x2) # store 0x4398ae99 in memory
flw f27, 0(x2) # load 0x4398ae99 from memory into f27
li x3, 0xc6be21e2 # load x3 with value 0xc6be21e2
sw x3, 0(x2) # store 0xc6be21e2 in memory
flw f21, 0(x2) # load 0xc6be21e2 from memory into f21
fmax.s f21, f27, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xd5797b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7f6aaf2 # load x3 with value 0xb7f6aaf2
sw x3, 0(x2) # store 0xb7f6aaf2 in memory
flw f2, 0(x2) # load 0xb7f6aaf2 from memory into f2
li x3, 0xa058f580 # load x3 with value 0xa058f580
sw x3, 0(x2) # store 0xa058f580 in memory
flw f22, 0(x2) # load 0xa058f580 from memory into f22
fmax.s f22, f2, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x8804c776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c5f6b09 # load x3 with value 0x4c5f6b09
sw x3, 0(x2) # store 0x4c5f6b09 in memory
flw f1, 0(x2) # load 0x4c5f6b09 from memory into f1
li x3, 0x8dc546f1 # load x3 with value 0x8dc546f1
sw x3, 0(x2) # store 0x8dc546f1 in memory
flw f23, 0(x2) # load 0x8dc546f1 from memory into f23
fmax.s f23, f1, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x5e2933dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2908a2d # load x3 with value 0xe2908a2d
sw x3, 0(x2) # store 0xe2908a2d in memory
flw f1, 0(x2) # load 0xe2908a2d from memory into f1
li x3, 0xb9217ab3 # load x3 with value 0xb9217ab3
sw x3, 0(x2) # store 0xb9217ab3 in memory
flw f24, 0(x2) # load 0xb9217ab3 from memory into f24
fmax.s f24, f1, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x2bc1167d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd187df4c # load x3 with value 0xd187df4c
sw x3, 0(x2) # store 0xd187df4c in memory
flw f9, 0(x2) # load 0xd187df4c from memory into f9
li x3, 0xd39e6328 # load x3 with value 0xd39e6328
sw x3, 0(x2) # store 0xd39e6328 in memory
flw f25, 0(x2) # load 0xd39e6328 from memory into f25
fmax.s f25, f9, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x5e8b86b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x100d0cc5 # load x3 with value 0x100d0cc5
sw x3, 0(x2) # store 0x100d0cc5 in memory
flw f14, 0(x2) # load 0x100d0cc5 from memory into f14
li x3, 0x2faa390d # load x3 with value 0x2faa390d
sw x3, 0(x2) # store 0x2faa390d in memory
flw f26, 0(x2) # load 0x2faa390d from memory into f26
fmax.s f26, f14, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x38c24a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x414934b1 # load x3 with value 0x414934b1
sw x3, 0(x2) # store 0x414934b1 in memory
flw f8, 0(x2) # load 0x414934b1 from memory into f8
li x3, 0x25731d55 # load x3 with value 0x25731d55
sw x3, 0(x2) # store 0x25731d55 in memory
flw f27, 0(x2) # load 0x25731d55 from memory into f27
fmax.s f27, f8, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x5cbade28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a5148fc # load x3 with value 0x6a5148fc
sw x3, 0(x2) # store 0x6a5148fc in memory
flw f10, 0(x2) # load 0x6a5148fc from memory into f10
li x3, 0x60ca0da1 # load x3 with value 0x60ca0da1
sw x3, 0(x2) # store 0x60ca0da1 in memory
flw f28, 0(x2) # load 0x60ca0da1 from memory into f28
fmax.s f28, f10, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xc18c772d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13d77431 # load x3 with value 0x13d77431
sw x3, 0(x2) # store 0x13d77431 in memory
flw f20, 0(x2) # load 0x13d77431 from memory into f20
li x3, 0xf7e735f4 # load x3 with value 0xf7e735f4
sw x3, 0(x2) # store 0xf7e735f4 in memory
flw f29, 0(x2) # load 0xf7e735f4 from memory into f29
fmax.s f29, f20, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x1e31a5b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8529a8c # load x3 with value 0xb8529a8c
sw x3, 0(x2) # store 0xb8529a8c in memory
flw f16, 0(x2) # load 0xb8529a8c from memory into f16
li x3, 0x0455a28a # load x3 with value 0x0455a28a
sw x3, 0(x2) # store 0x0455a28a in memory
flw f30, 0(x2) # load 0x0455a28a from memory into f30
fmax.s f30, f16, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x5fc09b9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a03153c # load x3 with value 0x7a03153c
sw x3, 0(x2) # store 0x7a03153c in memory
flw f6, 0(x2) # load 0x7a03153c from memory into f6
li x3, 0x79a04c5b # load x3 with value 0x79a04c5b
sw x3, 0(x2) # store 0x79a04c5b in memory
flw f31, 0(x2) # load 0x79a04c5b from memory into f31
fmax.s f31, f6, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x3, 0x65f872ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x85a3d148 # load x3 with value 0x85a3d148
sw x3, 0(x2) # store 0x85a3d148 in memory
flw f5, 0(x2) # load 0x85a3d148 from memory into f5
fmax.s f3, f10, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x24, 0xbc1e6016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
li x3, 0x65d4fb0d # load x3 with value 0x65d4fb0d
sw x3, 0(x2) # store 0x65d4fb0d in memory
flw f29, 0(x2) # load 0x65d4fb0d from memory into f29
fmax.s f24, f10, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x11, 0x149df8d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0xe8d18280 # load x3 with value 0xe8d18280
sw x3, 0(x2) # store 0xe8d18280 in memory
flw f18, 0(x2) # load 0xe8d18280 from memory into f18
fmax.s f11, f7, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x29, 0xc3581682 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x37d6ebff # load x3 with value 0x37d6ebff
sw x3, 0(x2) # store 0x37d6ebff in memory
flw f6, 0(x2) # load 0x37d6ebff from memory into f6
fmax.s f29, f21, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x20, 0xa5dcbfd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
li x3, 0xa167ecce # load x3 with value 0xa167ecce
sw x3, 0(x2) # store 0xa167ecce in memory
flw f24, 0(x2) # load 0xa167ecce from memory into f24
fmax.s f20, f27, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x3, 0x0f12ebd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0xf5386ee4 # load x3 with value 0xf5386ee4
sw x3, 0(x2) # store 0xf5386ee4 in memory
flw f4, 0(x2) # load 0xf5386ee4 from memory into f4
fmax.s f3, f16, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x28, 0x248b8f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
li x3, 0x0919312c # load x3 with value 0x0919312c
sw x3, 0(x2) # store 0x0919312c in memory
flw f20, 0(x2) # load 0x0919312c from memory into f20
fmax.s f28, f14, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x4, 0xba192e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
li x3, 0x2a715009 # load x3 with value 0x2a715009
sw x3, 0(x2) # store 0x2a715009 in memory
flw f29, 0(x2) # load 0x2a715009 from memory into f29
fmax.s f4, f10, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x16, 0x57347115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0xf2baf7d0 # load x3 with value 0xf2baf7d0
sw x3, 0(x2) # store 0xf2baf7d0 in memory
flw f24, 0(x2) # load 0xf2baf7d0 from memory into f24
fmax.s f16, f22, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x11, 0xdc847beb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0x47f732c0 # load x3 with value 0x47f732c0
sw x3, 0(x2) # store 0x47f732c0 in memory
flw f15, 0(x2) # load 0x47f732c0 from memory into f15
fmax.s f11, f9, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x1, 0x121071f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0xc5b0835a # load x3 with value 0xc5b0835a
sw x3, 0(x2) # store 0xc5b0835a in memory
flw f9, 0(x2) # load 0xc5b0835a from memory into f9
fmax.s f1, f18, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x30, 0x130b3042 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0xce6ff46a # load x3 with value 0xce6ff46a
sw x3, 0(x2) # store 0xce6ff46a in memory
flw f31, 0(x2) # load 0xce6ff46a from memory into f31
fmax.s f30, f1, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x29, 0x3dcfab4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
li x3, 0x9a71d495 # load x3 with value 0x9a71d495
sw x3, 0(x2) # store 0x9a71d495 in memory
flw f25, 0(x2) # load 0x9a71d495 from memory into f25
fmax.s f29, f24, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x14, 0xe6f85d75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
li x3, 0x6cb9a393 # load x3 with value 0x6cb9a393
sw x3, 0(x2) # store 0x6cb9a393 in memory
flw f30, 0(x2) # load 0x6cb9a393 from memory into f30
fmax.s f14, f12, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x29, 0x3f8a715d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
li x3, 0x86b7c6b2 # load x3 with value 0x86b7c6b2
sw x3, 0(x2) # store 0x86b7c6b2 in memory
flw f23, 0(x2) # load 0x86b7c6b2 from memory into f23
fmax.s f29, f27, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x13, 0x0489a31b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0xb732bcd6 # load x3 with value 0xb732bcd6
sw x3, 0(x2) # store 0xb732bcd6 in memory
flw f12, 0(x2) # load 0xb732bcd6 from memory into f12
fmax.s f13, f8, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x18, 0x5d4451d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x10315728 # load x3 with value 0x10315728
sw x3, 0(x2) # store 0x10315728 in memory
flw f28, 0(x2) # load 0x10315728 from memory into f28
fmax.s f18, f22, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x30, 0x9b3c520e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0xe6a1360b # load x3 with value 0xe6a1360b
sw x3, 0(x2) # store 0xe6a1360b in memory
flw f19, 0(x2) # load 0xe6a1360b from memory into f19
fmax.s f30, f4, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x5, 0x48d587a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0x20ade944 # load x3 with value 0x20ade944
sw x3, 0(x2) # store 0x20ade944 in memory
flw f23, 0(x2) # load 0x20ade944 from memory into f23
fmax.s f5, f14, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x5, 0xea8d1ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
li x3, 0x9d24f525 # load x3 with value 0x9d24f525
sw x3, 0(x2) # store 0x9d24f525 in memory
flw f2, 0(x2) # load 0x9d24f525 from memory into f2
fmax.s f5, f29, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x2, 0x25c6d5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
li x3, 0x29f58046 # load x3 with value 0x29f58046
sw x3, 0(x2) # store 0x29f58046 in memory
flw f1, 0(x2) # load 0x29f58046 from memory into f1
fmax.s f2, f13, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x13, 0x48068cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x3c60f10d # load x3 with value 0x3c60f10d
sw x3, 0(x2) # store 0x3c60f10d in memory
flw f3, 0(x2) # load 0x3c60f10d from memory into f3
fmax.s f13, f19, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x16, 0x7b9a94f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
li x3, 0x7d058c73 # load x3 with value 0x7d058c73
sw x3, 0(x2) # store 0x7d058c73 in memory
flw f14, 0(x2) # load 0x7d058c73 from memory into f14
fmax.s f16, f15, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x25, 0x54fc35c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
li x3, 0x0b6f5fcb # load x3 with value 0x0b6f5fcb
sw x3, 0(x2) # store 0x0b6f5fcb in memory
flw f3, 0(x2) # load 0x0b6f5fcb from memory into f3
fmax.s f25, f10, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x5, 0xec0116c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
li x3, 0x6a5fc7bf # load x3 with value 0x6a5fc7bf
sw x3, 0(x2) # store 0x6a5fc7bf in memory
flw f17, 0(x2) # load 0x6a5fc7bf from memory into f17
fmax.s f5, f3, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x3, 0xb8fcc265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
li x3, 0x505eb010 # load x3 with value 0x505eb010
sw x3, 0(x2) # store 0x505eb010 in memory
flw f15, 0(x2) # load 0x505eb010 from memory into f15
fmax.s f3, f24, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x16, 0xf4911b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x112003f9 # load x3 with value 0x112003f9
sw x3, 0(x2) # store 0x112003f9 in memory
flw f10, 0(x2) # load 0x112003f9 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fmax.s f16, f10, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x6, 0x34279e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe744c65 # load x3 with value 0xbe744c65
sw x3, 0(x2) # store 0xbe744c65 in memory
flw f13, 0(x2) # load 0xbe744c65 from memory into f13
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fmax.s f6, f13, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x5, 0xfed8f700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52f9f48d # load x3 with value 0x52f9f48d
sw x3, 0(x2) # store 0x52f9f48d in memory
flw f28, 0(x2) # load 0x52f9f48d from memory into f28
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fmax.s f5, f28, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x29, 0x58479a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e2f10e6 # load x3 with value 0x5e2f10e6
sw x3, 0(x2) # store 0x5e2f10e6 in memory
flw f14, 0(x2) # load 0x5e2f10e6 from memory into f14
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fmax.s f29, f14, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x2, 0x787a37c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42710545 # load x3 with value 0x42710545
sw x3, 0(x2) # store 0x42710545 in memory
flw f30, 0(x2) # load 0x42710545 from memory into f30
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fmax.s f2, f30, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x15, 0x29e47940 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17d411f1 # load x3 with value 0x17d411f1
sw x3, 0(x2) # store 0x17d411f1 in memory
flw f25, 0(x2) # load 0x17d411f1 from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fmax.s f15, f25, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x16, 0x5f4a86bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7394957 # load x3 with value 0xf7394957
sw x3, 0(x2) # store 0xf7394957 in memory
flw f10, 0(x2) # load 0xf7394957 from memory into f10
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fmax.s f16, f10, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x22, 0x0d473a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13c39317 # load x3 with value 0x13c39317
sw x3, 0(x2) # store 0x13c39317 in memory
flw f21, 0(x2) # load 0x13c39317 from memory into f21
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fmax.s f22, f21, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x25, 0xc1a87710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2482a1bc # load x3 with value 0x2482a1bc
sw x3, 0(x2) # store 0x2482a1bc in memory
flw f9, 0(x2) # load 0x2482a1bc from memory into f9
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
fmax.s f25, f9, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x18, 0x0743ace4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfcebcfa6 # load x3 with value 0xfcebcfa6
sw x3, 0(x2) # store 0xfcebcfa6 in memory
flw f10, 0(x2) # load 0xfcebcfa6 from memory into f10
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fmax.s f18, f10, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x9, 0x039e4740 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x718372bf # load x3 with value 0x718372bf
sw x3, 0(x2) # store 0x718372bf in memory
flw f23, 0(x2) # load 0x718372bf from memory into f23
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fmax.s f9, f23, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x13, 0xe1b5457c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84f73c3b # load x3 with value 0x84f73c3b
sw x3, 0(x2) # store 0x84f73c3b in memory
flw f2, 0(x2) # load 0x84f73c3b from memory into f2
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
fmax.s f13, f2, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x28, 0xa9c709db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5629613 # load x3 with value 0xa5629613
sw x3, 0(x2) # store 0xa5629613 in memory
flw f31, 0(x2) # load 0xa5629613 from memory into f31
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fmax.s f28, f31, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x5, 0x7c55f370 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c9eb5b4 # load x3 with value 0x0c9eb5b4
sw x3, 0(x2) # store 0x0c9eb5b4 in memory
flw f14, 0(x2) # load 0x0c9eb5b4 from memory into f14
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fmax.s f5, f14, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x6, 0x2463632d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f494864 # load x3 with value 0x4f494864
sw x3, 0(x2) # store 0x4f494864 in memory
flw f11, 0(x2) # load 0x4f494864 from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fmax.s f6, f11, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x13, 0x4715a848 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5176c711 # load x3 with value 0x5176c711
sw x3, 0(x2) # store 0x5176c711 in memory
flw f5, 0(x2) # load 0x5176c711 from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fmax.s f13, f5, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x31, 0x5a69316f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdeedbedb # load x3 with value 0xdeedbedb
sw x3, 0(x2) # store 0xdeedbedb in memory
flw f30, 0(x2) # load 0xdeedbedb from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fmax.s f31, f30, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x7, 0x0aacdf97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f7bf541 # load x3 with value 0x9f7bf541
sw x3, 0(x2) # store 0x9f7bf541 in memory
flw f30, 0(x2) # load 0x9f7bf541 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fmax.s f7, f30, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x9, 0xc5b116f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a51aef0 # load x3 with value 0x1a51aef0
sw x3, 0(x2) # store 0x1a51aef0 in memory
flw f12, 0(x2) # load 0x1a51aef0 from memory into f12
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fmax.s f9, f12, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x4, 0x03ef0bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d4e7479 # load x3 with value 0x3d4e7479
sw x3, 0(x2) # store 0x3d4e7479 in memory
flw f7, 0(x2) # load 0x3d4e7479 from memory into f7
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fmax.s f4, f7, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x11, 0xa860c7c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b5a83a4 # load x3 with value 0x4b5a83a4
sw x3, 0(x2) # store 0x4b5a83a4 in memory
flw f16, 0(x2) # load 0x4b5a83a4 from memory into f16
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fmax.s f11, f16, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x16, 0x009c63f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40d55eeb # load x3 with value 0x40d55eeb
sw x3, 0(x2) # store 0x40d55eeb in memory
flw f8, 0(x2) # load 0x40d55eeb from memory into f8
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fmax.s f16, f8, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x16, 0x8e3c4c94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb680c220 # load x3 with value 0xb680c220
sw x3, 0(x2) # store 0xb680c220 in memory
flw f15, 0(x2) # load 0xb680c220 from memory into f15
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fmax.s f16, f15, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x12, 0xce63e434 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2778254 # load x3 with value 0xd2778254
sw x3, 0(x2) # store 0xd2778254 in memory
flw f2, 0(x2) # load 0xd2778254 from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fmax.s f12, f2, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x18, 0x394e168d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c270915 # load x3 with value 0x4c270915
sw x3, 0(x2) # store 0x4c270915 in memory
flw f8, 0(x2) # load 0x4c270915 from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fmax.s f18, f8, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x12, 0x1ad89143 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e2af6d0 # load x3 with value 0x6e2af6d0
sw x3, 0(x2) # store 0x6e2af6d0 in memory
flw f21, 0(x2) # load 0x6e2af6d0 from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fmax.s f12, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x6, 0x7229a84d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fmax.s f6, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
li x17, 0x74e5d09b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fmax.s f17, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
li x9, 0x58694bdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fmax.s f9, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
li x25, 0x890330b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fmax.s f25, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
li x14, 0x639c5c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fmax.s f14, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
li x29, 0xec73858b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fmax.s f29, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
li x26, 0x1d54048c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fmax.s f26, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
li x31, 0x4a25dac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fmax.s f31, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
li x1, 0x4df9b5c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fmax.s f1, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
li x26, 0x819c795c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fmax.s f26, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
li x7, 0x697ac1d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fmax.s f7, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
li x23, 0x5f4ea326 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fmax.s f23, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
li x10, 0x85ee869e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fmax.s f10, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
li x26, 0x2c9af67a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fmax.s f26, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
li x16, 0x3fba3854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fmax.s f16, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
li x12, 0x04deeb8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fmax.s f12, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x24, 0x820a5ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fmax.s f24, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
li x10, 0xbb425095 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fmax.s f10, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
li x2, 0x9b72985f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fmax.s f2, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
li x7, 0x3002de76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fmax.s f7, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
li x29, 0x20a40c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fmax.s f29, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
li x12, 0xf398e289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fmax.s f12, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
li x17, 0xe4c1ad98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fmax.s f17, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
li x2, 0xd2f3f384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fmax.s f2, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
li x14, 0x653177a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fmax.s f14, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
li x16, 0xffe57f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fmax.s f16, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
li x16, 0xaf18ba2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fmax.s f16, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
li x5, 0x943d67be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fmax.s f5, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
li x3, 0x1324356d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fmax.s f3, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
li x20, 0xa5b06952 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fmax.s f20, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
li x16, 0x4c556af1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fmax.s f16, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
li x17, 0xf66b4510 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fmax.s f17, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
li x17, 0xa2e0009f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fmax.s f17, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
li x15, 0x2dfc6d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fmax.s f15, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
li x18, 0x33d828e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fmax.s f18, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
li x22, 0x26d6fc78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fmax.s f22, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
li x6, 0xed03b6d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fmax.s f6, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
li x7, 0xdd1b1c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fmax.s f7, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
li x26, 0x8b6b58c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fmax.s f26, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
li x7, 0x78baa4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fmax.s f7, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
li x21, 0x87d8ac18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fmax.s f21, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
li x20, 0x3f808110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fmax.s f20, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
li x31, 0x5cf3a2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fmax.s f31, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
li x10, 0x525e3b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fmax.s f10, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
li x25, 0x7c1a5890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fmax.s f25, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
li x8, 0x17759e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fmax.s f8, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
li x7, 0x586e4323 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmax.s f7, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
li x27, 0x7e54599f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fmax.s f27, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
li x19, 0x1237e4af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fmax.s f19, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
li x25, 0x500cc795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fmax.s f25, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
li x30, 0x009c67a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fmax.s f30, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
li x29, 0x3fe7d1da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fmax.s f29, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
li x15, 0xf9d31232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fmax.s f15, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
li x13, 0x6844fcb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fmax.s f13, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
li x3, 0xc91c6df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fmax.s f3, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
li x28, 0x7f94ad69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fmax.s f28, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
li x12, 0xa222c8bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fmax.s f12, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
li x23, 0x9801806d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fmax.s f23, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
li x6, 0x708f80f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fmax.s f6, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
li x9, 0x11e64ae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fmax.s f9, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
li x17, 0xefb35d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fmax.s f17, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
li x15, 0xf66d7aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fmax.s f15, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
li x21, 0x1c01fe17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fmax.s f21, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
li x24, 0xde0f4da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fmax.s f24, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
li x4, 0x262e27bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fmax.s f4, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
li x6, 0x16a5545a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fmax.s f6, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
li x20, 0xb78fc2ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fmax.s f20, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
li x27, 0x84f46a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fmax.s f27, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
li x8, 0x7b5c7404 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fmax.s f8, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
li x18, 0x1d1e70dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fmax.s f18, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
li x2, 0x5e40485a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fmax.s f2, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
li x22, 0xd065e4b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fmax.s f22, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
li x2, 0x0320e7ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmax.s f2, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
li x29, 0xedbd5e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fmax.s f29, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
li x17, 0x83afff5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fmax.s f17, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
li x10, 0x6750cb2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fmax.s f10, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
li x27, 0xa4d5e459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fmax.s f27, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
li x14, 0xbb42efe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fmax.s f14, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
li x10, 0x364fb248 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fmax.s f10, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
li x25, 0x69a3820f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fmax.s f25, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
li x29, 0x54610a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fmax.s f29, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
li x29, 0x996fa745 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fmax.s f29, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
li x23, 0x9cb2928a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fmax.s f23, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
li x31, 0x525dbd0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
fmax.s f31, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
li x17, 0xc5635c8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fmax.s f17, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
li x30, 0x32deb1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fmax.s f30, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
li x25, 0x280cfb49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fmax.s f25, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
li x30, 0xeea88eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fmax.s f30, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
li x22, 0xb77bc120 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fmax.s f22, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
li x21, 0x0f6d81f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fmax.s f21, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
li x23, 0x7dd7b85d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fmax.s f23, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
li x30, 0xd948df49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fmax.s f30, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
li x29, 0x1b5a64d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fmax.s f29, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
li x18, 0x9f083dac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fmax.s f18, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
li x27, 0x6e65e292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fmax.s f27, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
li x24, 0x2f6cdd08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fmax.s f24, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
li x21, 0xb7e6deba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fmax.s f21, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
li x10, 0x3dd33752 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fmax.s f10, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
li x1, 0x9b9cca5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fmax.s f1, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
li x22, 0x97c6db20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fmax.s f22, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
li x10, 0x141674c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fmax.s f10, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
li x21, 0x0c631150 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
fmax.s f21, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
li x28, 0x5981cd5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fmax.s f28, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
li x4, 0x629a23f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fmax.s f4, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
li x15, 0x43b4764f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fmax.s f15, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
li x2, 0x2536bf0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fmax.s f2, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
li x9, 0x0cae46fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fmax.s f9, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
li x16, 0xca09a761 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fmax.s f16, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
li x22, 0x44b07a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fmax.s f22, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
li x6, 0xc31e62dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fmax.s f6, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
li x31, 0x891871ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fmax.s f31, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
li x12, 0xf35a8154 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
fmax.s f12, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
li x13, 0xfa599911 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fmax.s f13, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
li x13, 0xf07ec8e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fmax.s f13, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
li x13, 0xd8f43a1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fmax.s f13, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
li x27, 0xaf6d01a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fmax.s f27, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
li x30, 0x93e04b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fmax.s f30, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
li x30, 0x633c4153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fmax.s f30, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
li x3, 0x831164cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
fmax.s f3, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
li x27, 0x1e5b618c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fmax.s f27, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
li x19, 0x3098380b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fmax.s f19, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
li x17, 0x2c7b818a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fmax.s f17, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
li x18, 0xf504b672 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fmax.s f18, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
li x15, 0x0d10f582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fmax.s f15, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
li x1, 0x66f75b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fmax.s f1, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
li x2, 0x45e47c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fmax.s f2, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
li x24, 0x6f571cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fmax.s f24, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
li x17, 0xa0780e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fmax.s f17, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
li x28, 0x86346795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fmax.s f28, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
li x4, 0xd72109df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fmax.s f4, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
li x4, 0x2246b3ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fmax.s f4, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
li x21, 0x194d90fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fmax.s f21, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
li x7, 0x9727b0b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fmax.s f7, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
li x5, 0x944f3457 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fmax.s f5, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
li x31, 0x13843eab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fmax.s f31, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
li x25, 0x2b6729e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
fmax.s f25, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
li x1, 0x197a3b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fmax.s f1, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
li x30, 0x4a2df161 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fmax.s f30, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
li x7, 0x15caf68b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fmax.s f7, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
li x18, 0xac6d9ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fmax.s f18, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
li x30, 0x61e5506b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fmax.s f30, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
li x29, 0x6f75361f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fmax.s f29, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
li x17, 0xaaa1de26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fmax.s f17, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
li x2, 0xba6aee3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fmax.s f2, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
li x16, 0x3b76aeb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fmax.s f16, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
li x20, 0xeba41f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fmax.s f20, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
li x3, 0xaa59e4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fmax.s f3, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
li x2, 0xcc177624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fmax.s f2, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
li x17, 0x4fd0e3a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fmax.s f17, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
li x6, 0xea377645 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fmax.s f6, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
li x11, 0x0e778c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fmax.s f11, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
li x27, 0x5a3b7f5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fmax.s f27, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
li x6, 0xc3a4a97b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fmax.s f6, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
li x31, 0x7668beb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fmax.s f31, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
li x11, 0x8fe36df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fmax.s f11, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
li x4, 0xe9235ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fmax.s f4, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
li x19, 0x8ead7d83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fmax.s f19, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
li x30, 0xc4e29658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fmax.s f30, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
li x8, 0xe56d100d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fmax.s f8, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
li x20, 0xf141fb43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fmax.s f20, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
li x19, 0x902ef52f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fmax.s f19, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
li x23, 0x7115701c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fmax.s f23, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
li x4, 0xa656b32f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fmax.s f4, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
li x30, 0x8eb231f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fmax.s f30, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
li x18, 0x946c0d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fmax.s f18, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
li x27, 0x40444860 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fmax.s f27, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
li x17, 0x76de0be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fmax.s f17, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
li x3, 0x77c28ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fmax.s f3, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
li x25, 0x314ed0a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fmax.s f25, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
li x24, 0x9219aca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fmax.s f24, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
li x5, 0x5420b082 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmax.s f5, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
li x23, 0x92b25be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fmax.s f23, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
li x28, 0xd256a013 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fmax.s f28, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
li x11, 0xea81c860 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fmax.s f11, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
li x26, 0x27cc5bdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fmax.s f26, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
li x7, 0x526eefb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fmax.s f7, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
li x31, 0xefdfca65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fmax.s f31, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
li x3, 0x1b85af52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmax.s f3, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
li x25, 0xa90ba5ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fmax.s f25, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
li x19, 0xba517159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fmax.s f19, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
li x2, 0x1962a960 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fmax.s f2, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
li x28, 0xeb3ea1d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fmax.s f28, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
li x24, 0xfddc5ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fmax.s f24, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
li x19, 0xf65bd04e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fmax.s f19, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
li x31, 0x0c82a07a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fmax.s f31, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
li x19, 0x7f552e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fmax.s f19, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
li x13, 0xc1381802 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fmax.s f13, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
li x28, 0x9bb358a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fmax.s f28, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
li x12, 0x9024a75f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fmax.s f12, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
li x21, 0x46f968ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fmax.s f21, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
li x7, 0x4dd56755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fmax.s f7, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
li x9, 0x59a22d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fmax.s f9, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
li x30, 0xe6403e2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fmax.s f30, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
li x15, 0x9168d835 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fmax.s f15, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
li x30, 0xf98ea9f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fmax.s f30, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
li x27, 0x25347c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
fmax.s f27, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
li x6, 0x614f5f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fmax.s f6, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
li x2, 0x151c2100 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fmax.s f2, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
li x24, 0x02378d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fmax.s f24, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
li x18, 0xbfae0606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fmax.s f18, f12, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
li x11, 0x3ad36b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fmax.s f11, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
li x12, 0x25e6d5de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fmax.s f12, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
li x3, 0x9fa0cdd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fmax.s f3, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
li x23, 0xa4640b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fmax.s f23, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
li x2, 0x579caf44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fmax.s f2, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
li x22, 0x79fd2b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
fmax.s f22, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
li x9, 0xf7971174 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fmax.s f9, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
li x14, 0x52b9359d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fmax.s f14, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
li x15, 0xe50436e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fmax.s f15, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
li x5, 0x79b9823a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fmax.s f5, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
li x26, 0x06bda203 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fmax.s f26, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
li x10, 0x53bacb81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fmax.s f10, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
li x1, 0xf6fb9b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fmax.s f1, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
li x16, 0xe65b13e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fmax.s f16, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
li x30, 0xe76ed1d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fmax.s f30, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
li x27, 0xb1a29490 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fmax.s f27, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
li x10, 0x842ddc41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fmax.s f10, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
li x16, 0xbb97a6d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
fmax.s f16, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
li x14, 0xa32b06cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmax.s f14, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
li x12, 0xafea342f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fmax.s f12, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
li x27, 0xd44c72a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fmax.s f27, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
li x30, 0xd64a1cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fmax.s f30, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
li x25, 0x7ee64d02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
fmax.s f25, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
li x13, 0x38f1c5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fmax.s f13, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
li x7, 0x906409cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fmax.s f7, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
li x13, 0x6dec401b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fmax.s f13, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
li x20, 0xb5389294 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fmax.s f20, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
li x30, 0x4ac4f87e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fmax.s f30, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
li x19, 0xd139b63b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fmax.s f19, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
li x19, 0x4d3786ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fmax.s f19, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
li x25, 0x70da28c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fmax.s f25, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
li x29, 0x03ccf543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fmax.s f29, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
li x29, 0x8cc60c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fmax.s f29, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
li x8, 0x8e1b4986 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fmax.s f8, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
li x23, 0x9ee8080e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fmax.s f23, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
li x28, 0x39fed38d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fmax.s f28, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
li x24, 0x291800c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fmax.s f24, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
li x15, 0xb0843baa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fmax.s f15, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
li x13, 0xfe82927c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fmax.s f13, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
li x2, 0xf4a5b783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
fmax.s f2, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
li x24, 0xddf1e49e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fmax.s f24, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
li x17, 0x3b2e7d2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fmax.s f17, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
li x30, 0x8a22d651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fmax.s f30, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
li x25, 0x38f3563a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fmax.s f25, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
li x2, 0x8739a105 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fmax.s f2, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
li x7, 0x40d0f686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fmax.s f7, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
li x8, 0x56dd0a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fmax.s f8, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
li x29, 0x051c2901 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fmax.s f29, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
li x17, 0x7a26c001 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fmax.s f17, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
li x2, 0xe24218d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fmax.s f2, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
li x14, 0x6e2a3bad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fmax.s f14, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
li x30, 0xc46f148e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fmax.s f30, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
li x10, 0x1d7a1da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fmax.s f10, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
li x12, 0xe1b9b1e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fmax.s f12, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
li x29, 0x70e3c307 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fmax.s f29, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
li x10, 0x6a16826a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fmax.s f10, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
li x26, 0x30ed6968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
fmax.s f26, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
li x13, 0x9b66169a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
fmax.s f13, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
li x26, 0x785de8e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fmax.s f26, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
li x30, 0x24f660a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fmax.s f30, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
li x22, 0x6f4d13e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fmax.s f22, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
li x14, 0xca278618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fmax.s f14, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
li x25, 0x35ec153c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fmax.s f25, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
li x27, 0x14dd4e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
fmax.s f27, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
li x24, 0x9130363f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fmax.s f24, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
li x12, 0x91c4420b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fmax.s f12, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
li x14, 0x25e90e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fmax.s f14, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
li x27, 0x4e970bc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fmax.s f27, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
li x27, 0x7b182571 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fmax.s f27, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
li x3, 0xb0e27fb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fmax.s f3, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
li x12, 0xc40c6175 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fmax.s f12, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
li x31, 0xc661cd22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fmax.s f31, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
li x15, 0x841e9be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fmax.s f15, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
li x29, 0x9286d070 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fmax.s f29, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
li x12, 0x0ffdcb30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fmax.s f12, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
li x27, 0x68611023 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fmax.s f27, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
li x11, 0x726cd7e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fmax.s f11, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
li x11, 0x7582e43f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fmax.s f11, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
li x3, 0x8006de6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fmax.s f3, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
li x17, 0xdb71ef0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmax.s f17, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
li x3, 0xbaa5d126 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fmax.s f3, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
li x11, 0xa28d148d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmax.s f11, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
li x5, 0xa90cb925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fmax.s f5, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
li x17, 0x82f28e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fmax.s f17, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
li x24, 0xb7f6e9fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fmax.s f24, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
li x4, 0x17c5d763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fmax.s f4, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
li x7, 0xff0156de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fmax.s f7, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
li x11, 0x0bb4a9b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fmax.s f11, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
li x20, 0xcf500dce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fmax.s f20, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
li x10, 0x769de710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fmax.s f10, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
li x22, 0x8f354a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fmax.s f22, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
li x16, 0x48efafcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fmax.s f16, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
li x25, 0x916b2146 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fmax.s f25, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
li x12, 0x7dcada11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
fmax.s f12, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
li x12, 0x3c7262b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fmax.s f12, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
li x12, 0x25da6e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fmax.s f12, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
li x12, 0x0e5ea632 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fmax.s f12, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
li x3, 0x05a98cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fmax.s f3, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
li x25, 0x4901089a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fmax.s f25, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
li x18, 0x8fce1946 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fmax.s f18, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
li x20, 0xc0e465f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fmax.s f20, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
li x8, 0x064f984e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fmax.s f8, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
li x15, 0x883ff192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fmax.s f15, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
li x9, 0x0ce9c0bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fmax.s f9, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
li x14, 0x227a8a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
fmax.s f14, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
li x11, 0x37e6501b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fmax.s f11, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
li x23, 0xc76ffaee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fmax.s f23, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
li x3, 0x49bc21bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fmax.s f3, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
li x7, 0xd971d8c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fmax.s f7, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
li x10, 0x7367c5fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fmax.s f10, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
li x22, 0x6056146c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fmax.s f22, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
li x18, 0x72efe3e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fmax.s f18, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
li x13, 0x73d86510 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fmax.s f13, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
li x26, 0xf170e91f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fmax.s f26, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
li x25, 0x97378113 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fmax.s f25, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
li x11, 0x942b2f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fmax.s f11, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
li x26, 0x4d6e6ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fmax.s f26, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
li x7, 0xe0964a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fmax.s f7, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
li x3, 0x16772919 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fmax.s f3, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
li x27, 0xbd7206f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fmax.s f27, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
li x3, 0x83277146 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fmax.s f3, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
li x27, 0x2ce3b290 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fmax.s f27, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
li x16, 0xf9720fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fmax.s f16, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
li x22, 0xdcb9b0c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fmax.s f22, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
li x23, 0x894c7c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fmax.s f23, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
li x31, 0xb566bf57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fmax.s f31, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
li x11, 0x12afbaea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fmax.s f11, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
li x20, 0xc407ba82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fmax.s f20, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
li x1, 0xe08d8752 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fmax.s f1, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
li x23, 0x24784d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fmax.s f23, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
li x9, 0x318dd4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fmax.s f9, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
li x26, 0xfdb2d3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fmax.s f26, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
li x16, 0xaf1a1d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fmax.s f16, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
li x9, 0x951579bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fmax.s f9, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
li x7, 0xee4e72e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fmax.s f7, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
li x6, 0x794676fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fmax.s f6, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
li x16, 0xd9fe0d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fmax.s f16, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
li x19, 0x6690ce83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
fmax.s f19, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
li x2, 0xc8a82a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fmax.s f2, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
li x26, 0xf09c88f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fmax.s f26, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
li x10, 0x589125b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fmax.s f10, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
li x5, 0xc54b2cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fmax.s f5, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
li x29, 0x8aebd44f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fmax.s f29, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
li x15, 0x5531d9de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
fmax.s f15, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
li x6, 0xe2b1b599 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fmax.s f6, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
li x5, 0x6bda2dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fmax.s f5, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
li x25, 0x500fb2ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fmax.s f25, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
li x26, 0x595d8ce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fmax.s f26, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
li x13, 0x2430405c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fmax.s f13, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
li x3, 0x6df4eccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
fmax.s f3, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
li x17, 0x046e02a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fmax.s f17, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
li x2, 0xcf912667 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fmax.s f2, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
li x11, 0x69d58017 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fmax.s f11, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
li x10, 0x960855e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fmax.s f10, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
li x1, 0x9362fd3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fmax.s f1, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
li x31, 0xf0d7b512 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fmax.s f31, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
li x25, 0x1ed95b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fmax.s f25, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
li x17, 0x78af5507 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fmax.s f17, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
li x26, 0x1b755367 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fmax.s f26, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
li x6, 0x5f81ad38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fmax.s f6, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
li x8, 0xd06d07c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fmax.s f8, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
li x5, 0x6f3e0a3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fmax.s f5, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
li x14, 0x4bc2d617 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fmax.s f14, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
li x13, 0x8fab34a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
fmax.s f13, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
li x14, 0x800e275a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fmax.s f14, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
li x29, 0x61a7f470 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fmax.s f29, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
li x7, 0x3064d974 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fmax.s f7, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
li x4, 0xc74833c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fmax.s f4, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
li x7, 0x740474c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fmax.s f7, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
li x25, 0x8fd7361a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fmax.s f25, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
li x16, 0x6d04f75e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fmax.s f16, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
li x27, 0xce3f898a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fmax.s f27, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
li x23, 0x5df30be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fmax.s f23, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
li x27, 0xf5a89b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fmax.s f27, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
li x4, 0x4d517a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fmax.s f4, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
li x30, 0xfac074a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fmax.s f30, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
li x2, 0x0c284f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fmax.s f2, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
li x28, 0x44d58899 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fmax.s f28, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
li x12, 0x50418873 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fmax.s f12, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
li x24, 0xf43388a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fmax.s f24, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
li x1, 0x59d0ae9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fmax.s f1, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
li x8, 0xbd0d0ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fmax.s f8, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
li x10, 0xf80246d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fmax.s f10, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
li x24, 0xd35abbf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fmax.s f24, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
li x12, 0x501dffbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fmax.s f12, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
li x11, 0xc3c7027a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fmax.s f11, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
li x30, 0x51e04c3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fmax.s f30, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
li x14, 0x09033be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fmax.s f14, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
li x19, 0xe64e22a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fmax.s f19, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
li x1, 0x7546515b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fmax.s f1, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
li x7, 0x243e1084 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fmax.s f7, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
li x11, 0x689970eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fmax.s f11, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
li x23, 0x152c2594 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fmax.s f23, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
li x5, 0xbc85f328 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
fmax.s f5, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
li x19, 0x387c1236 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fmax.s f19, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
li x30, 0xc95dd24d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fmax.s f30, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
li x22, 0x42d2451a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fmax.s f22, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
li x14, 0xb2df12e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fmax.s f14, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
li x24, 0x9679ebdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fmax.s f24, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
li x26, 0xd9f3d837 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fmax.s f26, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
li x8, 0xc9bce68e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fmax.s f8, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
li x12, 0xed27f6b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fmax.s f12, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
li x31, 0xc16b2dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fmax.s f31, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
li x1, 0xbf20baab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fmax.s f1, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
li x18, 0x96028f9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fmax.s f18, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
li x31, 0xf6ecab73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fmax.s f31, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
li x26, 0x725ad878 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fmax.s f26, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
li x23, 0xb3190824 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fmax.s f23, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
li x23, 0xf77c59b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
fmax.s f23, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
li x28, 0xff26cd5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fmax.s f28, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
li x24, 0x6c20aa55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fmax.s f24, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
li x30, 0x6129b737 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fmax.s f30, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
li x9, 0x10a5bc57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fmax.s f9, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
li x28, 0x61e2fe9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fmax.s f28, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
li x2, 0x63fcf133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fmax.s f2, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
li x27, 0xf611a641 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fmax.s f27, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x27, 0x24599cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
fmax.s f27, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
li x29, 0x0702d36c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fmax.s f29, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
li x3, 0x4677c7e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fmax.s f3, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
li x5, 0xbb7b8e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fmax.s f5, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
li x8, 0x983572a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fmax.s f8, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
li x31, 0x9fcee3c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
fmax.s f31, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
li x24, 0x8788c0df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fmax.s f24, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
li x21, 0x99e07793 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fmax.s f21, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
li x14, 0xa93353a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
fmax.s f14, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
li x8, 0x12a735d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
fmax.s f8, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
li x4, 0xb20e58c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmax.s f4, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
li x17, 0x0b070356 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fmax.s f17, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
li x8, 0xf5ffdc51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fmax.s f8, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
li x7, 0xeb653bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fmax.s f7, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
li x16, 0x61d6cffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
fmax.s f16, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
li x1, 0xfc82ba20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fmax.s f1, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x4, 0x8647bdb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fmax.s f4, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
li x11, 0x4d3aeec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fmax.s f11, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
li x8, 0x9e40a495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fmax.s f8, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
li x10, 0x5b513174 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fmax.s f10, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
li x23, 0x14d2ef2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fmax.s f23, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
li x6, 0x3fcbf12d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fmax.s f6, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
li x29, 0xff048cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fmax.s f29, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
li x15, 0x6e1a009b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fmax.s f15, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
li x27, 0x4a60a052 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fmax.s f27, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
li x9, 0x5ef81ece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fmax.s f9, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
li x22, 0x1a47c5e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fmax.s f22, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
li x7, 0x19eb1308 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fmax.s f7, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
li x25, 0xdeb65b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fmax.s f25, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
li x27, 0x58aa27ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fmax.s f27, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
li x26, 0x2c1fa5c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fmax.s f26, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
li x21, 0xb74c07aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
fmax.s f21, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
li x27, 0x727bdb13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fmax.s f27, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
li x5, 0xce40f886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fmax.s f5, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
li x17, 0xbd353263 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fmax.s f17, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
li x13, 0x7457ea15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fmax.s f13, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
li x22, 0x6633ed5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
fmax.s f22, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
li x1, 0x4fa36ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fmax.s f1, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
li x15, 0xe5fd120b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fmax.s f15, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
li x25, 0x1aaf9bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fmax.s f25, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
li x13, 0x345764ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fmax.s f13, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
li x4, 0xec61e1ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fmax.s f4, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
li x21, 0xb16b8895 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fmax.s f21, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
li x20, 0x43b92c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fmax.s f20, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
li x11, 0x8d7e3185 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fmax.s f11, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
li x18, 0xa8ccdd66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmax.s f18, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
li x10, 0x1b30a78f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fmax.s f10, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
li x24, 0xf35d8b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fmax.s f24, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
li x25, 0x7ab581b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fmax.s f25, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
li x15, 0xefa7792d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fmax.s f15, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
li x28, 0xd8ff3084 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fmax.s f28, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
li x9, 0xe4d7b4a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fmax.s f9, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
li x30, 0x1f7454cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fmax.s f30, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
li x31, 0x8e453b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fmax.s f31, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
li x29, 0x1e196f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fmax.s f29, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
li x20, 0x08dfe741 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fmax.s f20, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
li x16, 0x7ebcc932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
fmax.s f16, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
li x1, 0x75a23170 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fmax.s f1, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
li x15, 0x4c462c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fmax.s f15, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
li x28, 0x023728b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fmax.s f28, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
li x16, 0x898fcfd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
fmax.s f16, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
li x16, 0x3ffbb66d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fmax.s f16, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
li x6, 0xf2b26988 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fmax.s f6, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
li x20, 0x3c388178 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fmax.s f20, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
li x15, 0xf0f8848b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fmax.s f15, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
li x27, 0x7cd7ed64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fmax.s f27, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
li x23, 0xee8b859e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fmax.s f23, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
li x9, 0xe8853aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fmax.s f9, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
li x29, 0x29eb92bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fmax.s f29, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
li x1, 0x79e264a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fmax.s f1, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
li x20, 0x42bcfc4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fmax.s f20, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
li x27, 0x79e8f77a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fmax.s f27, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
li x9, 0x1c9ed36e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fmax.s f9, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
li x4, 0xec50de6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fmax.s f4, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
li x23, 0xd2e7faca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fmax.s f23, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
li x6, 0x86c1f0d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fmax.s f6, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
li x1, 0xb070e569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fmax.s f1, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
li x22, 0x035d9b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fmax.s f22, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
li x2, 0xbc5e49cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fmax.s f2, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
li x23, 0xc0f0ae81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fmax.s f23, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
li x7, 0x5da8b84c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fmax.s f7, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
li x23, 0x4957dd9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fmax.s f23, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
li x24, 0x444acdb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fmax.s f24, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
li x3, 0x613b0612 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
fmax.s f3, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
li x16, 0x1524c0b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fmax.s f16, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
li x28, 0x6cae98fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fmax.s f28, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
li x4, 0xd1ddfdba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fmax.s f4, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
li x29, 0x7323c770 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fmax.s f29, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
li x29, 0x3e9b0978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fmax.s f29, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
li x11, 0xc6548563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fmax.s f11, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
li x5, 0x14cc99fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fmax.s f5, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
li x14, 0xbd52a6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fmax.s f14, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
li x27, 0x04da0b52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fmax.s f27, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
li x30, 0x9eb85854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fmax.s f30, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
li x30, 0xce2c945d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fmax.s f30, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
li x26, 0x34c63064 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fmax.s f26, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
li x13, 0xaeb328b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fmax.s f13, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
li x26, 0xc0f17d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmax.s f26, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
li x20, 0x015895ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fmax.s f20, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
li x14, 0x39a2c392 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fmax.s f14, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
li x18, 0x794af943 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fmax.s f18, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
li x25, 0x7d446569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fmax.s f25, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
li x23, 0x70529498 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fmax.s f23, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
li x26, 0x0e2faa36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fmax.s f26, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
li x19, 0xdef483af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fmax.s f19, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
li x7, 0xd62835b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fmax.s f7, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
li x3, 0x4e53f1c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fmax.s f3, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
li x25, 0x68030531 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fmax.s f25, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
li x28, 0xbf1a2726 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fmax.s f28, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
li x7, 0x0a95d814 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fmax.s f7, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
li x16, 0x47465419 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fmax.s f16, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
li x11, 0x9ed71743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fmax.s f11, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
li x10, 0xf6457688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fmax.s f10, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
li x31, 0x0aac8ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fmax.s f31, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
li x20, 0x7c1b6d4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fmax.s f20, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
li x11, 0x4df4d3a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fmax.s f11, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
li x13, 0x35d6f07e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fmax.s f13, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
li x22, 0xe77520c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fmax.s f22, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
li x5, 0xc46738bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fmax.s f5, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
li x22, 0xdff21b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fmax.s f22, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
li x28, 0x74beb5dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fmax.s f28, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
li x27, 0xfd429202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fmax.s f27, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
li x23, 0xfc5aca9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fmax.s f23, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
li x18, 0x6350e764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fmax.s f18, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
li x5, 0x330ce81c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fmax.s f5, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
li x30, 0xa1ef997d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fmax.s f30, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
li x12, 0x82b7befb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fmax.s f12, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
li x15, 0x8ac34d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
fmax.s f15, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
li x30, 0x88c4680b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fmax.s f30, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
li x2, 0x28ac15a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fmax.s f2, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
li x23, 0x95585ff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fmax.s f23, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
li x12, 0x1f198310 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fmax.s f12, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
li x29, 0xefe9a8b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fmax.s f29, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
li x16, 0xc2fc5d00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
fmax.s f16, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
li x7, 0xf4843b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fmax.s f7, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
li x13, 0x8e7cad84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fmax.s f13, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
li x3, 0xd4405d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fmax.s f3, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
li x22, 0x4ee674dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fmax.s f22, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
li x29, 0x8b7755a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fmax.s f29, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
li x17, 0xd9f97188 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fmax.s f17, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
li x26, 0x054fde36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fmax.s f26, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
li x22, 0x044e8bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fmax.s f22, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
li x4, 0x94166366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fmax.s f4, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
li x1, 0x83919f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fmax.s f1, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
li x31, 0xe1957655 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fmax.s f31, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
li x16, 0x9ba03d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fmax.s f16, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
li x18, 0x66349186 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fmax.s f18, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
li x16, 0x1b849ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fmax.s f16, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
li x30, 0x7ddd56c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fmax.s f30, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
li x19, 0x8568a618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fmax.s f19, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
li x22, 0x498c20e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fmax.s f22, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
li x7, 0xe89354d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fmax.s f7, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
li x11, 0x4b8c37c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fmax.s f11, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
li x8, 0x511d7b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fmax.s f8, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
li x23, 0x34ebeff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fmax.s f23, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
li x24, 0x76b4b24f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fmax.s f24, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
li x20, 0x43221b95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fmax.s f20, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
li x31, 0x64399e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fmax.s f31, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
li x6, 0xbd53f509 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fmax.s f6, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
li x30, 0xfa1d853b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fmax.s f30, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
li x15, 0xed992f69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fmax.s f15, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
li x3, 0xfb8d316b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
fmax.s f3, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
li x29, 0x04c33200 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fmax.s f29, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
li x2, 0xb73dd432 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fmax.s f2, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
li x9, 0xfc9bb15d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fmax.s f9, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
li x6, 0xdf910d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
fmax.s f6, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
li x17, 0x237c92c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fmax.s f17, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
li x18, 0x1786416e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fmax.s f18, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
li x15, 0x4f5d8e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fmax.s f15, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
li x1, 0x9a8f64eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fmax.s f1, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
li x25, 0x3f9cd5ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fmax.s f25, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
li x30, 0x7352ed27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fmax.s f30, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
li x4, 0xd1c7fc2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fmax.s f4, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
li x20, 0xc5664787 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fmax.s f20, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
li x20, 0xed0b0331 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fmax.s f20, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
li x18, 0x6213b82a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fmax.s f18, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
li x5, 0xf65b67df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fmax.s f5, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
li x24, 0x74cd45bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmax.s f24, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
li x10, 0x5286f9b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fmax.s f10, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
li x26, 0xb4eac320 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fmax.s f26, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
li x14, 0x2add8f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fmax.s f14, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
li x30, 0xfdc87632 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fmax.s f30, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
li x10, 0x27a97a9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fmax.s f10, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
li x1, 0xc181dd93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fmax.s f1, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
li x11, 0xc0b4e83f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fmax.s f11, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
li x28, 0x341dfa18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fmax.s f28, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
li x15, 0xa0154b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fmax.s f15, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
li x13, 0xe8196d98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fmax.s f13, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
li x20, 0xc04613b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fmax.s f20, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
li x17, 0x738b6a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
fmax.s f17, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
li x6, 0xad805416 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fmax.s f6, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
li x7, 0x23c2d3f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fmax.s f7, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
li x6, 0xee411886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fmax.s f6, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
li x7, 0x1369709d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fmax.s f7, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
li x25, 0x51e9f679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fmax.s f25, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
li x1, 0xb08930fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fmax.s f1, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
li x12, 0x3f2f462d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fmax.s f12, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
li x26, 0x0bf6071e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fmax.s f26, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
li x9, 0x01007843 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fmax.s f9, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
li x30, 0xedbdad2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fmax.s f30, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
li x21, 0xaa528b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fmax.s f21, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
li x13, 0xcd740e48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fmax.s f13, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
li x14, 0x84b062e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fmax.s f14, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
li x30, 0xf2fa5852 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fmax.s f30, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
li x18, 0xbeb9e346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fmax.s f18, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
li x8, 0xd6c39136 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
fmax.s f8, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
li x30, 0x93b9c20a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fmax.s f30, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
li x30, 0x2bc3620c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fmax.s f30, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
li x26, 0x076da209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fmax.s f26, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
li x7, 0x5e70e07c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fmax.s f7, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
li x12, 0xba0992d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fmax.s f12, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
li x6, 0x2954efaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fmax.s f6, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
li x24, 0x0b9f6a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fmax.s f24, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
li x26, 0x6b34fd1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fmax.s f26, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
li x15, 0x76cfac9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fmax.s f15, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
li x7, 0x8a068eea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fmax.s f7, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
li x16, 0x2d3dc9de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fmax.s f16, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
li x17, 0x9a02beaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fmax.s f17, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
li x24, 0x525caac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fmax.s f24, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
li x13, 0xd0cd8eff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fmax.s f13, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
li x25, 0x36d817eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fmax.s f25, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
li x26, 0x7b11f466 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fmax.s f26, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
li x6, 0x42fc0d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fmax.s f6, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
li x19, 0x99aff07b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fmax.s f19, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
li x16, 0x70e98f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fmax.s f16, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
li x1, 0x99b16f45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fmax.s f1, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
li x27, 0xee297547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fmax.s f27, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
li x5, 0xc42ebfc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fmax.s f5, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
li x25, 0xc7e4150d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fmax.s f25, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
li x10, 0x9ea8ceef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fmax.s f10, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
li x11, 0x622ee853 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fmax.s f11, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
li x26, 0x95f85c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
fmax.s f26, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
li x11, 0x3a79f793 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fmax.s f11, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
li x31, 0x36009345 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fmax.s f31, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
li x22, 0xcbda844f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fmax.s f22, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
li x8, 0x83ef3a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fmax.s f8, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
li x24, 0x1750060b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fmax.s f24, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
li x13, 0x0cda7f31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fmax.s f13, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
li x26, 0xf3f8f515 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fmax.s f26, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
li x27, 0x1b7e29a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fmax.s f27, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
li x15, 0x1e9f736c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fmax.s f15, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
li x3, 0xc1e9b7d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fmax.s f3, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
li x7, 0x784b42d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fmax.s f7, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
li x28, 0x2f87fe84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fmax.s f28, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
li x4, 0x89dbb8f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fmax.s f4, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
li x23, 0x05689faa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fmax.s f23, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
li x18, 0x3a2526f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fmax.s f18, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
li x20, 0x97422975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fmax.s f20, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
li x18, 0x44bef0a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fmax.s f18, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
li x17, 0x1a9ef6b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fmax.s f17, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
li x14, 0xef015db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fmax.s f14, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
li x19, 0x41e01a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fmax.s f19, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
li x17, 0x81719057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fmax.s f17, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
li x5, 0x92ec4b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fmax.s f5, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
li x24, 0xa5ff4b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fmax.s f24, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
li x19, 0x514fa5b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fmax.s f19, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
li x9, 0xaa32c465 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fmax.s f9, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
li x29, 0xf0011076 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fmax.s f29, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
li x22, 0xc4952a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fmax.s f22, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
li x27, 0x485f2277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fmax.s f27, f6, f5 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x1fa0023f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99b2b85e # load x3 with value 0x99b2b85e
sw x3, 0(x2) # store 0x99b2b85e in memory
flw f1, 0(x2) # load 0x99b2b85e from memory into f1
li x3, 0xf985b02d # load x3 with value 0xf985b02d
sw x3, 0(x2) # store 0xf985b02d in memory
flw f5, 0(x2) # load 0xf985b02d from memory into f5
fmax.s f0, f1, f5 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xdabd3157 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01d218b3 # load x3 with value 0x01d218b3
sw x3, 0(x2) # store 0x01d218b3 in memory
flw f23, 0(x2) # load 0x01d218b3 from memory into f23
li x3, 0x9458e70a # load x3 with value 0x9458e70a
sw x3, 0(x2) # store 0x9458e70a in memory
flw f22, 0(x2) # load 0x9458e70a from memory into f22
fmax.s f1, f23, f22 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x8ebff25b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc42e3f5c # load x3 with value 0xc42e3f5c
sw x3, 0(x2) # store 0xc42e3f5c in memory
flw f1, 0(x2) # load 0xc42e3f5c from memory into f1
li x3, 0xfee792e7 # load x3 with value 0xfee792e7
sw x3, 0(x2) # store 0xfee792e7 in memory
flw f21, 0(x2) # load 0xfee792e7 from memory into f21
fmax.s f2, f1, f21 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x94af732c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x216c892d # load x3 with value 0x216c892d
sw x3, 0(x2) # store 0x216c892d in memory
flw f24, 0(x2) # load 0x216c892d from memory into f24
li x3, 0xe4e12e39 # load x3 with value 0xe4e12e39
sw x3, 0(x2) # store 0xe4e12e39 in memory
flw f2, 0(x2) # load 0xe4e12e39 from memory into f2
fmax.s f3, f24, f2 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xfd1c29bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe013f5d8 # load x3 with value 0xe013f5d8
sw x3, 0(x2) # store 0xe013f5d8 in memory
flw f18, 0(x2) # load 0xe013f5d8 from memory into f18
li x3, 0x51b13674 # load x3 with value 0x51b13674
sw x3, 0(x2) # store 0x51b13674 in memory
flw f15, 0(x2) # load 0x51b13674 from memory into f15
fmax.s f4, f18, f15 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xa7922057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb032f240 # load x3 with value 0xb032f240
sw x3, 0(x2) # store 0xb032f240 in memory
flw f17, 0(x2) # load 0xb032f240 from memory into f17
li x3, 0x4aefb3a8 # load x3 with value 0x4aefb3a8
sw x3, 0(x2) # store 0x4aefb3a8 in memory
flw f4, 0(x2) # load 0x4aefb3a8 from memory into f4
fmax.s f5, f17, f4 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xbe7d4f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32558707 # load x3 with value 0x32558707
sw x3, 0(x2) # store 0x32558707 in memory
flw f3, 0(x2) # load 0x32558707 from memory into f3
li x3, 0xd3dc7928 # load x3 with value 0xd3dc7928
sw x3, 0(x2) # store 0xd3dc7928 in memory
flw f28, 0(x2) # load 0xd3dc7928 from memory into f28
fmax.s f6, f3, f28 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x3fcd60d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3999395f # load x3 with value 0x3999395f
sw x3, 0(x2) # store 0x3999395f in memory
flw f29, 0(x2) # load 0x3999395f from memory into f29
li x3, 0x341e4726 # load x3 with value 0x341e4726
sw x3, 0(x2) # store 0x341e4726 in memory
flw f28, 0(x2) # load 0x341e4726 from memory into f28
fmax.s f7, f29, f28 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x453e8f31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa250231 # load x3 with value 0xaa250231
sw x3, 0(x2) # store 0xaa250231 in memory
flw f5, 0(x2) # load 0xaa250231 from memory into f5
li x3, 0xc803b6e8 # load x3 with value 0xc803b6e8
sw x3, 0(x2) # store 0xc803b6e8 in memory
flw f29, 0(x2) # load 0xc803b6e8 from memory into f29
fmax.s f8, f5, f29 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xbecf1953 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3296640 # load x3 with value 0xd3296640
sw x3, 0(x2) # store 0xd3296640 in memory
flw f21, 0(x2) # load 0xd3296640 from memory into f21
li x3, 0x0758a8d7 # load x3 with value 0x0758a8d7
sw x3, 0(x2) # store 0x0758a8d7 in memory
flw f29, 0(x2) # load 0x0758a8d7 from memory into f29
fmax.s f9, f21, f29 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x4214a36d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72ba72a0 # load x3 with value 0x72ba72a0
sw x3, 0(x2) # store 0x72ba72a0 in memory
flw f20, 0(x2) # load 0x72ba72a0 from memory into f20
li x3, 0x82d01031 # load x3 with value 0x82d01031
sw x3, 0(x2) # store 0x82d01031 in memory
flw f5, 0(x2) # load 0x82d01031 from memory into f5
fmax.s f10, f20, f5 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xd8e129e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb06ec2e # load x3 with value 0xeb06ec2e
sw x3, 0(x2) # store 0xeb06ec2e in memory
flw f29, 0(x2) # load 0xeb06ec2e from memory into f29
li x3, 0xc52f062f # load x3 with value 0xc52f062f
sw x3, 0(x2) # store 0xc52f062f in memory
flw f31, 0(x2) # load 0xc52f062f from memory into f31
fmax.s f11, f29, f31 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x54c47f28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1fc0de8b # load x3 with value 0x1fc0de8b
sw x3, 0(x2) # store 0x1fc0de8b in memory
flw f23, 0(x2) # load 0x1fc0de8b from memory into f23
li x3, 0x828ebf9f # load x3 with value 0x828ebf9f
sw x3, 0(x2) # store 0x828ebf9f in memory
flw f4, 0(x2) # load 0x828ebf9f from memory into f4
fmax.s f12, f23, f4 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x8b2381b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde966934 # load x3 with value 0xde966934
sw x3, 0(x2) # store 0xde966934 in memory
flw f15, 0(x2) # load 0xde966934 from memory into f15
li x3, 0x730e7dbd # load x3 with value 0x730e7dbd
sw x3, 0(x2) # store 0x730e7dbd in memory
flw f27, 0(x2) # load 0x730e7dbd from memory into f27
fmax.s f13, f15, f27 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xb39cf6c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadff4987 # load x3 with value 0xadff4987
sw x3, 0(x2) # store 0xadff4987 in memory
flw f2, 0(x2) # load 0xadff4987 from memory into f2
li x3, 0xb7aecd17 # load x3 with value 0xb7aecd17
sw x3, 0(x2) # store 0xb7aecd17 in memory
flw f14, 0(x2) # load 0xb7aecd17 from memory into f14
fmax.s f14, f2, f14 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x9d55ac13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52500bc3 # load x3 with value 0x52500bc3
sw x3, 0(x2) # store 0x52500bc3 in memory
flw f23, 0(x2) # load 0x52500bc3 from memory into f23
li x3, 0x5f535323 # load x3 with value 0x5f535323
sw x3, 0(x2) # store 0x5f535323 in memory
flw f27, 0(x2) # load 0x5f535323 from memory into f27
fmax.s f15, f23, f27 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x62475acb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2a96526 # load x3 with value 0xa2a96526
sw x3, 0(x2) # store 0xa2a96526 in memory
flw f30, 0(x2) # load 0xa2a96526 from memory into f30
li x3, 0xd5a58862 # load x3 with value 0xd5a58862
sw x3, 0(x2) # store 0xd5a58862 in memory
flw f15, 0(x2) # load 0xd5a58862 from memory into f15
fmax.s f16, f30, f15 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x7ffb4f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06ab8672 # load x3 with value 0x06ab8672
sw x3, 0(x2) # store 0x06ab8672 in memory
flw f22, 0(x2) # load 0x06ab8672 from memory into f22
li x3, 0xff55d125 # load x3 with value 0xff55d125
sw x3, 0(x2) # store 0xff55d125 in memory
flw f12, 0(x2) # load 0xff55d125 from memory into f12
fmax.s f17, f22, f12 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x53e41713 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x005557e1 # load x3 with value 0x005557e1
sw x3, 0(x2) # store 0x005557e1 in memory
flw f26, 0(x2) # load 0x005557e1 from memory into f26
li x3, 0xf49ff96a # load x3 with value 0xf49ff96a
sw x3, 0(x2) # store 0xf49ff96a in memory
flw f4, 0(x2) # load 0xf49ff96a from memory into f4
fmax.s f18, f26, f4 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xa04bbea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3dca6f0d # load x3 with value 0x3dca6f0d
sw x3, 0(x2) # store 0x3dca6f0d in memory
flw f23, 0(x2) # load 0x3dca6f0d from memory into f23
li x3, 0x632f7f2c # load x3 with value 0x632f7f2c
sw x3, 0(x2) # store 0x632f7f2c in memory
flw f30, 0(x2) # load 0x632f7f2c from memory into f30
fmax.s f19, f23, f30 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xb4662de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f064987 # load x3 with value 0x8f064987
sw x3, 0(x2) # store 0x8f064987 in memory
flw f16, 0(x2) # load 0x8f064987 from memory into f16
li x3, 0x92b489c9 # load x3 with value 0x92b489c9
sw x3, 0(x2) # store 0x92b489c9 in memory
flw f25, 0(x2) # load 0x92b489c9 from memory into f25
fmax.s f20, f16, f25 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x612c46ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e964672 # load x3 with value 0x0e964672
sw x3, 0(x2) # store 0x0e964672 in memory
flw f9, 0(x2) # load 0x0e964672 from memory into f9
li x3, 0x034d6216 # load x3 with value 0x034d6216
sw x3, 0(x2) # store 0x034d6216 in memory
flw f11, 0(x2) # load 0x034d6216 from memory into f11
fmax.s f21, f9, f11 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x7f4a6fec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b44759d # load x3 with value 0x0b44759d
sw x3, 0(x2) # store 0x0b44759d in memory
flw f24, 0(x2) # load 0x0b44759d from memory into f24
li x3, 0xa49b1124 # load x3 with value 0xa49b1124
sw x3, 0(x2) # store 0xa49b1124 in memory
flw f28, 0(x2) # load 0xa49b1124 from memory into f28
fmax.s f22, f24, f28 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x91a87e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe37b74df # load x3 with value 0xe37b74df
sw x3, 0(x2) # store 0xe37b74df in memory
flw f1, 0(x2) # load 0xe37b74df from memory into f1
li x3, 0x6614e93e # load x3 with value 0x6614e93e
sw x3, 0(x2) # store 0x6614e93e in memory
flw f16, 0(x2) # load 0x6614e93e from memory into f16
fmax.s f23, f1, f16 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xcd418e3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3372384d # load x3 with value 0x3372384d
sw x3, 0(x2) # store 0x3372384d in memory
flw f8, 0(x2) # load 0x3372384d from memory into f8
li x3, 0x96fca2ae # load x3 with value 0x96fca2ae
sw x3, 0(x2) # store 0x96fca2ae in memory
flw f31, 0(x2) # load 0x96fca2ae from memory into f31
fmax.s f24, f8, f31 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x6bdf5487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11e7e257 # load x3 with value 0x11e7e257
sw x3, 0(x2) # store 0x11e7e257 in memory
flw f11, 0(x2) # load 0x11e7e257 from memory into f11
li x3, 0x993d45ee # load x3 with value 0x993d45ee
sw x3, 0(x2) # store 0x993d45ee in memory
flw f31, 0(x2) # load 0x993d45ee from memory into f31
fmax.s f25, f11, f31 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xcd352ca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26936f71 # load x3 with value 0x26936f71
sw x3, 0(x2) # store 0x26936f71 in memory
flw f21, 0(x2) # load 0x26936f71 from memory into f21
li x3, 0x86984bdc # load x3 with value 0x86984bdc
sw x3, 0(x2) # store 0x86984bdc in memory
flw f5, 0(x2) # load 0x86984bdc from memory into f5
fmax.s f26, f21, f5 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x1283e421 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa384a00 # load x3 with value 0xfa384a00
sw x3, 0(x2) # store 0xfa384a00 in memory
flw f13, 0(x2) # load 0xfa384a00 from memory into f13
li x3, 0x8531115d # load x3 with value 0x8531115d
sw x3, 0(x2) # store 0x8531115d in memory
flw f27, 0(x2) # load 0x8531115d from memory into f27
fmax.s f27, f13, f27 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x79187557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4239e94 # load x3 with value 0xb4239e94
sw x3, 0(x2) # store 0xb4239e94 in memory
flw f10, 0(x2) # load 0xb4239e94 from memory into f10
li x3, 0x10d33574 # load x3 with value 0x10d33574
sw x3, 0(x2) # store 0x10d33574 in memory
flw f25, 0(x2) # load 0x10d33574 from memory into f25
fmax.s f28, f10, f25 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xe040c426 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc065a561 # load x3 with value 0xc065a561
sw x3, 0(x2) # store 0xc065a561 in memory
flw f15, 0(x2) # load 0xc065a561 from memory into f15
li x3, 0x6058acc5 # load x3 with value 0x6058acc5
sw x3, 0(x2) # store 0x6058acc5 in memory
flw f16, 0(x2) # load 0x6058acc5 from memory into f16
fmax.s f29, f15, f16 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xf955699f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6a32f35 # load x3 with value 0xb6a32f35
sw x3, 0(x2) # store 0xb6a32f35 in memory
flw f7, 0(x2) # load 0xb6a32f35 from memory into f7
li x3, 0x479223a0 # load x3 with value 0x479223a0
sw x3, 0(x2) # store 0x479223a0 in memory
flw f10, 0(x2) # load 0x479223a0 from memory into f10
fmax.s f30, f7, f10 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xc6abb0d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16d995d0 # load x3 with value 0x16d995d0
sw x3, 0(x2) # store 0x16d995d0 in memory
flw f20, 0(x2) # load 0x16d995d0 from memory into f20
li x3, 0x4f274bc8 # load x3 with value 0x4f274bc8
sw x3, 0(x2) # store 0x4f274bc8 in memory
flw f29, 0(x2) # load 0x4f274bc8 from memory into f29
fmax.s f31, f20, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x9, 0xba22bb46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29fe4b2e # load x3 with value 0x29fe4b2e
sw x3, 0(x2) # store 0x29fe4b2e in memory
flw f0, 0(x2) # load 0x29fe4b2e from memory into f0
li x3, 0x17e88289 # load x3 with value 0x17e88289
sw x3, 0(x2) # store 0x17e88289 in memory
flw f22, 0(x2) # load 0x17e88289 from memory into f22
fmax.s f9, f0, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x27, 0x0bbf55c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14da0c68 # load x3 with value 0x14da0c68
sw x3, 0(x2) # store 0x14da0c68 in memory
flw f1, 0(x2) # load 0x14da0c68 from memory into f1
li x3, 0xd4659d93 # load x3 with value 0xd4659d93
sw x3, 0(x2) # store 0xd4659d93 in memory
flw f22, 0(x2) # load 0xd4659d93 from memory into f22
fmax.s f27, f1, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x1, 0xed5ee801 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8243d489 # load x3 with value 0x8243d489
sw x3, 0(x2) # store 0x8243d489 in memory
flw f2, 0(x2) # load 0x8243d489 from memory into f2
li x3, 0xd5f7531d # load x3 with value 0xd5f7531d
sw x3, 0(x2) # store 0xd5f7531d in memory
flw f22, 0(x2) # load 0xd5f7531d from memory into f22
fmax.s f1, f2, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x25, 0x8c170594 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfb0d8a6 # load x3 with value 0xbfb0d8a6
sw x3, 0(x2) # store 0xbfb0d8a6 in memory
flw f3, 0(x2) # load 0xbfb0d8a6 from memory into f3
li x3, 0xc6c52bc7 # load x3 with value 0xc6c52bc7
sw x3, 0(x2) # store 0xc6c52bc7 in memory
flw f14, 0(x2) # load 0xc6c52bc7 from memory into f14
fmax.s f25, f3, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x17, 0x98b6265d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4e1326b # load x3 with value 0xe4e1326b
sw x3, 0(x2) # store 0xe4e1326b in memory
flw f4, 0(x2) # load 0xe4e1326b from memory into f4
li x3, 0x8ba0130f # load x3 with value 0x8ba0130f
sw x3, 0(x2) # store 0x8ba0130f in memory
flw f26, 0(x2) # load 0x8ba0130f from memory into f26
fmax.s f17, f4, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x21, 0xb532628b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74204c5c # load x3 with value 0x74204c5c
sw x3, 0(x2) # store 0x74204c5c in memory
flw f5, 0(x2) # load 0x74204c5c from memory into f5
li x3, 0xe0e13511 # load x3 with value 0xe0e13511
sw x3, 0(x2) # store 0xe0e13511 in memory
flw f9, 0(x2) # load 0xe0e13511 from memory into f9
fmax.s f21, f5, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x24, 0xadf07061 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc01b101d # load x3 with value 0xc01b101d
sw x3, 0(x2) # store 0xc01b101d in memory
flw f6, 0(x2) # load 0xc01b101d from memory into f6
li x3, 0x13ffcb9a # load x3 with value 0x13ffcb9a
sw x3, 0(x2) # store 0x13ffcb9a in memory
flw f9, 0(x2) # load 0x13ffcb9a from memory into f9
fmax.s f24, f6, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x3, 0x4224e3fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a76ff74 # load x3 with value 0x7a76ff74
sw x3, 0(x2) # store 0x7a76ff74 in memory
flw f7, 0(x2) # load 0x7a76ff74 from memory into f7
li x3, 0x297a9738 # load x3 with value 0x297a9738
sw x3, 0(x2) # store 0x297a9738 in memory
flw f10, 0(x2) # load 0x297a9738 from memory into f10
fmax.s f3, f7, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x18, 0xcd86a7f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c109773 # load x3 with value 0x8c109773
sw x3, 0(x2) # store 0x8c109773 in memory
flw f8, 0(x2) # load 0x8c109773 from memory into f8
li x3, 0xe1a66fc9 # load x3 with value 0xe1a66fc9
sw x3, 0(x2) # store 0xe1a66fc9 in memory
flw f1, 0(x2) # load 0xe1a66fc9 from memory into f1
fmax.s f18, f8, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x13, 0x52161a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2205d326 # load x3 with value 0x2205d326
sw x3, 0(x2) # store 0x2205d326 in memory
flw f9, 0(x2) # load 0x2205d326 from memory into f9
li x3, 0xe7b3ca14 # load x3 with value 0xe7b3ca14
sw x3, 0(x2) # store 0xe7b3ca14 in memory
flw f8, 0(x2) # load 0xe7b3ca14 from memory into f8
fmax.s f13, f9, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x9, 0xb3b49d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55190f06 # load x3 with value 0x55190f06
sw x3, 0(x2) # store 0x55190f06 in memory
flw f10, 0(x2) # load 0x55190f06 from memory into f10
li x3, 0x6e802a56 # load x3 with value 0x6e802a56
sw x3, 0(x2) # store 0x6e802a56 in memory
flw f7, 0(x2) # load 0x6e802a56 from memory into f7
fmax.s f9, f10, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x19, 0xa80b98c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bc32838 # load x3 with value 0x5bc32838
sw x3, 0(x2) # store 0x5bc32838 in memory
flw f11, 0(x2) # load 0x5bc32838 from memory into f11
li x3, 0x922b7660 # load x3 with value 0x922b7660
sw x3, 0(x2) # store 0x922b7660 in memory
flw f7, 0(x2) # load 0x922b7660 from memory into f7
fmax.s f19, f11, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x19, 0x756c6612 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57cc200f # load x3 with value 0x57cc200f
sw x3, 0(x2) # store 0x57cc200f in memory
flw f12, 0(x2) # load 0x57cc200f from memory into f12
li x3, 0x54788df2 # load x3 with value 0x54788df2
sw x3, 0(x2) # store 0x54788df2 in memory
flw f22, 0(x2) # load 0x54788df2 from memory into f22
fmax.s f19, f12, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x31, 0xf0ea1413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbeb6fa5 # load x3 with value 0xbbeb6fa5
sw x3, 0(x2) # store 0xbbeb6fa5 in memory
flw f13, 0(x2) # load 0xbbeb6fa5 from memory into f13
li x3, 0x1927f63a # load x3 with value 0x1927f63a
sw x3, 0(x2) # store 0x1927f63a in memory
flw f28, 0(x2) # load 0x1927f63a from memory into f28
fmax.s f31, f13, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x26, 0xd1be3389 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdc5ca7d # load x3 with value 0xcdc5ca7d
sw x3, 0(x2) # store 0xcdc5ca7d in memory
flw f14, 0(x2) # load 0xcdc5ca7d from memory into f14
li x3, 0x64422d72 # load x3 with value 0x64422d72
sw x3, 0(x2) # store 0x64422d72 in memory
flw f17, 0(x2) # load 0x64422d72 from memory into f17
fmax.s f26, f14, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x20, 0x1c157856 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba1cc293 # load x3 with value 0xba1cc293
sw x3, 0(x2) # store 0xba1cc293 in memory
flw f15, 0(x2) # load 0xba1cc293 from memory into f15
li x3, 0xf3267636 # load x3 with value 0xf3267636
sw x3, 0(x2) # store 0xf3267636 in memory
flw f23, 0(x2) # load 0xf3267636 from memory into f23
fmax.s f20, f15, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x13, 0x7bd23093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91b0166d # load x3 with value 0x91b0166d
sw x3, 0(x2) # store 0x91b0166d in memory
flw f16, 0(x2) # load 0x91b0166d from memory into f16
li x3, 0xb47405c4 # load x3 with value 0xb47405c4
sw x3, 0(x2) # store 0xb47405c4 in memory
flw f30, 0(x2) # load 0xb47405c4 from memory into f30
fmax.s f13, f16, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x11, 0x8da1c349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x572893bc # load x3 with value 0x572893bc
sw x3, 0(x2) # store 0x572893bc in memory
flw f17, 0(x2) # load 0x572893bc from memory into f17
li x3, 0x666df38f # load x3 with value 0x666df38f
sw x3, 0(x2) # store 0x666df38f in memory
flw f22, 0(x2) # load 0x666df38f from memory into f22
fmax.s f11, f17, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x5, 0xc278c974 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2091fe1 # load x3 with value 0xd2091fe1
sw x3, 0(x2) # store 0xd2091fe1 in memory
flw f18, 0(x2) # load 0xd2091fe1 from memory into f18
li x3, 0x77b8eae1 # load x3 with value 0x77b8eae1
sw x3, 0(x2) # store 0x77b8eae1 in memory
flw f6, 0(x2) # load 0x77b8eae1 from memory into f6
fmax.s f5, f18, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x16, 0xc5848034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f12f895 # load x3 with value 0x5f12f895
sw x3, 0(x2) # store 0x5f12f895 in memory
flw f19, 0(x2) # load 0x5f12f895 from memory into f19
li x3, 0xd88a2479 # load x3 with value 0xd88a2479
sw x3, 0(x2) # store 0xd88a2479 in memory
flw f9, 0(x2) # load 0xd88a2479 from memory into f9
fmax.s f16, f19, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x23, 0x0dac7a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8e88ce7 # load x3 with value 0xa8e88ce7
sw x3, 0(x2) # store 0xa8e88ce7 in memory
flw f20, 0(x2) # load 0xa8e88ce7 from memory into f20
li x3, 0x516fac26 # load x3 with value 0x516fac26
sw x3, 0(x2) # store 0x516fac26 in memory
flw f24, 0(x2) # load 0x516fac26 from memory into f24
fmax.s f23, f20, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x8, 0xe34f8a0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3d918db # load x3 with value 0xd3d918db
sw x3, 0(x2) # store 0xd3d918db in memory
flw f21, 0(x2) # load 0xd3d918db from memory into f21
li x3, 0xbeaf6f78 # load x3 with value 0xbeaf6f78
sw x3, 0(x2) # store 0xbeaf6f78 in memory
flw f22, 0(x2) # load 0xbeaf6f78 from memory into f22
fmax.s f8, f21, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x20, 0xa63a2da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40f8dba4 # load x3 with value 0x40f8dba4
sw x3, 0(x2) # store 0x40f8dba4 in memory
flw f22, 0(x2) # load 0x40f8dba4 from memory into f22
li x3, 0x2ca58c42 # load x3 with value 0x2ca58c42
sw x3, 0(x2) # store 0x2ca58c42 in memory
flw f10, 0(x2) # load 0x2ca58c42 from memory into f10
fmax.s f20, f22, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x2, 0x1487d476 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed3ebc45 # load x3 with value 0xed3ebc45
sw x3, 0(x2) # store 0xed3ebc45 in memory
flw f23, 0(x2) # load 0xed3ebc45 from memory into f23
li x3, 0xa1212882 # load x3 with value 0xa1212882
sw x3, 0(x2) # store 0xa1212882 in memory
flw f15, 0(x2) # load 0xa1212882 from memory into f15
fmax.s f2, f23, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x14, 0x71833d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35d01440 # load x3 with value 0x35d01440
sw x3, 0(x2) # store 0x35d01440 in memory
flw f24, 0(x2) # load 0x35d01440 from memory into f24
li x3, 0x414e053d # load x3 with value 0x414e053d
sw x3, 0(x2) # store 0x414e053d in memory
flw f7, 0(x2) # load 0x414e053d from memory into f7
fmax.s f14, f24, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x18, 0xf0c92f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27567be3 # load x3 with value 0x27567be3
sw x3, 0(x2) # store 0x27567be3 in memory
flw f25, 0(x2) # load 0x27567be3 from memory into f25
li x3, 0x5ae659fe # load x3 with value 0x5ae659fe
sw x3, 0(x2) # store 0x5ae659fe in memory
flw f3, 0(x2) # load 0x5ae659fe from memory into f3
fmax.s f18, f25, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x22, 0x28f580e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdef8acd9 # load x3 with value 0xdef8acd9
sw x3, 0(x2) # store 0xdef8acd9 in memory
flw f26, 0(x2) # load 0xdef8acd9 from memory into f26
li x3, 0xef79a97f # load x3 with value 0xef79a97f
sw x3, 0(x2) # store 0xef79a97f in memory
flw f5, 0(x2) # load 0xef79a97f from memory into f5
fmax.s f22, f26, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x15, 0xa54686b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x104d6045 # load x3 with value 0x104d6045
sw x3, 0(x2) # store 0x104d6045 in memory
flw f27, 0(x2) # load 0x104d6045 from memory into f27
li x3, 0x7e25d166 # load x3 with value 0x7e25d166
sw x3, 0(x2) # store 0x7e25d166 in memory
flw f22, 0(x2) # load 0x7e25d166 from memory into f22
fmax.s f15, f27, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x10, 0xa17b2988 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca59164b # load x3 with value 0xca59164b
sw x3, 0(x2) # store 0xca59164b in memory
flw f28, 0(x2) # load 0xca59164b from memory into f28
li x3, 0x85e744f4 # load x3 with value 0x85e744f4
sw x3, 0(x2) # store 0x85e744f4 in memory
flw f6, 0(x2) # load 0x85e744f4 from memory into f6
fmax.s f10, f28, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x8, 0xe630eda5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e91ed83 # load x3 with value 0x3e91ed83
sw x3, 0(x2) # store 0x3e91ed83 in memory
flw f29, 0(x2) # load 0x3e91ed83 from memory into f29
li x3, 0xf2d7834c # load x3 with value 0xf2d7834c
sw x3, 0(x2) # store 0xf2d7834c in memory
flw f27, 0(x2) # load 0xf2d7834c from memory into f27
fmax.s f8, f29, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x7, 0x7ae7fa7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a1c6c7d # load x3 with value 0x7a1c6c7d
sw x3, 0(x2) # store 0x7a1c6c7d in memory
flw f30, 0(x2) # load 0x7a1c6c7d from memory into f30
li x3, 0x3be8aa87 # load x3 with value 0x3be8aa87
sw x3, 0(x2) # store 0x3be8aa87 in memory
flw f29, 0(x2) # load 0x3be8aa87 from memory into f29
fmax.s f7, f30, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x7, 0x3beb8605 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40683fbe # load x3 with value 0x40683fbe
sw x3, 0(x2) # store 0x40683fbe in memory
flw f31, 0(x2) # load 0x40683fbe from memory into f31
li x3, 0x03c094a6 # load x3 with value 0x03c094a6
sw x3, 0(x2) # store 0x03c094a6 in memory
flw f21, 0(x2) # load 0x03c094a6 from memory into f21
fmax.s f7, f31, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x14, 0x2bff005f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc913807 # load x3 with value 0xdc913807
sw x3, 0(x2) # store 0xdc913807 in memory
flw f21, 0(x2) # load 0xdc913807 from memory into f21
li x3, 0x92e1a497 # load x3 with value 0x92e1a497
sw x3, 0(x2) # store 0x92e1a497 in memory
flw f0, 0(x2) # load 0x92e1a497 from memory into f0
fmax.s f14, f21, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x28, 0x45be1a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a53d94e # load x3 with value 0x1a53d94e
sw x3, 0(x2) # store 0x1a53d94e in memory
flw f21, 0(x2) # load 0x1a53d94e from memory into f21
li x3, 0x318dc54c # load x3 with value 0x318dc54c
sw x3, 0(x2) # store 0x318dc54c in memory
flw f1, 0(x2) # load 0x318dc54c from memory into f1
fmax.s f28, f21, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x27, 0x12b8a86a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf95eabe5 # load x3 with value 0xf95eabe5
sw x3, 0(x2) # store 0xf95eabe5 in memory
flw f14, 0(x2) # load 0xf95eabe5 from memory into f14
li x3, 0x098c9567 # load x3 with value 0x098c9567
sw x3, 0(x2) # store 0x098c9567 in memory
flw f2, 0(x2) # load 0x098c9567 from memory into f2
fmax.s f27, f14, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x10, 0xa67b5da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde50be69 # load x3 with value 0xde50be69
sw x3, 0(x2) # store 0xde50be69 in memory
flw f4, 0(x2) # load 0xde50be69 from memory into f4
li x3, 0x7630389a # load x3 with value 0x7630389a
sw x3, 0(x2) # store 0x7630389a in memory
flw f3, 0(x2) # load 0x7630389a from memory into f3
fmax.s f10, f4, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x13, 0xa6faae6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x09d07dfc # load x3 with value 0x09d07dfc
sw x3, 0(x2) # store 0x09d07dfc in memory
flw f19, 0(x2) # load 0x09d07dfc from memory into f19
li x3, 0x40419051 # load x3 with value 0x40419051
sw x3, 0(x2) # store 0x40419051 in memory
flw f4, 0(x2) # load 0x40419051 from memory into f4
fmax.s f13, f19, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x15, 0xb54f6edd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccce6b5a # load x3 with value 0xccce6b5a
sw x3, 0(x2) # store 0xccce6b5a in memory
flw f10, 0(x2) # load 0xccce6b5a from memory into f10
li x3, 0x3a8fee1e # load x3 with value 0x3a8fee1e
sw x3, 0(x2) # store 0x3a8fee1e in memory
flw f5, 0(x2) # load 0x3a8fee1e from memory into f5
fmax.s f15, f10, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x20, 0x1b937a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x575851a8 # load x3 with value 0x575851a8
sw x3, 0(x2) # store 0x575851a8 in memory
flw f10, 0(x2) # load 0x575851a8 from memory into f10
li x3, 0xb5a922a9 # load x3 with value 0xb5a922a9
sw x3, 0(x2) # store 0xb5a922a9 in memory
flw f6, 0(x2) # load 0xb5a922a9 from memory into f6
fmax.s f20, f10, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x6, 0xc6a979d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x09034b0a # load x3 with value 0x09034b0a
sw x3, 0(x2) # store 0x09034b0a in memory
flw f4, 0(x2) # load 0x09034b0a from memory into f4
li x3, 0x3b6bde2c # load x3 with value 0x3b6bde2c
sw x3, 0(x2) # store 0x3b6bde2c in memory
flw f7, 0(x2) # load 0x3b6bde2c from memory into f7
fmax.s f6, f4, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x23, 0xe6fc4f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0850eb58 # load x3 with value 0x0850eb58
sw x3, 0(x2) # store 0x0850eb58 in memory
flw f27, 0(x2) # load 0x0850eb58 from memory into f27
li x3, 0xc5e6c02a # load x3 with value 0xc5e6c02a
sw x3, 0(x2) # store 0xc5e6c02a in memory
flw f8, 0(x2) # load 0xc5e6c02a from memory into f8
fmax.s f23, f27, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x9, 0x230ff0ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2c9b8be # load x3 with value 0xb2c9b8be
sw x3, 0(x2) # store 0xb2c9b8be in memory
flw f29, 0(x2) # load 0xb2c9b8be from memory into f29
li x3, 0xaf059e8b # load x3 with value 0xaf059e8b
sw x3, 0(x2) # store 0xaf059e8b in memory
flw f9, 0(x2) # load 0xaf059e8b from memory into f9
fmax.s f9, f29, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x7, 0x8fa7b826 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7e82959 # load x3 with value 0xc7e82959
sw x3, 0(x2) # store 0xc7e82959 in memory
flw f11, 0(x2) # load 0xc7e82959 from memory into f11
li x3, 0x5ccf8f0a # load x3 with value 0x5ccf8f0a
sw x3, 0(x2) # store 0x5ccf8f0a in memory
flw f10, 0(x2) # load 0x5ccf8f0a from memory into f10
fmax.s f7, f11, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x30, 0xeab898f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfddb2355 # load x3 with value 0xfddb2355
sw x3, 0(x2) # store 0xfddb2355 in memory
flw f15, 0(x2) # load 0xfddb2355 from memory into f15
li x3, 0xe8eb2cf3 # load x3 with value 0xe8eb2cf3
sw x3, 0(x2) # store 0xe8eb2cf3 in memory
flw f11, 0(x2) # load 0xe8eb2cf3 from memory into f11
fmax.s f30, f15, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x21, 0x66c64e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f83ac3f # load x3 with value 0x4f83ac3f
sw x3, 0(x2) # store 0x4f83ac3f in memory
flw f1, 0(x2) # load 0x4f83ac3f from memory into f1
li x3, 0xcd1ad97e # load x3 with value 0xcd1ad97e
sw x3, 0(x2) # store 0xcd1ad97e in memory
flw f12, 0(x2) # load 0xcd1ad97e from memory into f12
fmax.s f21, f1, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x25, 0x8c524045 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c9a36b8 # load x3 with value 0x2c9a36b8
sw x3, 0(x2) # store 0x2c9a36b8 in memory
flw f2, 0(x2) # load 0x2c9a36b8 from memory into f2
li x3, 0xadc8d0fc # load x3 with value 0xadc8d0fc
sw x3, 0(x2) # store 0xadc8d0fc in memory
flw f13, 0(x2) # load 0xadc8d0fc from memory into f13
fmax.s f25, f2, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x22, 0x694e37b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76fbb7a9 # load x3 with value 0x76fbb7a9
sw x3, 0(x2) # store 0x76fbb7a9 in memory
flw f3, 0(x2) # load 0x76fbb7a9 from memory into f3
li x3, 0xe06ceda5 # load x3 with value 0xe06ceda5
sw x3, 0(x2) # store 0xe06ceda5 in memory
flw f14, 0(x2) # load 0xe06ceda5 from memory into f14
fmax.s f22, f3, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x15, 0xa1557049 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcee29c88 # load x3 with value 0xcee29c88
sw x3, 0(x2) # store 0xcee29c88 in memory
flw f25, 0(x2) # load 0xcee29c88 from memory into f25
li x3, 0xf1f1b96e # load x3 with value 0xf1f1b96e
sw x3, 0(x2) # store 0xf1f1b96e in memory
flw f15, 0(x2) # load 0xf1f1b96e from memory into f15
fmax.s f15, f25, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x13, 0x8679470e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdfbbab2 # load x3 with value 0xcdfbbab2
sw x3, 0(x2) # store 0xcdfbbab2 in memory
flw f1, 0(x2) # load 0xcdfbbab2 from memory into f1
li x3, 0xbf4ced56 # load x3 with value 0xbf4ced56
sw x3, 0(x2) # store 0xbf4ced56 in memory
flw f16, 0(x2) # load 0xbf4ced56 from memory into f16
fmax.s f13, f1, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x31, 0x7498c87c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3280cba6 # load x3 with value 0x3280cba6
sw x3, 0(x2) # store 0x3280cba6 in memory
flw f3, 0(x2) # load 0x3280cba6 from memory into f3
li x3, 0x9941cfef # load x3 with value 0x9941cfef
sw x3, 0(x2) # store 0x9941cfef in memory
flw f17, 0(x2) # load 0x9941cfef from memory into f17
fmax.s f31, f3, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x13, 0x1650c819 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6f8c0b6 # load x3 with value 0xf6f8c0b6
sw x3, 0(x2) # store 0xf6f8c0b6 in memory
flw f5, 0(x2) # load 0xf6f8c0b6 from memory into f5
li x3, 0x233e0e1e # load x3 with value 0x233e0e1e
sw x3, 0(x2) # store 0x233e0e1e in memory
flw f18, 0(x2) # load 0x233e0e1e from memory into f18
fmax.s f13, f5, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x4, 0x87d512b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bd790ff # load x3 with value 0x2bd790ff
sw x3, 0(x2) # store 0x2bd790ff in memory
flw f18, 0(x2) # load 0x2bd790ff from memory into f18
li x3, 0x2de648f0 # load x3 with value 0x2de648f0
sw x3, 0(x2) # store 0x2de648f0 in memory
flw f19, 0(x2) # load 0x2de648f0 from memory into f19
fmax.s f4, f18, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x10, 0x775b8335 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9921e9e # load x3 with value 0xf9921e9e
sw x3, 0(x2) # store 0xf9921e9e in memory
flw f12, 0(x2) # load 0xf9921e9e from memory into f12
li x3, 0xb88ea8b8 # load x3 with value 0xb88ea8b8
sw x3, 0(x2) # store 0xb88ea8b8 in memory
flw f20, 0(x2) # load 0xb88ea8b8 from memory into f20
fmax.s f10, f12, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x10, 0x8b21f42a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac3d139e # load x3 with value 0xac3d139e
sw x3, 0(x2) # store 0xac3d139e in memory
flw f9, 0(x2) # load 0xac3d139e from memory into f9
li x3, 0x9ad5e685 # load x3 with value 0x9ad5e685
sw x3, 0(x2) # store 0x9ad5e685 in memory
flw f21, 0(x2) # load 0x9ad5e685 from memory into f21
fmax.s f10, f9, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x25, 0x2d9f69ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x720d4ccd # load x3 with value 0x720d4ccd
sw x3, 0(x2) # store 0x720d4ccd in memory
flw f23, 0(x2) # load 0x720d4ccd from memory into f23
li x3, 0x6af6c4e7 # load x3 with value 0x6af6c4e7
sw x3, 0(x2) # store 0x6af6c4e7 in memory
flw f22, 0(x2) # load 0x6af6c4e7 from memory into f22
fmax.s f25, f23, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x30, 0xf110f083 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad7708ce # load x3 with value 0xad7708ce
sw x3, 0(x2) # store 0xad7708ce in memory
flw f27, 0(x2) # load 0xad7708ce from memory into f27
li x3, 0x4d549ae6 # load x3 with value 0x4d549ae6
sw x3, 0(x2) # store 0x4d549ae6 in memory
flw f23, 0(x2) # load 0x4d549ae6 from memory into f23
fmax.s f30, f27, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x13, 0x171c5bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f4748d4 # load x3 with value 0x4f4748d4
sw x3, 0(x2) # store 0x4f4748d4 in memory
flw f10, 0(x2) # load 0x4f4748d4 from memory into f10
li x3, 0x08a4fc86 # load x3 with value 0x08a4fc86
sw x3, 0(x2) # store 0x08a4fc86 in memory
flw f24, 0(x2) # load 0x08a4fc86 from memory into f24
fmax.s f13, f10, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x24, 0x77a13bd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6da6531b # load x3 with value 0x6da6531b
sw x3, 0(x2) # store 0x6da6531b in memory
flw f13, 0(x2) # load 0x6da6531b from memory into f13
li x3, 0x0112ef9c # load x3 with value 0x0112ef9c
sw x3, 0(x2) # store 0x0112ef9c in memory
flw f25, 0(x2) # load 0x0112ef9c from memory into f25
fmax.s f24, f13, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x10, 0x5468a296 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15df3778 # load x3 with value 0x15df3778
sw x3, 0(x2) # store 0x15df3778 in memory
flw f9, 0(x2) # load 0x15df3778 from memory into f9
li x3, 0xd1dfeff5 # load x3 with value 0xd1dfeff5
sw x3, 0(x2) # store 0xd1dfeff5 in memory
flw f26, 0(x2) # load 0xd1dfeff5 from memory into f26
fmax.s f10, f9, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x8, 0x01acb8f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1564841 # load x3 with value 0xc1564841
sw x3, 0(x2) # store 0xc1564841 in memory
flw f10, 0(x2) # load 0xc1564841 from memory into f10
li x3, 0x60e17fc9 # load x3 with value 0x60e17fc9
sw x3, 0(x2) # store 0x60e17fc9 in memory
flw f27, 0(x2) # load 0x60e17fc9 from memory into f27
fmax.s f8, f10, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x4, 0x55fb6bda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31ef2d2c # load x3 with value 0x31ef2d2c
sw x3, 0(x2) # store 0x31ef2d2c in memory
flw f23, 0(x2) # load 0x31ef2d2c from memory into f23
li x3, 0x6a989a6e # load x3 with value 0x6a989a6e
sw x3, 0(x2) # store 0x6a989a6e in memory
flw f28, 0(x2) # load 0x6a989a6e from memory into f28
fmax.s f4, f23, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x31, 0x9f1b9280 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07696f68 # load x3 with value 0x07696f68
sw x3, 0(x2) # store 0x07696f68 in memory
flw f12, 0(x2) # load 0x07696f68 from memory into f12
li x3, 0xbbddd179 # load x3 with value 0xbbddd179
sw x3, 0(x2) # store 0xbbddd179 in memory
flw f29, 0(x2) # load 0xbbddd179 from memory into f29
fmax.s f31, f12, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x27, 0xb2e284bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x629e369a # load x3 with value 0x629e369a
sw x3, 0(x2) # store 0x629e369a in memory
flw f29, 0(x2) # load 0x629e369a from memory into f29
li x3, 0x8836791b # load x3 with value 0x8836791b
sw x3, 0(x2) # store 0x8836791b in memory
flw f30, 0(x2) # load 0x8836791b from memory into f30
fmax.s f27, f29, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x29, 0xc65ec849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb39603bd # load x3 with value 0xb39603bd
sw x3, 0(x2) # store 0xb39603bd in memory
flw f12, 0(x2) # load 0xb39603bd from memory into f12
li x3, 0x0d111eba # load x3 with value 0x0d111eba
sw x3, 0(x2) # store 0x0d111eba in memory
flw f31, 0(x2) # load 0x0d111eba from memory into f31
fmax.s f29, f12, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
