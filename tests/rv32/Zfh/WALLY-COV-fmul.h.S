///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fmul.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.703023
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
fmul.h f19, f13, f28 # perform first operation
fmul.h f11, f19, f18 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmul.h f7, f11, f23 # perform first operation
fmul.h f7, f5, f7 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmul.h f21, f25, f3 # perform first operation
fmul.h f21, f22, f9 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmul.h f16, f12, f15 # perform first operation
fmul.h f16, f8, f27 # perform second operation

# Testcase cmp_gpr_hazard war test
fmul.h f5, f1, f8 # perform first operation
fmul.h f1, f20, f26 # perform second operation

# Testcase cmp_gpr_hazard war test
fmul.h f3, f21, f11 # perform first operation
fmul.h f11, f23, f7 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x82cf1c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4112902e # load x3 with value 0x4112902e
sw x3, 0(x2) # store 0x4112902e in memory
flh f0, 0(x2) # load 0x4112902e from memory into f0
li x3, 0x09df6ce5 # load x3 with value 0x09df6ce5
sw x3, 0(x2) # store 0x09df6ce5 in memory
flh f1, 0(x2) # load 0x09df6ce5 from memory into f1
fmul.h f0, f0, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xa140cd09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc40979e6 # load x3 with value 0xc40979e6
sw x3, 0(x2) # store 0xc40979e6 in memory
flh f1, 0(x2) # load 0xc40979e6 from memory into f1
li x3, 0x00a5adf5 # load x3 with value 0x00a5adf5
sw x3, 0(x2) # store 0x00a5adf5 in memory
flh f4, 0(x2) # load 0x00a5adf5 from memory into f4
fmul.h f1, f1, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xb529712c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6c82a9f # load x3 with value 0xf6c82a9f
sw x3, 0(x2) # store 0xf6c82a9f in memory
flh f2, 0(x2) # load 0xf6c82a9f from memory into f2
li x3, 0x6dfb6298 # load x3 with value 0x6dfb6298
sw x3, 0(x2) # store 0x6dfb6298 in memory
flh f3, 0(x2) # load 0x6dfb6298 from memory into f3
fmul.h f2, f2, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xed21a630 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c0c3dc8 # load x3 with value 0x9c0c3dc8
sw x3, 0(x2) # store 0x9c0c3dc8 in memory
flh f3, 0(x2) # load 0x9c0c3dc8 from memory into f3
li x3, 0x94b5b8c1 # load x3 with value 0x94b5b8c1
sw x3, 0(x2) # store 0x94b5b8c1 in memory
flh f14, 0(x2) # load 0x94b5b8c1 from memory into f14
fmul.h f3, f3, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xdaed1071 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0916ab0 # load x3 with value 0xd0916ab0
sw x3, 0(x2) # store 0xd0916ab0 in memory
flh f4, 0(x2) # load 0xd0916ab0 from memory into f4
li x3, 0xa1ad0713 # load x3 with value 0xa1ad0713
sw x3, 0(x2) # store 0xa1ad0713 in memory
flh f16, 0(x2) # load 0xa1ad0713 from memory into f16
fmul.h f4, f4, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x50a3869f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18158e4a # load x3 with value 0x18158e4a
sw x3, 0(x2) # store 0x18158e4a in memory
flh f5, 0(x2) # load 0x18158e4a from memory into f5
li x3, 0xe178d5fe # load x3 with value 0xe178d5fe
sw x3, 0(x2) # store 0xe178d5fe in memory
flh f23, 0(x2) # load 0xe178d5fe from memory into f23
fmul.h f5, f5, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xd118084c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a9fd5a2 # load x3 with value 0x7a9fd5a2
sw x3, 0(x2) # store 0x7a9fd5a2 in memory
flh f6, 0(x2) # load 0x7a9fd5a2 from memory into f6
li x3, 0xff9540a4 # load x3 with value 0xff9540a4
sw x3, 0(x2) # store 0xff9540a4 in memory
flh f18, 0(x2) # load 0xff9540a4 from memory into f18
fmul.h f6, f6, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xb816c31f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadc6e009 # load x3 with value 0xadc6e009
sw x3, 0(x2) # store 0xadc6e009 in memory
flh f7, 0(x2) # load 0xadc6e009 from memory into f7
li x3, 0x3967bee7 # load x3 with value 0x3967bee7
sw x3, 0(x2) # store 0x3967bee7 in memory
flh f26, 0(x2) # load 0x3967bee7 from memory into f26
fmul.h f7, f7, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xf07f9fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf01d59ac # load x3 with value 0xf01d59ac
sw x3, 0(x2) # store 0xf01d59ac in memory
flh f8, 0(x2) # load 0xf01d59ac from memory into f8
li x3, 0x4a714d74 # load x3 with value 0x4a714d74
sw x3, 0(x2) # store 0x4a714d74 in memory
flh f31, 0(x2) # load 0x4a714d74 from memory into f31
fmul.h f8, f8, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xa773dff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7375eb25 # load x3 with value 0x7375eb25
sw x3, 0(x2) # store 0x7375eb25 in memory
flh f9, 0(x2) # load 0x7375eb25 from memory into f9
li x3, 0xda3b9152 # load x3 with value 0xda3b9152
sw x3, 0(x2) # store 0xda3b9152 in memory
flh f22, 0(x2) # load 0xda3b9152 from memory into f22
fmul.h f9, f9, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x5ab98de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51c02c23 # load x3 with value 0x51c02c23
sw x3, 0(x2) # store 0x51c02c23 in memory
flh f10, 0(x2) # load 0x51c02c23 from memory into f10
li x3, 0xec91e905 # load x3 with value 0xec91e905
sw x3, 0(x2) # store 0xec91e905 in memory
flh f24, 0(x2) # load 0xec91e905 from memory into f24
fmul.h f10, f10, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x01096dcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91adce39 # load x3 with value 0x91adce39
sw x3, 0(x2) # store 0x91adce39 in memory
flh f11, 0(x2) # load 0x91adce39 from memory into f11
li x3, 0x282ac84e # load x3 with value 0x282ac84e
sw x3, 0(x2) # store 0x282ac84e in memory
flh f4, 0(x2) # load 0x282ac84e from memory into f4
fmul.h f11, f11, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xc813b22e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0821f9e7 # load x3 with value 0x0821f9e7
sw x3, 0(x2) # store 0x0821f9e7 in memory
flh f12, 0(x2) # load 0x0821f9e7 from memory into f12
li x3, 0x6fc30d30 # load x3 with value 0x6fc30d30
sw x3, 0(x2) # store 0x6fc30d30 in memory
flh f19, 0(x2) # load 0x6fc30d30 from memory into f19
fmul.h f12, f12, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xe64c9588 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe7aea15 # load x3 with value 0xfe7aea15
sw x3, 0(x2) # store 0xfe7aea15 in memory
flh f13, 0(x2) # load 0xfe7aea15 from memory into f13
li x3, 0x7eaa4d35 # load x3 with value 0x7eaa4d35
sw x3, 0(x2) # store 0x7eaa4d35 in memory
flh f16, 0(x2) # load 0x7eaa4d35 from memory into f16
fmul.h f13, f13, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x64a102f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5f0ccc3 # load x3 with value 0xd5f0ccc3
sw x3, 0(x2) # store 0xd5f0ccc3 in memory
flh f14, 0(x2) # load 0xd5f0ccc3 from memory into f14
li x3, 0x56c5c6a6 # load x3 with value 0x56c5c6a6
sw x3, 0(x2) # store 0x56c5c6a6 in memory
flh f21, 0(x2) # load 0x56c5c6a6 from memory into f21
fmul.h f14, f14, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xf8058ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89867030 # load x3 with value 0x89867030
sw x3, 0(x2) # store 0x89867030 in memory
flh f15, 0(x2) # load 0x89867030 from memory into f15
li x3, 0x1ea89f00 # load x3 with value 0x1ea89f00
sw x3, 0(x2) # store 0x1ea89f00 in memory
flh f23, 0(x2) # load 0x1ea89f00 from memory into f23
fmul.h f15, f15, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x034991b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x877b24a9 # load x3 with value 0x877b24a9
sw x3, 0(x2) # store 0x877b24a9 in memory
flh f16, 0(x2) # load 0x877b24a9 from memory into f16
li x3, 0xd0b63deb # load x3 with value 0xd0b63deb
sw x3, 0(x2) # store 0xd0b63deb in memory
flh f1, 0(x2) # load 0xd0b63deb from memory into f1
fmul.h f16, f16, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xd22480d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x213eef09 # load x3 with value 0x213eef09
sw x3, 0(x2) # store 0x213eef09 in memory
flh f17, 0(x2) # load 0x213eef09 from memory into f17
li x3, 0xb76371f8 # load x3 with value 0xb76371f8
sw x3, 0(x2) # store 0xb76371f8 in memory
flh f10, 0(x2) # load 0xb76371f8 from memory into f10
fmul.h f17, f17, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x718519ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33e001e2 # load x3 with value 0x33e001e2
sw x3, 0(x2) # store 0x33e001e2 in memory
flh f18, 0(x2) # load 0x33e001e2 from memory into f18
li x3, 0xc6363437 # load x3 with value 0xc6363437
sw x3, 0(x2) # store 0xc6363437 in memory
flh f15, 0(x2) # load 0xc6363437 from memory into f15
fmul.h f18, f18, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x20abd6b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69105a85 # load x3 with value 0x69105a85
sw x3, 0(x2) # store 0x69105a85 in memory
flh f19, 0(x2) # load 0x69105a85 from memory into f19
li x3, 0x4409420c # load x3 with value 0x4409420c
sw x3, 0(x2) # store 0x4409420c in memory
flh f25, 0(x2) # load 0x4409420c from memory into f25
fmul.h f19, f19, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x2732fd8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce23bc04 # load x3 with value 0xce23bc04
sw x3, 0(x2) # store 0xce23bc04 in memory
flh f20, 0(x2) # load 0xce23bc04 from memory into f20
li x3, 0xec555758 # load x3 with value 0xec555758
sw x3, 0(x2) # store 0xec555758 in memory
flh f21, 0(x2) # load 0xec555758 from memory into f21
fmul.h f20, f20, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x815b5f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ec2bad6 # load x3 with value 0x4ec2bad6
sw x3, 0(x2) # store 0x4ec2bad6 in memory
flh f21, 0(x2) # load 0x4ec2bad6 from memory into f21
li x3, 0x76c90b9b # load x3 with value 0x76c90b9b
sw x3, 0(x2) # store 0x76c90b9b in memory
flh f9, 0(x2) # load 0x76c90b9b from memory into f9
fmul.h f21, f21, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xc6dfa460 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce2f840c # load x3 with value 0xce2f840c
sw x3, 0(x2) # store 0xce2f840c in memory
flh f22, 0(x2) # load 0xce2f840c from memory into f22
li x3, 0x3dbb076b # load x3 with value 0x3dbb076b
sw x3, 0(x2) # store 0x3dbb076b in memory
flh f19, 0(x2) # load 0x3dbb076b from memory into f19
fmul.h f22, f22, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xb742ef79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5c800f9 # load x3 with value 0xf5c800f9
sw x3, 0(x2) # store 0xf5c800f9 in memory
flh f23, 0(x2) # load 0xf5c800f9 from memory into f23
li x3, 0x2c01632d # load x3 with value 0x2c01632d
sw x3, 0(x2) # store 0x2c01632d in memory
flh f13, 0(x2) # load 0x2c01632d from memory into f13
fmul.h f23, f23, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xa6fd615c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf8b83e0 # load x3 with value 0xcf8b83e0
sw x3, 0(x2) # store 0xcf8b83e0 in memory
flh f24, 0(x2) # load 0xcf8b83e0 from memory into f24
li x3, 0x1115551a # load x3 with value 0x1115551a
sw x3, 0(x2) # store 0x1115551a in memory
flh f5, 0(x2) # load 0x1115551a from memory into f5
fmul.h f24, f24, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xf422ed88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbba9241b # load x3 with value 0xbba9241b
sw x3, 0(x2) # store 0xbba9241b in memory
flh f25, 0(x2) # load 0xbba9241b from memory into f25
li x3, 0x619b6294 # load x3 with value 0x619b6294
sw x3, 0(x2) # store 0x619b6294 in memory
flh f17, 0(x2) # load 0x619b6294 from memory into f17
fmul.h f25, f25, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x3bf53888 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed4aaa5a # load x3 with value 0xed4aaa5a
sw x3, 0(x2) # store 0xed4aaa5a in memory
flh f26, 0(x2) # load 0xed4aaa5a from memory into f26
li x3, 0xac16bf4b # load x3 with value 0xac16bf4b
sw x3, 0(x2) # store 0xac16bf4b in memory
flh f10, 0(x2) # load 0xac16bf4b from memory into f10
fmul.h f26, f26, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x52d9e8f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb756690c # load x3 with value 0xb756690c
sw x3, 0(x2) # store 0xb756690c in memory
flh f27, 0(x2) # load 0xb756690c from memory into f27
li x3, 0xd9e2d216 # load x3 with value 0xd9e2d216
sw x3, 0(x2) # store 0xd9e2d216 in memory
flh f13, 0(x2) # load 0xd9e2d216 from memory into f13
fmul.h f27, f27, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x754b038a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf848dc1e # load x3 with value 0xf848dc1e
sw x3, 0(x2) # store 0xf848dc1e in memory
flh f28, 0(x2) # load 0xf848dc1e from memory into f28
li x3, 0xa46225f6 # load x3 with value 0xa46225f6
sw x3, 0(x2) # store 0xa46225f6 in memory
flh f16, 0(x2) # load 0xa46225f6 from memory into f16
fmul.h f28, f28, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x34d976f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf28b9cad # load x3 with value 0xf28b9cad
sw x3, 0(x2) # store 0xf28b9cad in memory
flh f29, 0(x2) # load 0xf28b9cad from memory into f29
li x3, 0x141aa0a2 # load x3 with value 0x141aa0a2
sw x3, 0(x2) # store 0x141aa0a2 in memory
flh f8, 0(x2) # load 0x141aa0a2 from memory into f8
fmul.h f29, f29, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x6cdf849b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x399840ae # load x3 with value 0x399840ae
sw x3, 0(x2) # store 0x399840ae in memory
flh f30, 0(x2) # load 0x399840ae from memory into f30
li x3, 0xf3de0dc2 # load x3 with value 0xf3de0dc2
sw x3, 0(x2) # store 0xf3de0dc2 in memory
flh f17, 0(x2) # load 0xf3de0dc2 from memory into f17
fmul.h f30, f30, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x572f9553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeeb08381 # load x3 with value 0xeeb08381
sw x3, 0(x2) # store 0xeeb08381 in memory
flh f31, 0(x2) # load 0xeeb08381 from memory into f31
li x3, 0x16d5b78c # load x3 with value 0x16d5b78c
sw x3, 0(x2) # store 0x16d5b78c in memory
flh f30, 0(x2) # load 0x16d5b78c from memory into f30
fmul.h f31, f31, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x6162065f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40639786 # load x3 with value 0x40639786
sw x3, 0(x2) # store 0x40639786 in memory
flh f26, 0(x2) # load 0x40639786 from memory into f26
li x3, 0x39b6ec07 # load x3 with value 0x39b6ec07
sw x3, 0(x2) # store 0x39b6ec07 in memory
flh f0, 0(x2) # load 0x39b6ec07 from memory into f0
fmul.h f0, f26, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x0b8d058d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55cb67a4 # load x3 with value 0x55cb67a4
sw x3, 0(x2) # store 0x55cb67a4 in memory
flh f24, 0(x2) # load 0x55cb67a4 from memory into f24
li x3, 0x094e41d3 # load x3 with value 0x094e41d3
sw x3, 0(x2) # store 0x094e41d3 in memory
flh f1, 0(x2) # load 0x094e41d3 from memory into f1
fmul.h f1, f24, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x9c0f836a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82588878 # load x3 with value 0x82588878
sw x3, 0(x2) # store 0x82588878 in memory
flh f15, 0(x2) # load 0x82588878 from memory into f15
li x3, 0x7effcdc8 # load x3 with value 0x7effcdc8
sw x3, 0(x2) # store 0x7effcdc8 in memory
flh f2, 0(x2) # load 0x7effcdc8 from memory into f2
fmul.h f2, f15, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xd4fe3c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x260fbb4c # load x3 with value 0x260fbb4c
sw x3, 0(x2) # store 0x260fbb4c in memory
flh f3, 0(x2) # load 0x260fbb4c from memory into f3
li x3, 0x668ac7b0 # load x3 with value 0x668ac7b0
sw x3, 0(x2) # store 0x668ac7b0 in memory
flh f3, 0(x2) # load 0x668ac7b0 from memory into f3
fmul.h f3, f3, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x58d873ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa51a4d65 # load x3 with value 0xa51a4d65
sw x3, 0(x2) # store 0xa51a4d65 in memory
flh f21, 0(x2) # load 0xa51a4d65 from memory into f21
li x3, 0x0760f93e # load x3 with value 0x0760f93e
sw x3, 0(x2) # store 0x0760f93e in memory
flh f4, 0(x2) # load 0x0760f93e from memory into f4
fmul.h f4, f21, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x9dc1ae20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b00de7f # load x3 with value 0x2b00de7f
sw x3, 0(x2) # store 0x2b00de7f in memory
flh f25, 0(x2) # load 0x2b00de7f from memory into f25
li x3, 0x19d67869 # load x3 with value 0x19d67869
sw x3, 0(x2) # store 0x19d67869 in memory
flh f5, 0(x2) # load 0x19d67869 from memory into f5
fmul.h f5, f25, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xfd0784ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07515d2c # load x3 with value 0x07515d2c
sw x3, 0(x2) # store 0x07515d2c in memory
flh f9, 0(x2) # load 0x07515d2c from memory into f9
li x3, 0x477d8853 # load x3 with value 0x477d8853
sw x3, 0(x2) # store 0x477d8853 in memory
flh f6, 0(x2) # load 0x477d8853 from memory into f6
fmul.h f6, f9, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x9e9a3fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77efe9e8 # load x3 with value 0x77efe9e8
sw x3, 0(x2) # store 0x77efe9e8 in memory
flh f8, 0(x2) # load 0x77efe9e8 from memory into f8
li x3, 0x92c3652d # load x3 with value 0x92c3652d
sw x3, 0(x2) # store 0x92c3652d in memory
flh f7, 0(x2) # load 0x92c3652d from memory into f7
fmul.h f7, f8, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xbc132edb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x363156d7 # load x3 with value 0x363156d7
sw x3, 0(x2) # store 0x363156d7 in memory
flh f25, 0(x2) # load 0x363156d7 from memory into f25
li x3, 0x58062a24 # load x3 with value 0x58062a24
sw x3, 0(x2) # store 0x58062a24 in memory
flh f8, 0(x2) # load 0x58062a24 from memory into f8
fmul.h f8, f25, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xfdf4e638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcaceaeca # load x3 with value 0xcaceaeca
sw x3, 0(x2) # store 0xcaceaeca in memory
flh f26, 0(x2) # load 0xcaceaeca from memory into f26
li x3, 0x11d5c122 # load x3 with value 0x11d5c122
sw x3, 0(x2) # store 0x11d5c122 in memory
flh f9, 0(x2) # load 0x11d5c122 from memory into f9
fmul.h f9, f26, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x24adb9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbee3154 # load x3 with value 0xbbee3154
sw x3, 0(x2) # store 0xbbee3154 in memory
flh f30, 0(x2) # load 0xbbee3154 from memory into f30
li x3, 0x707638f3 # load x3 with value 0x707638f3
sw x3, 0(x2) # store 0x707638f3 in memory
flh f10, 0(x2) # load 0x707638f3 from memory into f10
fmul.h f10, f30, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x45e6251e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8073a500 # load x3 with value 0x8073a500
sw x3, 0(x2) # store 0x8073a500 in memory
flh f5, 0(x2) # load 0x8073a500 from memory into f5
li x3, 0x03888cec # load x3 with value 0x03888cec
sw x3, 0(x2) # store 0x03888cec in memory
flh f11, 0(x2) # load 0x03888cec from memory into f11
fmul.h f11, f5, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xabf289ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fda60a2 # load x3 with value 0x7fda60a2
sw x3, 0(x2) # store 0x7fda60a2 in memory
flh f25, 0(x2) # load 0x7fda60a2 from memory into f25
li x3, 0x4c199108 # load x3 with value 0x4c199108
sw x3, 0(x2) # store 0x4c199108 in memory
flh f12, 0(x2) # load 0x4c199108 from memory into f12
fmul.h f12, f25, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x8c9039ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ec6b930 # load x3 with value 0x3ec6b930
sw x3, 0(x2) # store 0x3ec6b930 in memory
flh f5, 0(x2) # load 0x3ec6b930 from memory into f5
li x3, 0xf84c5aa4 # load x3 with value 0xf84c5aa4
sw x3, 0(x2) # store 0xf84c5aa4 in memory
flh f13, 0(x2) # load 0xf84c5aa4 from memory into f13
fmul.h f13, f5, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xf6f171c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56eadf65 # load x3 with value 0x56eadf65
sw x3, 0(x2) # store 0x56eadf65 in memory
flh f17, 0(x2) # load 0x56eadf65 from memory into f17
li x3, 0x13e2ba9a # load x3 with value 0x13e2ba9a
sw x3, 0(x2) # store 0x13e2ba9a in memory
flh f14, 0(x2) # load 0x13e2ba9a from memory into f14
fmul.h f14, f17, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0xd70888b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5ad4852 # load x3 with value 0xb5ad4852
sw x3, 0(x2) # store 0xb5ad4852 in memory
flh f2, 0(x2) # load 0xb5ad4852 from memory into f2
li x3, 0xf1f0a534 # load x3 with value 0xf1f0a534
sw x3, 0(x2) # store 0xf1f0a534 in memory
flh f15, 0(x2) # load 0xf1f0a534 from memory into f15
fmul.h f15, f2, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xabf2622d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5ea5add # load x3 with value 0xa5ea5add
sw x3, 0(x2) # store 0xa5ea5add in memory
flh f29, 0(x2) # load 0xa5ea5add from memory into f29
li x3, 0x30fd789e # load x3 with value 0x30fd789e
sw x3, 0(x2) # store 0x30fd789e in memory
flh f16, 0(x2) # load 0x30fd789e from memory into f16
fmul.h f16, f29, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x5dc47eda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2a5c1ac # load x3 with value 0xf2a5c1ac
sw x3, 0(x2) # store 0xf2a5c1ac in memory
flh f19, 0(x2) # load 0xf2a5c1ac from memory into f19
li x3, 0x1b6b515a # load x3 with value 0x1b6b515a
sw x3, 0(x2) # store 0x1b6b515a in memory
flh f17, 0(x2) # load 0x1b6b515a from memory into f17
fmul.h f17, f19, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xfa6d8b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1ab465f # load x3 with value 0xc1ab465f
sw x3, 0(x2) # store 0xc1ab465f in memory
flh f8, 0(x2) # load 0xc1ab465f from memory into f8
li x3, 0x55fa998c # load x3 with value 0x55fa998c
sw x3, 0(x2) # store 0x55fa998c in memory
flh f18, 0(x2) # load 0x55fa998c from memory into f18
fmul.h f18, f8, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xa2862636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa09f92fa # load x3 with value 0xa09f92fa
sw x3, 0(x2) # store 0xa09f92fa in memory
flh f23, 0(x2) # load 0xa09f92fa from memory into f23
li x3, 0x5df4fa5a # load x3 with value 0x5df4fa5a
sw x3, 0(x2) # store 0x5df4fa5a in memory
flh f19, 0(x2) # load 0x5df4fa5a from memory into f19
fmul.h f19, f23, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x74e7bd4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2b418a3 # load x3 with value 0xb2b418a3
sw x3, 0(x2) # store 0xb2b418a3 in memory
flh f1, 0(x2) # load 0xb2b418a3 from memory into f1
li x3, 0x8978b8a7 # load x3 with value 0x8978b8a7
sw x3, 0(x2) # store 0x8978b8a7 in memory
flh f20, 0(x2) # load 0x8978b8a7 from memory into f20
fmul.h f20, f1, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x8cfc64b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06757dda # load x3 with value 0x06757dda
sw x3, 0(x2) # store 0x06757dda in memory
flh f19, 0(x2) # load 0x06757dda from memory into f19
li x3, 0xdc9b6d8f # load x3 with value 0xdc9b6d8f
sw x3, 0(x2) # store 0xdc9b6d8f in memory
flh f21, 0(x2) # load 0xdc9b6d8f from memory into f21
fmul.h f21, f19, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x045c4e5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefdae1b9 # load x3 with value 0xefdae1b9
sw x3, 0(x2) # store 0xefdae1b9 in memory
flh f22, 0(x2) # load 0xefdae1b9 from memory into f22
li x3, 0x6ed11ec4 # load x3 with value 0x6ed11ec4
sw x3, 0(x2) # store 0x6ed11ec4 in memory
flh f22, 0(x2) # load 0x6ed11ec4 from memory into f22
fmul.h f22, f22, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xc2b971b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd125bd43 # load x3 with value 0xd125bd43
sw x3, 0(x2) # store 0xd125bd43 in memory
flh f15, 0(x2) # load 0xd125bd43 from memory into f15
li x3, 0x986d57a9 # load x3 with value 0x986d57a9
sw x3, 0(x2) # store 0x986d57a9 in memory
flh f23, 0(x2) # load 0x986d57a9 from memory into f23
fmul.h f23, f15, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x15853de1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81e3d845 # load x3 with value 0x81e3d845
sw x3, 0(x2) # store 0x81e3d845 in memory
flh f14, 0(x2) # load 0x81e3d845 from memory into f14
li x3, 0xb45ac45f # load x3 with value 0xb45ac45f
sw x3, 0(x2) # store 0xb45ac45f in memory
flh f24, 0(x2) # load 0xb45ac45f from memory into f24
fmul.h f24, f14, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x49f01ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x921639c6 # load x3 with value 0x921639c6
sw x3, 0(x2) # store 0x921639c6 in memory
flh f16, 0(x2) # load 0x921639c6 from memory into f16
li x3, 0x65788330 # load x3 with value 0x65788330
sw x3, 0(x2) # store 0x65788330 in memory
flh f25, 0(x2) # load 0x65788330 from memory into f25
fmul.h f25, f16, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x691b6ff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcab87ac # load x3 with value 0xbcab87ac
sw x3, 0(x2) # store 0xbcab87ac in memory
flh f13, 0(x2) # load 0xbcab87ac from memory into f13
li x3, 0x600e6458 # load x3 with value 0x600e6458
sw x3, 0(x2) # store 0x600e6458 in memory
flh f26, 0(x2) # load 0x600e6458 from memory into f26
fmul.h f26, f13, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x166b0c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4e6224d # load x3 with value 0xf4e6224d
sw x3, 0(x2) # store 0xf4e6224d in memory
flh f5, 0(x2) # load 0xf4e6224d from memory into f5
li x3, 0xef47a68e # load x3 with value 0xef47a68e
sw x3, 0(x2) # store 0xef47a68e in memory
flh f27, 0(x2) # load 0xef47a68e from memory into f27
fmul.h f27, f5, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xea8bf17b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02332274 # load x3 with value 0x02332274
sw x3, 0(x2) # store 0x02332274 in memory
flh f28, 0(x2) # load 0x02332274 from memory into f28
li x3, 0xb287c0ed # load x3 with value 0xb287c0ed
sw x3, 0(x2) # store 0xb287c0ed in memory
flh f28, 0(x2) # load 0xb287c0ed from memory into f28
fmul.h f28, f28, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x6ad4aba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa016bdfc # load x3 with value 0xa016bdfc
sw x3, 0(x2) # store 0xa016bdfc in memory
flh f4, 0(x2) # load 0xa016bdfc from memory into f4
li x3, 0xa4b36205 # load x3 with value 0xa4b36205
sw x3, 0(x2) # store 0xa4b36205 in memory
flh f29, 0(x2) # load 0xa4b36205 from memory into f29
fmul.h f29, f4, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x1f305003 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07f4c05a # load x3 with value 0x07f4c05a
sw x3, 0(x2) # store 0x07f4c05a in memory
flh f9, 0(x2) # load 0x07f4c05a from memory into f9
li x3, 0x85fcd954 # load x3 with value 0x85fcd954
sw x3, 0(x2) # store 0x85fcd954 in memory
flh f30, 0(x2) # load 0x85fcd954 from memory into f30
fmul.h f30, f9, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x0485ddd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e203ae8 # load x3 with value 0x2e203ae8
sw x3, 0(x2) # store 0x2e203ae8 in memory
flh f17, 0(x2) # load 0x2e203ae8 from memory into f17
li x3, 0x6fb383ff # load x3 with value 0x6fb383ff
sw x3, 0(x2) # store 0x6fb383ff in memory
flh f31, 0(x2) # load 0x6fb383ff from memory into f31
fmul.h f31, f17, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x4, 0x7cddb762 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0xc90b2c14 # load x3 with value 0xc90b2c14
sw x3, 0(x2) # store 0xc90b2c14 in memory
flh f10, 0(x2) # load 0xc90b2c14 from memory into f10
fmul.h f4, f18, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x21, 0x13e46035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0xc372e90c # load x3 with value 0xc372e90c
sw x3, 0(x2) # store 0xc372e90c in memory
flh f17, 0(x2) # load 0xc372e90c from memory into f17
fmul.h f21, f14, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x19, 0x7f505427 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x878b393a # load x3 with value 0x878b393a
sw x3, 0(x2) # store 0x878b393a in memory
flh f5, 0(x2) # load 0x878b393a from memory into f5
fmul.h f19, f30, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x25, 0x26cd57bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x1a9744b6 # load x3 with value 0x1a9744b6
sw x3, 0(x2) # store 0x1a9744b6 in memory
flh f18, 0(x2) # load 0x1a9744b6 from memory into f18
fmul.h f25, f20, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x10, 0x8d2fb9dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0xbba28227 # load x3 with value 0xbba28227
sw x3, 0(x2) # store 0xbba28227 in memory
flh f16, 0(x2) # load 0xbba28227 from memory into f16
fmul.h f10, f2, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x12, 0xdaf8b1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
li x3, 0xa9eb5431 # load x3 with value 0xa9eb5431
sw x3, 0(x2) # store 0xa9eb5431 in memory
flh f22, 0(x2) # load 0xa9eb5431 from memory into f22
fmul.h f12, f31, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x7, 0x398d8c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
li x3, 0x01a5cfd6 # load x3 with value 0x01a5cfd6
sw x3, 0(x2) # store 0x01a5cfd6 in memory
flh f2, 0(x2) # load 0x01a5cfd6 from memory into f2
fmul.h f7, f13, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x25, 0x9a897b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x8409e566 # load x3 with value 0x8409e566
sw x3, 0(x2) # store 0x8409e566 in memory
flh f19, 0(x2) # load 0x8409e566 from memory into f19
fmul.h f25, f9, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x9, 0xf930591e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0xa9e4d435 # load x3 with value 0xa9e4d435
sw x3, 0(x2) # store 0xa9e4d435 in memory
flh f24, 0(x2) # load 0xa9e4d435 from memory into f24
fmul.h f9, f16, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x21, 0xaf92ecfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x59f94f6d # load x3 with value 0x59f94f6d
sw x3, 0(x2) # store 0x59f94f6d in memory
flh f24, 0(x2) # load 0x59f94f6d from memory into f24
fmul.h f21, f1, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x27, 0x16712c75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
li x3, 0x3e05ae9a # load x3 with value 0x3e05ae9a
sw x3, 0(x2) # store 0x3e05ae9a in memory
flh f21, 0(x2) # load 0x3e05ae9a from memory into f21
fmul.h f27, f30, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x28, 0x77eaa5c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
li x3, 0x36d4b5f1 # load x3 with value 0x36d4b5f1
sw x3, 0(x2) # store 0x36d4b5f1 in memory
flh f3, 0(x2) # load 0x36d4b5f1 from memory into f3
fmul.h f28, f21, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x21, 0x15e3abf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x3956f3e1 # load x3 with value 0x3956f3e1
sw x3, 0(x2) # store 0x3956f3e1 in memory
flh f16, 0(x2) # load 0x3956f3e1 from memory into f16
fmul.h f21, f11, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x22, 0x0104ba59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
li x3, 0x791bff6c # load x3 with value 0x791bff6c
sw x3, 0(x2) # store 0x791bff6c in memory
flh f19, 0(x2) # load 0x791bff6c from memory into f19
fmul.h f22, f23, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x14, 0x823e0432 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x4acc6ccd # load x3 with value 0x4acc6ccd
sw x3, 0(x2) # store 0x4acc6ccd in memory
flh f4, 0(x2) # load 0x4acc6ccd from memory into f4
fmul.h f14, f21, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x2, 0xaec8aedf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
li x3, 0xd7badccb # load x3 with value 0xd7badccb
sw x3, 0(x2) # store 0xd7badccb in memory
flh f22, 0(x2) # load 0xd7badccb from memory into f22
fmul.h f2, f27, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x7, 0x29e6e344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0x57519b6f # load x3 with value 0x57519b6f
sw x3, 0(x2) # store 0x57519b6f in memory
flh f3, 0(x2) # load 0x57519b6f from memory into f3
fmul.h f7, f28, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x1, 0x1ae9d31a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0xf032d718 # load x3 with value 0xf032d718
sw x3, 0(x2) # store 0xf032d718 in memory
flh f25, 0(x2) # load 0xf032d718 from memory into f25
fmul.h f1, f31, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x15, 0x96c4fa76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
li x3, 0x40dd5665 # load x3 with value 0x40dd5665
sw x3, 0(x2) # store 0x40dd5665 in memory
flh f19, 0(x2) # load 0x40dd5665 from memory into f19
fmul.h f15, f17, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x3, 0x5db959f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
li x3, 0x1b0cd0fc # load x3 with value 0x1b0cd0fc
sw x3, 0(x2) # store 0x1b0cd0fc in memory
flh f29, 0(x2) # load 0x1b0cd0fc from memory into f29
fmul.h f3, f8, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x4, 0x66ceaf0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0xc1115d63 # load x3 with value 0xc1115d63
sw x3, 0(x2) # store 0xc1115d63 in memory
flh f2, 0(x2) # load 0xc1115d63 from memory into f2
fmul.h f4, f19, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x11, 0x23b5b9cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x25a06553 # load x3 with value 0x25a06553
sw x3, 0(x2) # store 0x25a06553 in memory
flh f4, 0(x2) # load 0x25a06553 from memory into f4
fmul.h f11, f1, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x10, 0xaa701cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x8aa6cba6 # load x3 with value 0x8aa6cba6
sw x3, 0(x2) # store 0x8aa6cba6 in memory
flh f2, 0(x2) # load 0x8aa6cba6 from memory into f2
fmul.h f10, f17, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x26, 0x05a00503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x80f0a218 # load x3 with value 0x80f0a218
sw x3, 0(x2) # store 0x80f0a218 in memory
flh f2, 0(x2) # load 0x80f0a218 from memory into f2
fmul.h f26, f28, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x10, 0xc5719c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x9809c454 # load x3 with value 0x9809c454
sw x3, 0(x2) # store 0x9809c454 in memory
flh f5, 0(x2) # load 0x9809c454 from memory into f5
fmul.h f10, f2, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x14, 0x11286f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x53bc4484 # load x3 with value 0x53bc4484
sw x3, 0(x2) # store 0x53bc4484 in memory
flh f25, 0(x2) # load 0x53bc4484 from memory into f25
fmul.h f14, f28, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x13, 0xb700a1ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57c11da4 # load x3 with value 0x57c11da4
sw x3, 0(x2) # store 0x57c11da4 in memory
flh f31, 0(x2) # load 0x57c11da4 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fmul.h f13, f31, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x16, 0xcc1ed063 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78506977 # load x3 with value 0x78506977
sw x3, 0(x2) # store 0x78506977 in memory
flh f30, 0(x2) # load 0x78506977 from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmul.h f16, f30, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x8, 0xd0cf0d5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2d34a8c # load x3 with value 0xd2d34a8c
sw x3, 0(x2) # store 0xd2d34a8c in memory
flh f19, 0(x2) # load 0xd2d34a8c from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fmul.h f8, f19, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x22, 0x6fdaaa08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f777c7e # load x3 with value 0x9f777c7e
sw x3, 0(x2) # store 0x9f777c7e in memory
flh f28, 0(x2) # load 0x9f777c7e from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fmul.h f22, f28, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x29, 0x0bd9d3fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9452ea01 # load x3 with value 0x9452ea01
sw x3, 0(x2) # store 0x9452ea01 in memory
flh f30, 0(x2) # load 0x9452ea01 from memory into f30
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fmul.h f29, f30, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x29, 0xf8c877ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2155c98d # load x3 with value 0x2155c98d
sw x3, 0(x2) # store 0x2155c98d in memory
flh f28, 0(x2) # load 0x2155c98d from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fmul.h f29, f28, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x23, 0xf238c133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed88afdf # load x3 with value 0xed88afdf
sw x3, 0(x2) # store 0xed88afdf in memory
flh f6, 0(x2) # load 0xed88afdf from memory into f6
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fmul.h f23, f6, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x3, 0xdc3eac2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8cfe06c # load x3 with value 0xc8cfe06c
sw x3, 0(x2) # store 0xc8cfe06c in memory
flh f9, 0(x2) # load 0xc8cfe06c from memory into f9
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fmul.h f3, f9, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x23, 0x174a4680 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x129619ea # load x3 with value 0x129619ea
sw x3, 0(x2) # store 0x129619ea in memory
flh f5, 0(x2) # load 0x129619ea from memory into f5
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmul.h f23, f5, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x16, 0x1760e0bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0692afb # load x3 with value 0xb0692afb
sw x3, 0(x2) # store 0xb0692afb in memory
flh f24, 0(x2) # load 0xb0692afb from memory into f24
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fmul.h f16, f24, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x15, 0x4a5d8b80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69cee87c # load x3 with value 0x69cee87c
sw x3, 0(x2) # store 0x69cee87c in memory
flh f31, 0(x2) # load 0x69cee87c from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fmul.h f15, f31, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x20, 0x14ae3e75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x737b6f7e # load x3 with value 0x737b6f7e
sw x3, 0(x2) # store 0x737b6f7e in memory
flh f4, 0(x2) # load 0x737b6f7e from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
fmul.h f20, f4, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x15, 0xacd8bcd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4871269e # load x3 with value 0x4871269e
sw x3, 0(x2) # store 0x4871269e in memory
flh f17, 0(x2) # load 0x4871269e from memory into f17
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fmul.h f15, f17, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x18, 0x60322815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa19002e0 # load x3 with value 0xa19002e0
sw x3, 0(x2) # store 0xa19002e0 in memory
flh f1, 0(x2) # load 0xa19002e0 from memory into f1
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fmul.h f18, f1, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x11, 0x70cfbaad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d5b5ed8 # load x3 with value 0x0d5b5ed8
sw x3, 0(x2) # store 0x0d5b5ed8 in memory
flh f9, 0(x2) # load 0x0d5b5ed8 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fmul.h f11, f9, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x19, 0x0f159ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x032c2b09 # load x3 with value 0x032c2b09
sw x3, 0(x2) # store 0x032c2b09 in memory
flh f25, 0(x2) # load 0x032c2b09 from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fmul.h f19, f25, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x27, 0x82c5f897 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ddc380c # load x3 with value 0x2ddc380c
sw x3, 0(x2) # store 0x2ddc380c in memory
flh f25, 0(x2) # load 0x2ddc380c from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fmul.h f27, f25, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x26, 0x39306d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ae316f3 # load x3 with value 0x1ae316f3
sw x3, 0(x2) # store 0x1ae316f3 in memory
flh f21, 0(x2) # load 0x1ae316f3 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fmul.h f26, f21, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x11, 0xbf0033e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7440984d # load x3 with value 0x7440984d
sw x3, 0(x2) # store 0x7440984d in memory
flh f25, 0(x2) # load 0x7440984d from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fmul.h f11, f25, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x8, 0xc1d42be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff74da2b # load x3 with value 0xff74da2b
sw x3, 0(x2) # store 0xff74da2b in memory
flh f18, 0(x2) # load 0xff74da2b from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fmul.h f8, f18, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x26, 0xc9921d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d6e85db # load x3 with value 0x2d6e85db
sw x3, 0(x2) # store 0x2d6e85db in memory
flh f14, 0(x2) # load 0x2d6e85db from memory into f14
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmul.h f26, f14, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x18, 0x18bbb2c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0cafa11 # load x3 with value 0xb0cafa11
sw x3, 0(x2) # store 0xb0cafa11 in memory
flh f5, 0(x2) # load 0xb0cafa11 from memory into f5
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fmul.h f18, f5, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x4, 0x036eec6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x249ef87d # load x3 with value 0x249ef87d
sw x3, 0(x2) # store 0x249ef87d in memory
flh f31, 0(x2) # load 0x249ef87d from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fmul.h f4, f31, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x14, 0x15ef649d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38771f51 # load x3 with value 0x38771f51
sw x3, 0(x2) # store 0x38771f51 in memory
flh f29, 0(x2) # load 0x38771f51 from memory into f29
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fmul.h f14, f29, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x13, 0xafcbe756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe248c01c # load x3 with value 0xe248c01c
sw x3, 0(x2) # store 0xe248c01c in memory
flh f7, 0(x2) # load 0xe248c01c from memory into f7
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fmul.h f13, f7, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x20, 0xa73e2c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2df411b # load x3 with value 0xf2df411b
sw x3, 0(x2) # store 0xf2df411b in memory
flh f16, 0(x2) # load 0xf2df411b from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fmul.h f20, f16, f17 # perform operation

# Testcase cp_frm
li x3, 0xd25c203e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb330ca8 # load x3 with value 0xbb330ca8
sw x3, 0(x2) # store 0xbb330ca8 in memory
flh f11, 0(x2) # load 0xbb330ca8 from memory into f11
li x3, 0x96e88a0e # load x3 with value 0x96e88a0e
sw x3, 0(x2) # store 0x96e88a0e in memory
flh f5, 0(x2) # load 0x96e88a0e from memory into f5
fmul.h f3, f11, f5, dyn # perform operation
fmul.h f3, f11, f5, rdn # perform operation
fmul.h f3, f11, f5, rmm # perform operation
fmul.h f3, f11, f5, rne # perform operation
fmul.h f3, f11, f5, rtz # perform operation
fmul.h f3, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x15, 0x051b96d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fmul.h f15, f29, f6, dyn # perform operation
fmul.h f15, f29, f6, rdn # perform operation
fmul.h f15, f29, f6, rmm # perform operation
fmul.h f15, f29, f6, rne # perform operation
fmul.h f15, f29, f6, rtz # perform operation
fmul.h f15, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x2, 0x8bb1bfd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fmul.h f2, f12, f14, dyn # perform operation
fmul.h f2, f12, f14, rdn # perform operation
fmul.h f2, f12, f14, rmm # perform operation
fmul.h f2, f12, f14, rne # perform operation
fmul.h f2, f12, f14, rtz # perform operation
fmul.h f2, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x31, 0xaf979b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fmul.h f31, f15, f30, dyn # perform operation
fmul.h f31, f15, f30, rdn # perform operation
fmul.h f31, f15, f30, rmm # perform operation
fmul.h f31, f15, f30, rne # perform operation
fmul.h f31, f15, f30, rtz # perform operation
fmul.h f31, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x27, 0xe99a0caf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fmul.h f27, f23, f15, dyn # perform operation
fmul.h f27, f23, f15, rdn # perform operation
fmul.h f27, f23, f15, rmm # perform operation
fmul.h f27, f23, f15, rne # perform operation
fmul.h f27, f23, f15, rtz # perform operation
fmul.h f27, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x22, 0x2d74378b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmul.h f22, f26, f14, dyn # perform operation
fmul.h f22, f26, f14, rdn # perform operation
fmul.h f22, f26, f14, rmm # perform operation
fmul.h f22, f26, f14, rne # perform operation
fmul.h f22, f26, f14, rtz # perform operation
fmul.h f22, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x23, 0x88717d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fmul.h f23, f27, f28, dyn # perform operation
fmul.h f23, f27, f28, rdn # perform operation
fmul.h f23, f27, f28, rmm # perform operation
fmul.h f23, f27, f28, rne # perform operation
fmul.h f23, f27, f28, rtz # perform operation
fmul.h f23, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x27, 0xaa150365 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fmul.h f27, f1, f24, dyn # perform operation
fmul.h f27, f1, f24, rdn # perform operation
fmul.h f27, f1, f24, rmm # perform operation
fmul.h f27, f1, f24, rne # perform operation
fmul.h f27, f1, f24, rtz # perform operation
fmul.h f27, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x1, 0x67553b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmul.h f1, f14, f3, dyn # perform operation
fmul.h f1, f14, f3, rdn # perform operation
fmul.h f1, f14, f3, rmm # perform operation
fmul.h f1, f14, f3, rne # perform operation
fmul.h f1, f14, f3, rtz # perform operation
fmul.h f1, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x7, 0xdda36a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fmul.h f7, f8, f1, dyn # perform operation
fmul.h f7, f8, f1, rdn # perform operation
fmul.h f7, f8, f1, rmm # perform operation
fmul.h f7, f8, f1, rne # perform operation
fmul.h f7, f8, f1, rtz # perform operation
fmul.h f7, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x13, 0xc5e219b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
fmul.h f13, f14, f4, dyn # perform operation
fmul.h f13, f14, f4, rdn # perform operation
fmul.h f13, f14, f4, rmm # perform operation
fmul.h f13, f14, f4, rne # perform operation
fmul.h f13, f14, f4, rtz # perform operation
fmul.h f13, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x21, 0x91a02cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fmul.h f21, f15, f13, dyn # perform operation
fmul.h f21, f15, f13, rdn # perform operation
fmul.h f21, f15, f13, rmm # perform operation
fmul.h f21, f15, f13, rne # perform operation
fmul.h f21, f15, f13, rtz # perform operation
fmul.h f21, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x24, 0x997d2681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fmul.h f24, f10, f13, dyn # perform operation
fmul.h f24, f10, f13, rdn # perform operation
fmul.h f24, f10, f13, rmm # perform operation
fmul.h f24, f10, f13, rne # perform operation
fmul.h f24, f10, f13, rtz # perform operation
fmul.h f24, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x15, 0xeb276482 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmul.h f15, f14, f1, dyn # perform operation
fmul.h f15, f14, f1, rdn # perform operation
fmul.h f15, f14, f1, rmm # perform operation
fmul.h f15, f14, f1, rne # perform operation
fmul.h f15, f14, f1, rtz # perform operation
fmul.h f15, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x9, 0x520bfd4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fmul.h f9, f18, f8, dyn # perform operation
fmul.h f9, f18, f8, rdn # perform operation
fmul.h f9, f18, f8, rmm # perform operation
fmul.h f9, f18, f8, rne # perform operation
fmul.h f9, f18, f8, rtz # perform operation
fmul.h f9, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x12, 0x90c9f251 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fmul.h f12, f26, f30, dyn # perform operation
fmul.h f12, f26, f30, rdn # perform operation
fmul.h f12, f26, f30, rmm # perform operation
fmul.h f12, f26, f30, rne # perform operation
fmul.h f12, f26, f30, rtz # perform operation
fmul.h f12, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x2, 0xa13bc86b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fmul.h f2, f15, f26, dyn # perform operation
fmul.h f2, f15, f26, rdn # perform operation
fmul.h f2, f15, f26, rmm # perform operation
fmul.h f2, f15, f26, rne # perform operation
fmul.h f2, f15, f26, rtz # perform operation
fmul.h f2, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x23, 0x30f51567 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fmul.h f23, f20, f15, dyn # perform operation
fmul.h f23, f20, f15, rdn # perform operation
fmul.h f23, f20, f15, rmm # perform operation
fmul.h f23, f20, f15, rne # perform operation
fmul.h f23, f20, f15, rtz # perform operation
fmul.h f23, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x31, 0x921bdf0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fmul.h f31, f21, f23, dyn # perform operation
fmul.h f31, f21, f23, rdn # perform operation
fmul.h f31, f21, f23, rmm # perform operation
fmul.h f31, f21, f23, rne # perform operation
fmul.h f31, f21, f23, rtz # perform operation
fmul.h f31, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x12, 0xf00ec7dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmul.h f12, f31, f30, dyn # perform operation
fmul.h f12, f31, f30, rdn # perform operation
fmul.h f12, f31, f30, rmm # perform operation
fmul.h f12, f31, f30, rne # perform operation
fmul.h f12, f31, f30, rtz # perform operation
fmul.h f12, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x16, 0x85da0421 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmul.h f16, f7, f23, dyn # perform operation
fmul.h f16, f7, f23, rdn # perform operation
fmul.h f16, f7, f23, rmm # perform operation
fmul.h f16, f7, f23, rne # perform operation
fmul.h f16, f7, f23, rtz # perform operation
fmul.h f16, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x4, 0xdcbde908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fmul.h f4, f13, f8, dyn # perform operation
fmul.h f4, f13, f8, rdn # perform operation
fmul.h f4, f13, f8, rmm # perform operation
fmul.h f4, f13, f8, rne # perform operation
fmul.h f4, f13, f8, rtz # perform operation
fmul.h f4, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x21, 0xf812eedf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fmul.h f21, f6, f7, dyn # perform operation
fmul.h f21, f6, f7, rdn # perform operation
fmul.h f21, f6, f7, rmm # perform operation
fmul.h f21, f6, f7, rne # perform operation
fmul.h f21, f6, f7, rtz # perform operation
fmul.h f21, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x8, 0xd3a528e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fmul.h f8, f29, f19, dyn # perform operation
fmul.h f8, f29, f19, rdn # perform operation
fmul.h f8, f29, f19, rmm # perform operation
fmul.h f8, f29, f19, rne # perform operation
fmul.h f8, f29, f19, rtz # perform operation
fmul.h f8, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x24, 0xe8883180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fmul.h f24, f22, f9, dyn # perform operation
fmul.h f24, f22, f9, rdn # perform operation
fmul.h f24, f22, f9, rmm # perform operation
fmul.h f24, f22, f9, rne # perform operation
fmul.h f24, f22, f9, rtz # perform operation
fmul.h f24, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x22, 0x562f0f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fmul.h f22, f21, f14, dyn # perform operation
fmul.h f22, f21, f14, rdn # perform operation
fmul.h f22, f21, f14, rmm # perform operation
fmul.h f22, f21, f14, rne # perform operation
fmul.h f22, f21, f14, rtz # perform operation
fmul.h f22, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x16, 0x1c499843 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmul.h f16, f18, f20, dyn # perform operation
fmul.h f16, f18, f20, rdn # perform operation
fmul.h f16, f18, f20, rmm # perform operation
fmul.h f16, f18, f20, rne # perform operation
fmul.h f16, f18, f20, rtz # perform operation
fmul.h f16, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x25, 0xb652bf1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fmul.h f25, f27, f31, dyn # perform operation
fmul.h f25, f27, f31, rdn # perform operation
fmul.h f25, f27, f31, rmm # perform operation
fmul.h f25, f27, f31, rne # perform operation
fmul.h f25, f27, f31, rtz # perform operation
fmul.h f25, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x3, 0xcaa3abe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fmul.h f3, f16, f17, dyn # perform operation
fmul.h f3, f16, f17, rdn # perform operation
fmul.h f3, f16, f17, rmm # perform operation
fmul.h f3, f16, f17, rne # perform operation
fmul.h f3, f16, f17, rtz # perform operation
fmul.h f3, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x19, 0x72f26a3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fmul.h f19, f12, f18, dyn # perform operation
fmul.h f19, f12, f18, rdn # perform operation
fmul.h f19, f12, f18, rmm # perform operation
fmul.h f19, f12, f18, rne # perform operation
fmul.h f19, f12, f18, rtz # perform operation
fmul.h f19, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x20, 0x2e95df95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fmul.h f20, f22, f18, dyn # perform operation
fmul.h f20, f22, f18, rdn # perform operation
fmul.h f20, f22, f18, rmm # perform operation
fmul.h f20, f22, f18, rne # perform operation
fmul.h f20, f22, f18, rtz # perform operation
fmul.h f20, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x4, 0x3e7e9ac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fmul.h f4, f19, f22, dyn # perform operation
fmul.h f4, f19, f22, rdn # perform operation
fmul.h f4, f19, f22, rmm # perform operation
fmul.h f4, f19, f22, rne # perform operation
fmul.h f4, f19, f22, rtz # perform operation
fmul.h f4, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x13, 0xe7fe675e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fmul.h f13, f24, f11, dyn # perform operation
fmul.h f13, f24, f11, rdn # perform operation
fmul.h f13, f24, f11, rmm # perform operation
fmul.h f13, f24, f11, rne # perform operation
fmul.h f13, f24, f11, rtz # perform operation
fmul.h f13, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x22, 0x6c4ee38d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fmul.h f22, f31, f5, dyn # perform operation
fmul.h f22, f31, f5, rdn # perform operation
fmul.h f22, f31, f5, rmm # perform operation
fmul.h f22, f31, f5, rne # perform operation
fmul.h f22, f31, f5, rtz # perform operation
fmul.h f22, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x31, 0xa9046748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fmul.h f31, f14, f2, dyn # perform operation
fmul.h f31, f14, f2, rdn # perform operation
fmul.h f31, f14, f2, rmm # perform operation
fmul.h f31, f14, f2, rne # perform operation
fmul.h f31, f14, f2, rtz # perform operation
fmul.h f31, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x11, 0x6b770fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fmul.h f11, f8, f29, dyn # perform operation
fmul.h f11, f8, f29, rdn # perform operation
fmul.h f11, f8, f29, rmm # perform operation
fmul.h f11, f8, f29, rne # perform operation
fmul.h f11, f8, f29, rtz # perform operation
fmul.h f11, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x16, 0x8d567613 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fmul.h f16, f14, f18, dyn # perform operation
fmul.h f16, f14, f18, rdn # perform operation
fmul.h f16, f14, f18, rmm # perform operation
fmul.h f16, f14, f18, rne # perform operation
fmul.h f16, f14, f18, rtz # perform operation
fmul.h f16, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x9, 0xe153d217 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fmul.h f9, f17, f14, dyn # perform operation
fmul.h f9, f17, f14, rdn # perform operation
fmul.h f9, f17, f14, rmm # perform operation
fmul.h f9, f17, f14, rne # perform operation
fmul.h f9, f17, f14, rtz # perform operation
fmul.h f9, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x5, 0x5e60397d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fmul.h f5, f29, f26, dyn # perform operation
fmul.h f5, f29, f26, rdn # perform operation
fmul.h f5, f29, f26, rmm # perform operation
fmul.h f5, f29, f26, rne # perform operation
fmul.h f5, f29, f26, rtz # perform operation
fmul.h f5, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x24, 0x03c69c9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmul.h f24, f31, f1, dyn # perform operation
fmul.h f24, f31, f1, rdn # perform operation
fmul.h f24, f31, f1, rmm # perform operation
fmul.h f24, f31, f1, rne # perform operation
fmul.h f24, f31, f1, rtz # perform operation
fmul.h f24, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x22, 0xc70ab2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fmul.h f22, f5, f26, dyn # perform operation
fmul.h f22, f5, f26, rdn # perform operation
fmul.h f22, f5, f26, rmm # perform operation
fmul.h f22, f5, f26, rne # perform operation
fmul.h f22, f5, f26, rtz # perform operation
fmul.h f22, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x8, 0xd89bb679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fmul.h f8, f10, f25, dyn # perform operation
fmul.h f8, f10, f25, rdn # perform operation
fmul.h f8, f10, f25, rmm # perform operation
fmul.h f8, f10, f25, rne # perform operation
fmul.h f8, f10, f25, rtz # perform operation
fmul.h f8, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x18, 0x77a3f890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fmul.h f18, f1, f19, dyn # perform operation
fmul.h f18, f1, f19, rdn # perform operation
fmul.h f18, f1, f19, rmm # perform operation
fmul.h f18, f1, f19, rne # perform operation
fmul.h f18, f1, f19, rtz # perform operation
fmul.h f18, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x13, 0x95260e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fmul.h f13, f3, f30, dyn # perform operation
fmul.h f13, f3, f30, rdn # perform operation
fmul.h f13, f3, f30, rmm # perform operation
fmul.h f13, f3, f30, rne # perform operation
fmul.h f13, f3, f30, rtz # perform operation
fmul.h f13, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x1, 0x10f5650b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fmul.h f1, f10, f27, dyn # perform operation
fmul.h f1, f10, f27, rdn # perform operation
fmul.h f1, f10, f27, rmm # perform operation
fmul.h f1, f10, f27, rne # perform operation
fmul.h f1, f10, f27, rtz # perform operation
fmul.h f1, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x9, 0x3d467b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fmul.h f9, f14, f1, dyn # perform operation
fmul.h f9, f14, f1, rdn # perform operation
fmul.h f9, f14, f1, rmm # perform operation
fmul.h f9, f14, f1, rne # perform operation
fmul.h f9, f14, f1, rtz # perform operation
fmul.h f9, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x23, 0xa3c68f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fmul.h f23, f12, f14, dyn # perform operation
fmul.h f23, f12, f14, rdn # perform operation
fmul.h f23, f12, f14, rmm # perform operation
fmul.h f23, f12, f14, rne # perform operation
fmul.h f23, f12, f14, rtz # perform operation
fmul.h f23, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x14, 0x0d8a8e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fmul.h f14, f26, f8, dyn # perform operation
fmul.h f14, f26, f8, rdn # perform operation
fmul.h f14, f26, f8, rmm # perform operation
fmul.h f14, f26, f8, rne # perform operation
fmul.h f14, f26, f8, rtz # perform operation
fmul.h f14, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x2, 0x558e4b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fmul.h f2, f28, f19, dyn # perform operation
fmul.h f2, f28, f19, rdn # perform operation
fmul.h f2, f28, f19, rmm # perform operation
fmul.h f2, f28, f19, rne # perform operation
fmul.h f2, f28, f19, rtz # perform operation
fmul.h f2, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x2, 0xa75dba69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fmul.h f2, f26, f21, dyn # perform operation
fmul.h f2, f26, f21, rdn # perform operation
fmul.h f2, f26, f21, rmm # perform operation
fmul.h f2, f26, f21, rne # perform operation
fmul.h f2, f26, f21, rtz # perform operation
fmul.h f2, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x28, 0x1cf2eab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fmul.h f28, f17, f3, dyn # perform operation
fmul.h f28, f17, f3, rdn # perform operation
fmul.h f28, f17, f3, rmm # perform operation
fmul.h f28, f17, f3, rne # perform operation
fmul.h f28, f17, f3, rtz # perform operation
fmul.h f28, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x24, 0x8a9d57fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fmul.h f24, f12, f16, dyn # perform operation
fmul.h f24, f12, f16, rdn # perform operation
fmul.h f24, f12, f16, rmm # perform operation
fmul.h f24, f12, f16, rne # perform operation
fmul.h f24, f12, f16, rtz # perform operation
fmul.h f24, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x12, 0xd64bb0da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fmul.h f12, f24, f9, dyn # perform operation
fmul.h f12, f24, f9, rdn # perform operation
fmul.h f12, f24, f9, rmm # perform operation
fmul.h f12, f24, f9, rne # perform operation
fmul.h f12, f24, f9, rtz # perform operation
fmul.h f12, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x1, 0x6c328f46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmul.h f1, f17, f5, dyn # perform operation
fmul.h f1, f17, f5, rdn # perform operation
fmul.h f1, f17, f5, rmm # perform operation
fmul.h f1, f17, f5, rne # perform operation
fmul.h f1, f17, f5, rtz # perform operation
fmul.h f1, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x8, 0x4874ff67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fmul.h f8, f24, f26, dyn # perform operation
fmul.h f8, f24, f26, rdn # perform operation
fmul.h f8, f24, f26, rmm # perform operation
fmul.h f8, f24, f26, rne # perform operation
fmul.h f8, f24, f26, rtz # perform operation
fmul.h f8, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x14, 0x238eed38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fmul.h f14, f7, f23, dyn # perform operation
fmul.h f14, f7, f23, rdn # perform operation
fmul.h f14, f7, f23, rmm # perform operation
fmul.h f14, f7, f23, rne # perform operation
fmul.h f14, f7, f23, rtz # perform operation
fmul.h f14, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x22, 0x13091a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fmul.h f22, f10, f18, dyn # perform operation
fmul.h f22, f10, f18, rdn # perform operation
fmul.h f22, f10, f18, rmm # perform operation
fmul.h f22, f10, f18, rne # perform operation
fmul.h f22, f10, f18, rtz # perform operation
fmul.h f22, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x14, 0x25882ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fmul.h f14, f25, f9, dyn # perform operation
fmul.h f14, f25, f9, rdn # perform operation
fmul.h f14, f25, f9, rmm # perform operation
fmul.h f14, f25, f9, rne # perform operation
fmul.h f14, f25, f9, rtz # perform operation
fmul.h f14, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x24, 0x9d662eeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fmul.h f24, f17, f3, dyn # perform operation
fmul.h f24, f17, f3, rdn # perform operation
fmul.h f24, f17, f3, rmm # perform operation
fmul.h f24, f17, f3, rne # perform operation
fmul.h f24, f17, f3, rtz # perform operation
fmul.h f24, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x14, 0xf2497d9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fmul.h f14, f1, f18, dyn # perform operation
fmul.h f14, f1, f18, rdn # perform operation
fmul.h f14, f1, f18, rmm # perform operation
fmul.h f14, f1, f18, rne # perform operation
fmul.h f14, f1, f18, rtz # perform operation
fmul.h f14, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x31, 0x32dc585c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fmul.h f31, f20, f24, dyn # perform operation
fmul.h f31, f20, f24, rdn # perform operation
fmul.h f31, f20, f24, rmm # perform operation
fmul.h f31, f20, f24, rne # perform operation
fmul.h f31, f20, f24, rtz # perform operation
fmul.h f31, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x30, 0x8d5e26c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fmul.h f30, f14, f9, dyn # perform operation
fmul.h f30, f14, f9, rdn # perform operation
fmul.h f30, f14, f9, rmm # perform operation
fmul.h f30, f14, f9, rne # perform operation
fmul.h f30, f14, f9, rtz # perform operation
fmul.h f30, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x21, 0xcde2a5fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fmul.h f21, f6, f12, dyn # perform operation
fmul.h f21, f6, f12, rdn # perform operation
fmul.h f21, f6, f12, rmm # perform operation
fmul.h f21, f6, f12, rne # perform operation
fmul.h f21, f6, f12, rtz # perform operation
fmul.h f21, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x25, 0xf5c0a07a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fmul.h f25, f24, f26, dyn # perform operation
fmul.h f25, f24, f26, rdn # perform operation
fmul.h f25, f24, f26, rmm # perform operation
fmul.h f25, f24, f26, rne # perform operation
fmul.h f25, f24, f26, rtz # perform operation
fmul.h f25, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x6, 0x532efab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fmul.h f6, f10, f7, dyn # perform operation
fmul.h f6, f10, f7, rdn # perform operation
fmul.h f6, f10, f7, rmm # perform operation
fmul.h f6, f10, f7, rne # perform operation
fmul.h f6, f10, f7, rtz # perform operation
fmul.h f6, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x13, 0x3f6d7682 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmul.h f13, f7, f28, dyn # perform operation
fmul.h f13, f7, f28, rdn # perform operation
fmul.h f13, f7, f28, rmm # perform operation
fmul.h f13, f7, f28, rne # perform operation
fmul.h f13, f7, f28, rtz # perform operation
fmul.h f13, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x30, 0x665374e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fmul.h f30, f7, f1, dyn # perform operation
fmul.h f30, f7, f1, rdn # perform operation
fmul.h f30, f7, f1, rmm # perform operation
fmul.h f30, f7, f1, rne # perform operation
fmul.h f30, f7, f1, rtz # perform operation
fmul.h f30, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x18, 0x763bb36c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fmul.h f18, f5, f25, dyn # perform operation
fmul.h f18, f5, f25, rdn # perform operation
fmul.h f18, f5, f25, rmm # perform operation
fmul.h f18, f5, f25, rne # perform operation
fmul.h f18, f5, f25, rtz # perform operation
fmul.h f18, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x17, 0x615882a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fmul.h f17, f25, f2, dyn # perform operation
fmul.h f17, f25, f2, rdn # perform operation
fmul.h f17, f25, f2, rmm # perform operation
fmul.h f17, f25, f2, rne # perform operation
fmul.h f17, f25, f2, rtz # perform operation
fmul.h f17, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x1, 0x2bbb343f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fmul.h f1, f3, f31, dyn # perform operation
fmul.h f1, f3, f31, rdn # perform operation
fmul.h f1, f3, f31, rmm # perform operation
fmul.h f1, f3, f31, rne # perform operation
fmul.h f1, f3, f31, rtz # perform operation
fmul.h f1, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x13, 0x5d3f4352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fmul.h f13, f10, f27, dyn # perform operation
fmul.h f13, f10, f27, rdn # perform operation
fmul.h f13, f10, f27, rmm # perform operation
fmul.h f13, f10, f27, rne # perform operation
fmul.h f13, f10, f27, rtz # perform operation
fmul.h f13, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x25, 0xf41cce6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fmul.h f25, f15, f3, dyn # perform operation
fmul.h f25, f15, f3, rdn # perform operation
fmul.h f25, f15, f3, rmm # perform operation
fmul.h f25, f15, f3, rne # perform operation
fmul.h f25, f15, f3, rtz # perform operation
fmul.h f25, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x14, 0x03bc18a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmul.h f14, f27, f23, dyn # perform operation
fmul.h f14, f27, f23, rdn # perform operation
fmul.h f14, f27, f23, rmm # perform operation
fmul.h f14, f27, f23, rne # perform operation
fmul.h f14, f27, f23, rtz # perform operation
fmul.h f14, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x26, 0x3fb73fe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fmul.h f26, f13, f9, dyn # perform operation
fmul.h f26, f13, f9, rdn # perform operation
fmul.h f26, f13, f9, rmm # perform operation
fmul.h f26, f13, f9, rne # perform operation
fmul.h f26, f13, f9, rtz # perform operation
fmul.h f26, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x5, 0xb4a992c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fmul.h f5, f19, f18, dyn # perform operation
fmul.h f5, f19, f18, rdn # perform operation
fmul.h f5, f19, f18, rmm # perform operation
fmul.h f5, f19, f18, rne # perform operation
fmul.h f5, f19, f18, rtz # perform operation
fmul.h f5, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x15, 0xd01605a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmul.h f15, f5, f31, dyn # perform operation
fmul.h f15, f5, f31, rdn # perform operation
fmul.h f15, f5, f31, rmm # perform operation
fmul.h f15, f5, f31, rne # perform operation
fmul.h f15, f5, f31, rtz # perform operation
fmul.h f15, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x16, 0x595de825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
fmul.h f16, f17, f4, dyn # perform operation
fmul.h f16, f17, f4, rdn # perform operation
fmul.h f16, f17, f4, rmm # perform operation
fmul.h f16, f17, f4, rne # perform operation
fmul.h f16, f17, f4, rtz # perform operation
fmul.h f16, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x12, 0x4fde1d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fmul.h f12, f30, f29, dyn # perform operation
fmul.h f12, f30, f29, rdn # perform operation
fmul.h f12, f30, f29, rmm # perform operation
fmul.h f12, f30, f29, rne # perform operation
fmul.h f12, f30, f29, rtz # perform operation
fmul.h f12, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x25, 0x253ab530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fmul.h f25, f13, f12, dyn # perform operation
fmul.h f25, f13, f12, rdn # perform operation
fmul.h f25, f13, f12, rmm # perform operation
fmul.h f25, f13, f12, rne # perform operation
fmul.h f25, f13, f12, rtz # perform operation
fmul.h f25, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x23, 0xa1b99c58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fmul.h f23, f7, f22, dyn # perform operation
fmul.h f23, f7, f22, rdn # perform operation
fmul.h f23, f7, f22, rmm # perform operation
fmul.h f23, f7, f22, rne # perform operation
fmul.h f23, f7, f22, rtz # perform operation
fmul.h f23, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x22, 0xc39d5ed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fmul.h f22, f19, f13, dyn # perform operation
fmul.h f22, f19, f13, rdn # perform operation
fmul.h f22, f19, f13, rmm # perform operation
fmul.h f22, f19, f13, rne # perform operation
fmul.h f22, f19, f13, rtz # perform operation
fmul.h f22, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x13, 0x65165206 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmul.h f13, f10, f31, dyn # perform operation
fmul.h f13, f10, f31, rdn # perform operation
fmul.h f13, f10, f31, rmm # perform operation
fmul.h f13, f10, f31, rne # perform operation
fmul.h f13, f10, f31, rtz # perform operation
fmul.h f13, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x30, 0x51ef4de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fmul.h f30, f3, f10, dyn # perform operation
fmul.h f30, f3, f10, rdn # perform operation
fmul.h f30, f3, f10, rmm # perform operation
fmul.h f30, f3, f10, rne # perform operation
fmul.h f30, f3, f10, rtz # perform operation
fmul.h f30, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x8, 0x91aa8739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fmul.h f8, f26, f27, dyn # perform operation
fmul.h f8, f26, f27, rdn # perform operation
fmul.h f8, f26, f27, rmm # perform operation
fmul.h f8, f26, f27, rne # perform operation
fmul.h f8, f26, f27, rtz # perform operation
fmul.h f8, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x14, 0x7a86d137 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fmul.h f14, f19, f5, dyn # perform operation
fmul.h f14, f19, f5, rdn # perform operation
fmul.h f14, f19, f5, rmm # perform operation
fmul.h f14, f19, f5, rne # perform operation
fmul.h f14, f19, f5, rtz # perform operation
fmul.h f14, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x12, 0xd0fc4601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fmul.h f12, f24, f13, dyn # perform operation
fmul.h f12, f24, f13, rdn # perform operation
fmul.h f12, f24, f13, rmm # perform operation
fmul.h f12, f24, f13, rne # perform operation
fmul.h f12, f24, f13, rtz # perform operation
fmul.h f12, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x31, 0xc53eebd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fmul.h f31, f26, f16, dyn # perform operation
fmul.h f31, f26, f16, rdn # perform operation
fmul.h f31, f26, f16, rmm # perform operation
fmul.h f31, f26, f16, rne # perform operation
fmul.h f31, f26, f16, rtz # perform operation
fmul.h f31, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x24, 0x051d5372 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fmul.h f24, f31, f25, dyn # perform operation
fmul.h f24, f31, f25, rdn # perform operation
fmul.h f24, f31, f25, rmm # perform operation
fmul.h f24, f31, f25, rne # perform operation
fmul.h f24, f31, f25, rtz # perform operation
fmul.h f24, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x28, 0x385bcf57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fmul.h f28, f14, f18, dyn # perform operation
fmul.h f28, f14, f18, rdn # perform operation
fmul.h f28, f14, f18, rmm # perform operation
fmul.h f28, f14, f18, rne # perform operation
fmul.h f28, f14, f18, rtz # perform operation
fmul.h f28, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x4, 0x4bd2c797 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
fmul.h f4, f23, f15, dyn # perform operation
fmul.h f4, f23, f15, rdn # perform operation
fmul.h f4, f23, f15, rmm # perform operation
fmul.h f4, f23, f15, rne # perform operation
fmul.h f4, f23, f15, rtz # perform operation
fmul.h f4, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x19, 0x79c5c183 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmul.h f19, f8, f28, dyn # perform operation
fmul.h f19, f8, f28, rdn # perform operation
fmul.h f19, f8, f28, rmm # perform operation
fmul.h f19, f8, f28, rne # perform operation
fmul.h f19, f8, f28, rtz # perform operation
fmul.h f19, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x27, 0x71512cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fmul.h f27, f4, f7, dyn # perform operation
fmul.h f27, f4, f7, rdn # perform operation
fmul.h f27, f4, f7, rmm # perform operation
fmul.h f27, f4, f7, rne # perform operation
fmul.h f27, f4, f7, rtz # perform operation
fmul.h f27, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x5, 0x4cc671d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fmul.h f5, f2, f24, dyn # perform operation
fmul.h f5, f2, f24, rdn # perform operation
fmul.h f5, f2, f24, rmm # perform operation
fmul.h f5, f2, f24, rne # perform operation
fmul.h f5, f2, f24, rtz # perform operation
fmul.h f5, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x8, 0xcf175734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fmul.h f8, f20, f13, dyn # perform operation
fmul.h f8, f20, f13, rdn # perform operation
fmul.h f8, f20, f13, rmm # perform operation
fmul.h f8, f20, f13, rne # perform operation
fmul.h f8, f20, f13, rtz # perform operation
fmul.h f8, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x27, 0x7c6b2ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fmul.h f27, f31, f12, dyn # perform operation
fmul.h f27, f31, f12, rdn # perform operation
fmul.h f27, f31, f12, rmm # perform operation
fmul.h f27, f31, f12, rne # perform operation
fmul.h f27, f31, f12, rtz # perform operation
fmul.h f27, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x25, 0x86f67e48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fmul.h f25, f10, f27, dyn # perform operation
fmul.h f25, f10, f27, rdn # perform operation
fmul.h f25, f10, f27, rmm # perform operation
fmul.h f25, f10, f27, rne # perform operation
fmul.h f25, f10, f27, rtz # perform operation
fmul.h f25, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x19, 0xafdcf38a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fmul.h f19, f30, f26, dyn # perform operation
fmul.h f19, f30, f26, rdn # perform operation
fmul.h f19, f30, f26, rmm # perform operation
fmul.h f19, f30, f26, rne # perform operation
fmul.h f19, f30, f26, rtz # perform operation
fmul.h f19, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x2, 0xfcdb4cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fmul.h f2, f25, f22, dyn # perform operation
fmul.h f2, f25, f22, rdn # perform operation
fmul.h f2, f25, f22, rmm # perform operation
fmul.h f2, f25, f22, rne # perform operation
fmul.h f2, f25, f22, rtz # perform operation
fmul.h f2, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x1, 0xe8c66e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmul.h f1, f17, f23, dyn # perform operation
fmul.h f1, f17, f23, rdn # perform operation
fmul.h f1, f17, f23, rmm # perform operation
fmul.h f1, f17, f23, rne # perform operation
fmul.h f1, f17, f23, rtz # perform operation
fmul.h f1, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x19, 0x7b54344f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fmul.h f19, f17, f25, dyn # perform operation
fmul.h f19, f17, f25, rdn # perform operation
fmul.h f19, f17, f25, rmm # perform operation
fmul.h f19, f17, f25, rne # perform operation
fmul.h f19, f17, f25, rtz # perform operation
fmul.h f19, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x15, 0x54738209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fmul.h f15, f9, f17, dyn # perform operation
fmul.h f15, f9, f17, rdn # perform operation
fmul.h f15, f9, f17, rmm # perform operation
fmul.h f15, f9, f17, rne # perform operation
fmul.h f15, f9, f17, rtz # perform operation
fmul.h f15, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x9, 0xed7cf149 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fmul.h f9, f20, f10, dyn # perform operation
fmul.h f9, f20, f10, rdn # perform operation
fmul.h f9, f20, f10, rmm # perform operation
fmul.h f9, f20, f10, rne # perform operation
fmul.h f9, f20, f10, rtz # perform operation
fmul.h f9, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x24, 0xd6938907 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmul.h f24, f21, f23, dyn # perform operation
fmul.h f24, f21, f23, rdn # perform operation
fmul.h f24, f21, f23, rmm # perform operation
fmul.h f24, f21, f23, rne # perform operation
fmul.h f24, f21, f23, rtz # perform operation
fmul.h f24, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x17, 0x6d345ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fmul.h f17, f13, f8, dyn # perform operation
fmul.h f17, f13, f8, rdn # perform operation
fmul.h f17, f13, f8, rmm # perform operation
fmul.h f17, f13, f8, rne # perform operation
fmul.h f17, f13, f8, rtz # perform operation
fmul.h f17, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x11, 0x1a5caa5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fmul.h f11, f28, f18, dyn # perform operation
fmul.h f11, f28, f18, rdn # perform operation
fmul.h f11, f28, f18, rmm # perform operation
fmul.h f11, f28, f18, rne # perform operation
fmul.h f11, f28, f18, rtz # perform operation
fmul.h f11, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x24, 0x193337a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fmul.h f24, f19, f12, dyn # perform operation
fmul.h f24, f19, f12, rdn # perform operation
fmul.h f24, f19, f12, rmm # perform operation
fmul.h f24, f19, f12, rne # perform operation
fmul.h f24, f19, f12, rtz # perform operation
fmul.h f24, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x30, 0x8a437a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fmul.h f30, f26, f22, dyn # perform operation
fmul.h f30, f26, f22, rdn # perform operation
fmul.h f30, f26, f22, rmm # perform operation
fmul.h f30, f26, f22, rne # perform operation
fmul.h f30, f26, f22, rtz # perform operation
fmul.h f30, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x29, 0xa5e8575a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fmul.h f29, f21, f14, dyn # perform operation
fmul.h f29, f21, f14, rdn # perform operation
fmul.h f29, f21, f14, rmm # perform operation
fmul.h f29, f21, f14, rne # perform operation
fmul.h f29, f21, f14, rtz # perform operation
fmul.h f29, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x20, 0x2d958576 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fmul.h f20, f13, f2, dyn # perform operation
fmul.h f20, f13, f2, rdn # perform operation
fmul.h f20, f13, f2, rmm # perform operation
fmul.h f20, f13, f2, rne # perform operation
fmul.h f20, f13, f2, rtz # perform operation
fmul.h f20, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x22, 0x96f76916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fmul.h f22, f30, f9, dyn # perform operation
fmul.h f22, f30, f9, rdn # perform operation
fmul.h f22, f30, f9, rmm # perform operation
fmul.h f22, f30, f9, rne # perform operation
fmul.h f22, f30, f9, rtz # perform operation
fmul.h f22, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x16, 0x6cfd8c4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fmul.h f16, f24, f10, dyn # perform operation
fmul.h f16, f24, f10, rdn # perform operation
fmul.h f16, f24, f10, rmm # perform operation
fmul.h f16, f24, f10, rne # perform operation
fmul.h f16, f24, f10, rtz # perform operation
fmul.h f16, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x13, 0x8496a3a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmul.h f13, f5, f27, dyn # perform operation
fmul.h f13, f5, f27, rdn # perform operation
fmul.h f13, f5, f27, rmm # perform operation
fmul.h f13, f5, f27, rne # perform operation
fmul.h f13, f5, f27, rtz # perform operation
fmul.h f13, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x11, 0xef22bee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fmul.h f11, f25, f24, dyn # perform operation
fmul.h f11, f25, f24, rdn # perform operation
fmul.h f11, f25, f24, rmm # perform operation
fmul.h f11, f25, f24, rne # perform operation
fmul.h f11, f25, f24, rtz # perform operation
fmul.h f11, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x16, 0x6fdbeb4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fmul.h f16, f17, f25, dyn # perform operation
fmul.h f16, f17, f25, rdn # perform operation
fmul.h f16, f17, f25, rmm # perform operation
fmul.h f16, f17, f25, rne # perform operation
fmul.h f16, f17, f25, rtz # perform operation
fmul.h f16, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x13, 0x028665a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fmul.h f13, f8, f16, dyn # perform operation
fmul.h f13, f8, f16, rdn # perform operation
fmul.h f13, f8, f16, rmm # perform operation
fmul.h f13, f8, f16, rne # perform operation
fmul.h f13, f8, f16, rtz # perform operation
fmul.h f13, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x16, 0x6abb6be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fmul.h f16, f21, f30, dyn # perform operation
fmul.h f16, f21, f30, rdn # perform operation
fmul.h f16, f21, f30, rmm # perform operation
fmul.h f16, f21, f30, rne # perform operation
fmul.h f16, f21, f30, rtz # perform operation
fmul.h f16, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x2, 0xea18b5ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
fmul.h f2, f13, f4, dyn # perform operation
fmul.h f2, f13, f4, rdn # perform operation
fmul.h f2, f13, f4, rmm # perform operation
fmul.h f2, f13, f4, rne # perform operation
fmul.h f2, f13, f4, rtz # perform operation
fmul.h f2, f13, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f13, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f13, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f13, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f13, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x9, 0xe2c182e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fmul.h f9, f27, f29, dyn # perform operation
fmul.h f9, f27, f29, rdn # perform operation
fmul.h f9, f27, f29, rmm # perform operation
fmul.h f9, f27, f29, rne # perform operation
fmul.h f9, f27, f29, rtz # perform operation
fmul.h f9, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x3, 0x37732734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fmul.h f3, f24, f12, dyn # perform operation
fmul.h f3, f24, f12, rdn # perform operation
fmul.h f3, f24, f12, rmm # perform operation
fmul.h f3, f24, f12, rne # perform operation
fmul.h f3, f24, f12, rtz # perform operation
fmul.h f3, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x2, 0x7ddc961b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmul.h f2, f22, f9, dyn # perform operation
fmul.h f2, f22, f9, rdn # perform operation
fmul.h f2, f22, f9, rmm # perform operation
fmul.h f2, f22, f9, rne # perform operation
fmul.h f2, f22, f9, rtz # perform operation
fmul.h f2, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x10, 0x0cc380f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fmul.h f10, f3, f27, dyn # perform operation
fmul.h f10, f3, f27, rdn # perform operation
fmul.h f10, f3, f27, rmm # perform operation
fmul.h f10, f3, f27, rne # perform operation
fmul.h f10, f3, f27, rtz # perform operation
fmul.h f10, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x4, 0xc1bdc7e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fmul.h f4, f18, f6, dyn # perform operation
fmul.h f4, f18, f6, rdn # perform operation
fmul.h f4, f18, f6, rmm # perform operation
fmul.h f4, f18, f6, rne # perform operation
fmul.h f4, f18, f6, rtz # perform operation
fmul.h f4, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x16, 0xfe0d79e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fmul.h f16, f29, f3, dyn # perform operation
fmul.h f16, f29, f3, rdn # perform operation
fmul.h f16, f29, f3, rmm # perform operation
fmul.h f16, f29, f3, rne # perform operation
fmul.h f16, f29, f3, rtz # perform operation
fmul.h f16, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x15, 0x099c5b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fmul.h f15, f20, f6, dyn # perform operation
fmul.h f15, f20, f6, rdn # perform operation
fmul.h f15, f20, f6, rmm # perform operation
fmul.h f15, f20, f6, rne # perform operation
fmul.h f15, f20, f6, rtz # perform operation
fmul.h f15, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x5, 0xe95281c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fmul.h f5, f19, f1, dyn # perform operation
fmul.h f5, f19, f1, rdn # perform operation
fmul.h f5, f19, f1, rmm # perform operation
fmul.h f5, f19, f1, rne # perform operation
fmul.h f5, f19, f1, rtz # perform operation
fmul.h f5, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x12, 0x36d67719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fmul.h f12, f17, f14, dyn # perform operation
fmul.h f12, f17, f14, rdn # perform operation
fmul.h f12, f17, f14, rmm # perform operation
fmul.h f12, f17, f14, rne # perform operation
fmul.h f12, f17, f14, rtz # perform operation
fmul.h f12, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x16, 0x72fdee16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fmul.h f16, f17, f9, dyn # perform operation
fmul.h f16, f17, f9, rdn # perform operation
fmul.h f16, f17, f9, rmm # perform operation
fmul.h f16, f17, f9, rne # perform operation
fmul.h f16, f17, f9, rtz # perform operation
fmul.h f16, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x19, 0xf1cbde91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fmul.h f19, f25, f11, dyn # perform operation
fmul.h f19, f25, f11, rdn # perform operation
fmul.h f19, f25, f11, rmm # perform operation
fmul.h f19, f25, f11, rne # perform operation
fmul.h f19, f25, f11, rtz # perform operation
fmul.h f19, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x16, 0x44744fdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fmul.h f16, f26, f3, dyn # perform operation
fmul.h f16, f26, f3, rdn # perform operation
fmul.h f16, f26, f3, rmm # perform operation
fmul.h f16, f26, f3, rne # perform operation
fmul.h f16, f26, f3, rtz # perform operation
fmul.h f16, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x6, 0x7181001a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fmul.h f6, f12, f29, dyn # perform operation
fmul.h f6, f12, f29, rdn # perform operation
fmul.h f6, f12, f29, rmm # perform operation
fmul.h f6, f12, f29, rne # perform operation
fmul.h f6, f12, f29, rtz # perform operation
fmul.h f6, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x11, 0x2369a842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fmul.h f11, f31, f17, dyn # perform operation
fmul.h f11, f31, f17, rdn # perform operation
fmul.h f11, f31, f17, rmm # perform operation
fmul.h f11, f31, f17, rne # perform operation
fmul.h f11, f31, f17, rtz # perform operation
fmul.h f11, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x11, 0xe5f778bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fmul.h f11, f22, f6, dyn # perform operation
fmul.h f11, f22, f6, rdn # perform operation
fmul.h f11, f22, f6, rmm # perform operation
fmul.h f11, f22, f6, rne # perform operation
fmul.h f11, f22, f6, rtz # perform operation
fmul.h f11, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x29, 0x2de5551c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmul.h f29, f19, f3, dyn # perform operation
fmul.h f29, f19, f3, rdn # perform operation
fmul.h f29, f19, f3, rmm # perform operation
fmul.h f29, f19, f3, rne # perform operation
fmul.h f29, f19, f3, rtz # perform operation
fmul.h f29, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x7, 0xf1dab83c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fmul.h f7, f19, f30, dyn # perform operation
fmul.h f7, f19, f30, rdn # perform operation
fmul.h f7, f19, f30, rmm # perform operation
fmul.h f7, f19, f30, rne # perform operation
fmul.h f7, f19, f30, rtz # perform operation
fmul.h f7, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x3, 0xd6a4c581 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fmul.h f3, f9, f27, dyn # perform operation
fmul.h f3, f9, f27, rdn # perform operation
fmul.h f3, f9, f27, rmm # perform operation
fmul.h f3, f9, f27, rne # perform operation
fmul.h f3, f9, f27, rtz # perform operation
fmul.h f3, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x2, 0xe7d47719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fmul.h f2, f20, f24, dyn # perform operation
fmul.h f2, f20, f24, rdn # perform operation
fmul.h f2, f20, f24, rmm # perform operation
fmul.h f2, f20, f24, rne # perform operation
fmul.h f2, f20, f24, rtz # perform operation
fmul.h f2, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x3, 0xc68dc3c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fmul.h f3, f19, f2, dyn # perform operation
fmul.h f3, f19, f2, rdn # perform operation
fmul.h f3, f19, f2, rmm # perform operation
fmul.h f3, f19, f2, rne # perform operation
fmul.h f3, f19, f2, rtz # perform operation
fmul.h f3, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x23, 0x26bab638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fmul.h f23, f25, f18, dyn # perform operation
fmul.h f23, f25, f18, rdn # perform operation
fmul.h f23, f25, f18, rmm # perform operation
fmul.h f23, f25, f18, rne # perform operation
fmul.h f23, f25, f18, rtz # perform operation
fmul.h f23, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x16, 0xe785ec47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fmul.h f16, f13, f14, dyn # perform operation
fmul.h f16, f13, f14, rdn # perform operation
fmul.h f16, f13, f14, rmm # perform operation
fmul.h f16, f13, f14, rne # perform operation
fmul.h f16, f13, f14, rtz # perform operation
fmul.h f16, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x22, 0x60c5aa86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fmul.h f22, f19, f30, dyn # perform operation
fmul.h f22, f19, f30, rdn # perform operation
fmul.h f22, f19, f30, rmm # perform operation
fmul.h f22, f19, f30, rne # perform operation
fmul.h f22, f19, f30, rtz # perform operation
fmul.h f22, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x10, 0xf3347a9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fmul.h f10, f8, f30, dyn # perform operation
fmul.h f10, f8, f30, rdn # perform operation
fmul.h f10, f8, f30, rmm # perform operation
fmul.h f10, f8, f30, rne # perform operation
fmul.h f10, f8, f30, rtz # perform operation
fmul.h f10, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x20, 0x34b39802 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fmul.h f20, f18, f22, dyn # perform operation
fmul.h f20, f18, f22, rdn # perform operation
fmul.h f20, f18, f22, rmm # perform operation
fmul.h f20, f18, f22, rne # perform operation
fmul.h f20, f18, f22, rtz # perform operation
fmul.h f20, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x12, 0x0877dea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fmul.h f12, f19, f3, dyn # perform operation
fmul.h f12, f19, f3, rdn # perform operation
fmul.h f12, f19, f3, rmm # perform operation
fmul.h f12, f19, f3, rne # perform operation
fmul.h f12, f19, f3, rtz # perform operation
fmul.h f12, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x27, 0x96f9f30e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fmul.h f27, f28, f23, dyn # perform operation
fmul.h f27, f28, f23, rdn # perform operation
fmul.h f27, f28, f23, rmm # perform operation
fmul.h f27, f28, f23, rne # perform operation
fmul.h f27, f28, f23, rtz # perform operation
fmul.h f27, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x29, 0x930db69b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fmul.h f29, f31, f20, dyn # perform operation
fmul.h f29, f31, f20, rdn # perform operation
fmul.h f29, f31, f20, rmm # perform operation
fmul.h f29, f31, f20, rne # perform operation
fmul.h f29, f31, f20, rtz # perform operation
fmul.h f29, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x1, 0xd15227a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fmul.h f1, f7, f26, dyn # perform operation
fmul.h f1, f7, f26, rdn # perform operation
fmul.h f1, f7, f26, rmm # perform operation
fmul.h f1, f7, f26, rne # perform operation
fmul.h f1, f7, f26, rtz # perform operation
fmul.h f1, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x17, 0x338fd523 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fmul.h f17, f19, f14, dyn # perform operation
fmul.h f17, f19, f14, rdn # perform operation
fmul.h f17, f19, f14, rmm # perform operation
fmul.h f17, f19, f14, rne # perform operation
fmul.h f17, f19, f14, rtz # perform operation
fmul.h f17, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x12, 0x03b8a329 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fmul.h f12, f25, f24, dyn # perform operation
fmul.h f12, f25, f24, rdn # perform operation
fmul.h f12, f25, f24, rmm # perform operation
fmul.h f12, f25, f24, rne # perform operation
fmul.h f12, f25, f24, rtz # perform operation
fmul.h f12, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x8, 0x25fd1f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fmul.h f8, f16, f2, dyn # perform operation
fmul.h f8, f16, f2, rdn # perform operation
fmul.h f8, f16, f2, rmm # perform operation
fmul.h f8, f16, f2, rne # perform operation
fmul.h f8, f16, f2, rtz # perform operation
fmul.h f8, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x5, 0xbde0f9fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fmul.h f5, f14, f19, dyn # perform operation
fmul.h f5, f14, f19, rdn # perform operation
fmul.h f5, f14, f19, rmm # perform operation
fmul.h f5, f14, f19, rne # perform operation
fmul.h f5, f14, f19, rtz # perform operation
fmul.h f5, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x30, 0xe1502ac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fmul.h f30, f29, f8, dyn # perform operation
fmul.h f30, f29, f8, rdn # perform operation
fmul.h f30, f29, f8, rmm # perform operation
fmul.h f30, f29, f8, rne # perform operation
fmul.h f30, f29, f8, rtz # perform operation
fmul.h f30, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x24, 0x8e82dc6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fmul.h f24, f28, f18, dyn # perform operation
fmul.h f24, f28, f18, rdn # perform operation
fmul.h f24, f28, f18, rmm # perform operation
fmul.h f24, f28, f18, rne # perform operation
fmul.h f24, f28, f18, rtz # perform operation
fmul.h f24, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x8, 0x31d6d1d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fmul.h f8, f31, f1, dyn # perform operation
fmul.h f8, f31, f1, rdn # perform operation
fmul.h f8, f31, f1, rmm # perform operation
fmul.h f8, f31, f1, rne # perform operation
fmul.h f8, f31, f1, rtz # perform operation
fmul.h f8, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x22, 0xe907615b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fmul.h f22, f8, f6, dyn # perform operation
fmul.h f22, f8, f6, rdn # perform operation
fmul.h f22, f8, f6, rmm # perform operation
fmul.h f22, f8, f6, rne # perform operation
fmul.h f22, f8, f6, rtz # perform operation
fmul.h f22, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x24, 0x86ea68b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fmul.h f24, f22, f30, dyn # perform operation
fmul.h f24, f22, f30, rdn # perform operation
fmul.h f24, f22, f30, rmm # perform operation
fmul.h f24, f22, f30, rne # perform operation
fmul.h f24, f22, f30, rtz # perform operation
fmul.h f24, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x3, 0x32eedb10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fmul.h f3, f20, f29, dyn # perform operation
fmul.h f3, f20, f29, rdn # perform operation
fmul.h f3, f20, f29, rmm # perform operation
fmul.h f3, f20, f29, rne # perform operation
fmul.h f3, f20, f29, rtz # perform operation
fmul.h f3, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x7, 0xd487a39c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fmul.h f7, f17, f19, dyn # perform operation
fmul.h f7, f17, f19, rdn # perform operation
fmul.h f7, f17, f19, rmm # perform operation
fmul.h f7, f17, f19, rne # perform operation
fmul.h f7, f17, f19, rtz # perform operation
fmul.h f7, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x31, 0x129ec79b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fmul.h f31, f21, f13, dyn # perform operation
fmul.h f31, f21, f13, rdn # perform operation
fmul.h f31, f21, f13, rmm # perform operation
fmul.h f31, f21, f13, rne # perform operation
fmul.h f31, f21, f13, rtz # perform operation
fmul.h f31, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x22, 0xea4898db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fmul.h f22, f18, f1, dyn # perform operation
fmul.h f22, f18, f1, rdn # perform operation
fmul.h f22, f18, f1, rmm # perform operation
fmul.h f22, f18, f1, rne # perform operation
fmul.h f22, f18, f1, rtz # perform operation
fmul.h f22, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x3, 0x2c8b789a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fmul.h f3, f20, f23, dyn # perform operation
fmul.h f3, f20, f23, rdn # perform operation
fmul.h f3, f20, f23, rmm # perform operation
fmul.h f3, f20, f23, rne # perform operation
fmul.h f3, f20, f23, rtz # perform operation
fmul.h f3, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x11, 0x0a030323 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fmul.h f11, f6, f18, dyn # perform operation
fmul.h f11, f6, f18, rdn # perform operation
fmul.h f11, f6, f18, rmm # perform operation
fmul.h f11, f6, f18, rne # perform operation
fmul.h f11, f6, f18, rtz # perform operation
fmul.h f11, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x21, 0x2ad277b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fmul.h f21, f16, f25, dyn # perform operation
fmul.h f21, f16, f25, rdn # perform operation
fmul.h f21, f16, f25, rmm # perform operation
fmul.h f21, f16, f25, rne # perform operation
fmul.h f21, f16, f25, rtz # perform operation
fmul.h f21, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x14, 0x6adcc9be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fmul.h f14, f10, f6, dyn # perform operation
fmul.h f14, f10, f6, rdn # perform operation
fmul.h f14, f10, f6, rmm # perform operation
fmul.h f14, f10, f6, rne # perform operation
fmul.h f14, f10, f6, rtz # perform operation
fmul.h f14, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x17, 0x9b8813cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fmul.h f17, f5, f28, dyn # perform operation
fmul.h f17, f5, f28, rdn # perform operation
fmul.h f17, f5, f28, rmm # perform operation
fmul.h f17, f5, f28, rne # perform operation
fmul.h f17, f5, f28, rtz # perform operation
fmul.h f17, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x25, 0xdfc0f82a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmul.h f25, f16, f1, dyn # perform operation
fmul.h f25, f16, f1, rdn # perform operation
fmul.h f25, f16, f1, rmm # perform operation
fmul.h f25, f16, f1, rne # perform operation
fmul.h f25, f16, f1, rtz # perform operation
fmul.h f25, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x1, 0x595b915e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fmul.h f1, f5, f9, dyn # perform operation
fmul.h f1, f5, f9, rdn # perform operation
fmul.h f1, f5, f9, rmm # perform operation
fmul.h f1, f5, f9, rne # perform operation
fmul.h f1, f5, f9, rtz # perform operation
fmul.h f1, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x26, 0xd4cbf54c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fmul.h f26, f27, f8, dyn # perform operation
fmul.h f26, f27, f8, rdn # perform operation
fmul.h f26, f27, f8, rmm # perform operation
fmul.h f26, f27, f8, rne # perform operation
fmul.h f26, f27, f8, rtz # perform operation
fmul.h f26, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x27, 0x11600065 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fmul.h f27, f9, f7, dyn # perform operation
fmul.h f27, f9, f7, rdn # perform operation
fmul.h f27, f9, f7, rmm # perform operation
fmul.h f27, f9, f7, rne # perform operation
fmul.h f27, f9, f7, rtz # perform operation
fmul.h f27, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x3, 0xc5d37665 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fmul.h f3, f12, f1, dyn # perform operation
fmul.h f3, f12, f1, rdn # perform operation
fmul.h f3, f12, f1, rmm # perform operation
fmul.h f3, f12, f1, rne # perform operation
fmul.h f3, f12, f1, rtz # perform operation
fmul.h f3, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x30, 0x79ec4939 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fmul.h f30, f27, f10, dyn # perform operation
fmul.h f30, f27, f10, rdn # perform operation
fmul.h f30, f27, f10, rmm # perform operation
fmul.h f30, f27, f10, rne # perform operation
fmul.h f30, f27, f10, rtz # perform operation
fmul.h f30, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x12, 0x3e432e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fmul.h f12, f24, f8, dyn # perform operation
fmul.h f12, f24, f8, rdn # perform operation
fmul.h f12, f24, f8, rmm # perform operation
fmul.h f12, f24, f8, rne # perform operation
fmul.h f12, f24, f8, rtz # perform operation
fmul.h f12, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x16, 0x23585158 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fmul.h f16, f6, f12, dyn # perform operation
fmul.h f16, f6, f12, rdn # perform operation
fmul.h f16, f6, f12, rmm # perform operation
fmul.h f16, f6, f12, rne # perform operation
fmul.h f16, f6, f12, rtz # perform operation
fmul.h f16, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x3, 0x9dfa892b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fmul.h f3, f14, f10, dyn # perform operation
fmul.h f3, f14, f10, rdn # perform operation
fmul.h f3, f14, f10, rmm # perform operation
fmul.h f3, f14, f10, rne # perform operation
fmul.h f3, f14, f10, rtz # perform operation
fmul.h f3, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x13, 0x6c8ecf53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmul.h f13, f29, f21, dyn # perform operation
fmul.h f13, f29, f21, rdn # perform operation
fmul.h f13, f29, f21, rmm # perform operation
fmul.h f13, f29, f21, rne # perform operation
fmul.h f13, f29, f21, rtz # perform operation
fmul.h f13, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x31, 0x9626d8e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fmul.h f31, f19, f6, dyn # perform operation
fmul.h f31, f19, f6, rdn # perform operation
fmul.h f31, f19, f6, rmm # perform operation
fmul.h f31, f19, f6, rne # perform operation
fmul.h f31, f19, f6, rtz # perform operation
fmul.h f31, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x20, 0x8ced3ec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fmul.h f20, f2, f21, dyn # perform operation
fmul.h f20, f2, f21, rdn # perform operation
fmul.h f20, f2, f21, rmm # perform operation
fmul.h f20, f2, f21, rne # perform operation
fmul.h f20, f2, f21, rtz # perform operation
fmul.h f20, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x12, 0x65e72fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fmul.h f12, f2, f20, dyn # perform operation
fmul.h f12, f2, f20, rdn # perform operation
fmul.h f12, f2, f20, rmm # perform operation
fmul.h f12, f2, f20, rne # perform operation
fmul.h f12, f2, f20, rtz # perform operation
fmul.h f12, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x18, 0x5cfbbb6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fmul.h f18, f10, f3, dyn # perform operation
fmul.h f18, f10, f3, rdn # perform operation
fmul.h f18, f10, f3, rmm # perform operation
fmul.h f18, f10, f3, rne # perform operation
fmul.h f18, f10, f3, rtz # perform operation
fmul.h f18, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x18, 0x8da65cbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fmul.h f18, f5, f1, dyn # perform operation
fmul.h f18, f5, f1, rdn # perform operation
fmul.h f18, f5, f1, rmm # perform operation
fmul.h f18, f5, f1, rne # perform operation
fmul.h f18, f5, f1, rtz # perform operation
fmul.h f18, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x27, 0x85e457d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fmul.h f27, f19, f5, dyn # perform operation
fmul.h f27, f19, f5, rdn # perform operation
fmul.h f27, f19, f5, rmm # perform operation
fmul.h f27, f19, f5, rne # perform operation
fmul.h f27, f19, f5, rtz # perform operation
fmul.h f27, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x23, 0xe99d3da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fmul.h f23, f9, f14, dyn # perform operation
fmul.h f23, f9, f14, rdn # perform operation
fmul.h f23, f9, f14, rmm # perform operation
fmul.h f23, f9, f14, rne # perform operation
fmul.h f23, f9, f14, rtz # perform operation
fmul.h f23, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x19, 0x5a3b7e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmul.h f19, f13, f30, dyn # perform operation
fmul.h f19, f13, f30, rdn # perform operation
fmul.h f19, f13, f30, rmm # perform operation
fmul.h f19, f13, f30, rne # perform operation
fmul.h f19, f13, f30, rtz # perform operation
fmul.h f19, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x29, 0x9de02ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
fmul.h f29, f6, f4, dyn # perform operation
fmul.h f29, f6, f4, rdn # perform operation
fmul.h f29, f6, f4, rmm # perform operation
fmul.h f29, f6, f4, rne # perform operation
fmul.h f29, f6, f4, rtz # perform operation
fmul.h f29, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x22, 0x2cbe05a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fmul.h f22, f8, f20, dyn # perform operation
fmul.h f22, f8, f20, rdn # perform operation
fmul.h f22, f8, f20, rmm # perform operation
fmul.h f22, f8, f20, rne # perform operation
fmul.h f22, f8, f20, rtz # perform operation
fmul.h f22, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x7, 0xed1a0527 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fmul.h f7, f26, f24, dyn # perform operation
fmul.h f7, f26, f24, rdn # perform operation
fmul.h f7, f26, f24, rmm # perform operation
fmul.h f7, f26, f24, rne # perform operation
fmul.h f7, f26, f24, rtz # perform operation
fmul.h f7, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x17, 0x413b4de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fmul.h f17, f14, f7, dyn # perform operation
fmul.h f17, f14, f7, rdn # perform operation
fmul.h f17, f14, f7, rmm # perform operation
fmul.h f17, f14, f7, rne # perform operation
fmul.h f17, f14, f7, rtz # perform operation
fmul.h f17, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x10, 0x17c6008c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fmul.h f10, f19, f17, dyn # perform operation
fmul.h f10, f19, f17, rdn # perform operation
fmul.h f10, f19, f17, rmm # perform operation
fmul.h f10, f19, f17, rne # perform operation
fmul.h f10, f19, f17, rtz # perform operation
fmul.h f10, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x24, 0xc6650cce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmul.h f24, f26, f7, dyn # perform operation
fmul.h f24, f26, f7, rdn # perform operation
fmul.h f24, f26, f7, rmm # perform operation
fmul.h f24, f26, f7, rne # perform operation
fmul.h f24, f26, f7, rtz # perform operation
fmul.h f24, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x19, 0xeb426343 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fmul.h f19, f11, f30, dyn # perform operation
fmul.h f19, f11, f30, rdn # perform operation
fmul.h f19, f11, f30, rmm # perform operation
fmul.h f19, f11, f30, rne # perform operation
fmul.h f19, f11, f30, rtz # perform operation
fmul.h f19, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x6, 0x62046fa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fmul.h f6, f2, f10, dyn # perform operation
fmul.h f6, f2, f10, rdn # perform operation
fmul.h f6, f2, f10, rmm # perform operation
fmul.h f6, f2, f10, rne # perform operation
fmul.h f6, f2, f10, rtz # perform operation
fmul.h f6, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x25, 0x37551924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmul.h f25, f24, f18, dyn # perform operation
fmul.h f25, f24, f18, rdn # perform operation
fmul.h f25, f24, f18, rmm # perform operation
fmul.h f25, f24, f18, rne # perform operation
fmul.h f25, f24, f18, rtz # perform operation
fmul.h f25, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x19, 0x1dcfd83d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmul.h f19, f16, f22, dyn # perform operation
fmul.h f19, f16, f22, rdn # perform operation
fmul.h f19, f16, f22, rmm # perform operation
fmul.h f19, f16, f22, rne # perform operation
fmul.h f19, f16, f22, rtz # perform operation
fmul.h f19, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x26, 0x60ab4225 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
fmul.h f26, f19, f4, dyn # perform operation
fmul.h f26, f19, f4, rdn # perform operation
fmul.h f26, f19, f4, rmm # perform operation
fmul.h f26, f19, f4, rne # perform operation
fmul.h f26, f19, f4, rtz # perform operation
fmul.h f26, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x27, 0x09972698 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fmul.h f27, f15, f22, dyn # perform operation
fmul.h f27, f15, f22, rdn # perform operation
fmul.h f27, f15, f22, rmm # perform operation
fmul.h f27, f15, f22, rne # perform operation
fmul.h f27, f15, f22, rtz # perform operation
fmul.h f27, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x23, 0xfbdd8fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fmul.h f23, f4, f8, dyn # perform operation
fmul.h f23, f4, f8, rdn # perform operation
fmul.h f23, f4, f8, rmm # perform operation
fmul.h f23, f4, f8, rne # perform operation
fmul.h f23, f4, f8, rtz # perform operation
fmul.h f23, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x21, 0x2dcbc669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fmul.h f21, f12, f2, dyn # perform operation
fmul.h f21, f12, f2, rdn # perform operation
fmul.h f21, f12, f2, rmm # perform operation
fmul.h f21, f12, f2, rne # perform operation
fmul.h f21, f12, f2, rtz # perform operation
fmul.h f21, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x13, 0xb8d44f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmul.h f13, f18, f10, dyn # perform operation
fmul.h f13, f18, f10, rdn # perform operation
fmul.h f13, f18, f10, rmm # perform operation
fmul.h f13, f18, f10, rne # perform operation
fmul.h f13, f18, f10, rtz # perform operation
fmul.h f13, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x11, 0x9ae9688b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmul.h f11, f2, f15, dyn # perform operation
fmul.h f11, f2, f15, rdn # perform operation
fmul.h f11, f2, f15, rmm # perform operation
fmul.h f11, f2, f15, rne # perform operation
fmul.h f11, f2, f15, rtz # perform operation
fmul.h f11, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x11, 0x9d59aeae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fmul.h f11, f17, f5, dyn # perform operation
fmul.h f11, f17, f5, rdn # perform operation
fmul.h f11, f17, f5, rmm # perform operation
fmul.h f11, f17, f5, rne # perform operation
fmul.h f11, f17, f5, rtz # perform operation
fmul.h f11, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x10, 0x40b4c105 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fmul.h f10, f14, f20, dyn # perform operation
fmul.h f10, f14, f20, rdn # perform operation
fmul.h f10, f14, f20, rmm # perform operation
fmul.h f10, f14, f20, rne # perform operation
fmul.h f10, f14, f20, rtz # perform operation
fmul.h f10, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x14, 0x72fa48e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fmul.h f14, f23, f18, dyn # perform operation
fmul.h f14, f23, f18, rdn # perform operation
fmul.h f14, f23, f18, rmm # perform operation
fmul.h f14, f23, f18, rne # perform operation
fmul.h f14, f23, f18, rtz # perform operation
fmul.h f14, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x4, 0x77602da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fmul.h f4, f25, f7, dyn # perform operation
fmul.h f4, f25, f7, rdn # perform operation
fmul.h f4, f25, f7, rmm # perform operation
fmul.h f4, f25, f7, rne # perform operation
fmul.h f4, f25, f7, rtz # perform operation
fmul.h f4, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x25, 0x99cde972 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fmul.h f25, f24, f18, dyn # perform operation
fmul.h f25, f24, f18, rdn # perform operation
fmul.h f25, f24, f18, rmm # perform operation
fmul.h f25, f24, f18, rne # perform operation
fmul.h f25, f24, f18, rtz # perform operation
fmul.h f25, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x30, 0xc7a16d3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fmul.h f30, f1, f29, dyn # perform operation
fmul.h f30, f1, f29, rdn # perform operation
fmul.h f30, f1, f29, rmm # perform operation
fmul.h f30, f1, f29, rne # perform operation
fmul.h f30, f1, f29, rtz # perform operation
fmul.h f30, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x7, 0x6a51c553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fmul.h f7, f26, f9, dyn # perform operation
fmul.h f7, f26, f9, rdn # perform operation
fmul.h f7, f26, f9, rmm # perform operation
fmul.h f7, f26, f9, rne # perform operation
fmul.h f7, f26, f9, rtz # perform operation
fmul.h f7, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x4, 0x55a00e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fmul.h f4, f25, f21, dyn # perform operation
fmul.h f4, f25, f21, rdn # perform operation
fmul.h f4, f25, f21, rmm # perform operation
fmul.h f4, f25, f21, rne # perform operation
fmul.h f4, f25, f21, rtz # perform operation
fmul.h f4, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x20, 0x264bacdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fmul.h f20, f13, f16, dyn # perform operation
fmul.h f20, f13, f16, rdn # perform operation
fmul.h f20, f13, f16, rmm # perform operation
fmul.h f20, f13, f16, rne # perform operation
fmul.h f20, f13, f16, rtz # perform operation
fmul.h f20, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x28, 0x777e8cc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fmul.h f28, f30, f4, dyn # perform operation
fmul.h f28, f30, f4, rdn # perform operation
fmul.h f28, f30, f4, rmm # perform operation
fmul.h f28, f30, f4, rne # perform operation
fmul.h f28, f30, f4, rtz # perform operation
fmul.h f28, f30, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f30, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f30, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f30, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f30, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f30, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x19, 0x373e2555 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fmul.h f19, f9, f25, dyn # perform operation
fmul.h f19, f9, f25, rdn # perform operation
fmul.h f19, f9, f25, rmm # perform operation
fmul.h f19, f9, f25, rne # perform operation
fmul.h f19, f9, f25, rtz # perform operation
fmul.h f19, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x3, 0x705906e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fmul.h f3, f18, f27, dyn # perform operation
fmul.h f3, f18, f27, rdn # perform operation
fmul.h f3, f18, f27, rmm # perform operation
fmul.h f3, f18, f27, rne # perform operation
fmul.h f3, f18, f27, rtz # perform operation
fmul.h f3, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x24, 0xbed4cb37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fmul.h f24, f29, f13, dyn # perform operation
fmul.h f24, f29, f13, rdn # perform operation
fmul.h f24, f29, f13, rmm # perform operation
fmul.h f24, f29, f13, rne # perform operation
fmul.h f24, f29, f13, rtz # perform operation
fmul.h f24, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x8, 0x10c08a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmul.h f8, f9, f3, dyn # perform operation
fmul.h f8, f9, f3, rdn # perform operation
fmul.h f8, f9, f3, rmm # perform operation
fmul.h f8, f9, f3, rne # perform operation
fmul.h f8, f9, f3, rtz # perform operation
fmul.h f8, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x25, 0x3bde4dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fmul.h f25, f3, f31, dyn # perform operation
fmul.h f25, f3, f31, rdn # perform operation
fmul.h f25, f3, f31, rmm # perform operation
fmul.h f25, f3, f31, rne # perform operation
fmul.h f25, f3, f31, rtz # perform operation
fmul.h f25, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x4, 0xf39ae9b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fmul.h f4, f14, f18, dyn # perform operation
fmul.h f4, f14, f18, rdn # perform operation
fmul.h f4, f14, f18, rmm # perform operation
fmul.h f4, f14, f18, rne # perform operation
fmul.h f4, f14, f18, rtz # perform operation
fmul.h f4, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x23, 0x8ff23ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fmul.h f23, f2, f7, dyn # perform operation
fmul.h f23, f2, f7, rdn # perform operation
fmul.h f23, f2, f7, rmm # perform operation
fmul.h f23, f2, f7, rne # perform operation
fmul.h f23, f2, f7, rtz # perform operation
fmul.h f23, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x17, 0x2d5259ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fmul.h f17, f22, f25, dyn # perform operation
fmul.h f17, f22, f25, rdn # perform operation
fmul.h f17, f22, f25, rmm # perform operation
fmul.h f17, f22, f25, rne # perform operation
fmul.h f17, f22, f25, rtz # perform operation
fmul.h f17, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x4, 0x2925a889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmul.h f4, f5, f3, dyn # perform operation
fmul.h f4, f5, f3, rdn # perform operation
fmul.h f4, f5, f3, rmm # perform operation
fmul.h f4, f5, f3, rne # perform operation
fmul.h f4, f5, f3, rtz # perform operation
fmul.h f4, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x18, 0xbe54e160 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fmul.h f18, f2, f10, dyn # perform operation
fmul.h f18, f2, f10, rdn # perform operation
fmul.h f18, f2, f10, rmm # perform operation
fmul.h f18, f2, f10, rne # perform operation
fmul.h f18, f2, f10, rtz # perform operation
fmul.h f18, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x16, 0x07215c98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fmul.h f16, f10, f11, dyn # perform operation
fmul.h f16, f10, f11, rdn # perform operation
fmul.h f16, f10, f11, rmm # perform operation
fmul.h f16, f10, f11, rne # perform operation
fmul.h f16, f10, f11, rtz # perform operation
fmul.h f16, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x8, 0x25611087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fmul.h f8, f23, f12, dyn # perform operation
fmul.h f8, f23, f12, rdn # perform operation
fmul.h f8, f23, f12, rmm # perform operation
fmul.h f8, f23, f12, rne # perform operation
fmul.h f8, f23, f12, rtz # perform operation
fmul.h f8, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x3, 0xe940fde1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fmul.h f3, f24, f7, dyn # perform operation
fmul.h f3, f24, f7, rdn # perform operation
fmul.h f3, f24, f7, rmm # perform operation
fmul.h f3, f24, f7, rne # perform operation
fmul.h f3, f24, f7, rtz # perform operation
fmul.h f3, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x8, 0x2f5c17f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fmul.h f8, f28, f17, dyn # perform operation
fmul.h f8, f28, f17, rdn # perform operation
fmul.h f8, f28, f17, rmm # perform operation
fmul.h f8, f28, f17, rne # perform operation
fmul.h f8, f28, f17, rtz # perform operation
fmul.h f8, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x23, 0x86643a60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fmul.h f23, f9, f31, dyn # perform operation
fmul.h f23, f9, f31, rdn # perform operation
fmul.h f23, f9, f31, rmm # perform operation
fmul.h f23, f9, f31, rne # perform operation
fmul.h f23, f9, f31, rtz # perform operation
fmul.h f23, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x17, 0xa9875daf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmul.h f17, f29, f9, dyn # perform operation
fmul.h f17, f29, f9, rdn # perform operation
fmul.h f17, f29, f9, rmm # perform operation
fmul.h f17, f29, f9, rne # perform operation
fmul.h f17, f29, f9, rtz # perform operation
fmul.h f17, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x22, 0x4701edaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmul.h f22, f13, f31, dyn # perform operation
fmul.h f22, f13, f31, rdn # perform operation
fmul.h f22, f13, f31, rmm # perform operation
fmul.h f22, f13, f31, rne # perform operation
fmul.h f22, f13, f31, rtz # perform operation
fmul.h f22, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x21, 0x19dc2d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fmul.h f21, f5, f31, dyn # perform operation
fmul.h f21, f5, f31, rdn # perform operation
fmul.h f21, f5, f31, rmm # perform operation
fmul.h f21, f5, f31, rne # perform operation
fmul.h f21, f5, f31, rtz # perform operation
fmul.h f21, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x14, 0xbcdac00a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fmul.h f14, f19, f27, dyn # perform operation
fmul.h f14, f19, f27, rdn # perform operation
fmul.h f14, f19, f27, rmm # perform operation
fmul.h f14, f19, f27, rne # perform operation
fmul.h f14, f19, f27, rtz # perform operation
fmul.h f14, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x6, 0x1ca1d381 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fmul.h f6, f4, f9, dyn # perform operation
fmul.h f6, f4, f9, rdn # perform operation
fmul.h f6, f4, f9, rmm # perform operation
fmul.h f6, f4, f9, rne # perform operation
fmul.h f6, f4, f9, rtz # perform operation
fmul.h f6, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x5, 0xa6c5636f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmul.h f5, f11, f23, dyn # perform operation
fmul.h f5, f11, f23, rdn # perform operation
fmul.h f5, f11, f23, rmm # perform operation
fmul.h f5, f11, f23, rne # perform operation
fmul.h f5, f11, f23, rtz # perform operation
fmul.h f5, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x4, 0x1b1d6047 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmul.h f4, f12, f31, dyn # perform operation
fmul.h f4, f12, f31, rdn # perform operation
fmul.h f4, f12, f31, rmm # perform operation
fmul.h f4, f12, f31, rne # perform operation
fmul.h f4, f12, f31, rtz # perform operation
fmul.h f4, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x27, 0x313b13ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fmul.h f27, f8, f31, dyn # perform operation
fmul.h f27, f8, f31, rdn # perform operation
fmul.h f27, f8, f31, rmm # perform operation
fmul.h f27, f8, f31, rne # perform operation
fmul.h f27, f8, f31, rtz # perform operation
fmul.h f27, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x7, 0x7805c12b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fmul.h f7, f2, f16, dyn # perform operation
fmul.h f7, f2, f16, rdn # perform operation
fmul.h f7, f2, f16, rmm # perform operation
fmul.h f7, f2, f16, rne # perform operation
fmul.h f7, f2, f16, rtz # perform operation
fmul.h f7, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x25, 0x2d8cd1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fmul.h f25, f8, f19, dyn # perform operation
fmul.h f25, f8, f19, rdn # perform operation
fmul.h f25, f8, f19, rmm # perform operation
fmul.h f25, f8, f19, rne # perform operation
fmul.h f25, f8, f19, rtz # perform operation
fmul.h f25, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x29, 0xedf08d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fmul.h f29, f31, f19, dyn # perform operation
fmul.h f29, f31, f19, rdn # perform operation
fmul.h f29, f31, f19, rmm # perform operation
fmul.h f29, f31, f19, rne # perform operation
fmul.h f29, f31, f19, rtz # perform operation
fmul.h f29, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x23, 0x92bf7ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fmul.h f23, f13, f18, dyn # perform operation
fmul.h f23, f13, f18, rdn # perform operation
fmul.h f23, f13, f18, rmm # perform operation
fmul.h f23, f13, f18, rne # perform operation
fmul.h f23, f13, f18, rtz # perform operation
fmul.h f23, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x27, 0x39468cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fmul.h f27, f4, f26, dyn # perform operation
fmul.h f27, f4, f26, rdn # perform operation
fmul.h f27, f4, f26, rmm # perform operation
fmul.h f27, f4, f26, rne # perform operation
fmul.h f27, f4, f26, rtz # perform operation
fmul.h f27, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x11, 0x31a2e815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fmul.h f11, f14, f29, dyn # perform operation
fmul.h f11, f14, f29, rdn # perform operation
fmul.h f11, f14, f29, rmm # perform operation
fmul.h f11, f14, f29, rne # perform operation
fmul.h f11, f14, f29, rtz # perform operation
fmul.h f11, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x29, 0x87109f5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fmul.h f29, f2, f28, dyn # perform operation
fmul.h f29, f2, f28, rdn # perform operation
fmul.h f29, f2, f28, rmm # perform operation
fmul.h f29, f2, f28, rne # perform operation
fmul.h f29, f2, f28, rtz # perform operation
fmul.h f29, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x13, 0xf17532e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fmul.h f13, f14, f29, dyn # perform operation
fmul.h f13, f14, f29, rdn # perform operation
fmul.h f13, f14, f29, rmm # perform operation
fmul.h f13, f14, f29, rne # perform operation
fmul.h f13, f14, f29, rtz # perform operation
fmul.h f13, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x12, 0x3de1f198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fmul.h f12, f26, f18, dyn # perform operation
fmul.h f12, f26, f18, rdn # perform operation
fmul.h f12, f26, f18, rmm # perform operation
fmul.h f12, f26, f18, rne # perform operation
fmul.h f12, f26, f18, rtz # perform operation
fmul.h f12, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x6, 0xf47e6cad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fmul.h f6, f18, f2, dyn # perform operation
fmul.h f6, f18, f2, rdn # perform operation
fmul.h f6, f18, f2, rmm # perform operation
fmul.h f6, f18, f2, rne # perform operation
fmul.h f6, f18, f2, rtz # perform operation
fmul.h f6, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x18, 0x23baa3e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f18, f7, f22, dyn # perform operation
fmul.h f18, f7, f22, rdn # perform operation
fmul.h f18, f7, f22, rmm # perform operation
fmul.h f18, f7, f22, rne # perform operation
fmul.h f18, f7, f22, rtz # perform operation
fmul.h f18, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x24, 0xe97bdd48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fmul.h f24, f14, f17, dyn # perform operation
fmul.h f24, f14, f17, rdn # perform operation
fmul.h f24, f14, f17, rmm # perform operation
fmul.h f24, f14, f17, rne # perform operation
fmul.h f24, f14, f17, rtz # perform operation
fmul.h f24, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x7, 0xc3d415b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fmul.h f7, f9, f1, dyn # perform operation
fmul.h f7, f9, f1, rdn # perform operation
fmul.h f7, f9, f1, rmm # perform operation
fmul.h f7, f9, f1, rne # perform operation
fmul.h f7, f9, f1, rtz # perform operation
fmul.h f7, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x28, 0x1012742b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fmul.h f28, f31, f30, dyn # perform operation
fmul.h f28, f31, f30, rdn # perform operation
fmul.h f28, f31, f30, rmm # perform operation
fmul.h f28, f31, f30, rne # perform operation
fmul.h f28, f31, f30, rtz # perform operation
fmul.h f28, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x19, 0xbe7a3b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fmul.h f19, f14, f29, dyn # perform operation
fmul.h f19, f14, f29, rdn # perform operation
fmul.h f19, f14, f29, rmm # perform operation
fmul.h f19, f14, f29, rne # perform operation
fmul.h f19, f14, f29, rtz # perform operation
fmul.h f19, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x27, 0x611298a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
fmul.h f27, f1, f9, dyn # perform operation
fmul.h f27, f1, f9, rdn # perform operation
fmul.h f27, f1, f9, rmm # perform operation
fmul.h f27, f1, f9, rne # perform operation
fmul.h f27, f1, f9, rtz # perform operation
fmul.h f27, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x28, 0xb5cd36ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fmul.h f28, f2, f25, dyn # perform operation
fmul.h f28, f2, f25, rdn # perform operation
fmul.h f28, f2, f25, rmm # perform operation
fmul.h f28, f2, f25, rne # perform operation
fmul.h f28, f2, f25, rtz # perform operation
fmul.h f28, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x8, 0x913f82c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fmul.h f8, f24, f11, dyn # perform operation
fmul.h f8, f24, f11, rdn # perform operation
fmul.h f8, f24, f11, rmm # perform operation
fmul.h f8, f24, f11, rne # perform operation
fmul.h f8, f24, f11, rtz # perform operation
fmul.h f8, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x18, 0x83f728d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fmul.h f18, f9, f6, dyn # perform operation
fmul.h f18, f9, f6, rdn # perform operation
fmul.h f18, f9, f6, rmm # perform operation
fmul.h f18, f9, f6, rne # perform operation
fmul.h f18, f9, f6, rtz # perform operation
fmul.h f18, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x1, 0x27295674 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fmul.h f1, f14, f10, dyn # perform operation
fmul.h f1, f14, f10, rdn # perform operation
fmul.h f1, f14, f10, rmm # perform operation
fmul.h f1, f14, f10, rne # perform operation
fmul.h f1, f14, f10, rtz # perform operation
fmul.h f1, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x18, 0xbf22427d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fmul.h f18, f29, f30, dyn # perform operation
fmul.h f18, f29, f30, rdn # perform operation
fmul.h f18, f29, f30, rmm # perform operation
fmul.h f18, f29, f30, rne # perform operation
fmul.h f18, f29, f30, rtz # perform operation
fmul.h f18, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x9, 0xb2866ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fmul.h f9, f17, f7, dyn # perform operation
fmul.h f9, f17, f7, rdn # perform operation
fmul.h f9, f17, f7, rmm # perform operation
fmul.h f9, f17, f7, rne # perform operation
fmul.h f9, f17, f7, rtz # perform operation
fmul.h f9, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x11, 0x62143014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fmul.h f11, f6, f1, dyn # perform operation
fmul.h f11, f6, f1, rdn # perform operation
fmul.h f11, f6, f1, rmm # perform operation
fmul.h f11, f6, f1, rne # perform operation
fmul.h f11, f6, f1, rtz # perform operation
fmul.h f11, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x26, 0xb6f14bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fmul.h f26, f1, f14, dyn # perform operation
fmul.h f26, f1, f14, rdn # perform operation
fmul.h f26, f1, f14, rmm # perform operation
fmul.h f26, f1, f14, rne # perform operation
fmul.h f26, f1, f14, rtz # perform operation
fmul.h f26, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x3, 0x7dcbcf7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fmul.h f3, f8, f9, dyn # perform operation
fmul.h f3, f8, f9, rdn # perform operation
fmul.h f3, f8, f9, rmm # perform operation
fmul.h f3, f8, f9, rne # perform operation
fmul.h f3, f8, f9, rtz # perform operation
fmul.h f3, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x27, 0x00ff7778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fmul.h f27, f24, f12, dyn # perform operation
fmul.h f27, f24, f12, rdn # perform operation
fmul.h f27, f24, f12, rmm # perform operation
fmul.h f27, f24, f12, rne # perform operation
fmul.h f27, f24, f12, rtz # perform operation
fmul.h f27, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x5, 0x147f212d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fmul.h f5, f25, f21, dyn # perform operation
fmul.h f5, f25, f21, rdn # perform operation
fmul.h f5, f25, f21, rmm # perform operation
fmul.h f5, f25, f21, rne # perform operation
fmul.h f5, f25, f21, rtz # perform operation
fmul.h f5, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x8, 0xc975301b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fmul.h f8, f25, f6, dyn # perform operation
fmul.h f8, f25, f6, rdn # perform operation
fmul.h f8, f25, f6, rmm # perform operation
fmul.h f8, f25, f6, rne # perform operation
fmul.h f8, f25, f6, rtz # perform operation
fmul.h f8, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x15, 0xfe155f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmul.h f15, f11, f2, dyn # perform operation
fmul.h f15, f11, f2, rdn # perform operation
fmul.h f15, f11, f2, rmm # perform operation
fmul.h f15, f11, f2, rne # perform operation
fmul.h f15, f11, f2, rtz # perform operation
fmul.h f15, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x17, 0x737fe98e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fmul.h f17, f8, f3, dyn # perform operation
fmul.h f17, f8, f3, rdn # perform operation
fmul.h f17, f8, f3, rmm # perform operation
fmul.h f17, f8, f3, rne # perform operation
fmul.h f17, f8, f3, rtz # perform operation
fmul.h f17, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x31, 0x344db671 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fmul.h f31, f6, f15, dyn # perform operation
fmul.h f31, f6, f15, rdn # perform operation
fmul.h f31, f6, f15, rmm # perform operation
fmul.h f31, f6, f15, rne # perform operation
fmul.h f31, f6, f15, rtz # perform operation
fmul.h f31, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x12, 0x93fb4c4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fmul.h f12, f26, f29, dyn # perform operation
fmul.h f12, f26, f29, rdn # perform operation
fmul.h f12, f26, f29, rmm # perform operation
fmul.h f12, f26, f29, rne # perform operation
fmul.h f12, f26, f29, rtz # perform operation
fmul.h f12, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x4, 0x56c5fa78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fmul.h f4, f23, f24, dyn # perform operation
fmul.h f4, f23, f24, rdn # perform operation
fmul.h f4, f23, f24, rmm # perform operation
fmul.h f4, f23, f24, rne # perform operation
fmul.h f4, f23, f24, rtz # perform operation
fmul.h f4, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x28, 0x13a26fee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fmul.h f28, f26, f16, dyn # perform operation
fmul.h f28, f26, f16, rdn # perform operation
fmul.h f28, f26, f16, rmm # perform operation
fmul.h f28, f26, f16, rne # perform operation
fmul.h f28, f26, f16, rtz # perform operation
fmul.h f28, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x17, 0x1745d82c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fmul.h f17, f10, f19, dyn # perform operation
fmul.h f17, f10, f19, rdn # perform operation
fmul.h f17, f10, f19, rmm # perform operation
fmul.h f17, f10, f19, rne # perform operation
fmul.h f17, f10, f19, rtz # perform operation
fmul.h f17, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x7, 0xaad17505 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmul.h f7, f10, f26, dyn # perform operation
fmul.h f7, f10, f26, rdn # perform operation
fmul.h f7, f10, f26, rmm # perform operation
fmul.h f7, f10, f26, rne # perform operation
fmul.h f7, f10, f26, rtz # perform operation
fmul.h f7, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x10, 0x273087cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
fmul.h f10, f1, f4, dyn # perform operation
fmul.h f10, f1, f4, rdn # perform operation
fmul.h f10, f1, f4, rmm # perform operation
fmul.h f10, f1, f4, rne # perform operation
fmul.h f10, f1, f4, rtz # perform operation
fmul.h f10, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x30, 0x77722311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fmul.h f30, f4, f24, dyn # perform operation
fmul.h f30, f4, f24, rdn # perform operation
fmul.h f30, f4, f24, rmm # perform operation
fmul.h f30, f4, f24, rne # perform operation
fmul.h f30, f4, f24, rtz # perform operation
fmul.h f30, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x13, 0xb76b73e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fmul.h f13, f14, f16, dyn # perform operation
fmul.h f13, f14, f16, rdn # perform operation
fmul.h f13, f14, f16, rmm # perform operation
fmul.h f13, f14, f16, rne # perform operation
fmul.h f13, f14, f16, rtz # perform operation
fmul.h f13, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x12, 0x48e885fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fmul.h f12, f18, f13, dyn # perform operation
fmul.h f12, f18, f13, rdn # perform operation
fmul.h f12, f18, f13, rmm # perform operation
fmul.h f12, f18, f13, rne # perform operation
fmul.h f12, f18, f13, rtz # perform operation
fmul.h f12, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x22, 0xbc205b7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmul.h f22, f11, f17, dyn # perform operation
fmul.h f22, f11, f17, rdn # perform operation
fmul.h f22, f11, f17, rmm # perform operation
fmul.h f22, f11, f17, rne # perform operation
fmul.h f22, f11, f17, rtz # perform operation
fmul.h f22, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x1, 0x0a3e764a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fmul.h f1, f13, f31, dyn # perform operation
fmul.h f1, f13, f31, rdn # perform operation
fmul.h f1, f13, f31, rmm # perform operation
fmul.h f1, f13, f31, rne # perform operation
fmul.h f1, f13, f31, rtz # perform operation
fmul.h f1, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x5, 0x17a6391c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmul.h f5, f10, f28, dyn # perform operation
fmul.h f5, f10, f28, rdn # perform operation
fmul.h f5, f10, f28, rmm # perform operation
fmul.h f5, f10, f28, rne # perform operation
fmul.h f5, f10, f28, rtz # perform operation
fmul.h f5, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x1, 0x913bd123 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmul.h f1, f17, f10, dyn # perform operation
fmul.h f1, f17, f10, rdn # perform operation
fmul.h f1, f17, f10, rmm # perform operation
fmul.h f1, f17, f10, rne # perform operation
fmul.h f1, f17, f10, rtz # perform operation
fmul.h f1, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x7, 0xc44f7cca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fmul.h f7, f20, f6, dyn # perform operation
fmul.h f7, f20, f6, rdn # perform operation
fmul.h f7, f20, f6, rmm # perform operation
fmul.h f7, f20, f6, rne # perform operation
fmul.h f7, f20, f6, rtz # perform operation
fmul.h f7, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x9, 0xaadc47e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fmul.h f9, f1, f8, dyn # perform operation
fmul.h f9, f1, f8, rdn # perform operation
fmul.h f9, f1, f8, rmm # perform operation
fmul.h f9, f1, f8, rne # perform operation
fmul.h f9, f1, f8, rtz # perform operation
fmul.h f9, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x23, 0xd758a891 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fmul.h f23, f30, f15, dyn # perform operation
fmul.h f23, f30, f15, rdn # perform operation
fmul.h f23, f30, f15, rmm # perform operation
fmul.h f23, f30, f15, rne # perform operation
fmul.h f23, f30, f15, rtz # perform operation
fmul.h f23, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x17, 0x48d746dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fmul.h f17, f13, f7, dyn # perform operation
fmul.h f17, f13, f7, rdn # perform operation
fmul.h f17, f13, f7, rmm # perform operation
fmul.h f17, f13, f7, rne # perform operation
fmul.h f17, f13, f7, rtz # perform operation
fmul.h f17, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x3, 0x5970260e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fmul.h f3, f20, f10, dyn # perform operation
fmul.h f3, f20, f10, rdn # perform operation
fmul.h f3, f20, f10, rmm # perform operation
fmul.h f3, f20, f10, rne # perform operation
fmul.h f3, f20, f10, rtz # perform operation
fmul.h f3, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x17, 0x65cf66ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fmul.h f17, f15, f6, dyn # perform operation
fmul.h f17, f15, f6, rdn # perform operation
fmul.h f17, f15, f6, rmm # perform operation
fmul.h f17, f15, f6, rne # perform operation
fmul.h f17, f15, f6, rtz # perform operation
fmul.h f17, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x16, 0x0af4c4f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fmul.h f16, f29, f17, dyn # perform operation
fmul.h f16, f29, f17, rdn # perform operation
fmul.h f16, f29, f17, rmm # perform operation
fmul.h f16, f29, f17, rne # perform operation
fmul.h f16, f29, f17, rtz # perform operation
fmul.h f16, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x31, 0xab558499 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fmul.h f31, f1, f15, dyn # perform operation
fmul.h f31, f1, f15, rdn # perform operation
fmul.h f31, f1, f15, rmm # perform operation
fmul.h f31, f1, f15, rne # perform operation
fmul.h f31, f1, f15, rtz # perform operation
fmul.h f31, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x25, 0x18bccda0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fmul.h f25, f17, f28, dyn # perform operation
fmul.h f25, f17, f28, rdn # perform operation
fmul.h f25, f17, f28, rmm # perform operation
fmul.h f25, f17, f28, rne # perform operation
fmul.h f25, f17, f28, rtz # perform operation
fmul.h f25, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x13, 0xad023f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fmul.h f13, f31, f15, dyn # perform operation
fmul.h f13, f31, f15, rdn # perform operation
fmul.h f13, f31, f15, rmm # perform operation
fmul.h f13, f31, f15, rne # perform operation
fmul.h f13, f31, f15, rtz # perform operation
fmul.h f13, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x9, 0x3f87b934 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmul.h f9, f28, f23, dyn # perform operation
fmul.h f9, f28, f23, rdn # perform operation
fmul.h f9, f28, f23, rmm # perform operation
fmul.h f9, f28, f23, rne # perform operation
fmul.h f9, f28, f23, rtz # perform operation
fmul.h f9, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x28, 0xa49cea0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fmul.h f28, f16, f11, dyn # perform operation
fmul.h f28, f16, f11, rdn # perform operation
fmul.h f28, f16, f11, rmm # perform operation
fmul.h f28, f16, f11, rne # perform operation
fmul.h f28, f16, f11, rtz # perform operation
fmul.h f28, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x4, 0x1858dde9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fmul.h f4, f1, f3, dyn # perform operation
fmul.h f4, f1, f3, rdn # perform operation
fmul.h f4, f1, f3, rmm # perform operation
fmul.h f4, f1, f3, rne # perform operation
fmul.h f4, f1, f3, rtz # perform operation
fmul.h f4, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x6, 0x690f8edd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fmul.h f6, f19, f16, dyn # perform operation
fmul.h f6, f19, f16, rdn # perform operation
fmul.h f6, f19, f16, rmm # perform operation
fmul.h f6, f19, f16, rne # perform operation
fmul.h f6, f19, f16, rtz # perform operation
fmul.h f6, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x30, 0x2645e5dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fmul.h f30, f13, f18, dyn # perform operation
fmul.h f30, f13, f18, rdn # perform operation
fmul.h f30, f13, f18, rmm # perform operation
fmul.h f30, f13, f18, rne # perform operation
fmul.h f30, f13, f18, rtz # perform operation
fmul.h f30, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x9, 0x8512c878 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fmul.h f9, f14, f22, dyn # perform operation
fmul.h f9, f14, f22, rdn # perform operation
fmul.h f9, f14, f22, rmm # perform operation
fmul.h f9, f14, f22, rne # perform operation
fmul.h f9, f14, f22, rtz # perform operation
fmul.h f9, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x2, 0x7d1ee40a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fmul.h f2, f22, f1, dyn # perform operation
fmul.h f2, f22, f1, rdn # perform operation
fmul.h f2, f22, f1, rmm # perform operation
fmul.h f2, f22, f1, rne # perform operation
fmul.h f2, f22, f1, rtz # perform operation
fmul.h f2, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x25, 0x666bf0dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fmul.h f25, f17, f27, dyn # perform operation
fmul.h f25, f17, f27, rdn # perform operation
fmul.h f25, f17, f27, rmm # perform operation
fmul.h f25, f17, f27, rne # perform operation
fmul.h f25, f17, f27, rtz # perform operation
fmul.h f25, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x2, 0x0c1382a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmul.h f2, f29, f27, dyn # perform operation
fmul.h f2, f29, f27, rdn # perform operation
fmul.h f2, f29, f27, rmm # perform operation
fmul.h f2, f29, f27, rne # perform operation
fmul.h f2, f29, f27, rtz # perform operation
fmul.h f2, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x14, 0xe4f5ad99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
fmul.h f14, f10, f19, dyn # perform operation
fmul.h f14, f10, f19, rdn # perform operation
fmul.h f14, f10, f19, rmm # perform operation
fmul.h f14, f10, f19, rne # perform operation
fmul.h f14, f10, f19, rtz # perform operation
fmul.h f14, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x16, 0x6a0d2bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fmul.h f16, f11, f2, dyn # perform operation
fmul.h f16, f11, f2, rdn # perform operation
fmul.h f16, f11, f2, rmm # perform operation
fmul.h f16, f11, f2, rne # perform operation
fmul.h f16, f11, f2, rtz # perform operation
fmul.h f16, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x24, 0x36db32bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fmul.h f24, f21, f28, dyn # perform operation
fmul.h f24, f21, f28, rdn # perform operation
fmul.h f24, f21, f28, rmm # perform operation
fmul.h f24, f21, f28, rne # perform operation
fmul.h f24, f21, f28, rtz # perform operation
fmul.h f24, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x21, 0xbff4e6be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fmul.h f21, f13, f22, dyn # perform operation
fmul.h f21, f13, f22, rdn # perform operation
fmul.h f21, f13, f22, rmm # perform operation
fmul.h f21, f13, f22, rne # perform operation
fmul.h f21, f13, f22, rtz # perform operation
fmul.h f21, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x8, 0x137e0728 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmul.h f8, f22, f16, dyn # perform operation
fmul.h f8, f22, f16, rdn # perform operation
fmul.h f8, f22, f16, rmm # perform operation
fmul.h f8, f22, f16, rne # perform operation
fmul.h f8, f22, f16, rtz # perform operation
fmul.h f8, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x26, 0x14a338f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fmul.h f26, f29, f2, dyn # perform operation
fmul.h f26, f29, f2, rdn # perform operation
fmul.h f26, f29, f2, rmm # perform operation
fmul.h f26, f29, f2, rne # perform operation
fmul.h f26, f29, f2, rtz # perform operation
fmul.h f26, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x8, 0xa205bb1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fmul.h f8, f3, f4, dyn # perform operation
fmul.h f8, f3, f4, rdn # perform operation
fmul.h f8, f3, f4, rmm # perform operation
fmul.h f8, f3, f4, rne # perform operation
fmul.h f8, f3, f4, rtz # perform operation
fmul.h f8, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x27, 0x31d2fdbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fmul.h f27, f11, f23, dyn # perform operation
fmul.h f27, f11, f23, rdn # perform operation
fmul.h f27, f11, f23, rmm # perform operation
fmul.h f27, f11, f23, rne # perform operation
fmul.h f27, f11, f23, rtz # perform operation
fmul.h f27, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x22, 0x64badd6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fmul.h f22, f15, f7, dyn # perform operation
fmul.h f22, f15, f7, rdn # perform operation
fmul.h f22, f15, f7, rmm # perform operation
fmul.h f22, f15, f7, rne # perform operation
fmul.h f22, f15, f7, rtz # perform operation
fmul.h f22, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x1, 0xd99f14eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fmul.h f1, f2, f17, dyn # perform operation
fmul.h f1, f2, f17, rdn # perform operation
fmul.h f1, f2, f17, rmm # perform operation
fmul.h f1, f2, f17, rne # perform operation
fmul.h f1, f2, f17, rtz # perform operation
fmul.h f1, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x31, 0x70666384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fmul.h f31, f2, f23, dyn # perform operation
fmul.h f31, f2, f23, rdn # perform operation
fmul.h f31, f2, f23, rmm # perform operation
fmul.h f31, f2, f23, rne # perform operation
fmul.h f31, f2, f23, rtz # perform operation
fmul.h f31, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x29, 0x05fd6743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fmul.h f29, f25, f17, dyn # perform operation
fmul.h f29, f25, f17, rdn # perform operation
fmul.h f29, f25, f17, rmm # perform operation
fmul.h f29, f25, f17, rne # perform operation
fmul.h f29, f25, f17, rtz # perform operation
fmul.h f29, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x24, 0x19d57560 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmul.h f24, f12, f23, dyn # perform operation
fmul.h f24, f12, f23, rdn # perform operation
fmul.h f24, f12, f23, rmm # perform operation
fmul.h f24, f12, f23, rne # perform operation
fmul.h f24, f12, f23, rtz # perform operation
fmul.h f24, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x4, 0x927739a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmul.h f4, f31, f21, dyn # perform operation
fmul.h f4, f31, f21, rdn # perform operation
fmul.h f4, f31, f21, rmm # perform operation
fmul.h f4, f31, f21, rne # perform operation
fmul.h f4, f31, f21, rtz # perform operation
fmul.h f4, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x28, 0xbc8312e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmul.h f28, f14, f23, dyn # perform operation
fmul.h f28, f14, f23, rdn # perform operation
fmul.h f28, f14, f23, rmm # perform operation
fmul.h f28, f14, f23, rne # perform operation
fmul.h f28, f14, f23, rtz # perform operation
fmul.h f28, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x8, 0xaaf0bbc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmul.h f8, f19, f31, dyn # perform operation
fmul.h f8, f19, f31, rdn # perform operation
fmul.h f8, f19, f31, rmm # perform operation
fmul.h f8, f19, f31, rne # perform operation
fmul.h f8, f19, f31, rtz # perform operation
fmul.h f8, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x12, 0xd7be483b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fmul.h f12, f7, f14, dyn # perform operation
fmul.h f12, f7, f14, rdn # perform operation
fmul.h f12, f7, f14, rmm # perform operation
fmul.h f12, f7, f14, rne # perform operation
fmul.h f12, f7, f14, rtz # perform operation
fmul.h f12, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x4, 0xb8210956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fmul.h f4, f24, f14, dyn # perform operation
fmul.h f4, f24, f14, rdn # perform operation
fmul.h f4, f24, f14, rmm # perform operation
fmul.h f4, f24, f14, rne # perform operation
fmul.h f4, f24, f14, rtz # perform operation
fmul.h f4, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x11, 0x34b10737 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
fmul.h f11, f13, f4, dyn # perform operation
fmul.h f11, f13, f4, rdn # perform operation
fmul.h f11, f13, f4, rmm # perform operation
fmul.h f11, f13, f4, rne # perform operation
fmul.h f11, f13, f4, rtz # perform operation
fmul.h f11, f13, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f13, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f13, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f13, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f13, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x1, 0x12d7d20e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
fmul.h f1, f11, f4, dyn # perform operation
fmul.h f1, f11, f4, rdn # perform operation
fmul.h f1, f11, f4, rmm # perform operation
fmul.h f1, f11, f4, rne # perform operation
fmul.h f1, f11, f4, rtz # perform operation
fmul.h f1, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x19, 0x6e12d18b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fmul.h f19, f5, f30, dyn # perform operation
fmul.h f19, f5, f30, rdn # perform operation
fmul.h f19, f5, f30, rmm # perform operation
fmul.h f19, f5, f30, rne # perform operation
fmul.h f19, f5, f30, rtz # perform operation
fmul.h f19, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x29, 0xa9ff510a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fmul.h f29, f7, f26, dyn # perform operation
fmul.h f29, f7, f26, rdn # perform operation
fmul.h f29, f7, f26, rmm # perform operation
fmul.h f29, f7, f26, rne # perform operation
fmul.h f29, f7, f26, rtz # perform operation
fmul.h f29, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x3, 0x60eebc15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fmul.h f3, f23, f2, dyn # perform operation
fmul.h f3, f23, f2, rdn # perform operation
fmul.h f3, f23, f2, rmm # perform operation
fmul.h f3, f23, f2, rne # perform operation
fmul.h f3, f23, f2, rtz # perform operation
fmul.h f3, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x14, 0xcee8150e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fmul.h f14, f2, f5, dyn # perform operation
fmul.h f14, f2, f5, rdn # perform operation
fmul.h f14, f2, f5, rmm # perform operation
fmul.h f14, f2, f5, rne # perform operation
fmul.h f14, f2, f5, rtz # perform operation
fmul.h f14, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x28, 0xdc6672e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fmul.h f28, f24, f3, dyn # perform operation
fmul.h f28, f24, f3, rdn # perform operation
fmul.h f28, f24, f3, rmm # perform operation
fmul.h f28, f24, f3, rne # perform operation
fmul.h f28, f24, f3, rtz # perform operation
fmul.h f28, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x3, 0x203b658d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fmul.h f3, f21, f9, dyn # perform operation
fmul.h f3, f21, f9, rdn # perform operation
fmul.h f3, f21, f9, rmm # perform operation
fmul.h f3, f21, f9, rne # perform operation
fmul.h f3, f21, f9, rtz # perform operation
fmul.h f3, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x21, 0x8481de69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fmul.h f21, f8, f23, dyn # perform operation
fmul.h f21, f8, f23, rdn # perform operation
fmul.h f21, f8, f23, rmm # perform operation
fmul.h f21, f8, f23, rne # perform operation
fmul.h f21, f8, f23, rtz # perform operation
fmul.h f21, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x27, 0x0ccf25c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fmul.h f27, f23, f25, dyn # perform operation
fmul.h f27, f23, f25, rdn # perform operation
fmul.h f27, f23, f25, rmm # perform operation
fmul.h f27, f23, f25, rne # perform operation
fmul.h f27, f23, f25, rtz # perform operation
fmul.h f27, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x22, 0x065fecf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fmul.h f22, f6, f2, dyn # perform operation
fmul.h f22, f6, f2, rdn # perform operation
fmul.h f22, f6, f2, rmm # perform operation
fmul.h f22, f6, f2, rne # perform operation
fmul.h f22, f6, f2, rtz # perform operation
fmul.h f22, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x2, 0x6694c241 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fmul.h f2, f29, f27, dyn # perform operation
fmul.h f2, f29, f27, rdn # perform operation
fmul.h f2, f29, f27, rmm # perform operation
fmul.h f2, f29, f27, rne # perform operation
fmul.h f2, f29, f27, rtz # perform operation
fmul.h f2, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x21, 0x495a5eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fmul.h f21, f23, f3, dyn # perform operation
fmul.h f21, f23, f3, rdn # perform operation
fmul.h f21, f23, f3, rmm # perform operation
fmul.h f21, f23, f3, rne # perform operation
fmul.h f21, f23, f3, rtz # perform operation
fmul.h f21, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x9, 0x0647d446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmul.h f9, f21, f28, dyn # perform operation
fmul.h f9, f21, f28, rdn # perform operation
fmul.h f9, f21, f28, rmm # perform operation
fmul.h f9, f21, f28, rne # perform operation
fmul.h f9, f21, f28, rtz # perform operation
fmul.h f9, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x17, 0xfdfbc638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fmul.h f17, f12, f1, dyn # perform operation
fmul.h f17, f12, f1, rdn # perform operation
fmul.h f17, f12, f1, rmm # perform operation
fmul.h f17, f12, f1, rne # perform operation
fmul.h f17, f12, f1, rtz # perform operation
fmul.h f17, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x16, 0xb8d856f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmul.h f16, f31, f2, dyn # perform operation
fmul.h f16, f31, f2, rdn # perform operation
fmul.h f16, f31, f2, rmm # perform operation
fmul.h f16, f31, f2, rne # perform operation
fmul.h f16, f31, f2, rtz # perform operation
fmul.h f16, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x1, 0x93f90484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fmul.h f1, f27, f15, dyn # perform operation
fmul.h f1, f27, f15, rdn # perform operation
fmul.h f1, f27, f15, rmm # perform operation
fmul.h f1, f27, f15, rne # perform operation
fmul.h f1, f27, f15, rtz # perform operation
fmul.h f1, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x23, 0xe3188f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fmul.h f23, f7, f19, dyn # perform operation
fmul.h f23, f7, f19, rdn # perform operation
fmul.h f23, f7, f19, rmm # perform operation
fmul.h f23, f7, f19, rne # perform operation
fmul.h f23, f7, f19, rtz # perform operation
fmul.h f23, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x11, 0x6b4f42fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fmul.h f11, f23, f28, dyn # perform operation
fmul.h f11, f23, f28, rdn # perform operation
fmul.h f11, f23, f28, rmm # perform operation
fmul.h f11, f23, f28, rne # perform operation
fmul.h f11, f23, f28, rtz # perform operation
fmul.h f11, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x3, 0xbb8352a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fmul.h f3, f26, f25, dyn # perform operation
fmul.h f3, f26, f25, rdn # perform operation
fmul.h f3, f26, f25, rmm # perform operation
fmul.h f3, f26, f25, rne # perform operation
fmul.h f3, f26, f25, rtz # perform operation
fmul.h f3, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x4, 0x317b0fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmul.h f4, f12, f11, dyn # perform operation
fmul.h f4, f12, f11, rdn # perform operation
fmul.h f4, f12, f11, rmm # perform operation
fmul.h f4, f12, f11, rne # perform operation
fmul.h f4, f12, f11, rtz # perform operation
fmul.h f4, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x18, 0xef993f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmul.h f18, f12, f31, dyn # perform operation
fmul.h f18, f12, f31, rdn # perform operation
fmul.h f18, f12, f31, rmm # perform operation
fmul.h f18, f12, f31, rne # perform operation
fmul.h f18, f12, f31, rtz # perform operation
fmul.h f18, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x26, 0xe95d3971 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fmul.h f26, f27, f2, dyn # perform operation
fmul.h f26, f27, f2, rdn # perform operation
fmul.h f26, f27, f2, rmm # perform operation
fmul.h f26, f27, f2, rne # perform operation
fmul.h f26, f27, f2, rtz # perform operation
fmul.h f26, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x15, 0x94614b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fmul.h f15, f6, f26, dyn # perform operation
fmul.h f15, f6, f26, rdn # perform operation
fmul.h f15, f6, f26, rmm # perform operation
fmul.h f15, f6, f26, rne # perform operation
fmul.h f15, f6, f26, rtz # perform operation
fmul.h f15, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x7, 0xe817aefb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fmul.h f7, f2, f25, dyn # perform operation
fmul.h f7, f2, f25, rdn # perform operation
fmul.h f7, f2, f25, rmm # perform operation
fmul.h f7, f2, f25, rne # perform operation
fmul.h f7, f2, f25, rtz # perform operation
fmul.h f7, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x26, 0xd15a512f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fmul.h f26, f22, f11, dyn # perform operation
fmul.h f26, f22, f11, rdn # perform operation
fmul.h f26, f22, f11, rmm # perform operation
fmul.h f26, f22, f11, rne # perform operation
fmul.h f26, f22, f11, rtz # perform operation
fmul.h f26, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x16, 0x40cd21a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fmul.h f16, f23, f26, dyn # perform operation
fmul.h f16, f23, f26, rdn # perform operation
fmul.h f16, f23, f26, rmm # perform operation
fmul.h f16, f23, f26, rne # perform operation
fmul.h f16, f23, f26, rtz # perform operation
fmul.h f16, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x2, 0x795f0d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fmul.h f2, f3, f6, dyn # perform operation
fmul.h f2, f3, f6, rdn # perform operation
fmul.h f2, f3, f6, rmm # perform operation
fmul.h f2, f3, f6, rne # perform operation
fmul.h f2, f3, f6, rtz # perform operation
fmul.h f2, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x9, 0x2deaa15c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmul.h f9, f8, f7, dyn # perform operation
fmul.h f9, f8, f7, rdn # perform operation
fmul.h f9, f8, f7, rmm # perform operation
fmul.h f9, f8, f7, rne # perform operation
fmul.h f9, f8, f7, rtz # perform operation
fmul.h f9, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x19, 0x7fd136ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fmul.h f19, f10, f24, dyn # perform operation
fmul.h f19, f10, f24, rdn # perform operation
fmul.h f19, f10, f24, rmm # perform operation
fmul.h f19, f10, f24, rne # perform operation
fmul.h f19, f10, f24, rtz # perform operation
fmul.h f19, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x27, 0x80c9254a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fmul.h f27, f28, f13, dyn # perform operation
fmul.h f27, f28, f13, rdn # perform operation
fmul.h f27, f28, f13, rmm # perform operation
fmul.h f27, f28, f13, rne # perform operation
fmul.h f27, f28, f13, rtz # perform operation
fmul.h f27, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x4, 0xce753b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fmul.h f4, f8, f19, dyn # perform operation
fmul.h f4, f8, f19, rdn # perform operation
fmul.h f4, f8, f19, rmm # perform operation
fmul.h f4, f8, f19, rne # perform operation
fmul.h f4, f8, f19, rtz # perform operation
fmul.h f4, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x7, 0x9527504b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fmul.h f7, f16, f30, dyn # perform operation
fmul.h f7, f16, f30, rdn # perform operation
fmul.h f7, f16, f30, rmm # perform operation
fmul.h f7, f16, f30, rne # perform operation
fmul.h f7, f16, f30, rtz # perform operation
fmul.h f7, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x30, 0x471b5134 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fmul.h f30, f10, f15, dyn # perform operation
fmul.h f30, f10, f15, rdn # perform operation
fmul.h f30, f10, f15, rmm # perform operation
fmul.h f30, f10, f15, rne # perform operation
fmul.h f30, f10, f15, rtz # perform operation
fmul.h f30, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x13, 0xe1c72e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmul.h f13, f19, f18, dyn # perform operation
fmul.h f13, f19, f18, rdn # perform operation
fmul.h f13, f19, f18, rmm # perform operation
fmul.h f13, f19, f18, rne # perform operation
fmul.h f13, f19, f18, rtz # perform operation
fmul.h f13, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x22, 0x371cacf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fmul.h f22, f12, f29, dyn # perform operation
fmul.h f22, f12, f29, rdn # perform operation
fmul.h f22, f12, f29, rmm # perform operation
fmul.h f22, f12, f29, rne # perform operation
fmul.h f22, f12, f29, rtz # perform operation
fmul.h f22, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x23, 0x74378ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fmul.h f23, f7, f14, dyn # perform operation
fmul.h f23, f7, f14, rdn # perform operation
fmul.h f23, f7, f14, rmm # perform operation
fmul.h f23, f7, f14, rne # perform operation
fmul.h f23, f7, f14, rtz # perform operation
fmul.h f23, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x28, 0x180b2192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmul.h f28, f7, f17, dyn # perform operation
fmul.h f28, f7, f17, rdn # perform operation
fmul.h f28, f7, f17, rmm # perform operation
fmul.h f28, f7, f17, rne # perform operation
fmul.h f28, f7, f17, rtz # perform operation
fmul.h f28, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x21, 0xb4f40500 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fmul.h f21, f6, f10, dyn # perform operation
fmul.h f21, f6, f10, rdn # perform operation
fmul.h f21, f6, f10, rmm # perform operation
fmul.h f21, f6, f10, rne # perform operation
fmul.h f21, f6, f10, rtz # perform operation
fmul.h f21, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x15, 0x17902446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fmul.h f15, f1, f5, dyn # perform operation
fmul.h f15, f1, f5, rdn # perform operation
fmul.h f15, f1, f5, rmm # perform operation
fmul.h f15, f1, f5, rne # perform operation
fmul.h f15, f1, f5, rtz # perform operation
fmul.h f15, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x2, 0x89bfec21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fmul.h f2, f13, f21, dyn # perform operation
fmul.h f2, f13, f21, rdn # perform operation
fmul.h f2, f13, f21, rmm # perform operation
fmul.h f2, f13, f21, rne # perform operation
fmul.h f2, f13, f21, rtz # perform operation
fmul.h f2, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x28, 0x7cef4cff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fmul.h f28, f26, f11, dyn # perform operation
fmul.h f28, f26, f11, rdn # perform operation
fmul.h f28, f26, f11, rmm # perform operation
fmul.h f28, f26, f11, rne # perform operation
fmul.h f28, f26, f11, rtz # perform operation
fmul.h f28, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x4, 0xdc37ea20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fmul.h f4, f13, f1, dyn # perform operation
fmul.h f4, f13, f1, rdn # perform operation
fmul.h f4, f13, f1, rmm # perform operation
fmul.h f4, f13, f1, rne # perform operation
fmul.h f4, f13, f1, rtz # perform operation
fmul.h f4, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x1, 0x0b1a45dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fmul.h f1, f4, f7, dyn # perform operation
fmul.h f1, f4, f7, rdn # perform operation
fmul.h f1, f4, f7, rmm # perform operation
fmul.h f1, f4, f7, rne # perform operation
fmul.h f1, f4, f7, rtz # perform operation
fmul.h f1, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x23, 0x02ef6ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fmul.h f23, f4, f19, dyn # perform operation
fmul.h f23, f4, f19, rdn # perform operation
fmul.h f23, f4, f19, rmm # perform operation
fmul.h f23, f4, f19, rne # perform operation
fmul.h f23, f4, f19, rtz # perform operation
fmul.h f23, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x13, 0x7521d973 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmul.h f13, f15, f30, dyn # perform operation
fmul.h f13, f15, f30, rdn # perform operation
fmul.h f13, f15, f30, rmm # perform operation
fmul.h f13, f15, f30, rne # perform operation
fmul.h f13, f15, f30, rtz # perform operation
fmul.h f13, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x5, 0x32b9a493 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fmul.h f5, f13, f21, dyn # perform operation
fmul.h f5, f13, f21, rdn # perform operation
fmul.h f5, f13, f21, rmm # perform operation
fmul.h f5, f13, f21, rne # perform operation
fmul.h f5, f13, f21, rtz # perform operation
fmul.h f5, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x20, 0xa14470f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmul.h f20, f22, f31, dyn # perform operation
fmul.h f20, f22, f31, rdn # perform operation
fmul.h f20, f22, f31, rmm # perform operation
fmul.h f20, f22, f31, rne # perform operation
fmul.h f20, f22, f31, rtz # perform operation
fmul.h f20, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x15, 0x9794013d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fmul.h f15, f21, f8, dyn # perform operation
fmul.h f15, f21, f8, rdn # perform operation
fmul.h f15, f21, f8, rmm # perform operation
fmul.h f15, f21, f8, rne # perform operation
fmul.h f15, f21, f8, rtz # perform operation
fmul.h f15, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x22, 0x2214a38b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fmul.h f22, f29, f12, dyn # perform operation
fmul.h f22, f29, f12, rdn # perform operation
fmul.h f22, f29, f12, rmm # perform operation
fmul.h f22, f29, f12, rne # perform operation
fmul.h f22, f29, f12, rtz # perform operation
fmul.h f22, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x24, 0x6d714c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fmul.h f24, f6, f17, dyn # perform operation
fmul.h f24, f6, f17, rdn # perform operation
fmul.h f24, f6, f17, rmm # perform operation
fmul.h f24, f6, f17, rne # perform operation
fmul.h f24, f6, f17, rtz # perform operation
fmul.h f24, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x30, 0x09572995 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fmul.h f30, f31, f15, dyn # perform operation
fmul.h f30, f31, f15, rdn # perform operation
fmul.h f30, f31, f15, rmm # perform operation
fmul.h f30, f31, f15, rne # perform operation
fmul.h f30, f31, f15, rtz # perform operation
fmul.h f30, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x30, 0xa5e7c1c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fmul.h f30, f24, f14, dyn # perform operation
fmul.h f30, f24, f14, rdn # perform operation
fmul.h f30, f24, f14, rmm # perform operation
fmul.h f30, f24, f14, rne # perform operation
fmul.h f30, f24, f14, rtz # perform operation
fmul.h f30, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x1, 0xd7bec71f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fmul.h f1, f21, f24, dyn # perform operation
fmul.h f1, f21, f24, rdn # perform operation
fmul.h f1, f21, f24, rmm # perform operation
fmul.h f1, f21, f24, rne # perform operation
fmul.h f1, f21, f24, rtz # perform operation
fmul.h f1, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x13, 0x335d1cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fmul.h f13, f31, f4, dyn # perform operation
fmul.h f13, f31, f4, rdn # perform operation
fmul.h f13, f31, f4, rmm # perform operation
fmul.h f13, f31, f4, rne # perform operation
fmul.h f13, f31, f4, rtz # perform operation
fmul.h f13, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x6, 0x9b5c807b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fmul.h f6, f17, f2, dyn # perform operation
fmul.h f6, f17, f2, rdn # perform operation
fmul.h f6, f17, f2, rmm # perform operation
fmul.h f6, f17, f2, rne # perform operation
fmul.h f6, f17, f2, rtz # perform operation
fmul.h f6, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x9, 0x3ee521ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fmul.h f9, f2, f21, dyn # perform operation
fmul.h f9, f2, f21, rdn # perform operation
fmul.h f9, f2, f21, rmm # perform operation
fmul.h f9, f2, f21, rne # perform operation
fmul.h f9, f2, f21, rtz # perform operation
fmul.h f9, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x31, 0x13779bea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fmul.h f31, f20, f28, dyn # perform operation
fmul.h f31, f20, f28, rdn # perform operation
fmul.h f31, f20, f28, rmm # perform operation
fmul.h f31, f20, f28, rne # perform operation
fmul.h f31, f20, f28, rtz # perform operation
fmul.h f31, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x3, 0xe8409108 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fmul.h f3, f22, f14, dyn # perform operation
fmul.h f3, f22, f14, rdn # perform operation
fmul.h f3, f22, f14, rmm # perform operation
fmul.h f3, f22, f14, rne # perform operation
fmul.h f3, f22, f14, rtz # perform operation
fmul.h f3, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x1, 0x164221ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fmul.h f1, f10, f17, dyn # perform operation
fmul.h f1, f10, f17, rdn # perform operation
fmul.h f1, f10, f17, rmm # perform operation
fmul.h f1, f10, f17, rne # perform operation
fmul.h f1, f10, f17, rtz # perform operation
fmul.h f1, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x14, 0xcabf9e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fmul.h f14, f16, f31, dyn # perform operation
fmul.h f14, f16, f31, rdn # perform operation
fmul.h f14, f16, f31, rmm # perform operation
fmul.h f14, f16, f31, rne # perform operation
fmul.h f14, f16, f31, rtz # perform operation
fmul.h f14, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x16, 0xb622b02c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fmul.h f16, f21, f24, dyn # perform operation
fmul.h f16, f21, f24, rdn # perform operation
fmul.h f16, f21, f24, rmm # perform operation
fmul.h f16, f21, f24, rne # perform operation
fmul.h f16, f21, f24, rtz # perform operation
fmul.h f16, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x25, 0x33eff0db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fmul.h f25, f1, f12, dyn # perform operation
fmul.h f25, f1, f12, rdn # perform operation
fmul.h f25, f1, f12, rmm # perform operation
fmul.h f25, f1, f12, rne # perform operation
fmul.h f25, f1, f12, rtz # perform operation
fmul.h f25, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x5, 0x436a732e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fmul.h f5, f14, f19, dyn # perform operation
fmul.h f5, f14, f19, rdn # perform operation
fmul.h f5, f14, f19, rmm # perform operation
fmul.h f5, f14, f19, rne # perform operation
fmul.h f5, f14, f19, rtz # perform operation
fmul.h f5, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x28, 0x8e60d357 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fmul.h f28, f11, f18, dyn # perform operation
fmul.h f28, f11, f18, rdn # perform operation
fmul.h f28, f11, f18, rmm # perform operation
fmul.h f28, f11, f18, rne # perform operation
fmul.h f28, f11, f18, rtz # perform operation
fmul.h f28, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x11, 0xed304698 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fmul.h f11, f25, f9, dyn # perform operation
fmul.h f11, f25, f9, rdn # perform operation
fmul.h f11, f25, f9, rmm # perform operation
fmul.h f11, f25, f9, rne # perform operation
fmul.h f11, f25, f9, rtz # perform operation
fmul.h f11, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x8, 0x4434203d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fmul.h f8, f1, f26, dyn # perform operation
fmul.h f8, f1, f26, rdn # perform operation
fmul.h f8, f1, f26, rmm # perform operation
fmul.h f8, f1, f26, rne # perform operation
fmul.h f8, f1, f26, rtz # perform operation
fmul.h f8, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x9, 0x95fc79bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
fmul.h f9, f7, f4, dyn # perform operation
fmul.h f9, f7, f4, rdn # perform operation
fmul.h f9, f7, f4, rmm # perform operation
fmul.h f9, f7, f4, rne # perform operation
fmul.h f9, f7, f4, rtz # perform operation
fmul.h f9, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x7, 0x76f9f5c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fmul.h f7, f27, f28, dyn # perform operation
fmul.h f7, f27, f28, rdn # perform operation
fmul.h f7, f27, f28, rmm # perform operation
fmul.h f7, f27, f28, rne # perform operation
fmul.h f7, f27, f28, rtz # perform operation
fmul.h f7, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x15, 0x3415300e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fmul.h f15, f6, f9, dyn # perform operation
fmul.h f15, f6, f9, rdn # perform operation
fmul.h f15, f6, f9, rmm # perform operation
fmul.h f15, f6, f9, rne # perform operation
fmul.h f15, f6, f9, rtz # perform operation
fmul.h f15, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x7, 0x535727ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fmul.h f7, f21, f19, dyn # perform operation
fmul.h f7, f21, f19, rdn # perform operation
fmul.h f7, f21, f19, rmm # perform operation
fmul.h f7, f21, f19, rne # perform operation
fmul.h f7, f21, f19, rtz # perform operation
fmul.h f7, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x25, 0x4da36e91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmul.h f25, f3, f30, dyn # perform operation
fmul.h f25, f3, f30, rdn # perform operation
fmul.h f25, f3, f30, rmm # perform operation
fmul.h f25, f3, f30, rne # perform operation
fmul.h f25, f3, f30, rtz # perform operation
fmul.h f25, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x26, 0xa6d73750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fmul.h f26, f13, f20, dyn # perform operation
fmul.h f26, f13, f20, rdn # perform operation
fmul.h f26, f13, f20, rmm # perform operation
fmul.h f26, f13, f20, rne # perform operation
fmul.h f26, f13, f20, rtz # perform operation
fmul.h f26, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x16, 0xfc3b0008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fmul.h f16, f17, f20, dyn # perform operation
fmul.h f16, f17, f20, rdn # perform operation
fmul.h f16, f17, f20, rmm # perform operation
fmul.h f16, f17, f20, rne # perform operation
fmul.h f16, f17, f20, rtz # perform operation
fmul.h f16, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x3, 0x1c343881 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fmul.h f3, f10, f24, dyn # perform operation
fmul.h f3, f10, f24, rdn # perform operation
fmul.h f3, f10, f24, rmm # perform operation
fmul.h f3, f10, f24, rne # perform operation
fmul.h f3, f10, f24, rtz # perform operation
fmul.h f3, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x24, 0x728c8c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fmul.h f24, f14, f25, dyn # perform operation
fmul.h f24, f14, f25, rdn # perform operation
fmul.h f24, f14, f25, rmm # perform operation
fmul.h f24, f14, f25, rne # perform operation
fmul.h f24, f14, f25, rtz # perform operation
fmul.h f24, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x30, 0x4aa5f51e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fmul.h f30, f21, f15, dyn # perform operation
fmul.h f30, f21, f15, rdn # perform operation
fmul.h f30, f21, f15, rmm # perform operation
fmul.h f30, f21, f15, rne # perform operation
fmul.h f30, f21, f15, rtz # perform operation
fmul.h f30, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x20, 0xbe086d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmul.h f20, f9, f10, dyn # perform operation
fmul.h f20, f9, f10, rdn # perform operation
fmul.h f20, f9, f10, rmm # perform operation
fmul.h f20, f9, f10, rne # perform operation
fmul.h f20, f9, f10, rtz # perform operation
fmul.h f20, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x27, 0xa931f458 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fmul.h f27, f5, f9, dyn # perform operation
fmul.h f27, f5, f9, rdn # perform operation
fmul.h f27, f5, f9, rmm # perform operation
fmul.h f27, f5, f9, rne # perform operation
fmul.h f27, f5, f9, rtz # perform operation
fmul.h f27, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x3, 0xd896a2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fmul.h f3, f20, f11, dyn # perform operation
fmul.h f3, f20, f11, rdn # perform operation
fmul.h f3, f20, f11, rmm # perform operation
fmul.h f3, f20, f11, rne # perform operation
fmul.h f3, f20, f11, rtz # perform operation
fmul.h f3, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x27, 0x51c5e6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fmul.h f27, f29, f4, dyn # perform operation
fmul.h f27, f29, f4, rdn # perform operation
fmul.h f27, f29, f4, rmm # perform operation
fmul.h f27, f29, f4, rne # perform operation
fmul.h f27, f29, f4, rtz # perform operation
fmul.h f27, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x24, 0xa9ca4506 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fmul.h f24, f5, f1, dyn # perform operation
fmul.h f24, f5, f1, rdn # perform operation
fmul.h f24, f5, f1, rmm # perform operation
fmul.h f24, f5, f1, rne # perform operation
fmul.h f24, f5, f1, rtz # perform operation
fmul.h f24, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x14, 0x7e412d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmul.h f14, f3, f24, dyn # perform operation
fmul.h f14, f3, f24, rdn # perform operation
fmul.h f14, f3, f24, rmm # perform operation
fmul.h f14, f3, f24, rne # perform operation
fmul.h f14, f3, f24, rtz # perform operation
fmul.h f14, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x22, 0xc2f8dba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fmul.h f22, f23, f6, dyn # perform operation
fmul.h f22, f23, f6, rdn # perform operation
fmul.h f22, f23, f6, rmm # perform operation
fmul.h f22, f23, f6, rne # perform operation
fmul.h f22, f23, f6, rtz # perform operation
fmul.h f22, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x16, 0xf5367538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fmul.h f16, f10, f21, dyn # perform operation
fmul.h f16, f10, f21, rdn # perform operation
fmul.h f16, f10, f21, rmm # perform operation
fmul.h f16, f10, f21, rne # perform operation
fmul.h f16, f10, f21, rtz # perform operation
fmul.h f16, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x24, 0xb581b021 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmul.h f24, f15, f27, dyn # perform operation
fmul.h f24, f15, f27, rdn # perform operation
fmul.h f24, f15, f27, rmm # perform operation
fmul.h f24, f15, f27, rne # perform operation
fmul.h f24, f15, f27, rtz # perform operation
fmul.h f24, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x20, 0xe5051c88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fmul.h f20, f26, f15, dyn # perform operation
fmul.h f20, f26, f15, rdn # perform operation
fmul.h f20, f26, f15, rmm # perform operation
fmul.h f20, f26, f15, rne # perform operation
fmul.h f20, f26, f15, rtz # perform operation
fmul.h f20, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x2, 0x694451ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fmul.h f2, f22, f11, dyn # perform operation
fmul.h f2, f22, f11, rdn # perform operation
fmul.h f2, f22, f11, rmm # perform operation
fmul.h f2, f22, f11, rne # perform operation
fmul.h f2, f22, f11, rtz # perform operation
fmul.h f2, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x25, 0x771fc1cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fmul.h f25, f30, f9, dyn # perform operation
fmul.h f25, f30, f9, rdn # perform operation
fmul.h f25, f30, f9, rmm # perform operation
fmul.h f25, f30, f9, rne # perform operation
fmul.h f25, f30, f9, rtz # perform operation
fmul.h f25, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x31, 0x40be7624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
fmul.h f31, f7, f28, dyn # perform operation
fmul.h f31, f7, f28, rdn # perform operation
fmul.h f31, f7, f28, rmm # perform operation
fmul.h f31, f7, f28, rne # perform operation
fmul.h f31, f7, f28, rtz # perform operation
fmul.h f31, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x26, 0xef98e62f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fmul.h f26, f16, f13, dyn # perform operation
fmul.h f26, f16, f13, rdn # perform operation
fmul.h f26, f16, f13, rmm # perform operation
fmul.h f26, f16, f13, rne # perform operation
fmul.h f26, f16, f13, rtz # perform operation
fmul.h f26, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x3, 0x1ff0b495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fmul.h f3, f16, f5, dyn # perform operation
fmul.h f3, f16, f5, rdn # perform operation
fmul.h f3, f16, f5, rmm # perform operation
fmul.h f3, f16, f5, rne # perform operation
fmul.h f3, f16, f5, rtz # perform operation
fmul.h f3, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x30, 0x40b3a148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fmul.h f30, f12, f3, dyn # perform operation
fmul.h f30, f12, f3, rdn # perform operation
fmul.h f30, f12, f3, rmm # perform operation
fmul.h f30, f12, f3, rne # perform operation
fmul.h f30, f12, f3, rtz # perform operation
fmul.h f30, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x21, 0x9fa33fa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
fmul.h f21, f9, f4, dyn # perform operation
fmul.h f21, f9, f4, rdn # perform operation
fmul.h f21, f9, f4, rmm # perform operation
fmul.h f21, f9, f4, rne # perform operation
fmul.h f21, f9, f4, rtz # perform operation
fmul.h f21, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x12, 0xc7919fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fmul.h f12, f13, f2, dyn # perform operation
fmul.h f12, f13, f2, rdn # perform operation
fmul.h f12, f13, f2, rmm # perform operation
fmul.h f12, f13, f2, rne # perform operation
fmul.h f12, f13, f2, rtz # perform operation
fmul.h f12, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x27, 0x75c4fad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fmul.h f27, f11, f15, dyn # perform operation
fmul.h f27, f11, f15, rdn # perform operation
fmul.h f27, f11, f15, rmm # perform operation
fmul.h f27, f11, f15, rne # perform operation
fmul.h f27, f11, f15, rtz # perform operation
fmul.h f27, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x9, 0xbd3d9d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fmul.h f9, f11, f10, dyn # perform operation
fmul.h f9, f11, f10, rdn # perform operation
fmul.h f9, f11, f10, rmm # perform operation
fmul.h f9, f11, f10, rne # perform operation
fmul.h f9, f11, f10, rtz # perform operation
fmul.h f9, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x7, 0x75f878b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fmul.h f7, f17, f27, dyn # perform operation
fmul.h f7, f17, f27, rdn # perform operation
fmul.h f7, f17, f27, rmm # perform operation
fmul.h f7, f17, f27, rne # perform operation
fmul.h f7, f17, f27, rtz # perform operation
fmul.h f7, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x15, 0xf4d8a1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmul.h f15, f16, f11, dyn # perform operation
fmul.h f15, f16, f11, rdn # perform operation
fmul.h f15, f16, f11, rmm # perform operation
fmul.h f15, f16, f11, rne # perform operation
fmul.h f15, f16, f11, rtz # perform operation
fmul.h f15, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x16, 0xb47aa1e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fmul.h f16, f29, f12, dyn # perform operation
fmul.h f16, f29, f12, rdn # perform operation
fmul.h f16, f29, f12, rmm # perform operation
fmul.h f16, f29, f12, rne # perform operation
fmul.h f16, f29, f12, rtz # perform operation
fmul.h f16, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x27, 0xbdd80f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fmul.h f27, f23, f13, dyn # perform operation
fmul.h f27, f23, f13, rdn # perform operation
fmul.h f27, f23, f13, rmm # perform operation
fmul.h f27, f23, f13, rne # perform operation
fmul.h f27, f23, f13, rtz # perform operation
fmul.h f27, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x19, 0x64394df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmul.h f19, f7, f31, dyn # perform operation
fmul.h f19, f7, f31, rdn # perform operation
fmul.h f19, f7, f31, rmm # perform operation
fmul.h f19, f7, f31, rne # perform operation
fmul.h f19, f7, f31, rtz # perform operation
fmul.h f19, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x28, 0xbebdda6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmul.h f28, f26, f20, dyn # perform operation
fmul.h f28, f26, f20, rdn # perform operation
fmul.h f28, f26, f20, rmm # perform operation
fmul.h f28, f26, f20, rne # perform operation
fmul.h f28, f26, f20, rtz # perform operation
fmul.h f28, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x2, 0xfb6eb5d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fmul.h f2, f12, f31, dyn # perform operation
fmul.h f2, f12, f31, rdn # perform operation
fmul.h f2, f12, f31, rmm # perform operation
fmul.h f2, f12, f31, rne # perform operation
fmul.h f2, f12, f31, rtz # perform operation
fmul.h f2, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x21, 0xe18b5eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fmul.h f21, f28, f11, dyn # perform operation
fmul.h f21, f28, f11, rdn # perform operation
fmul.h f21, f28, f11, rmm # perform operation
fmul.h f21, f28, f11, rne # perform operation
fmul.h f21, f28, f11, rtz # perform operation
fmul.h f21, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x7, 0x6b07a9c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
fmul.h f7, f22, f8, dyn # perform operation
fmul.h f7, f22, f8, rdn # perform operation
fmul.h f7, f22, f8, rmm # perform operation
fmul.h f7, f22, f8, rne # perform operation
fmul.h f7, f22, f8, rtz # perform operation
fmul.h f7, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x26, 0x3e335ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmul.h f26, f20, f3, dyn # perform operation
fmul.h f26, f20, f3, rdn # perform operation
fmul.h f26, f20, f3, rmm # perform operation
fmul.h f26, f20, f3, rne # perform operation
fmul.h f26, f20, f3, rtz # perform operation
fmul.h f26, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x21, 0xa199b519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fmul.h f21, f5, f17, dyn # perform operation
fmul.h f21, f5, f17, rdn # perform operation
fmul.h f21, f5, f17, rmm # perform operation
fmul.h f21, f5, f17, rne # perform operation
fmul.h f21, f5, f17, rtz # perform operation
fmul.h f21, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x24, 0x61ce0035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmul.h f24, f20, f28, dyn # perform operation
fmul.h f24, f20, f28, rdn # perform operation
fmul.h f24, f20, f28, rmm # perform operation
fmul.h f24, f20, f28, rne # perform operation
fmul.h f24, f20, f28, rtz # perform operation
fmul.h f24, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x1, 0x197b852a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fmul.h f1, f29, f18, dyn # perform operation
fmul.h f1, f29, f18, rdn # perform operation
fmul.h f1, f29, f18, rmm # perform operation
fmul.h f1, f29, f18, rne # perform operation
fmul.h f1, f29, f18, rtz # perform operation
fmul.h f1, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x7, 0x3981b19b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fmul.h f7, f11, f1, dyn # perform operation
fmul.h f7, f11, f1, rdn # perform operation
fmul.h f7, f11, f1, rmm # perform operation
fmul.h f7, f11, f1, rne # perform operation
fmul.h f7, f11, f1, rtz # perform operation
fmul.h f7, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x16, 0x375c8a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f16, f7, f22, dyn # perform operation
fmul.h f16, f7, f22, rdn # perform operation
fmul.h f16, f7, f22, rmm # perform operation
fmul.h f16, f7, f22, rne # perform operation
fmul.h f16, f7, f22, rtz # perform operation
fmul.h f16, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x30, 0x1b498277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fmul.h f30, f19, f31, dyn # perform operation
fmul.h f30, f19, f31, rdn # perform operation
fmul.h f30, f19, f31, rmm # perform operation
fmul.h f30, f19, f31, rne # perform operation
fmul.h f30, f19, f31, rtz # perform operation
fmul.h f30, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x10, 0xbc3fb483 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fmul.h f10, f23, f13, dyn # perform operation
fmul.h f10, f23, f13, rdn # perform operation
fmul.h f10, f23, f13, rmm # perform operation
fmul.h f10, f23, f13, rne # perform operation
fmul.h f10, f23, f13, rtz # perform operation
fmul.h f10, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x27, 0x55f97851 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fmul.h f27, f10, f26, dyn # perform operation
fmul.h f27, f10, f26, rdn # perform operation
fmul.h f27, f10, f26, rmm # perform operation
fmul.h f27, f10, f26, rne # perform operation
fmul.h f27, f10, f26, rtz # perform operation
fmul.h f27, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x3, 0xfb87ccef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmul.h f3, f18, f16, dyn # perform operation
fmul.h f3, f18, f16, rdn # perform operation
fmul.h f3, f18, f16, rmm # perform operation
fmul.h f3, f18, f16, rne # perform operation
fmul.h f3, f18, f16, rtz # perform operation
fmul.h f3, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x1, 0xa3e1ef8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fmul.h f1, f19, f31, dyn # perform operation
fmul.h f1, f19, f31, rdn # perform operation
fmul.h f1, f19, f31, rmm # perform operation
fmul.h f1, f19, f31, rne # perform operation
fmul.h f1, f19, f31, rtz # perform operation
fmul.h f1, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x30, 0x4d626586 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fmul.h f30, f23, f17, dyn # perform operation
fmul.h f30, f23, f17, rdn # perform operation
fmul.h f30, f23, f17, rmm # perform operation
fmul.h f30, f23, f17, rne # perform operation
fmul.h f30, f23, f17, rtz # perform operation
fmul.h f30, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x17, 0x77213748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fmul.h f17, f20, f8, dyn # perform operation
fmul.h f17, f20, f8, rdn # perform operation
fmul.h f17, f20, f8, rmm # perform operation
fmul.h f17, f20, f8, rne # perform operation
fmul.h f17, f20, f8, rtz # perform operation
fmul.h f17, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x27, 0xe677ac4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
fmul.h f27, f16, f4, dyn # perform operation
fmul.h f27, f16, f4, rdn # perform operation
fmul.h f27, f16, f4, rmm # perform operation
fmul.h f27, f16, f4, rne # perform operation
fmul.h f27, f16, f4, rtz # perform operation
fmul.h f27, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x1, 0x9462fdd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmul.h f1, f2, f20, dyn # perform operation
fmul.h f1, f2, f20, rdn # perform operation
fmul.h f1, f2, f20, rmm # perform operation
fmul.h f1, f2, f20, rne # perform operation
fmul.h f1, f2, f20, rtz # perform operation
fmul.h f1, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x9, 0xca46d2c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fmul.h f9, f4, f20, dyn # perform operation
fmul.h f9, f4, f20, rdn # perform operation
fmul.h f9, f4, f20, rmm # perform operation
fmul.h f9, f4, f20, rne # perform operation
fmul.h f9, f4, f20, rtz # perform operation
fmul.h f9, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x19, 0x60f31be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fmul.h f19, f16, f3, dyn # perform operation
fmul.h f19, f16, f3, rdn # perform operation
fmul.h f19, f16, f3, rmm # perform operation
fmul.h f19, f16, f3, rne # perform operation
fmul.h f19, f16, f3, rtz # perform operation
fmul.h f19, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x12, 0x629af839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fmul.h f12, f13, f16, dyn # perform operation
fmul.h f12, f13, f16, rdn # perform operation
fmul.h f12, f13, f16, rmm # perform operation
fmul.h f12, f13, f16, rne # perform operation
fmul.h f12, f13, f16, rtz # perform operation
fmul.h f12, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x19, 0xf240b12f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fmul.h f19, f5, f9, dyn # perform operation
fmul.h f19, f5, f9, rdn # perform operation
fmul.h f19, f5, f9, rmm # perform operation
fmul.h f19, f5, f9, rne # perform operation
fmul.h f19, f5, f9, rtz # perform operation
fmul.h f19, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x13, 0xac9aa036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmul.h f13, f17, f31, dyn # perform operation
fmul.h f13, f17, f31, rdn # perform operation
fmul.h f13, f17, f31, rmm # perform operation
fmul.h f13, f17, f31, rne # perform operation
fmul.h f13, f17, f31, rtz # perform operation
fmul.h f13, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x9, 0x33fd82cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fmul.h f9, f7, f17, dyn # perform operation
fmul.h f9, f7, f17, rdn # perform operation
fmul.h f9, f7, f17, rmm # perform operation
fmul.h f9, f7, f17, rne # perform operation
fmul.h f9, f7, f17, rtz # perform operation
fmul.h f9, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x10, 0x445538d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fmul.h f10, f15, f23, dyn # perform operation
fmul.h f10, f15, f23, rdn # perform operation
fmul.h f10, f15, f23, rmm # perform operation
fmul.h f10, f15, f23, rne # perform operation
fmul.h f10, f15, f23, rtz # perform operation
fmul.h f10, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x26, 0xa773b179 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmul.h f26, f4, f7, dyn # perform operation
fmul.h f26, f4, f7, rdn # perform operation
fmul.h f26, f4, f7, rmm # perform operation
fmul.h f26, f4, f7, rne # perform operation
fmul.h f26, f4, f7, rtz # perform operation
fmul.h f26, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x5, 0x319af624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fmul.h f5, f27, f16, dyn # perform operation
fmul.h f5, f27, f16, rdn # perform operation
fmul.h f5, f27, f16, rmm # perform operation
fmul.h f5, f27, f16, rne # perform operation
fmul.h f5, f27, f16, rtz # perform operation
fmul.h f5, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x11, 0x0440acdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fmul.h f11, f16, f1, dyn # perform operation
fmul.h f11, f16, f1, rdn # perform operation
fmul.h f11, f16, f1, rmm # perform operation
fmul.h f11, f16, f1, rne # perform operation
fmul.h f11, f16, f1, rtz # perform operation
fmul.h f11, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x31, 0xb8d8d65e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fmul.h f31, f19, f11, dyn # perform operation
fmul.h f31, f19, f11, rdn # perform operation
fmul.h f31, f19, f11, rmm # perform operation
fmul.h f31, f19, f11, rne # perform operation
fmul.h f31, f19, f11, rtz # perform operation
fmul.h f31, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x10, 0xbb457a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fmul.h f10, f1, f14, dyn # perform operation
fmul.h f10, f1, f14, rdn # perform operation
fmul.h f10, f1, f14, rmm # perform operation
fmul.h f10, f1, f14, rne # perform operation
fmul.h f10, f1, f14, rtz # perform operation
fmul.h f10, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x29, 0x5f422844 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fmul.h f29, f12, f19, dyn # perform operation
fmul.h f29, f12, f19, rdn # perform operation
fmul.h f29, f12, f19, rmm # perform operation
fmul.h f29, f12, f19, rne # perform operation
fmul.h f29, f12, f19, rtz # perform operation
fmul.h f29, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x8, 0xfb3f3754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmul.h f8, f11, f19, dyn # perform operation
fmul.h f8, f11, f19, rdn # perform operation
fmul.h f8, f11, f19, rmm # perform operation
fmul.h f8, f11, f19, rne # perform operation
fmul.h f8, f11, f19, rtz # perform operation
fmul.h f8, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x16, 0xc1a8b4b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fmul.h f16, f27, f9, dyn # perform operation
fmul.h f16, f27, f9, rdn # perform operation
fmul.h f16, f27, f9, rmm # perform operation
fmul.h f16, f27, f9, rne # perform operation
fmul.h f16, f27, f9, rtz # perform operation
fmul.h f16, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x24, 0xd4e75a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fmul.h f24, f31, f5, dyn # perform operation
fmul.h f24, f31, f5, rdn # perform operation
fmul.h f24, f31, f5, rmm # perform operation
fmul.h f24, f31, f5, rne # perform operation
fmul.h f24, f31, f5, rtz # perform operation
fmul.h f24, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x9, 0xddabd6e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fmul.h f9, f24, f21, dyn # perform operation
fmul.h f9, f24, f21, rdn # perform operation
fmul.h f9, f24, f21, rmm # perform operation
fmul.h f9, f24, f21, rne # perform operation
fmul.h f9, f24, f21, rtz # perform operation
fmul.h f9, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x8, 0x1e8d90ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fmul.h f8, f20, f31, dyn # perform operation
fmul.h f8, f20, f31, rdn # perform operation
fmul.h f8, f20, f31, rmm # perform operation
fmul.h f8, f20, f31, rne # perform operation
fmul.h f8, f20, f31, rtz # perform operation
fmul.h f8, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x17, 0xfb56bb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fmul.h f17, f30, f6, dyn # perform operation
fmul.h f17, f30, f6, rdn # perform operation
fmul.h f17, f30, f6, rmm # perform operation
fmul.h f17, f30, f6, rne # perform operation
fmul.h f17, f30, f6, rtz # perform operation
fmul.h f17, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x16, 0xb3e7e566 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fmul.h f16, f27, f2, dyn # perform operation
fmul.h f16, f27, f2, rdn # perform operation
fmul.h f16, f27, f2, rmm # perform operation
fmul.h f16, f27, f2, rne # perform operation
fmul.h f16, f27, f2, rtz # perform operation
fmul.h f16, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x21, 0xbbbabb43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fmul.h f21, f4, f29, dyn # perform operation
fmul.h f21, f4, f29, rdn # perform operation
fmul.h f21, f4, f29, rmm # perform operation
fmul.h f21, f4, f29, rne # perform operation
fmul.h f21, f4, f29, rtz # perform operation
fmul.h f21, f4, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f4, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f4, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f4, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f4, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x7, 0x3564db25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmul.h f7, f24, f28, dyn # perform operation
fmul.h f7, f24, f28, rdn # perform operation
fmul.h f7, f24, f28, rmm # perform operation
fmul.h f7, f24, f28, rne # perform operation
fmul.h f7, f24, f28, rtz # perform operation
fmul.h f7, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x8, 0x9e6ea346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fmul.h f8, f15, f31, dyn # perform operation
fmul.h f8, f15, f31, rdn # perform operation
fmul.h f8, f15, f31, rmm # perform operation
fmul.h f8, f15, f31, rne # perform operation
fmul.h f8, f15, f31, rtz # perform operation
fmul.h f8, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x29, 0xa3c08251 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fmul.h f29, f20, f19, dyn # perform operation
fmul.h f29, f20, f19, rdn # perform operation
fmul.h f29, f20, f19, rmm # perform operation
fmul.h f29, f20, f19, rne # perform operation
fmul.h f29, f20, f19, rtz # perform operation
fmul.h f29, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x5, 0x20e76989 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmul.h f5, f20, f15, dyn # perform operation
fmul.h f5, f20, f15, rdn # perform operation
fmul.h f5, f20, f15, rmm # perform operation
fmul.h f5, f20, f15, rne # perform operation
fmul.h f5, f20, f15, rtz # perform operation
fmul.h f5, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x23, 0x3f3cb1fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fmul.h f23, f19, f14, dyn # perform operation
fmul.h f23, f19, f14, rdn # perform operation
fmul.h f23, f19, f14, rmm # perform operation
fmul.h f23, f19, f14, rne # perform operation
fmul.h f23, f19, f14, rtz # perform operation
fmul.h f23, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x27, 0x7c2c96c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmul.h f27, f24, f29, dyn # perform operation
fmul.h f27, f24, f29, rdn # perform operation
fmul.h f27, f24, f29, rmm # perform operation
fmul.h f27, f24, f29, rne # perform operation
fmul.h f27, f24, f29, rtz # perform operation
fmul.h f27, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x23, 0x2a930031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fmul.h f23, f3, f14, dyn # perform operation
fmul.h f23, f3, f14, rdn # perform operation
fmul.h f23, f3, f14, rmm # perform operation
fmul.h f23, f3, f14, rne # perform operation
fmul.h f23, f3, f14, rtz # perform operation
fmul.h f23, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x25, 0xeeb0e33d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fmul.h f25, f4, f19, dyn # perform operation
fmul.h f25, f4, f19, rdn # perform operation
fmul.h f25, f4, f19, rmm # perform operation
fmul.h f25, f4, f19, rne # perform operation
fmul.h f25, f4, f19, rtz # perform operation
fmul.h f25, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x27, 0x884e610b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fmul.h f27, f8, f25, dyn # perform operation
fmul.h f27, f8, f25, rdn # perform operation
fmul.h f27, f8, f25, rmm # perform operation
fmul.h f27, f8, f25, rne # perform operation
fmul.h f27, f8, f25, rtz # perform operation
fmul.h f27, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x12, 0x22339c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fmul.h f12, f14, f25, dyn # perform operation
fmul.h f12, f14, f25, rdn # perform operation
fmul.h f12, f14, f25, rmm # perform operation
fmul.h f12, f14, f25, rne # perform operation
fmul.h f12, f14, f25, rtz # perform operation
fmul.h f12, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x29, 0x57732eae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fmul.h f29, f15, f6, dyn # perform operation
fmul.h f29, f15, f6, rdn # perform operation
fmul.h f29, f15, f6, rmm # perform operation
fmul.h f29, f15, f6, rne # perform operation
fmul.h f29, f15, f6, rtz # perform operation
fmul.h f29, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x24, 0xe0a85ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fmul.h f24, f14, f2, dyn # perform operation
fmul.h f24, f14, f2, rdn # perform operation
fmul.h f24, f14, f2, rmm # perform operation
fmul.h f24, f14, f2, rne # perform operation
fmul.h f24, f14, f2, rtz # perform operation
fmul.h f24, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x13, 0x1b95837d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fmul.h f13, f20, f14, dyn # perform operation
fmul.h f13, f20, f14, rdn # perform operation
fmul.h f13, f20, f14, rmm # perform operation
fmul.h f13, f20, f14, rne # perform operation
fmul.h f13, f20, f14, rtz # perform operation
fmul.h f13, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x25, 0x5973aa47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmul.h f25, f11, f23, dyn # perform operation
fmul.h f25, f11, f23, rdn # perform operation
fmul.h f25, f11, f23, rmm # perform operation
fmul.h f25, f11, f23, rne # perform operation
fmul.h f25, f11, f23, rtz # perform operation
fmul.h f25, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x15, 0xd40e96cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fmul.h f15, f16, f6, dyn # perform operation
fmul.h f15, f16, f6, rdn # perform operation
fmul.h f15, f16, f6, rmm # perform operation
fmul.h f15, f16, f6, rne # perform operation
fmul.h f15, f16, f6, rtz # perform operation
fmul.h f15, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x17, 0x7ddeb61b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmul.h f17, f7, f5, dyn # perform operation
fmul.h f17, f7, f5, rdn # perform operation
fmul.h f17, f7, f5, rmm # perform operation
fmul.h f17, f7, f5, rne # perform operation
fmul.h f17, f7, f5, rtz # perform operation
fmul.h f17, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x16, 0xa3172b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fmul.h f16, f14, f29, dyn # perform operation
fmul.h f16, f14, f29, rdn # perform operation
fmul.h f16, f14, f29, rmm # perform operation
fmul.h f16, f14, f29, rne # perform operation
fmul.h f16, f14, f29, rtz # perform operation
fmul.h f16, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x14, 0x5eb4649c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fmul.h f14, f25, f29, dyn # perform operation
fmul.h f14, f25, f29, rdn # perform operation
fmul.h f14, f25, f29, rmm # perform operation
fmul.h f14, f25, f29, rne # perform operation
fmul.h f14, f25, f29, rtz # perform operation
fmul.h f14, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x2, 0x8a73db00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmul.h f2, f19, f24, dyn # perform operation
fmul.h f2, f19, f24, rdn # perform operation
fmul.h f2, f19, f24, rmm # perform operation
fmul.h f2, f19, f24, rne # perform operation
fmul.h f2, f19, f24, rtz # perform operation
fmul.h f2, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x6, 0x3d67ab43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fmul.h f6, f18, f2, dyn # perform operation
fmul.h f6, f18, f2, rdn # perform operation
fmul.h f6, f18, f2, rmm # perform operation
fmul.h f6, f18, f2, rne # perform operation
fmul.h f6, f18, f2, rtz # perform operation
fmul.h f6, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x7, 0x646902f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fmul.h f7, f17, f18, dyn # perform operation
fmul.h f7, f17, f18, rdn # perform operation
fmul.h f7, f17, f18, rmm # perform operation
fmul.h f7, f17, f18, rne # perform operation
fmul.h f7, f17, f18, rtz # perform operation
fmul.h f7, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x26, 0x44e2a149 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fmul.h f26, f1, f7, dyn # perform operation
fmul.h f26, f1, f7, rdn # perform operation
fmul.h f26, f1, f7, rmm # perform operation
fmul.h f26, f1, f7, rne # perform operation
fmul.h f26, f1, f7, rtz # perform operation
fmul.h f26, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x17, 0x4a71e05f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fmul.h f17, f29, f15, dyn # perform operation
fmul.h f17, f29, f15, rdn # perform operation
fmul.h f17, f29, f15, rmm # perform operation
fmul.h f17, f29, f15, rne # perform operation
fmul.h f17, f29, f15, rtz # perform operation
fmul.h f17, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x5, 0xffe384d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fmul.h f5, f26, f17, dyn # perform operation
fmul.h f5, f26, f17, rdn # perform operation
fmul.h f5, f26, f17, rmm # perform operation
fmul.h f5, f26, f17, rne # perform operation
fmul.h f5, f26, f17, rtz # perform operation
fmul.h f5, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x29, 0xecefd252 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fmul.h f29, f2, f25, dyn # perform operation
fmul.h f29, f2, f25, rdn # perform operation
fmul.h f29, f2, f25, rmm # perform operation
fmul.h f29, f2, f25, rne # perform operation
fmul.h f29, f2, f25, rtz # perform operation
fmul.h f29, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x19, 0xedf213fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fmul.h f19, f13, f2, dyn # perform operation
fmul.h f19, f13, f2, rdn # perform operation
fmul.h f19, f13, f2, rmm # perform operation
fmul.h f19, f13, f2, rne # perform operation
fmul.h f19, f13, f2, rtz # perform operation
fmul.h f19, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x10, 0x3c312c2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmul.h f10, f8, f16, dyn # perform operation
fmul.h f10, f8, f16, rdn # perform operation
fmul.h f10, f8, f16, rmm # perform operation
fmul.h f10, f8, f16, rne # perform operation
fmul.h f10, f8, f16, rtz # perform operation
fmul.h f10, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x31, 0xef97e589 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fmul.h f31, f24, f18, dyn # perform operation
fmul.h f31, f24, f18, rdn # perform operation
fmul.h f31, f24, f18, rmm # perform operation
fmul.h f31, f24, f18, rne # perform operation
fmul.h f31, f24, f18, rtz # perform operation
fmul.h f31, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x14, 0xa915cc44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fmul.h f14, f30, f19, dyn # perform operation
fmul.h f14, f30, f19, rdn # perform operation
fmul.h f14, f30, f19, rmm # perform operation
fmul.h f14, f30, f19, rne # perform operation
fmul.h f14, f30, f19, rtz # perform operation
fmul.h f14, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x17, 0xe55e0301 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fmul.h f17, f10, f11, dyn # perform operation
fmul.h f17, f10, f11, rdn # perform operation
fmul.h f17, f10, f11, rmm # perform operation
fmul.h f17, f10, f11, rne # perform operation
fmul.h f17, f10, f11, rtz # perform operation
fmul.h f17, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x14, 0x365244e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fmul.h f14, f6, f16, dyn # perform operation
fmul.h f14, f6, f16, rdn # perform operation
fmul.h f14, f6, f16, rmm # perform operation
fmul.h f14, f6, f16, rne # perform operation
fmul.h f14, f6, f16, rtz # perform operation
fmul.h f14, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x29, 0xbcfae351 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fmul.h f29, f1, f27, dyn # perform operation
fmul.h f29, f1, f27, rdn # perform operation
fmul.h f29, f1, f27, rmm # perform operation
fmul.h f29, f1, f27, rne # perform operation
fmul.h f29, f1, f27, rtz # perform operation
fmul.h f29, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x11, 0x76a53d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fmul.h f11, f25, f5, dyn # perform operation
fmul.h f11, f25, f5, rdn # perform operation
fmul.h f11, f25, f5, rmm # perform operation
fmul.h f11, f25, f5, rne # perform operation
fmul.h f11, f25, f5, rtz # perform operation
fmul.h f11, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x30, 0xfb8c9e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fmul.h f30, f23, f16, dyn # perform operation
fmul.h f30, f23, f16, rdn # perform operation
fmul.h f30, f23, f16, rmm # perform operation
fmul.h f30, f23, f16, rne # perform operation
fmul.h f30, f23, f16, rtz # perform operation
fmul.h f30, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x16, 0x75dc1472 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fmul.h f16, f18, f24, dyn # perform operation
fmul.h f16, f18, f24, rdn # perform operation
fmul.h f16, f18, f24, rmm # perform operation
fmul.h f16, f18, f24, rne # perform operation
fmul.h f16, f18, f24, rtz # perform operation
fmul.h f16, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x11, 0xfadcbe96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fmul.h f11, f27, f25, dyn # perform operation
fmul.h f11, f27, f25, rdn # perform operation
fmul.h f11, f27, f25, rmm # perform operation
fmul.h f11, f27, f25, rne # perform operation
fmul.h f11, f27, f25, rtz # perform operation
fmul.h f11, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x14, 0x213c12e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fmul.h f14, f26, f25, dyn # perform operation
fmul.h f14, f26, f25, rdn # perform operation
fmul.h f14, f26, f25, rmm # perform operation
fmul.h f14, f26, f25, rne # perform operation
fmul.h f14, f26, f25, rtz # perform operation
fmul.h f14, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x17, 0x1eb43bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fmul.h f17, f15, f13, dyn # perform operation
fmul.h f17, f15, f13, rdn # perform operation
fmul.h f17, f15, f13, rmm # perform operation
fmul.h f17, f15, f13, rne # perform operation
fmul.h f17, f15, f13, rtz # perform operation
fmul.h f17, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x21, 0x554c8d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fmul.h f21, f1, f2, dyn # perform operation
fmul.h f21, f1, f2, rdn # perform operation
fmul.h f21, f1, f2, rmm # perform operation
fmul.h f21, f1, f2, rne # perform operation
fmul.h f21, f1, f2, rtz # perform operation
fmul.h f21, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x15, 0x11135437 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fmul.h f15, f11, f4, dyn # perform operation
fmul.h f15, f11, f4, rdn # perform operation
fmul.h f15, f11, f4, rmm # perform operation
fmul.h f15, f11, f4, rne # perform operation
fmul.h f15, f11, f4, rtz # perform operation
fmul.h f15, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x25, 0x605d4296 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fmul.h f25, f1, f31, dyn # perform operation
fmul.h f25, f1, f31, rdn # perform operation
fmul.h f25, f1, f31, rmm # perform operation
fmul.h f25, f1, f31, rne # perform operation
fmul.h f25, f1, f31, rtz # perform operation
fmul.h f25, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x24, 0xad38f432 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fmul.h f24, f31, f1, dyn # perform operation
fmul.h f24, f31, f1, rdn # perform operation
fmul.h f24, f31, f1, rmm # perform operation
fmul.h f24, f31, f1, rne # perform operation
fmul.h f24, f31, f1, rtz # perform operation
fmul.h f24, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x28, 0x685b45d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fmul.h f28, f1, f26, dyn # perform operation
fmul.h f28, f1, f26, rdn # perform operation
fmul.h f28, f1, f26, rmm # perform operation
fmul.h f28, f1, f26, rne # perform operation
fmul.h f28, f1, f26, rtz # perform operation
fmul.h f28, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x23, 0xf4d365bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmul.h f23, f16, f22, dyn # perform operation
fmul.h f23, f16, f22, rdn # perform operation
fmul.h f23, f16, f22, rmm # perform operation
fmul.h f23, f16, f22, rne # perform operation
fmul.h f23, f16, f22, rtz # perform operation
fmul.h f23, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x28, 0xf8049ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fmul.h f28, f26, f11, dyn # perform operation
fmul.h f28, f26, f11, rdn # perform operation
fmul.h f28, f26, f11, rmm # perform operation
fmul.h f28, f26, f11, rne # perform operation
fmul.h f28, f26, f11, rtz # perform operation
fmul.h f28, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x22, 0x681a5669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fmul.h f22, f23, f28, dyn # perform operation
fmul.h f22, f23, f28, rdn # perform operation
fmul.h f22, f23, f28, rmm # perform operation
fmul.h f22, f23, f28, rne # perform operation
fmul.h f22, f23, f28, rtz # perform operation
fmul.h f22, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x11, 0x8c5537da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fmul.h f11, f30, f16, dyn # perform operation
fmul.h f11, f30, f16, rdn # perform operation
fmul.h f11, f30, f16, rmm # perform operation
fmul.h f11, f30, f16, rne # perform operation
fmul.h f11, f30, f16, rtz # perform operation
fmul.h f11, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x10, 0x9574bc5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fmul.h f10, f11, f16, dyn # perform operation
fmul.h f10, f11, f16, rdn # perform operation
fmul.h f10, f11, f16, rmm # perform operation
fmul.h f10, f11, f16, rne # perform operation
fmul.h f10, f11, f16, rtz # perform operation
fmul.h f10, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x6, 0x5c355682 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fmul.h f6, f17, f9, dyn # perform operation
fmul.h f6, f17, f9, rdn # perform operation
fmul.h f6, f17, f9, rmm # perform operation
fmul.h f6, f17, f9, rne # perform operation
fmul.h f6, f17, f9, rtz # perform operation
fmul.h f6, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x1, 0xa7aa6e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fmul.h f1, f11, f24, dyn # perform operation
fmul.h f1, f11, f24, rdn # perform operation
fmul.h f1, f11, f24, rmm # perform operation
fmul.h f1, f11, f24, rne # perform operation
fmul.h f1, f11, f24, rtz # perform operation
fmul.h f1, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x14, 0x4d153d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fmul.h f14, f22, f12, dyn # perform operation
fmul.h f14, f22, f12, rdn # perform operation
fmul.h f14, f22, f12, rmm # perform operation
fmul.h f14, f22, f12, rne # perform operation
fmul.h f14, f22, f12, rtz # perform operation
fmul.h f14, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x3, 0x0ee7d041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fmul.h f3, f2, f30, dyn # perform operation
fmul.h f3, f2, f30, rdn # perform operation
fmul.h f3, f2, f30, rmm # perform operation
fmul.h f3, f2, f30, rne # perform operation
fmul.h f3, f2, f30, rtz # perform operation
fmul.h f3, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x14, 0x18dacc9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fmul.h f14, f9, f23, dyn # perform operation
fmul.h f14, f9, f23, rdn # perform operation
fmul.h f14, f9, f23, rmm # perform operation
fmul.h f14, f9, f23, rne # perform operation
fmul.h f14, f9, f23, rtz # perform operation
fmul.h f14, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x25, 0x5b2df2ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmul.h f25, f6, f28, dyn # perform operation
fmul.h f25, f6, f28, rdn # perform operation
fmul.h f25, f6, f28, rmm # perform operation
fmul.h f25, f6, f28, rne # perform operation
fmul.h f25, f6, f28, rtz # perform operation
fmul.h f25, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x31, 0x4a0cb8d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fmul.h f31, f7, f12, dyn # perform operation
fmul.h f31, f7, f12, rdn # perform operation
fmul.h f31, f7, f12, rmm # perform operation
fmul.h f31, f7, f12, rne # perform operation
fmul.h f31, f7, f12, rtz # perform operation
fmul.h f31, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x22, 0x59f18917 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fmul.h f22, f1, f20, dyn # perform operation
fmul.h f22, f1, f20, rdn # perform operation
fmul.h f22, f1, f20, rmm # perform operation
fmul.h f22, f1, f20, rne # perform operation
fmul.h f22, f1, f20, rtz # perform operation
fmul.h f22, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x15, 0x2f1bb1d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fmul.h f15, f10, f30, dyn # perform operation
fmul.h f15, f10, f30, rdn # perform operation
fmul.h f15, f10, f30, rmm # perform operation
fmul.h f15, f10, f30, rne # perform operation
fmul.h f15, f10, f30, rtz # perform operation
fmul.h f15, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x4, 0x5ead621e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fmul.h f4, f24, f15, dyn # perform operation
fmul.h f4, f24, f15, rdn # perform operation
fmul.h f4, f24, f15, rmm # perform operation
fmul.h f4, f24, f15, rne # perform operation
fmul.h f4, f24, f15, rtz # perform operation
fmul.h f4, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x26, 0x67d23ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fmul.h f26, f27, f8, dyn # perform operation
fmul.h f26, f27, f8, rdn # perform operation
fmul.h f26, f27, f8, rmm # perform operation
fmul.h f26, f27, f8, rne # perform operation
fmul.h f26, f27, f8, rtz # perform operation
fmul.h f26, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x20, 0x1ce3f7d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmul.h f20, f31, f30, dyn # perform operation
fmul.h f20, f31, f30, rdn # perform operation
fmul.h f20, f31, f30, rmm # perform operation
fmul.h f20, f31, f30, rne # perform operation
fmul.h f20, f31, f30, rtz # perform operation
fmul.h f20, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x2, 0x3fa8cf25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fmul.h f2, f5, f20, dyn # perform operation
fmul.h f2, f5, f20, rdn # perform operation
fmul.h f2, f5, f20, rmm # perform operation
fmul.h f2, f5, f20, rne # perform operation
fmul.h f2, f5, f20, rtz # perform operation
fmul.h f2, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x10, 0x5778c0b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fmul.h f10, f24, f7, dyn # perform operation
fmul.h f10, f24, f7, rdn # perform operation
fmul.h f10, f24, f7, rmm # perform operation
fmul.h f10, f24, f7, rne # perform operation
fmul.h f10, f24, f7, rtz # perform operation
fmul.h f10, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x1, 0xf298e284 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fmul.h f1, f26, f8, dyn # perform operation
fmul.h f1, f26, f8, rdn # perform operation
fmul.h f1, f26, f8, rmm # perform operation
fmul.h f1, f26, f8, rne # perform operation
fmul.h f1, f26, f8, rtz # perform operation
fmul.h f1, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x10, 0x1844ff46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fmul.h f10, f20, f30, dyn # perform operation
fmul.h f10, f20, f30, rdn # perform operation
fmul.h f10, f20, f30, rmm # perform operation
fmul.h f10, f20, f30, rne # perform operation
fmul.h f10, f20, f30, rtz # perform operation
fmul.h f10, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x21, 0xc8969341 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmul.h f21, f2, f7, dyn # perform operation
fmul.h f21, f2, f7, rdn # perform operation
fmul.h f21, f2, f7, rmm # perform operation
fmul.h f21, f2, f7, rne # perform operation
fmul.h f21, f2, f7, rtz # perform operation
fmul.h f21, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x18, 0x4baa73b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fmul.h f18, f2, f31, dyn # perform operation
fmul.h f18, f2, f31, rdn # perform operation
fmul.h f18, f2, f31, rmm # perform operation
fmul.h f18, f2, f31, rne # perform operation
fmul.h f18, f2, f31, rtz # perform operation
fmul.h f18, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x8, 0x681a8262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fmul.h f8, f24, f18, dyn # perform operation
fmul.h f8, f24, f18, rdn # perform operation
fmul.h f8, f24, f18, rmm # perform operation
fmul.h f8, f24, f18, rne # perform operation
fmul.h f8, f24, f18, rtz # perform operation
fmul.h f8, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x21, 0x8df1624f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fmul.h f21, f16, f17, dyn # perform operation
fmul.h f21, f16, f17, rdn # perform operation
fmul.h f21, f16, f17, rmm # perform operation
fmul.h f21, f16, f17, rne # perform operation
fmul.h f21, f16, f17, rtz # perform operation
fmul.h f21, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x21, 0xdbca6167 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fmul.h f21, f19, f17, dyn # perform operation
fmul.h f21, f19, f17, rdn # perform operation
fmul.h f21, f19, f17, rmm # perform operation
fmul.h f21, f19, f17, rne # perform operation
fmul.h f21, f19, f17, rtz # perform operation
fmul.h f21, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x16, 0x616fbaae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fmul.h f16, f28, f23, dyn # perform operation
fmul.h f16, f28, f23, rdn # perform operation
fmul.h f16, f28, f23, rmm # perform operation
fmul.h f16, f28, f23, rne # perform operation
fmul.h f16, f28, f23, rtz # perform operation
fmul.h f16, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x4, 0xa17f89c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fmul.h f4, f15, f5, dyn # perform operation
fmul.h f4, f15, f5, rdn # perform operation
fmul.h f4, f15, f5, rmm # perform operation
fmul.h f4, f15, f5, rne # perform operation
fmul.h f4, f15, f5, rtz # perform operation
fmul.h f4, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x6, 0xefe9039b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fmul.h f6, f16, f9, dyn # perform operation
fmul.h f6, f16, f9, rdn # perform operation
fmul.h f6, f16, f9, rmm # perform operation
fmul.h f6, f16, f9, rne # perform operation
fmul.h f6, f16, f9, rtz # perform operation
fmul.h f6, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x30, 0x208669f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmul.h f30, f14, f20, dyn # perform operation
fmul.h f30, f14, f20, rdn # perform operation
fmul.h f30, f14, f20, rmm # perform operation
fmul.h f30, f14, f20, rne # perform operation
fmul.h f30, f14, f20, rtz # perform operation
fmul.h f30, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x11, 0x21b5709f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fmul.h f11, f4, f10, dyn # perform operation
fmul.h f11, f4, f10, rdn # perform operation
fmul.h f11, f4, f10, rmm # perform operation
fmul.h f11, f4, f10, rne # perform operation
fmul.h f11, f4, f10, rtz # perform operation
fmul.h f11, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x16, 0x76bb2538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fmul.h f16, f4, f12, dyn # perform operation
fmul.h f16, f4, f12, rdn # perform operation
fmul.h f16, f4, f12, rmm # perform operation
fmul.h f16, f4, f12, rne # perform operation
fmul.h f16, f4, f12, rtz # perform operation
fmul.h f16, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x2, 0xa4f39ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fmul.h f2, f26, f19, dyn # perform operation
fmul.h f2, f26, f19, rdn # perform operation
fmul.h f2, f26, f19, rmm # perform operation
fmul.h f2, f26, f19, rne # perform operation
fmul.h f2, f26, f19, rtz # perform operation
fmul.h f2, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x29, 0x305a3918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fmul.h f29, f22, f8, dyn # perform operation
fmul.h f29, f22, f8, rdn # perform operation
fmul.h f29, f22, f8, rmm # perform operation
fmul.h f29, f22, f8, rne # perform operation
fmul.h f29, f22, f8, rtz # perform operation
fmul.h f29, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x6, 0xbcc528a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
fmul.h f6, f8, f28, dyn # perform operation
fmul.h f6, f8, f28, rdn # perform operation
fmul.h f6, f8, f28, rmm # perform operation
fmul.h f6, f8, f28, rne # perform operation
fmul.h f6, f8, f28, rtz # perform operation
fmul.h f6, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x15, 0x092ed0c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fmul.h f15, f3, f30, dyn # perform operation
fmul.h f15, f3, f30, rdn # perform operation
fmul.h f15, f3, f30, rmm # perform operation
fmul.h f15, f3, f30, rne # perform operation
fmul.h f15, f3, f30, rtz # perform operation
fmul.h f15, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x2, 0xa5cb1119 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fmul.h f2, f30, f21, dyn # perform operation
fmul.h f2, f30, f21, rdn # perform operation
fmul.h f2, f30, f21, rmm # perform operation
fmul.h f2, f30, f21, rne # perform operation
fmul.h f2, f30, f21, rtz # perform operation
fmul.h f2, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x6, 0xfab711b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fmul.h f6, f29, f5, dyn # perform operation
fmul.h f6, f29, f5, rdn # perform operation
fmul.h f6, f29, f5, rmm # perform operation
fmul.h f6, f29, f5, rne # perform operation
fmul.h f6, f29, f5, rtz # perform operation
fmul.h f6, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x29, 0x385da2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmul.h f29, f20, f2, dyn # perform operation
fmul.h f29, f20, f2, rdn # perform operation
fmul.h f29, f20, f2, rmm # perform operation
fmul.h f29, f20, f2, rne # perform operation
fmul.h f29, f20, f2, rtz # perform operation
fmul.h f29, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x6, 0x6b507dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmul.h f6, f25, f23, dyn # perform operation
fmul.h f6, f25, f23, rdn # perform operation
fmul.h f6, f25, f23, rmm # perform operation
fmul.h f6, f25, f23, rne # perform operation
fmul.h f6, f25, f23, rtz # perform operation
fmul.h f6, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x20, 0xc004a9fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fmul.h f20, f23, f13, dyn # perform operation
fmul.h f20, f23, f13, rdn # perform operation
fmul.h f20, f23, f13, rmm # perform operation
fmul.h f20, f23, f13, rne # perform operation
fmul.h f20, f23, f13, rtz # perform operation
fmul.h f20, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x14, 0x46d4aa37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fmul.h f14, f28, f11, dyn # perform operation
fmul.h f14, f28, f11, rdn # perform operation
fmul.h f14, f28, f11, rmm # perform operation
fmul.h f14, f28, f11, rne # perform operation
fmul.h f14, f28, f11, rtz # perform operation
fmul.h f14, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x29, 0x3ca30360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fmul.h f29, f12, f20, dyn # perform operation
fmul.h f29, f12, f20, rdn # perform operation
fmul.h f29, f12, f20, rmm # perform operation
fmul.h f29, f12, f20, rne # perform operation
fmul.h f29, f12, f20, rtz # perform operation
fmul.h f29, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x6, 0xc3f21f6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fmul.h f6, f30, f22, dyn # perform operation
fmul.h f6, f30, f22, rdn # perform operation
fmul.h f6, f30, f22, rmm # perform operation
fmul.h f6, f30, f22, rne # perform operation
fmul.h f6, f30, f22, rtz # perform operation
fmul.h f6, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x1, 0x59c801c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmul.h f1, f24, f31, dyn # perform operation
fmul.h f1, f24, f31, rdn # perform operation
fmul.h f1, f24, f31, rmm # perform operation
fmul.h f1, f24, f31, rne # perform operation
fmul.h f1, f24, f31, rtz # perform operation
fmul.h f1, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x15, 0x0bcf5e3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fmul.h f15, f21, f30, dyn # perform operation
fmul.h f15, f21, f30, rdn # perform operation
fmul.h f15, f21, f30, rmm # perform operation
fmul.h f15, f21, f30, rne # perform operation
fmul.h f15, f21, f30, rtz # perform operation
fmul.h f15, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x20, 0x90318a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fmul.h f20, f10, f7, dyn # perform operation
fmul.h f20, f10, f7, rdn # perform operation
fmul.h f20, f10, f7, rmm # perform operation
fmul.h f20, f10, f7, rne # perform operation
fmul.h f20, f10, f7, rtz # perform operation
fmul.h f20, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x24, 0xb1c5660a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fmul.h f24, f25, f17, dyn # perform operation
fmul.h f24, f25, f17, rdn # perform operation
fmul.h f24, f25, f17, rmm # perform operation
fmul.h f24, f25, f17, rne # perform operation
fmul.h f24, f25, f17, rtz # perform operation
fmul.h f24, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x14, 0x57dc52cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fmul.h f14, f17, f4, dyn # perform operation
fmul.h f14, f17, f4, rdn # perform operation
fmul.h f14, f17, f4, rmm # perform operation
fmul.h f14, f17, f4, rne # perform operation
fmul.h f14, f17, f4, rtz # perform operation
fmul.h f14, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x25, 0xfe5b0646 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fmul.h f25, f22, f8, dyn # perform operation
fmul.h f25, f22, f8, rdn # perform operation
fmul.h f25, f22, f8, rmm # perform operation
fmul.h f25, f22, f8, rne # perform operation
fmul.h f25, f22, f8, rtz # perform operation
fmul.h f25, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x28, 0xebbdc25b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fmul.h f28, f11, f29, dyn # perform operation
fmul.h f28, f11, f29, rdn # perform operation
fmul.h f28, f11, f29, rmm # perform operation
fmul.h f28, f11, f29, rne # perform operation
fmul.h f28, f11, f29, rtz # perform operation
fmul.h f28, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x24, 0x0959c679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fmul.h f24, f30, f4, dyn # perform operation
fmul.h f24, f30, f4, rdn # perform operation
fmul.h f24, f30, f4, rmm # perform operation
fmul.h f24, f30, f4, rne # perform operation
fmul.h f24, f30, f4, rtz # perform operation
fmul.h f24, f30, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f30, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f30, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f30, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f30, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f30, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x14, 0x4bb53b72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fmul.h f14, f12, f23, dyn # perform operation
fmul.h f14, f12, f23, rdn # perform operation
fmul.h f14, f12, f23, rmm # perform operation
fmul.h f14, f12, f23, rne # perform operation
fmul.h f14, f12, f23, rtz # perform operation
fmul.h f14, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x30, 0x92025b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmul.h f30, f12, f28, dyn # perform operation
fmul.h f30, f12, f28, rdn # perform operation
fmul.h f30, f12, f28, rmm # perform operation
fmul.h f30, f12, f28, rne # perform operation
fmul.h f30, f12, f28, rtz # perform operation
fmul.h f30, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x13, 0xbdc7410b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fmul.h f13, f24, f3, dyn # perform operation
fmul.h f13, f24, f3, rdn # perform operation
fmul.h f13, f24, f3, rmm # perform operation
fmul.h f13, f24, f3, rne # perform operation
fmul.h f13, f24, f3, rtz # perform operation
fmul.h f13, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x26, 0x4a7c85c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fmul.h f26, f13, f1, dyn # perform operation
fmul.h f26, f13, f1, rdn # perform operation
fmul.h f26, f13, f1, rmm # perform operation
fmul.h f26, f13, f1, rne # perform operation
fmul.h f26, f13, f1, rtz # perform operation
fmul.h f26, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x16, 0x5e3c78e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fmul.h f16, f28, f19, dyn # perform operation
fmul.h f16, f28, f19, rdn # perform operation
fmul.h f16, f28, f19, rmm # perform operation
fmul.h f16, f28, f19, rne # perform operation
fmul.h f16, f28, f19, rtz # perform operation
fmul.h f16, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x11, 0x6d05d84a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fmul.h f11, f31, f14, dyn # perform operation
fmul.h f11, f31, f14, rdn # perform operation
fmul.h f11, f31, f14, rmm # perform operation
fmul.h f11, f31, f14, rne # perform operation
fmul.h f11, f31, f14, rtz # perform operation
fmul.h f11, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x19, 0x92edfa2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fmul.h f19, f22, f17, dyn # perform operation
fmul.h f19, f22, f17, rdn # perform operation
fmul.h f19, f22, f17, rmm # perform operation
fmul.h f19, f22, f17, rne # perform operation
fmul.h f19, f22, f17, rtz # perform operation
fmul.h f19, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x27, 0xbcbac12c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fmul.h f27, f12, f19, dyn # perform operation
fmul.h f27, f12, f19, rdn # perform operation
fmul.h f27, f12, f19, rmm # perform operation
fmul.h f27, f12, f19, rne # perform operation
fmul.h f27, f12, f19, rtz # perform operation
fmul.h f27, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x9, 0x796ecee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fmul.h f9, f5, f29, dyn # perform operation
fmul.h f9, f5, f29, rdn # perform operation
fmul.h f9, f5, f29, rmm # perform operation
fmul.h f9, f5, f29, rne # perform operation
fmul.h f9, f5, f29, rtz # perform operation
fmul.h f9, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x28, 0xbe02e659 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fmul.h f28, f10, f15, dyn # perform operation
fmul.h f28, f10, f15, rdn # perform operation
fmul.h f28, f10, f15, rmm # perform operation
fmul.h f28, f10, f15, rne # perform operation
fmul.h f28, f10, f15, rtz # perform operation
fmul.h f28, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x18, 0xd7daccfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fmul.h f18, f22, f9, dyn # perform operation
fmul.h f18, f22, f9, rdn # perform operation
fmul.h f18, f22, f9, rmm # perform operation
fmul.h f18, f22, f9, rne # perform operation
fmul.h f18, f22, f9, rtz # perform operation
fmul.h f18, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x26, 0x3623ea9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fmul.h f26, f28, f22, dyn # perform operation
fmul.h f26, f28, f22, rdn # perform operation
fmul.h f26, f28, f22, rmm # perform operation
fmul.h f26, f28, f22, rne # perform operation
fmul.h f26, f28, f22, rtz # perform operation
fmul.h f26, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x20, 0x98d9d879 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fmul.h f20, f4, f6, dyn # perform operation
fmul.h f20, f4, f6, rdn # perform operation
fmul.h f20, f4, f6, rmm # perform operation
fmul.h f20, f4, f6, rne # perform operation
fmul.h f20, f4, f6, rtz # perform operation
fmul.h f20, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x5, 0xcbb86b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fmul.h f5, f2, f30, dyn # perform operation
fmul.h f5, f2, f30, rdn # perform operation
fmul.h f5, f2, f30, rmm # perform operation
fmul.h f5, f2, f30, rne # perform operation
fmul.h f5, f2, f30, rtz # perform operation
fmul.h f5, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x24, 0x4eac6aed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fmul.h f24, f3, f7, dyn # perform operation
fmul.h f24, f3, f7, rdn # perform operation
fmul.h f24, f3, f7, rmm # perform operation
fmul.h f24, f3, f7, rne # perform operation
fmul.h f24, f3, f7, rtz # perform operation
fmul.h f24, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x5, 0xbc37bc86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fmul.h f5, f4, f11, dyn # perform operation
fmul.h f5, f4, f11, rdn # perform operation
fmul.h f5, f4, f11, rmm # perform operation
fmul.h f5, f4, f11, rne # perform operation
fmul.h f5, f4, f11, rtz # perform operation
fmul.h f5, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x21, 0x2c120e20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fmul.h f21, f18, f23, dyn # perform operation
fmul.h f21, f18, f23, rdn # perform operation
fmul.h f21, f18, f23, rmm # perform operation
fmul.h f21, f18, f23, rne # perform operation
fmul.h f21, f18, f23, rtz # perform operation
fmul.h f21, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x13, 0xa2565473 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fmul.h f13, f18, f27, dyn # perform operation
fmul.h f13, f18, f27, rdn # perform operation
fmul.h f13, f18, f27, rmm # perform operation
fmul.h f13, f18, f27, rne # perform operation
fmul.h f13, f18, f27, rtz # perform operation
fmul.h f13, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x3, 0xe88e4aee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fmul.h f3, f9, f27, dyn # perform operation
fmul.h f3, f9, f27, rdn # perform operation
fmul.h f3, f9, f27, rmm # perform operation
fmul.h f3, f9, f27, rne # perform operation
fmul.h f3, f9, f27, rtz # perform operation
fmul.h f3, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x5, 0x6f33076e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fmul.h f5, f10, f28, dyn # perform operation
fmul.h f5, f10, f28, rdn # perform operation
fmul.h f5, f10, f28, rmm # perform operation
fmul.h f5, f10, f28, rne # perform operation
fmul.h f5, f10, f28, rtz # perform operation
fmul.h f5, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x10, 0x59a054e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fmul.h f10, f17, f7, dyn # perform operation
fmul.h f10, f17, f7, rdn # perform operation
fmul.h f10, f17, f7, rmm # perform operation
fmul.h f10, f17, f7, rne # perform operation
fmul.h f10, f17, f7, rtz # perform operation
fmul.h f10, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x3, 0xfcab3ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fmul.h f3, f13, f6, dyn # perform operation
fmul.h f3, f13, f6, rdn # perform operation
fmul.h f3, f13, f6, rmm # perform operation
fmul.h f3, f13, f6, rne # perform operation
fmul.h f3, f13, f6, rtz # perform operation
fmul.h f3, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x31, 0x62ef9fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fmul.h f31, f7, f25, dyn # perform operation
fmul.h f31, f7, f25, rdn # perform operation
fmul.h f31, f7, f25, rmm # perform operation
fmul.h f31, f7, f25, rne # perform operation
fmul.h f31, f7, f25, rtz # perform operation
fmul.h f31, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x23, 0x00e3da21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fmul.h f23, f17, f9, dyn # perform operation
fmul.h f23, f17, f9, rdn # perform operation
fmul.h f23, f17, f9, rmm # perform operation
fmul.h f23, f17, f9, rne # perform operation
fmul.h f23, f17, f9, rtz # perform operation
fmul.h f23, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x24, 0x35cb884c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fmul.h f24, f19, f17, dyn # perform operation
fmul.h f24, f19, f17, rdn # perform operation
fmul.h f24, f19, f17, rmm # perform operation
fmul.h f24, f19, f17, rne # perform operation
fmul.h f24, f19, f17, rtz # perform operation
fmul.h f24, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x19, 0x82d4c9e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fmul.h f19, f25, f17, dyn # perform operation
fmul.h f19, f25, f17, rdn # perform operation
fmul.h f19, f25, f17, rmm # perform operation
fmul.h f19, f25, f17, rne # perform operation
fmul.h f19, f25, f17, rtz # perform operation
fmul.h f19, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x14, 0x3660b507 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fmul.h f14, f24, f19, dyn # perform operation
fmul.h f14, f24, f19, rdn # perform operation
fmul.h f14, f24, f19, rmm # perform operation
fmul.h f14, f24, f19, rne # perform operation
fmul.h f14, f24, f19, rtz # perform operation
fmul.h f14, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x29, 0xa38557ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fmul.h f29, f3, f1, dyn # perform operation
fmul.h f29, f3, f1, rdn # perform operation
fmul.h f29, f3, f1, rmm # perform operation
fmul.h f29, f3, f1, rne # perform operation
fmul.h f29, f3, f1, rtz # perform operation
fmul.h f29, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x11, 0xbd390583 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fmul.h f11, f1, f13, dyn # perform operation
fmul.h f11, f1, f13, rdn # perform operation
fmul.h f11, f1, f13, rmm # perform operation
fmul.h f11, f1, f13, rne # perform operation
fmul.h f11, f1, f13, rtz # perform operation
fmul.h f11, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x25, 0x97683a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fmul.h f25, f13, f28, dyn # perform operation
fmul.h f25, f13, f28, rdn # perform operation
fmul.h f25, f13, f28, rmm # perform operation
fmul.h f25, f13, f28, rne # perform operation
fmul.h f25, f13, f28, rtz # perform operation
fmul.h f25, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x16, 0xb9ceab38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fmul.h f16, f10, f1, dyn # perform operation
fmul.h f16, f10, f1, rdn # perform operation
fmul.h f16, f10, f1, rmm # perform operation
fmul.h f16, f10, f1, rne # perform operation
fmul.h f16, f10, f1, rtz # perform operation
fmul.h f16, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x21, 0x401248b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fmul.h f21, f8, f23, dyn # perform operation
fmul.h f21, f8, f23, rdn # perform operation
fmul.h f21, f8, f23, rmm # perform operation
fmul.h f21, f8, f23, rne # perform operation
fmul.h f21, f8, f23, rtz # perform operation
fmul.h f21, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x26, 0xf15ba6c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fmul.h f26, f6, f10, dyn # perform operation
fmul.h f26, f6, f10, rdn # perform operation
fmul.h f26, f6, f10, rmm # perform operation
fmul.h f26, f6, f10, rne # perform operation
fmul.h f26, f6, f10, rtz # perform operation
fmul.h f26, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x30, 0x9782d316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fmul.h f30, f19, f6, dyn # perform operation
fmul.h f30, f19, f6, rdn # perform operation
fmul.h f30, f19, f6, rmm # perform operation
fmul.h f30, f19, f6, rne # perform operation
fmul.h f30, f19, f6, rtz # perform operation
fmul.h f30, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x17, 0xc4050911 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fmul.h f17, f19, f20, dyn # perform operation
fmul.h f17, f19, f20, rdn # perform operation
fmul.h f17, f19, f20, rmm # perform operation
fmul.h f17, f19, f20, rne # perform operation
fmul.h f17, f19, f20, rtz # perform operation
fmul.h f17, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x24, 0x89359f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fmul.h f24, f20, f21, dyn # perform operation
fmul.h f24, f20, f21, rdn # perform operation
fmul.h f24, f20, f21, rmm # perform operation
fmul.h f24, f20, f21, rne # perform operation
fmul.h f24, f20, f21, rtz # perform operation
fmul.h f24, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x19, 0x09b8f48d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fmul.h f19, f6, f3, dyn # perform operation
fmul.h f19, f6, f3, rdn # perform operation
fmul.h f19, f6, f3, rmm # perform operation
fmul.h f19, f6, f3, rne # perform operation
fmul.h f19, f6, f3, rtz # perform operation
fmul.h f19, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x26, 0x1e71075b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fmul.h f26, f16, f3, dyn # perform operation
fmul.h f26, f16, f3, rdn # perform operation
fmul.h f26, f16, f3, rmm # perform operation
fmul.h f26, f16, f3, rne # perform operation
fmul.h f26, f16, f3, rtz # perform operation
fmul.h f26, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x9, 0xff091a79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fmul.h f9, f28, f29, dyn # perform operation
fmul.h f9, f28, f29, rdn # perform operation
fmul.h f9, f28, f29, rmm # perform operation
fmul.h f9, f28, f29, rne # perform operation
fmul.h f9, f28, f29, rtz # perform operation
fmul.h f9, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x15, 0x9f4c2131 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fmul.h f15, f8, f18, dyn # perform operation
fmul.h f15, f8, f18, rdn # perform operation
fmul.h f15, f8, f18, rmm # perform operation
fmul.h f15, f8, f18, rne # perform operation
fmul.h f15, f8, f18, rtz # perform operation
fmul.h f15, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x23, 0x8ff48a82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmul.h f23, f27, f16, dyn # perform operation
fmul.h f23, f27, f16, rdn # perform operation
fmul.h f23, f27, f16, rmm # perform operation
fmul.h f23, f27, f16, rne # perform operation
fmul.h f23, f27, f16, rtz # perform operation
fmul.h f23, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x18, 0xf7baf33a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fmul.h f18, f14, f11, dyn # perform operation
fmul.h f18, f14, f11, rdn # perform operation
fmul.h f18, f14, f11, rmm # perform operation
fmul.h f18, f14, f11, rne # perform operation
fmul.h f18, f14, f11, rtz # perform operation
fmul.h f18, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x2, 0x9d382f8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmul.h f2, f27, f28, dyn # perform operation
fmul.h f2, f27, f28, rdn # perform operation
fmul.h f2, f27, f28, rmm # perform operation
fmul.h f2, f27, f28, rne # perform operation
fmul.h f2, f27, f28, rtz # perform operation
fmul.h f2, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x3, 0x38890239 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fmul.h f3, f11, f9, dyn # perform operation
fmul.h f3, f11, f9, rdn # perform operation
fmul.h f3, f11, f9, rmm # perform operation
fmul.h f3, f11, f9, rne # perform operation
fmul.h f3, f11, f9, rtz # perform operation
fmul.h f3, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x13, 0x0c4946e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmul.h f13, f1, f31, dyn # perform operation
fmul.h f13, f1, f31, rdn # perform operation
fmul.h f13, f1, f31, rmm # perform operation
fmul.h f13, f1, f31, rne # perform operation
fmul.h f13, f1, f31, rtz # perform operation
fmul.h f13, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x7, 0xed88fa44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fmul.h f7, f23, f3, dyn # perform operation
fmul.h f7, f23, f3, rdn # perform operation
fmul.h f7, f23, f3, rmm # perform operation
fmul.h f7, f23, f3, rne # perform operation
fmul.h f7, f23, f3, rtz # perform operation
fmul.h f7, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x8, 0x5d1e1399 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fmul.h f8, f31, f14, dyn # perform operation
fmul.h f8, f31, f14, rdn # perform operation
fmul.h f8, f31, f14, rmm # perform operation
fmul.h f8, f31, f14, rne # perform operation
fmul.h f8, f31, f14, rtz # perform operation
fmul.h f8, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x8, 0x39368ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fmul.h f8, f18, f21, dyn # perform operation
fmul.h f8, f18, f21, rdn # perform operation
fmul.h f8, f18, f21, rmm # perform operation
fmul.h f8, f18, f21, rne # perform operation
fmul.h f8, f18, f21, rtz # perform operation
fmul.h f8, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x23, 0x24f56e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmul.h f23, f12, f30, dyn # perform operation
fmul.h f23, f12, f30, rdn # perform operation
fmul.h f23, f12, f30, rmm # perform operation
fmul.h f23, f12, f30, rne # perform operation
fmul.h f23, f12, f30, rtz # perform operation
fmul.h f23, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x9, 0x85b48222 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fmul.h f9, f6, f17, dyn # perform operation
fmul.h f9, f6, f17, rdn # perform operation
fmul.h f9, f6, f17, rmm # perform operation
fmul.h f9, f6, f17, rne # perform operation
fmul.h f9, f6, f17, rtz # perform operation
fmul.h f9, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x21, 0x4739337d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fmul.h f21, f23, f22, dyn # perform operation
fmul.h f21, f23, f22, rdn # perform operation
fmul.h f21, f23, f22, rmm # perform operation
fmul.h f21, f23, f22, rne # perform operation
fmul.h f21, f23, f22, rtz # perform operation
fmul.h f21, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x11, 0xaa9e7286 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmul.h f11, f7, f19, dyn # perform operation
fmul.h f11, f7, f19, rdn # perform operation
fmul.h f11, f7, f19, rmm # perform operation
fmul.h f11, f7, f19, rne # perform operation
fmul.h f11, f7, f19, rtz # perform operation
fmul.h f11, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x4, 0xdc7b5c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmul.h f4, f23, f3, dyn # perform operation
fmul.h f4, f23, f3, rdn # perform operation
fmul.h f4, f23, f3, rmm # perform operation
fmul.h f4, f23, f3, rne # perform operation
fmul.h f4, f23, f3, rtz # perform operation
fmul.h f4, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x12, 0x140ad76d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fmul.h f12, f8, f14, dyn # perform operation
fmul.h f12, f8, f14, rdn # perform operation
fmul.h f12, f8, f14, rmm # perform operation
fmul.h f12, f8, f14, rne # perform operation
fmul.h f12, f8, f14, rtz # perform operation
fmul.h f12, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x23, 0x2517bf12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fmul.h f23, f22, f28, dyn # perform operation
fmul.h f23, f22, f28, rdn # perform operation
fmul.h f23, f22, f28, rmm # perform operation
fmul.h f23, f22, f28, rne # perform operation
fmul.h f23, f22, f28, rtz # perform operation
fmul.h f23, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x13, 0x66444b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fmul.h f13, f5, f21, dyn # perform operation
fmul.h f13, f5, f21, rdn # perform operation
fmul.h f13, f5, f21, rmm # perform operation
fmul.h f13, f5, f21, rne # perform operation
fmul.h f13, f5, f21, rtz # perform operation
fmul.h f13, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x14, 0xbba71614 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fmul.h f14, f7, f21, dyn # perform operation
fmul.h f14, f7, f21, rdn # perform operation
fmul.h f14, f7, f21, rmm # perform operation
fmul.h f14, f7, f21, rne # perform operation
fmul.h f14, f7, f21, rtz # perform operation
fmul.h f14, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x7, 0x50c088b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fmul.h f7, f21, f27, dyn # perform operation
fmul.h f7, f21, f27, rdn # perform operation
fmul.h f7, f21, f27, rmm # perform operation
fmul.h f7, f21, f27, rne # perform operation
fmul.h f7, f21, f27, rtz # perform operation
fmul.h f7, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x28, 0xd1800782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fmul.h f28, f13, f29, dyn # perform operation
fmul.h f28, f13, f29, rdn # perform operation
fmul.h f28, f13, f29, rmm # perform operation
fmul.h f28, f13, f29, rne # perform operation
fmul.h f28, f13, f29, rtz # perform operation
fmul.h f28, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x29, 0x3c292775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fmul.h f29, f31, f5, dyn # perform operation
fmul.h f29, f31, f5, rdn # perform operation
fmul.h f29, f31, f5, rmm # perform operation
fmul.h f29, f31, f5, rne # perform operation
fmul.h f29, f31, f5, rtz # perform operation
fmul.h f29, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x18, 0x8605e0c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fmul.h f18, f25, f21, dyn # perform operation
fmul.h f18, f25, f21, rdn # perform operation
fmul.h f18, f25, f21, rmm # perform operation
fmul.h f18, f25, f21, rne # perform operation
fmul.h f18, f25, f21, rtz # perform operation
fmul.h f18, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x21, 0xeda0c73c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fmul.h f21, f19, f11, dyn # perform operation
fmul.h f21, f19, f11, rdn # perform operation
fmul.h f21, f19, f11, rmm # perform operation
fmul.h f21, f19, f11, rne # perform operation
fmul.h f21, f19, f11, rtz # perform operation
fmul.h f21, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x27, 0x43ecbb79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmul.h f27, f25, f1, dyn # perform operation
fmul.h f27, f25, f1, rdn # perform operation
fmul.h f27, f25, f1, rmm # perform operation
fmul.h f27, f25, f1, rne # perform operation
fmul.h f27, f25, f1, rtz # perform operation
fmul.h f27, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x13, 0x73fb6d12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fmul.h f13, f2, f8, dyn # perform operation
fmul.h f13, f2, f8, rdn # perform operation
fmul.h f13, f2, f8, rmm # perform operation
fmul.h f13, f2, f8, rne # perform operation
fmul.h f13, f2, f8, rtz # perform operation
fmul.h f13, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x3, 0x3c06337d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fmul.h f3, f17, f1, dyn # perform operation
fmul.h f3, f17, f1, rdn # perform operation
fmul.h f3, f17, f1, rmm # perform operation
fmul.h f3, f17, f1, rne # perform operation
fmul.h f3, f17, f1, rtz # perform operation
fmul.h f3, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x5, 0x96c8f6b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fmul.h f5, f23, f22, dyn # perform operation
fmul.h f5, f23, f22, rdn # perform operation
fmul.h f5, f23, f22, rmm # perform operation
fmul.h f5, f23, f22, rne # perform operation
fmul.h f5, f23, f22, rtz # perform operation
fmul.h f5, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x18, 0xc41642a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fmul.h f18, f23, f7, dyn # perform operation
fmul.h f18, f23, f7, rdn # perform operation
fmul.h f18, f23, f7, rmm # perform operation
fmul.h f18, f23, f7, rne # perform operation
fmul.h f18, f23, f7, rtz # perform operation
fmul.h f18, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x29, 0xb2f2de06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fmul.h f29, f22, f20, dyn # perform operation
fmul.h f29, f22, f20, rdn # perform operation
fmul.h f29, f22, f20, rmm # perform operation
fmul.h f29, f22, f20, rne # perform operation
fmul.h f29, f22, f20, rtz # perform operation
fmul.h f29, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x27, 0xb2b07d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fmul.h f27, f3, f2, dyn # perform operation
fmul.h f27, f3, f2, rdn # perform operation
fmul.h f27, f3, f2, rmm # perform operation
fmul.h f27, f3, f2, rne # perform operation
fmul.h f27, f3, f2, rtz # perform operation
fmul.h f27, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x21, 0xd89934df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fmul.h f21, f9, f8, dyn # perform operation
fmul.h f21, f9, f8, rdn # perform operation
fmul.h f21, f9, f8, rmm # perform operation
fmul.h f21, f9, f8, rne # perform operation
fmul.h f21, f9, f8, rtz # perform operation
fmul.h f21, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x29, 0xcfac279a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmul.h f29, f23, f2, dyn # perform operation
fmul.h f29, f23, f2, rdn # perform operation
fmul.h f29, f23, f2, rmm # perform operation
fmul.h f29, f23, f2, rne # perform operation
fmul.h f29, f23, f2, rtz # perform operation
fmul.h f29, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x20, 0x2046da82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fmul.h f20, f19, f9, dyn # perform operation
fmul.h f20, f19, f9, rdn # perform operation
fmul.h f20, f19, f9, rmm # perform operation
fmul.h f20, f19, f9, rne # perform operation
fmul.h f20, f19, f9, rtz # perform operation
fmul.h f20, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x3, 0x5b4a764d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmul.h f3, f23, f31, dyn # perform operation
fmul.h f3, f23, f31, rdn # perform operation
fmul.h f3, f23, f31, rmm # perform operation
fmul.h f3, f23, f31, rne # perform operation
fmul.h f3, f23, f31, rtz # perform operation
fmul.h f3, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x5, 0x22faa447 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fmul.h f5, f27, f15, dyn # perform operation
fmul.h f5, f27, f15, rdn # perform operation
fmul.h f5, f27, f15, rmm # perform operation
fmul.h f5, f27, f15, rne # perform operation
fmul.h f5, f27, f15, rtz # perform operation
fmul.h f5, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x29, 0xd8dc72bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fmul.h f29, f9, f3, dyn # perform operation
fmul.h f29, f9, f3, rdn # perform operation
fmul.h f29, f9, f3, rmm # perform operation
fmul.h f29, f9, f3, rne # perform operation
fmul.h f29, f9, f3, rtz # perform operation
fmul.h f29, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x7, 0x63ed3e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fmul.h f7, f4, f9, dyn # perform operation
fmul.h f7, f4, f9, rdn # perform operation
fmul.h f7, f4, f9, rmm # perform operation
fmul.h f7, f4, f9, rne # perform operation
fmul.h f7, f4, f9, rtz # perform operation
fmul.h f7, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x7, 0x3d6da191 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fmul.h f7, f2, f31, dyn # perform operation
fmul.h f7, f2, f31, rdn # perform operation
fmul.h f7, f2, f31, rmm # perform operation
fmul.h f7, f2, f31, rne # perform operation
fmul.h f7, f2, f31, rtz # perform operation
fmul.h f7, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x24, 0xae53059b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fmul.h f24, f13, f16, dyn # perform operation
fmul.h f24, f13, f16, rdn # perform operation
fmul.h f24, f13, f16, rmm # perform operation
fmul.h f24, f13, f16, rne # perform operation
fmul.h f24, f13, f16, rtz # perform operation
fmul.h f24, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x30, 0x1d0506d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmul.h f30, f28, f22, dyn # perform operation
fmul.h f30, f28, f22, rdn # perform operation
fmul.h f30, f28, f22, rmm # perform operation
fmul.h f30, f28, f22, rne # perform operation
fmul.h f30, f28, f22, rtz # perform operation
fmul.h f30, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x20, 0x4ca8ca46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmul.h f20, f2, f28, dyn # perform operation
fmul.h f20, f2, f28, rdn # perform operation
fmul.h f20, f2, f28, rmm # perform operation
fmul.h f20, f2, f28, rne # perform operation
fmul.h f20, f2, f28, rtz # perform operation
fmul.h f20, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x25, 0x9426e2ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmul.h f25, f13, f14, dyn # perform operation
fmul.h f25, f13, f14, rdn # perform operation
fmul.h f25, f13, f14, rmm # perform operation
fmul.h f25, f13, f14, rne # perform operation
fmul.h f25, f13, f14, rtz # perform operation
fmul.h f25, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x1, 0x7f93a476 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fmul.h f1, f11, f3, dyn # perform operation
fmul.h f1, f11, f3, rdn # perform operation
fmul.h f1, f11, f3, rmm # perform operation
fmul.h f1, f11, f3, rne # perform operation
fmul.h f1, f11, f3, rtz # perform operation
fmul.h f1, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x5, 0x530dbb81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f5, f11, f22, dyn # perform operation
fmul.h f5, f11, f22, rdn # perform operation
fmul.h f5, f11, f22, rmm # perform operation
fmul.h f5, f11, f22, rne # perform operation
fmul.h f5, f11, f22, rtz # perform operation
fmul.h f5, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x22, 0x702600a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fmul.h f22, f28, f11, dyn # perform operation
fmul.h f22, f28, f11, rdn # perform operation
fmul.h f22, f28, f11, rmm # perform operation
fmul.h f22, f28, f11, rne # perform operation
fmul.h f22, f28, f11, rtz # perform operation
fmul.h f22, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x31, 0x1b0a4cab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fmul.h f31, f14, f18, dyn # perform operation
fmul.h f31, f14, f18, rdn # perform operation
fmul.h f31, f14, f18, rmm # perform operation
fmul.h f31, f14, f18, rne # perform operation
fmul.h f31, f14, f18, rtz # perform operation
fmul.h f31, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x27, 0x1fccec87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fmul.h f27, f20, f5, dyn # perform operation
fmul.h f27, f20, f5, rdn # perform operation
fmul.h f27, f20, f5, rmm # perform operation
fmul.h f27, f20, f5, rne # perform operation
fmul.h f27, f20, f5, rtz # perform operation
fmul.h f27, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x30, 0xf27360f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fmul.h f30, f9, f6, dyn # perform operation
fmul.h f30, f9, f6, rdn # perform operation
fmul.h f30, f9, f6, rmm # perform operation
fmul.h f30, f9, f6, rne # perform operation
fmul.h f30, f9, f6, rtz # perform operation
fmul.h f30, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x27, 0xfb42a5f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fmul.h f27, f10, f19, dyn # perform operation
fmul.h f27, f10, f19, rdn # perform operation
fmul.h f27, f10, f19, rmm # perform operation
fmul.h f27, f10, f19, rne # perform operation
fmul.h f27, f10, f19, rtz # perform operation
fmul.h f27, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x11, 0x3101dd7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fmul.h f11, f28, f3, dyn # perform operation
fmul.h f11, f28, f3, rdn # perform operation
fmul.h f11, f28, f3, rmm # perform operation
fmul.h f11, f28, f3, rne # perform operation
fmul.h f11, f28, f3, rtz # perform operation
fmul.h f11, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x17, 0x6cb8a16c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fmul.h f17, f28, f20, dyn # perform operation
fmul.h f17, f28, f20, rdn # perform operation
fmul.h f17, f28, f20, rmm # perform operation
fmul.h f17, f28, f20, rne # perform operation
fmul.h f17, f28, f20, rtz # perform operation
fmul.h f17, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x25, 0xf84ae7a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fmul.h f25, f24, f13, dyn # perform operation
fmul.h f25, f24, f13, rdn # perform operation
fmul.h f25, f24, f13, rmm # perform operation
fmul.h f25, f24, f13, rne # perform operation
fmul.h f25, f24, f13, rtz # perform operation
fmul.h f25, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x7, 0x247a717c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmul.h f7, f6, f23, dyn # perform operation
fmul.h f7, f6, f23, rdn # perform operation
fmul.h f7, f6, f23, rmm # perform operation
fmul.h f7, f6, f23, rne # perform operation
fmul.h f7, f6, f23, rtz # perform operation
fmul.h f7, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x9, 0x59a8ae7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fmul.h f9, f21, f19, dyn # perform operation
fmul.h f9, f21, f19, rdn # perform operation
fmul.h f9, f21, f19, rmm # perform operation
fmul.h f9, f21, f19, rne # perform operation
fmul.h f9, f21, f19, rtz # perform operation
fmul.h f9, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x11, 0xf297ca68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fmul.h f11, f13, f24, dyn # perform operation
fmul.h f11, f13, f24, rdn # perform operation
fmul.h f11, f13, f24, rmm # perform operation
fmul.h f11, f13, f24, rne # perform operation
fmul.h f11, f13, f24, rtz # perform operation
fmul.h f11, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x5, 0x3e7a1d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fmul.h f5, f26, f16, dyn # perform operation
fmul.h f5, f26, f16, rdn # perform operation
fmul.h f5, f26, f16, rmm # perform operation
fmul.h f5, f26, f16, rne # perform operation
fmul.h f5, f26, f16, rtz # perform operation
fmul.h f5, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x5, 0xa9b55fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fmul.h f5, f2, f6, dyn # perform operation
fmul.h f5, f2, f6, rdn # perform operation
fmul.h f5, f2, f6, rmm # perform operation
fmul.h f5, f2, f6, rne # perform operation
fmul.h f5, f2, f6, rtz # perform operation
fmul.h f5, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x17, 0xc2cf2c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fmul.h f17, f1, f22, dyn # perform operation
fmul.h f17, f1, f22, rdn # perform operation
fmul.h f17, f1, f22, rmm # perform operation
fmul.h f17, f1, f22, rne # perform operation
fmul.h f17, f1, f22, rtz # perform operation
fmul.h f17, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x7, 0x5f68a30e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fmul.h f7, f24, f2, dyn # perform operation
fmul.h f7, f24, f2, rdn # perform operation
fmul.h f7, f24, f2, rmm # perform operation
fmul.h f7, f24, f2, rne # perform operation
fmul.h f7, f24, f2, rtz # perform operation
fmul.h f7, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x19, 0xe9d59d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fmul.h f19, f21, f16, dyn # perform operation
fmul.h f19, f21, f16, rdn # perform operation
fmul.h f19, f21, f16, rmm # perform operation
fmul.h f19, f21, f16, rne # perform operation
fmul.h f19, f21, f16, rtz # perform operation
fmul.h f19, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x11, 0xfa2db482 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fmul.h f11, f12, f26, dyn # perform operation
fmul.h f11, f12, f26, rdn # perform operation
fmul.h f11, f12, f26, rmm # perform operation
fmul.h f11, f12, f26, rne # perform operation
fmul.h f11, f12, f26, rtz # perform operation
fmul.h f11, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x24, 0x71f453fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmul.h f24, f29, f2, dyn # perform operation
fmul.h f24, f29, f2, rdn # perform operation
fmul.h f24, f29, f2, rmm # perform operation
fmul.h f24, f29, f2, rne # perform operation
fmul.h f24, f29, f2, rtz # perform operation
fmul.h f24, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x31, 0x17888f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fmul.h f31, f13, f10, dyn # perform operation
fmul.h f31, f13, f10, rdn # perform operation
fmul.h f31, f13, f10, rmm # perform operation
fmul.h f31, f13, f10, rne # perform operation
fmul.h f31, f13, f10, rtz # perform operation
fmul.h f31, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x30, 0x60d60a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fmul.h f30, f9, f17, dyn # perform operation
fmul.h f30, f9, f17, rdn # perform operation
fmul.h f30, f9, f17, rmm # perform operation
fmul.h f30, f9, f17, rne # perform operation
fmul.h f30, f9, f17, rtz # perform operation
fmul.h f30, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x1, 0x35cdc1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fmul.h f1, f15, f20, dyn # perform operation
fmul.h f1, f15, f20, rdn # perform operation
fmul.h f1, f15, f20, rmm # perform operation
fmul.h f1, f15, f20, rne # perform operation
fmul.h f1, f15, f20, rtz # perform operation
fmul.h f1, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x4, 0x75f553ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmul.h f4, f10, f31, dyn # perform operation
fmul.h f4, f10, f31, rdn # perform operation
fmul.h f4, f10, f31, rmm # perform operation
fmul.h f4, f10, f31, rne # perform operation
fmul.h f4, f10, f31, rtz # perform operation
fmul.h f4, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x20, 0xb103814f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fmul.h f20, f31, f16, dyn # perform operation
fmul.h f20, f31, f16, rdn # perform operation
fmul.h f20, f31, f16, rmm # perform operation
fmul.h f20, f31, f16, rne # perform operation
fmul.h f20, f31, f16, rtz # perform operation
fmul.h f20, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x11, 0x6d04c41a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fmul.h f11, f1, f12, dyn # perform operation
fmul.h f11, f1, f12, rdn # perform operation
fmul.h f11, f1, f12, rmm # perform operation
fmul.h f11, f1, f12, rne # perform operation
fmul.h f11, f1, f12, rtz # perform operation
fmul.h f11, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x18, 0x820a3f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fmul.h f18, f7, f6, dyn # perform operation
fmul.h f18, f7, f6, rdn # perform operation
fmul.h f18, f7, f6, rmm # perform operation
fmul.h f18, f7, f6, rne # perform operation
fmul.h f18, f7, f6, rtz # perform operation
fmul.h f18, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x12, 0xaf505b91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fmul.h f12, f27, f10, dyn # perform operation
fmul.h f12, f27, f10, rdn # perform operation
fmul.h f12, f27, f10, rmm # perform operation
fmul.h f12, f27, f10, rne # perform operation
fmul.h f12, f27, f10, rtz # perform operation
fmul.h f12, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x22, 0x0abafbff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fmul.h f22, f3, f29, dyn # perform operation
fmul.h f22, f3, f29, rdn # perform operation
fmul.h f22, f3, f29, rmm # perform operation
fmul.h f22, f3, f29, rne # perform operation
fmul.h f22, f3, f29, rtz # perform operation
fmul.h f22, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x15, 0x9926e1ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fmul.h f15, f26, f13, dyn # perform operation
fmul.h f15, f26, f13, rdn # perform operation
fmul.h f15, f26, f13, rmm # perform operation
fmul.h f15, f26, f13, rne # perform operation
fmul.h f15, f26, f13, rtz # perform operation
fmul.h f15, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x25, 0x80dfc38b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fmul.h f25, f17, f11, dyn # perform operation
fmul.h f25, f17, f11, rdn # perform operation
fmul.h f25, f17, f11, rmm # perform operation
fmul.h f25, f17, f11, rne # perform operation
fmul.h f25, f17, f11, rtz # perform operation
fmul.h f25, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x1, 0x525122e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fmul.h f1, f9, f3, dyn # perform operation
fmul.h f1, f9, f3, rdn # perform operation
fmul.h f1, f9, f3, rmm # perform operation
fmul.h f1, f9, f3, rne # perform operation
fmul.h f1, f9, f3, rtz # perform operation
fmul.h f1, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x31, 0xccf7e03b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fmul.h f31, f10, f30, dyn # perform operation
fmul.h f31, f10, f30, rdn # perform operation
fmul.h f31, f10, f30, rmm # perform operation
fmul.h f31, f10, f30, rne # perform operation
fmul.h f31, f10, f30, rtz # perform operation
fmul.h f31, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x12, 0xf23fa153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fmul.h f12, f2, f16, dyn # perform operation
fmul.h f12, f2, f16, rdn # perform operation
fmul.h f12, f2, f16, rmm # perform operation
fmul.h f12, f2, f16, rne # perform operation
fmul.h f12, f2, f16, rtz # perform operation
fmul.h f12, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x25, 0xeddd213c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fmul.h f25, f16, f4, dyn # perform operation
fmul.h f25, f16, f4, rdn # perform operation
fmul.h f25, f16, f4, rmm # perform operation
fmul.h f25, f16, f4, rne # perform operation
fmul.h f25, f16, f4, rtz # perform operation
fmul.h f25, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x11, 0x625dfc25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fmul.h f11, f13, f24, dyn # perform operation
fmul.h f11, f13, f24, rdn # perform operation
fmul.h f11, f13, f24, rmm # perform operation
fmul.h f11, f13, f24, rne # perform operation
fmul.h f11, f13, f24, rtz # perform operation
fmul.h f11, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x1, 0xbdf508b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fmul.h f1, f18, f26, dyn # perform operation
fmul.h f1, f18, f26, rdn # perform operation
fmul.h f1, f18, f26, rmm # perform operation
fmul.h f1, f18, f26, rne # perform operation
fmul.h f1, f18, f26, rtz # perform operation
fmul.h f1, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x25, 0xc6cf78d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fmul.h f25, f5, f24, dyn # perform operation
fmul.h f25, f5, f24, rdn # perform operation
fmul.h f25, f5, f24, rmm # perform operation
fmul.h f25, f5, f24, rne # perform operation
fmul.h f25, f5, f24, rtz # perform operation
fmul.h f25, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x21, 0xf6fde9bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fmul.h f21, f30, f13, dyn # perform operation
fmul.h f21, f30, f13, rdn # perform operation
fmul.h f21, f30, f13, rmm # perform operation
fmul.h f21, f30, f13, rne # perform operation
fmul.h f21, f30, f13, rtz # perform operation
fmul.h f21, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x1, 0xd2e299e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
fmul.h f1, f6, f18, dyn # perform operation
fmul.h f1, f6, f18, rdn # perform operation
fmul.h f1, f6, f18, rmm # perform operation
fmul.h f1, f6, f18, rne # perform operation
fmul.h f1, f6, f18, rtz # perform operation
fmul.h f1, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x13, 0x11503142 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fmul.h f13, f7, f22, dyn # perform operation
fmul.h f13, f7, f22, rdn # perform operation
fmul.h f13, f7, f22, rmm # perform operation
fmul.h f13, f7, f22, rne # perform operation
fmul.h f13, f7, f22, rtz # perform operation
fmul.h f13, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x11, 0xc63b475c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fmul.h f11, f13, f20, dyn # perform operation
fmul.h f11, f13, f20, rdn # perform operation
fmul.h f11, f13, f20, rmm # perform operation
fmul.h f11, f13, f20, rne # perform operation
fmul.h f11, f13, f20, rtz # perform operation
fmul.h f11, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x24, 0x9e86a17b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fmul.h f24, f18, f13, dyn # perform operation
fmul.h f24, f18, f13, rdn # perform operation
fmul.h f24, f18, f13, rmm # perform operation
fmul.h f24, f18, f13, rne # perform operation
fmul.h f24, f18, f13, rtz # perform operation
fmul.h f24, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x2, 0x552922c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fmul.h f2, f24, f4, dyn # perform operation
fmul.h f2, f24, f4, rdn # perform operation
fmul.h f2, f24, f4, rmm # perform operation
fmul.h f2, f24, f4, rne # perform operation
fmul.h f2, f24, f4, rtz # perform operation
fmul.h f2, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x5, 0x1d25de1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fmul.h f5, f9, f18, dyn # perform operation
fmul.h f5, f9, f18, rdn # perform operation
fmul.h f5, f9, f18, rmm # perform operation
fmul.h f5, f9, f18, rne # perform operation
fmul.h f5, f9, f18, rtz # perform operation
fmul.h f5, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x21, 0x21040b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fmul.h f21, f11, f29, dyn # perform operation
fmul.h f21, f11, f29, rdn # perform operation
fmul.h f21, f11, f29, rmm # perform operation
fmul.h f21, f11, f29, rne # perform operation
fmul.h f21, f11, f29, rtz # perform operation
fmul.h f21, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x13, 0x86d51476 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fmul.h f13, f24, f5, dyn # perform operation
fmul.h f13, f24, f5, rdn # perform operation
fmul.h f13, f24, f5, rmm # perform operation
fmul.h f13, f24, f5, rne # perform operation
fmul.h f13, f24, f5, rtz # perform operation
fmul.h f13, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f24, f5 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x5a172e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4dd00772 # load x3 with value 0x4dd00772
sw x3, 0(x2) # store 0x4dd00772 in memory
flh f23, 0(x2) # load 0x4dd00772 from memory into f23
li x3, 0x3963ceee # load x3 with value 0x3963ceee
sw x3, 0(x2) # store 0x3963ceee in memory
flh f27, 0(x2) # load 0x3963ceee from memory into f27
fmul.h f0, f23, f27 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x5b1516d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x113fdb31 # load x3 with value 0x113fdb31
sw x3, 0(x2) # store 0x113fdb31 in memory
flh f22, 0(x2) # load 0x113fdb31 from memory into f22
li x3, 0x0426192b # load x3 with value 0x0426192b
sw x3, 0(x2) # store 0x0426192b in memory
flh f30, 0(x2) # load 0x0426192b from memory into f30
fmul.h f1, f22, f30 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xcea6b2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x982d8475 # load x3 with value 0x982d8475
sw x3, 0(x2) # store 0x982d8475 in memory
flh f13, 0(x2) # load 0x982d8475 from memory into f13
li x3, 0xa39f3ef5 # load x3 with value 0xa39f3ef5
sw x3, 0(x2) # store 0xa39f3ef5 in memory
flh f20, 0(x2) # load 0xa39f3ef5 from memory into f20
fmul.h f2, f13, f20 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xc9d93982 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6672052b # load x3 with value 0x6672052b
sw x3, 0(x2) # store 0x6672052b in memory
flh f14, 0(x2) # load 0x6672052b from memory into f14
li x3, 0xa38da3e4 # load x3 with value 0xa38da3e4
sw x3, 0(x2) # store 0xa38da3e4 in memory
flh f8, 0(x2) # load 0xa38da3e4 from memory into f8
fmul.h f3, f14, f8 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x0a6069fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd303fa48 # load x3 with value 0xd303fa48
sw x3, 0(x2) # store 0xd303fa48 in memory
flh f12, 0(x2) # load 0xd303fa48 from memory into f12
li x3, 0xe8b676ed # load x3 with value 0xe8b676ed
sw x3, 0(x2) # store 0xe8b676ed in memory
flh f5, 0(x2) # load 0xe8b676ed from memory into f5
fmul.h f4, f12, f5 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xc5f7ba94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38533f00 # load x3 with value 0x38533f00
sw x3, 0(x2) # store 0x38533f00 in memory
flh f16, 0(x2) # load 0x38533f00 from memory into f16
li x3, 0x3e8f12a1 # load x3 with value 0x3e8f12a1
sw x3, 0(x2) # store 0x3e8f12a1 in memory
flh f22, 0(x2) # load 0x3e8f12a1 from memory into f22
fmul.h f5, f16, f22 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xcec955ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe908dec5 # load x3 with value 0xe908dec5
sw x3, 0(x2) # store 0xe908dec5 in memory
flh f28, 0(x2) # load 0xe908dec5 from memory into f28
li x3, 0xdb7433e6 # load x3 with value 0xdb7433e6
sw x3, 0(x2) # store 0xdb7433e6 in memory
flh f10, 0(x2) # load 0xdb7433e6 from memory into f10
fmul.h f6, f28, f10 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x34622194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb664b8c # load x3 with value 0xcb664b8c
sw x3, 0(x2) # store 0xcb664b8c in memory
flh f15, 0(x2) # load 0xcb664b8c from memory into f15
li x3, 0xc25ad776 # load x3 with value 0xc25ad776
sw x3, 0(x2) # store 0xc25ad776 in memory
flh f29, 0(x2) # load 0xc25ad776 from memory into f29
fmul.h f7, f15, f29 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x3aad6782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56239573 # load x3 with value 0x56239573
sw x3, 0(x2) # store 0x56239573 in memory
flh f9, 0(x2) # load 0x56239573 from memory into f9
li x3, 0x39ff8747 # load x3 with value 0x39ff8747
sw x3, 0(x2) # store 0x39ff8747 in memory
flh f27, 0(x2) # load 0x39ff8747 from memory into f27
fmul.h f8, f9, f27 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xaa9385e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d658b91 # load x3 with value 0x6d658b91
sw x3, 0(x2) # store 0x6d658b91 in memory
flh f30, 0(x2) # load 0x6d658b91 from memory into f30
li x3, 0x0f736346 # load x3 with value 0x0f736346
sw x3, 0(x2) # store 0x0f736346 in memory
flh f5, 0(x2) # load 0x0f736346 from memory into f5
fmul.h f9, f30, f5 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xaf5a97c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a23910d # load x3 with value 0x9a23910d
sw x3, 0(x2) # store 0x9a23910d in memory
flh f31, 0(x2) # load 0x9a23910d from memory into f31
li x3, 0x1efadd0a # load x3 with value 0x1efadd0a
sw x3, 0(x2) # store 0x1efadd0a in memory
flh f8, 0(x2) # load 0x1efadd0a from memory into f8
fmul.h f10, f31, f8 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xfea026e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbddca7fd # load x3 with value 0xbddca7fd
sw x3, 0(x2) # store 0xbddca7fd in memory
flh f29, 0(x2) # load 0xbddca7fd from memory into f29
li x3, 0x2c2d145b # load x3 with value 0x2c2d145b
sw x3, 0(x2) # store 0x2c2d145b in memory
flh f6, 0(x2) # load 0x2c2d145b from memory into f6
fmul.h f11, f29, f6 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x36ff996e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeea269c2 # load x3 with value 0xeea269c2
sw x3, 0(x2) # store 0xeea269c2 in memory
flh f20, 0(x2) # load 0xeea269c2 from memory into f20
li x3, 0xbe997eb1 # load x3 with value 0xbe997eb1
sw x3, 0(x2) # store 0xbe997eb1 in memory
flh f28, 0(x2) # load 0xbe997eb1 from memory into f28
fmul.h f12, f20, f28 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xe04539fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1f713c7 # load x3 with value 0xa1f713c7
sw x3, 0(x2) # store 0xa1f713c7 in memory
flh f15, 0(x2) # load 0xa1f713c7 from memory into f15
li x3, 0xf538c9e8 # load x3 with value 0xf538c9e8
sw x3, 0(x2) # store 0xf538c9e8 in memory
flh f6, 0(x2) # load 0xf538c9e8 from memory into f6
fmul.h f13, f15, f6 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xa949d377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x987b8831 # load x3 with value 0x987b8831
sw x3, 0(x2) # store 0x987b8831 in memory
flh f26, 0(x2) # load 0x987b8831 from memory into f26
li x3, 0x3cf73342 # load x3 with value 0x3cf73342
sw x3, 0(x2) # store 0x3cf73342 in memory
flh f8, 0(x2) # load 0x3cf73342 from memory into f8
fmul.h f14, f26, f8 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xaf400b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a6dd9ae # load x3 with value 0x0a6dd9ae
sw x3, 0(x2) # store 0x0a6dd9ae in memory
flh f5, 0(x2) # load 0x0a6dd9ae from memory into f5
li x3, 0xa9827fe2 # load x3 with value 0xa9827fe2
sw x3, 0(x2) # store 0xa9827fe2 in memory
flh f14, 0(x2) # load 0xa9827fe2 from memory into f14
fmul.h f15, f5, f14 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xbb02996a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x365845ae # load x3 with value 0x365845ae
sw x3, 0(x2) # store 0x365845ae in memory
flh f22, 0(x2) # load 0x365845ae from memory into f22
li x3, 0xce7c6f1d # load x3 with value 0xce7c6f1d
sw x3, 0(x2) # store 0xce7c6f1d in memory
flh f12, 0(x2) # load 0xce7c6f1d from memory into f12
fmul.h f16, f22, f12 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x7f8363f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6df94396 # load x3 with value 0x6df94396
sw x3, 0(x2) # store 0x6df94396 in memory
flh f28, 0(x2) # load 0x6df94396 from memory into f28
li x3, 0xf9e824f7 # load x3 with value 0xf9e824f7
sw x3, 0(x2) # store 0xf9e824f7 in memory
flh f4, 0(x2) # load 0xf9e824f7 from memory into f4
fmul.h f17, f28, f4 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x7a203461 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51324358 # load x3 with value 0x51324358
sw x3, 0(x2) # store 0x51324358 in memory
flh f3, 0(x2) # load 0x51324358 from memory into f3
li x3, 0xeef41651 # load x3 with value 0xeef41651
sw x3, 0(x2) # store 0xeef41651 in memory
flh f26, 0(x2) # load 0xeef41651 from memory into f26
fmul.h f18, f3, f26 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xdd255e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e1f309a # load x3 with value 0x3e1f309a
sw x3, 0(x2) # store 0x3e1f309a in memory
flh f7, 0(x2) # load 0x3e1f309a from memory into f7
li x3, 0xbfd8fa6a # load x3 with value 0xbfd8fa6a
sw x3, 0(x2) # store 0xbfd8fa6a in memory
flh f5, 0(x2) # load 0xbfd8fa6a from memory into f5
fmul.h f19, f7, f5 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xcbfcb494 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd6c038d # load x3 with value 0xdd6c038d
sw x3, 0(x2) # store 0xdd6c038d in memory
flh f3, 0(x2) # load 0xdd6c038d from memory into f3
li x3, 0x4359a886 # load x3 with value 0x4359a886
sw x3, 0(x2) # store 0x4359a886 in memory
flh f7, 0(x2) # load 0x4359a886 from memory into f7
fmul.h f20, f3, f7 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xe988353a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ec661ab # load x3 with value 0x5ec661ab
sw x3, 0(x2) # store 0x5ec661ab in memory
flh f15, 0(x2) # load 0x5ec661ab from memory into f15
li x3, 0xb50aaa1f # load x3 with value 0xb50aaa1f
sw x3, 0(x2) # store 0xb50aaa1f in memory
flh f16, 0(x2) # load 0xb50aaa1f from memory into f16
fmul.h f21, f15, f16 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x4bb20d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc13396e5 # load x3 with value 0xc13396e5
sw x3, 0(x2) # store 0xc13396e5 in memory
flh f27, 0(x2) # load 0xc13396e5 from memory into f27
li x3, 0x83c6304b # load x3 with value 0x83c6304b
sw x3, 0(x2) # store 0x83c6304b in memory
flh f3, 0(x2) # load 0x83c6304b from memory into f3
fmul.h f22, f27, f3 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x0d4e20d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9270a315 # load x3 with value 0x9270a315
sw x3, 0(x2) # store 0x9270a315 in memory
flh f23, 0(x2) # load 0x9270a315 from memory into f23
li x3, 0xacc21f8f # load x3 with value 0xacc21f8f
sw x3, 0(x2) # store 0xacc21f8f in memory
flh f16, 0(x2) # load 0xacc21f8f from memory into f16
fmul.h f23, f23, f16 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xec147dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0082007d # load x3 with value 0x0082007d
sw x3, 0(x2) # store 0x0082007d in memory
flh f14, 0(x2) # load 0x0082007d from memory into f14
li x3, 0x55a823a6 # load x3 with value 0x55a823a6
sw x3, 0(x2) # store 0x55a823a6 in memory
flh f25, 0(x2) # load 0x55a823a6 from memory into f25
fmul.h f24, f14, f25 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xad241a80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9426310 # load x3 with value 0xa9426310
sw x3, 0(x2) # store 0xa9426310 in memory
flh f15, 0(x2) # load 0xa9426310 from memory into f15
li x3, 0xbbbe7998 # load x3 with value 0xbbbe7998
sw x3, 0(x2) # store 0xbbbe7998 in memory
flh f26, 0(x2) # load 0xbbbe7998 from memory into f26
fmul.h f25, f15, f26 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x7651f94c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbc8e67d # load x3 with value 0xdbc8e67d
sw x3, 0(x2) # store 0xdbc8e67d in memory
flh f13, 0(x2) # load 0xdbc8e67d from memory into f13
li x3, 0xc823958a # load x3 with value 0xc823958a
sw x3, 0(x2) # store 0xc823958a in memory
flh f19, 0(x2) # load 0xc823958a from memory into f19
fmul.h f26, f13, f19 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x6fd19b58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2ad349a # load x3 with value 0xf2ad349a
sw x3, 0(x2) # store 0xf2ad349a in memory
flh f24, 0(x2) # load 0xf2ad349a from memory into f24
li x3, 0x9b49bd79 # load x3 with value 0x9b49bd79
sw x3, 0(x2) # store 0x9b49bd79 in memory
flh f19, 0(x2) # load 0x9b49bd79 from memory into f19
fmul.h f27, f24, f19 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x6aa7a54e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ada14de # load x3 with value 0x4ada14de
sw x3, 0(x2) # store 0x4ada14de in memory
flh f9, 0(x2) # load 0x4ada14de from memory into f9
li x3, 0x6d850cce # load x3 with value 0x6d850cce
sw x3, 0(x2) # store 0x6d850cce in memory
flh f22, 0(x2) # load 0x6d850cce from memory into f22
fmul.h f28, f9, f22 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x4fe62860 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33415b7c # load x3 with value 0x33415b7c
sw x3, 0(x2) # store 0x33415b7c in memory
flh f15, 0(x2) # load 0x33415b7c from memory into f15
li x3, 0xd2ef6e0b # load x3 with value 0xd2ef6e0b
sw x3, 0(x2) # store 0xd2ef6e0b in memory
flh f16, 0(x2) # load 0xd2ef6e0b from memory into f16
fmul.h f29, f15, f16 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x1e1a6b8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6faffcd4 # load x3 with value 0x6faffcd4
sw x3, 0(x2) # store 0x6faffcd4 in memory
flh f21, 0(x2) # load 0x6faffcd4 from memory into f21
li x3, 0xacd795d2 # load x3 with value 0xacd795d2
sw x3, 0(x2) # store 0xacd795d2 in memory
flh f11, 0(x2) # load 0xacd795d2 from memory into f11
fmul.h f30, f21, f11 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x7656d9d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9063d099 # load x3 with value 0x9063d099
sw x3, 0(x2) # store 0x9063d099 in memory
flh f26, 0(x2) # load 0x9063d099 from memory into f26
li x3, 0x5644e5cc # load x3 with value 0x5644e5cc
sw x3, 0(x2) # store 0x5644e5cc in memory
flh f28, 0(x2) # load 0x5644e5cc from memory into f28
fmul.h f31, f26, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x16, 0x57b5d3e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1afef211 # load x3 with value 0x1afef211
sw x3, 0(x2) # store 0x1afef211 in memory
flh f0, 0(x2) # load 0x1afef211 from memory into f0
li x3, 0x08bfd293 # load x3 with value 0x08bfd293
sw x3, 0(x2) # store 0x08bfd293 in memory
flh f11, 0(x2) # load 0x08bfd293 from memory into f11
fmul.h f16, f0, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x28, 0x4f6e196f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16726c95 # load x3 with value 0x16726c95
sw x3, 0(x2) # store 0x16726c95 in memory
flh f1, 0(x2) # load 0x16726c95 from memory into f1
li x3, 0xf045b8d3 # load x3 with value 0xf045b8d3
sw x3, 0(x2) # store 0xf045b8d3 in memory
flh f23, 0(x2) # load 0xf045b8d3 from memory into f23
fmul.h f28, f1, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x31, 0x85bbf093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x339b8c45 # load x3 with value 0x339b8c45
sw x3, 0(x2) # store 0x339b8c45 in memory
flh f2, 0(x2) # load 0x339b8c45 from memory into f2
li x3, 0xe872cf28 # load x3 with value 0xe872cf28
sw x3, 0(x2) # store 0xe872cf28 in memory
flh f21, 0(x2) # load 0xe872cf28 from memory into f21
fmul.h f31, f2, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x5, 0xfba8db63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x920e1edd # load x3 with value 0x920e1edd
sw x3, 0(x2) # store 0x920e1edd in memory
flh f3, 0(x2) # load 0x920e1edd from memory into f3
li x3, 0x820009f3 # load x3 with value 0x820009f3
sw x3, 0(x2) # store 0x820009f3 in memory
flh f16, 0(x2) # load 0x820009f3 from memory into f16
fmul.h f5, f3, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x5, 0xdad43c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15ac3484 # load x3 with value 0x15ac3484
sw x3, 0(x2) # store 0x15ac3484 in memory
flh f4, 0(x2) # load 0x15ac3484 from memory into f4
li x3, 0xc92a34c8 # load x3 with value 0xc92a34c8
sw x3, 0(x2) # store 0xc92a34c8 in memory
flh f12, 0(x2) # load 0xc92a34c8 from memory into f12
fmul.h f5, f4, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x21, 0xa66a5182 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2698428 # load x3 with value 0xb2698428
sw x3, 0(x2) # store 0xb2698428 in memory
flh f5, 0(x2) # load 0xb2698428 from memory into f5
li x3, 0xf1e49ef9 # load x3 with value 0xf1e49ef9
sw x3, 0(x2) # store 0xf1e49ef9 in memory
flh f2, 0(x2) # load 0xf1e49ef9 from memory into f2
fmul.h f21, f5, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x31, 0x33aba268 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78953e00 # load x3 with value 0x78953e00
sw x3, 0(x2) # store 0x78953e00 in memory
flh f6, 0(x2) # load 0x78953e00 from memory into f6
li x3, 0xe231add5 # load x3 with value 0xe231add5
sw x3, 0(x2) # store 0xe231add5 in memory
flh f5, 0(x2) # load 0xe231add5 from memory into f5
fmul.h f31, f6, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x10, 0xdf93e82f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59d173a6 # load x3 with value 0x59d173a6
sw x3, 0(x2) # store 0x59d173a6 in memory
flh f7, 0(x2) # load 0x59d173a6 from memory into f7
li x3, 0xee150996 # load x3 with value 0xee150996
sw x3, 0(x2) # store 0xee150996 in memory
flh f25, 0(x2) # load 0xee150996 from memory into f25
fmul.h f10, f7, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x12, 0x0d8f0855 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27458f17 # load x3 with value 0x27458f17
sw x3, 0(x2) # store 0x27458f17 in memory
flh f8, 0(x2) # load 0x27458f17 from memory into f8
li x3, 0x37f19e0b # load x3 with value 0x37f19e0b
sw x3, 0(x2) # store 0x37f19e0b in memory
flh f25, 0(x2) # load 0x37f19e0b from memory into f25
fmul.h f12, f8, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x21, 0x3c77d3b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfdc2e2cc # load x3 with value 0xfdc2e2cc
sw x3, 0(x2) # store 0xfdc2e2cc in memory
flh f9, 0(x2) # load 0xfdc2e2cc from memory into f9
li x3, 0x53113f3a # load x3 with value 0x53113f3a
sw x3, 0(x2) # store 0x53113f3a in memory
flh f4, 0(x2) # load 0x53113f3a from memory into f4
fmul.h f21, f9, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x2, 0x7f072d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8156d2fc # load x3 with value 0x8156d2fc
sw x3, 0(x2) # store 0x8156d2fc in memory
flh f10, 0(x2) # load 0x8156d2fc from memory into f10
li x3, 0x23d5fc85 # load x3 with value 0x23d5fc85
sw x3, 0(x2) # store 0x23d5fc85 in memory
flh f19, 0(x2) # load 0x23d5fc85 from memory into f19
fmul.h f2, f10, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x4, 0x0fceadfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6280dc60 # load x3 with value 0x6280dc60
sw x3, 0(x2) # store 0x6280dc60 in memory
flh f11, 0(x2) # load 0x6280dc60 from memory into f11
li x3, 0xd69eb7e2 # load x3 with value 0xd69eb7e2
sw x3, 0(x2) # store 0xd69eb7e2 in memory
flh f31, 0(x2) # load 0xd69eb7e2 from memory into f31
fmul.h f4, f11, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x8, 0x7c864a9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2768eb44 # load x3 with value 0x2768eb44
sw x3, 0(x2) # store 0x2768eb44 in memory
flh f12, 0(x2) # load 0x2768eb44 from memory into f12
li x3, 0x79d60925 # load x3 with value 0x79d60925
sw x3, 0(x2) # store 0x79d60925 in memory
flh f7, 0(x2) # load 0x79d60925 from memory into f7
fmul.h f8, f12, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x20, 0x7c5d4d5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x404204f9 # load x3 with value 0x404204f9
sw x3, 0(x2) # store 0x404204f9 in memory
flh f13, 0(x2) # load 0x404204f9 from memory into f13
li x3, 0xae7b38ba # load x3 with value 0xae7b38ba
sw x3, 0(x2) # store 0xae7b38ba in memory
flh f30, 0(x2) # load 0xae7b38ba from memory into f30
fmul.h f20, f13, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x23, 0xd818750c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe171ebf7 # load x3 with value 0xe171ebf7
sw x3, 0(x2) # store 0xe171ebf7 in memory
flh f14, 0(x2) # load 0xe171ebf7 from memory into f14
li x3, 0x516b98b3 # load x3 with value 0x516b98b3
sw x3, 0(x2) # store 0x516b98b3 in memory
flh f5, 0(x2) # load 0x516b98b3 from memory into f5
fmul.h f23, f14, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x27, 0x87c83e92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc16fc408 # load x3 with value 0xc16fc408
sw x3, 0(x2) # store 0xc16fc408 in memory
flh f15, 0(x2) # load 0xc16fc408 from memory into f15
li x3, 0x1c4edd00 # load x3 with value 0x1c4edd00
sw x3, 0(x2) # store 0x1c4edd00 in memory
flh f28, 0(x2) # load 0x1c4edd00 from memory into f28
fmul.h f27, f15, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x16, 0x6133f0a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3600c1a9 # load x3 with value 0x3600c1a9
sw x3, 0(x2) # store 0x3600c1a9 in memory
flh f16, 0(x2) # load 0x3600c1a9 from memory into f16
li x3, 0x211bb218 # load x3 with value 0x211bb218
sw x3, 0(x2) # store 0x211bb218 in memory
flh f17, 0(x2) # load 0x211bb218 from memory into f17
fmul.h f16, f16, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x23, 0x0a78d917 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe89c7fdc # load x3 with value 0xe89c7fdc
sw x3, 0(x2) # store 0xe89c7fdc in memory
flh f17, 0(x2) # load 0xe89c7fdc from memory into f17
li x3, 0x33722e33 # load x3 with value 0x33722e33
sw x3, 0(x2) # store 0x33722e33 in memory
flh f4, 0(x2) # load 0x33722e33 from memory into f4
fmul.h f23, f17, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x26, 0x00a9db43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7eff37f9 # load x3 with value 0x7eff37f9
sw x3, 0(x2) # store 0x7eff37f9 in memory
flh f18, 0(x2) # load 0x7eff37f9 from memory into f18
li x3, 0x437d4b04 # load x3 with value 0x437d4b04
sw x3, 0(x2) # store 0x437d4b04 in memory
flh f6, 0(x2) # load 0x437d4b04 from memory into f6
fmul.h f26, f18, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x13, 0x9e985f51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72af8613 # load x3 with value 0x72af8613
sw x3, 0(x2) # store 0x72af8613 in memory
flh f19, 0(x2) # load 0x72af8613 from memory into f19
li x3, 0x87b66cf4 # load x3 with value 0x87b66cf4
sw x3, 0(x2) # store 0x87b66cf4 in memory
flh f21, 0(x2) # load 0x87b66cf4 from memory into f21
fmul.h f13, f19, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x31, 0x1a2a75a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb8efba7 # load x3 with value 0xbb8efba7
sw x3, 0(x2) # store 0xbb8efba7 in memory
flh f20, 0(x2) # load 0xbb8efba7 from memory into f20
li x3, 0x7b98fc4c # load x3 with value 0x7b98fc4c
sw x3, 0(x2) # store 0x7b98fc4c in memory
flh f24, 0(x2) # load 0x7b98fc4c from memory into f24
fmul.h f31, f20, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x13, 0xd1daf8ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4657a47c # load x3 with value 0x4657a47c
sw x3, 0(x2) # store 0x4657a47c in memory
flh f21, 0(x2) # load 0x4657a47c from memory into f21
li x3, 0xd9843c4d # load x3 with value 0xd9843c4d
sw x3, 0(x2) # store 0xd9843c4d in memory
flh f2, 0(x2) # load 0xd9843c4d from memory into f2
fmul.h f13, f21, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x30, 0x1f60ec60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4538a84c # load x3 with value 0x4538a84c
sw x3, 0(x2) # store 0x4538a84c in memory
flh f22, 0(x2) # load 0x4538a84c from memory into f22
li x3, 0x2705b0f1 # load x3 with value 0x2705b0f1
sw x3, 0(x2) # store 0x2705b0f1 in memory
flh f27, 0(x2) # load 0x2705b0f1 from memory into f27
fmul.h f30, f22, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x17, 0xecf49a9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ba86964 # load x3 with value 0x2ba86964
sw x3, 0(x2) # store 0x2ba86964 in memory
flh f23, 0(x2) # load 0x2ba86964 from memory into f23
li x3, 0xefee7f18 # load x3 with value 0xefee7f18
sw x3, 0(x2) # store 0xefee7f18 in memory
flh f2, 0(x2) # load 0xefee7f18 from memory into f2
fmul.h f17, f23, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x12, 0x10b1e05c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacc4a21b # load x3 with value 0xacc4a21b
sw x3, 0(x2) # store 0xacc4a21b in memory
flh f24, 0(x2) # load 0xacc4a21b from memory into f24
li x3, 0x4899ab47 # load x3 with value 0x4899ab47
sw x3, 0(x2) # store 0x4899ab47 in memory
flh f1, 0(x2) # load 0x4899ab47 from memory into f1
fmul.h f12, f24, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x13, 0x6c9987e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x031d5ac1 # load x3 with value 0x031d5ac1
sw x3, 0(x2) # store 0x031d5ac1 in memory
flh f25, 0(x2) # load 0x031d5ac1 from memory into f25
li x3, 0x00410f2f # load x3 with value 0x00410f2f
sw x3, 0(x2) # store 0x00410f2f in memory
flh f20, 0(x2) # load 0x00410f2f from memory into f20
fmul.h f13, f25, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x20, 0xe8104bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x233298fd # load x3 with value 0x233298fd
sw x3, 0(x2) # store 0x233298fd in memory
flh f26, 0(x2) # load 0x233298fd from memory into f26
li x3, 0xf4efc6ad # load x3 with value 0xf4efc6ad
sw x3, 0(x2) # store 0xf4efc6ad in memory
flh f3, 0(x2) # load 0xf4efc6ad from memory into f3
fmul.h f20, f26, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x4, 0x989f5458 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb70b952a # load x3 with value 0xb70b952a
sw x3, 0(x2) # store 0xb70b952a in memory
flh f27, 0(x2) # load 0xb70b952a from memory into f27
li x3, 0x53ebc3db # load x3 with value 0x53ebc3db
sw x3, 0(x2) # store 0x53ebc3db in memory
flh f13, 0(x2) # load 0x53ebc3db from memory into f13
fmul.h f4, f27, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x8, 0xfb9c92c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x441df2f4 # load x3 with value 0x441df2f4
sw x3, 0(x2) # store 0x441df2f4 in memory
flh f28, 0(x2) # load 0x441df2f4 from memory into f28
li x3, 0x108cdd03 # load x3 with value 0x108cdd03
sw x3, 0(x2) # store 0x108cdd03 in memory
flh f12, 0(x2) # load 0x108cdd03 from memory into f12
fmul.h f8, f28, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x24, 0x871aca70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x378a5c6e # load x3 with value 0x378a5c6e
sw x3, 0(x2) # store 0x378a5c6e in memory
flh f29, 0(x2) # load 0x378a5c6e from memory into f29
li x3, 0x3f9837c0 # load x3 with value 0x3f9837c0
sw x3, 0(x2) # store 0x3f9837c0 in memory
flh f26, 0(x2) # load 0x3f9837c0 from memory into f26
fmul.h f24, f29, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x26, 0x2871ee94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3259def # load x3 with value 0xe3259def
sw x3, 0(x2) # store 0xe3259def in memory
flh f30, 0(x2) # load 0xe3259def from memory into f30
li x3, 0x1b5c8a29 # load x3 with value 0x1b5c8a29
sw x3, 0(x2) # store 0x1b5c8a29 in memory
flh f1, 0(x2) # load 0x1b5c8a29 from memory into f1
fmul.h f26, f30, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x10, 0x02353e6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7528664 # load x3 with value 0xc7528664
sw x3, 0(x2) # store 0xc7528664 in memory
flh f31, 0(x2) # load 0xc7528664 from memory into f31
li x3, 0xe347a414 # load x3 with value 0xe347a414
sw x3, 0(x2) # store 0xe347a414 in memory
flh f25, 0(x2) # load 0xe347a414 from memory into f25
fmul.h f10, f31, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x15, 0x8a851a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8634c146 # load x3 with value 0x8634c146
sw x3, 0(x2) # store 0x8634c146 in memory
flh f24, 0(x2) # load 0x8634c146 from memory into f24
li x3, 0xb2259d23 # load x3 with value 0xb2259d23
sw x3, 0(x2) # store 0xb2259d23 in memory
flh f0, 0(x2) # load 0xb2259d23 from memory into f0
fmul.h f15, f24, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x18, 0x30538bb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb32372b1 # load x3 with value 0xb32372b1
sw x3, 0(x2) # store 0xb32372b1 in memory
flh f27, 0(x2) # load 0xb32372b1 from memory into f27
li x3, 0xad635e16 # load x3 with value 0xad635e16
sw x3, 0(x2) # store 0xad635e16 in memory
flh f1, 0(x2) # load 0xad635e16 from memory into f1
fmul.h f18, f27, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x8, 0x21a88a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d657870 # load x3 with value 0x8d657870
sw x3, 0(x2) # store 0x8d657870 in memory
flh f12, 0(x2) # load 0x8d657870 from memory into f12
li x3, 0xa83d0eea # load x3 with value 0xa83d0eea
sw x3, 0(x2) # store 0xa83d0eea in memory
flh f2, 0(x2) # load 0xa83d0eea from memory into f2
fmul.h f8, f12, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x25, 0xb9cdf2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0e3e9e2 # load x3 with value 0xc0e3e9e2
sw x3, 0(x2) # store 0xc0e3e9e2 in memory
flh f23, 0(x2) # load 0xc0e3e9e2 from memory into f23
li x3, 0xd924094e # load x3 with value 0xd924094e
sw x3, 0(x2) # store 0xd924094e in memory
flh f3, 0(x2) # load 0xd924094e from memory into f3
fmul.h f25, f23, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x11, 0xe88f9d5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d78f698 # load x3 with value 0x0d78f698
sw x3, 0(x2) # store 0x0d78f698 in memory
flh f20, 0(x2) # load 0x0d78f698 from memory into f20
li x3, 0x13b9d4d3 # load x3 with value 0x13b9d4d3
sw x3, 0(x2) # store 0x13b9d4d3 in memory
flh f4, 0(x2) # load 0x13b9d4d3 from memory into f4
fmul.h f11, f20, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x19, 0x8ffb8dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x969bfd4c # load x3 with value 0x969bfd4c
sw x3, 0(x2) # store 0x969bfd4c in memory
flh f3, 0(x2) # load 0x969bfd4c from memory into f3
li x3, 0x7e01340b # load x3 with value 0x7e01340b
sw x3, 0(x2) # store 0x7e01340b in memory
flh f5, 0(x2) # load 0x7e01340b from memory into f5
fmul.h f19, f3, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x31, 0x66ad4955 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x488ed787 # load x3 with value 0x488ed787
sw x3, 0(x2) # store 0x488ed787 in memory
flh f22, 0(x2) # load 0x488ed787 from memory into f22
li x3, 0xc19d4f41 # load x3 with value 0xc19d4f41
sw x3, 0(x2) # store 0xc19d4f41 in memory
flh f6, 0(x2) # load 0xc19d4f41 from memory into f6
fmul.h f31, f22, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x20, 0x3da88878 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47df6d6d # load x3 with value 0x47df6d6d
sw x3, 0(x2) # store 0x47df6d6d in memory
flh f26, 0(x2) # load 0x47df6d6d from memory into f26
li x3, 0x6e8e1b3f # load x3 with value 0x6e8e1b3f
sw x3, 0(x2) # store 0x6e8e1b3f in memory
flh f7, 0(x2) # load 0x6e8e1b3f from memory into f7
fmul.h f20, f26, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x19, 0xee696142 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0dd3ffa9 # load x3 with value 0x0dd3ffa9
sw x3, 0(x2) # store 0x0dd3ffa9 in memory
flh f7, 0(x2) # load 0x0dd3ffa9 from memory into f7
li x3, 0xe3c4d905 # load x3 with value 0xe3c4d905
sw x3, 0(x2) # store 0xe3c4d905 in memory
flh f8, 0(x2) # load 0xe3c4d905 from memory into f8
fmul.h f19, f7, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x13, 0xf0a90448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c6197ec # load x3 with value 0x3c6197ec
sw x3, 0(x2) # store 0x3c6197ec in memory
flh f31, 0(x2) # load 0x3c6197ec from memory into f31
li x3, 0x76b89d6e # load x3 with value 0x76b89d6e
sw x3, 0(x2) # store 0x76b89d6e in memory
flh f9, 0(x2) # load 0x76b89d6e from memory into f9
fmul.h f13, f31, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x3, 0xc3a67b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f42fd18 # load x3 with value 0x1f42fd18
sw x3, 0(x2) # store 0x1f42fd18 in memory
flh f9, 0(x2) # load 0x1f42fd18 from memory into f9
li x3, 0x6b907a9f # load x3 with value 0x6b907a9f
sw x3, 0(x2) # store 0x6b907a9f in memory
flh f10, 0(x2) # load 0x6b907a9f from memory into f10
fmul.h f3, f9, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x17, 0xa8a9bfca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x482905f0 # load x3 with value 0x482905f0
sw x3, 0(x2) # store 0x482905f0 in memory
flh f20, 0(x2) # load 0x482905f0 from memory into f20
li x3, 0x63481b28 # load x3 with value 0x63481b28
sw x3, 0(x2) # store 0x63481b28 in memory
flh f11, 0(x2) # load 0x63481b28 from memory into f11
fmul.h f17, f20, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x23, 0x2139fb7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0169cd4c # load x3 with value 0x0169cd4c
sw x3, 0(x2) # store 0x0169cd4c in memory
flh f9, 0(x2) # load 0x0169cd4c from memory into f9
li x3, 0x71991e5b # load x3 with value 0x71991e5b
sw x3, 0(x2) # store 0x71991e5b in memory
flh f12, 0(x2) # load 0x71991e5b from memory into f12
fmul.h f23, f9, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x8, 0x8c3fed50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x198cf218 # load x3 with value 0x198cf218
sw x3, 0(x2) # store 0x198cf218 in memory
flh f24, 0(x2) # load 0x198cf218 from memory into f24
li x3, 0x698217eb # load x3 with value 0x698217eb
sw x3, 0(x2) # store 0x698217eb in memory
flh f13, 0(x2) # load 0x698217eb from memory into f13
fmul.h f8, f24, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x28, 0xa8b5e63d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf5f2f5b # load x3 with value 0xaf5f2f5b
sw x3, 0(x2) # store 0xaf5f2f5b in memory
flh f23, 0(x2) # load 0xaf5f2f5b from memory into f23
li x3, 0x47b7498c # load x3 with value 0x47b7498c
sw x3, 0(x2) # store 0x47b7498c in memory
flh f14, 0(x2) # load 0x47b7498c from memory into f14
fmul.h f28, f23, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x11, 0xcfa657c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8db6f88b # load x3 with value 0x8db6f88b
sw x3, 0(x2) # store 0x8db6f88b in memory
flh f29, 0(x2) # load 0x8db6f88b from memory into f29
li x3, 0xfdf383cb # load x3 with value 0xfdf383cb
sw x3, 0(x2) # store 0xfdf383cb in memory
flh f15, 0(x2) # load 0xfdf383cb from memory into f15
fmul.h f11, f29, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x4, 0x02fc989d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd194686d # load x3 with value 0xd194686d
sw x3, 0(x2) # store 0xd194686d in memory
flh f31, 0(x2) # load 0xd194686d from memory into f31
li x3, 0x5f1e70cd # load x3 with value 0x5f1e70cd
sw x3, 0(x2) # store 0x5f1e70cd in memory
flh f16, 0(x2) # load 0x5f1e70cd from memory into f16
fmul.h f4, f31, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x30, 0x81014964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb57240fc # load x3 with value 0xb57240fc
sw x3, 0(x2) # store 0xb57240fc in memory
flh f15, 0(x2) # load 0xb57240fc from memory into f15
li x3, 0xe1afca8c # load x3 with value 0xe1afca8c
sw x3, 0(x2) # store 0xe1afca8c in memory
flh f17, 0(x2) # load 0xe1afca8c from memory into f17
fmul.h f30, f15, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x7, 0x500755a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab40adaa # load x3 with value 0xab40adaa
sw x3, 0(x2) # store 0xab40adaa in memory
flh f12, 0(x2) # load 0xab40adaa from memory into f12
li x3, 0x3b298841 # load x3 with value 0x3b298841
sw x3, 0(x2) # store 0x3b298841 in memory
flh f18, 0(x2) # load 0x3b298841 from memory into f18
fmul.h f7, f12, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x13, 0xb4000d65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c3afe3e # load x3 with value 0x5c3afe3e
sw x3, 0(x2) # store 0x5c3afe3e in memory
flh f1, 0(x2) # load 0x5c3afe3e from memory into f1
li x3, 0x839874af # load x3 with value 0x839874af
sw x3, 0(x2) # store 0x839874af in memory
flh f19, 0(x2) # load 0x839874af from memory into f19
fmul.h f13, f1, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x30, 0x7e4187ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c6d4d79 # load x3 with value 0x6c6d4d79
sw x3, 0(x2) # store 0x6c6d4d79 in memory
flh f28, 0(x2) # load 0x6c6d4d79 from memory into f28
li x3, 0xa8d8efc4 # load x3 with value 0xa8d8efc4
sw x3, 0(x2) # store 0xa8d8efc4 in memory
flh f20, 0(x2) # load 0xa8d8efc4 from memory into f20
fmul.h f30, f28, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x6, 0x8b746143 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ffe4b20 # load x3 with value 0x8ffe4b20
sw x3, 0(x2) # store 0x8ffe4b20 in memory
flh f26, 0(x2) # load 0x8ffe4b20 from memory into f26
li x3, 0x8819f574 # load x3 with value 0x8819f574
sw x3, 0(x2) # store 0x8819f574 in memory
flh f21, 0(x2) # load 0x8819f574 from memory into f21
fmul.h f6, f26, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x15, 0x7d93db72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24fd969b # load x3 with value 0x24fd969b
sw x3, 0(x2) # store 0x24fd969b in memory
flh f9, 0(x2) # load 0x24fd969b from memory into f9
li x3, 0xedd26b63 # load x3 with value 0xedd26b63
sw x3, 0(x2) # store 0xedd26b63 in memory
flh f22, 0(x2) # load 0xedd26b63 from memory into f22
fmul.h f15, f9, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x16, 0x2a757347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x016e71f3 # load x3 with value 0x016e71f3
sw x3, 0(x2) # store 0x016e71f3 in memory
flh f27, 0(x2) # load 0x016e71f3 from memory into f27
li x3, 0xdf9f9975 # load x3 with value 0xdf9f9975
sw x3, 0(x2) # store 0xdf9f9975 in memory
flh f23, 0(x2) # load 0xdf9f9975 from memory into f23
fmul.h f16, f27, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x20, 0x9da886a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d5c7ab2 # load x3 with value 0x4d5c7ab2
sw x3, 0(x2) # store 0x4d5c7ab2 in memory
flh f5, 0(x2) # load 0x4d5c7ab2 from memory into f5
li x3, 0x30d2017e # load x3 with value 0x30d2017e
sw x3, 0(x2) # store 0x30d2017e in memory
flh f24, 0(x2) # load 0x30d2017e from memory into f24
fmul.h f20, f5, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x11, 0x3d0994b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9033669b # load x3 with value 0x9033669b
sw x3, 0(x2) # store 0x9033669b in memory
flh f18, 0(x2) # load 0x9033669b from memory into f18
li x3, 0x10c4cb61 # load x3 with value 0x10c4cb61
sw x3, 0(x2) # store 0x10c4cb61 in memory
flh f25, 0(x2) # load 0x10c4cb61 from memory into f25
fmul.h f11, f18, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x20, 0xcd07cbe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e2147de # load x3 with value 0x4e2147de
sw x3, 0(x2) # store 0x4e2147de in memory
flh f27, 0(x2) # load 0x4e2147de from memory into f27
li x3, 0x30c5bd7f # load x3 with value 0x30c5bd7f
sw x3, 0(x2) # store 0x30c5bd7f in memory
flh f26, 0(x2) # load 0x30c5bd7f from memory into f26
fmul.h f20, f27, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x18, 0x72d2f81e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x031f0047 # load x3 with value 0x031f0047
sw x3, 0(x2) # store 0x031f0047 in memory
flh f13, 0(x2) # load 0x031f0047 from memory into f13
li x3, 0x9f39ec77 # load x3 with value 0x9f39ec77
sw x3, 0(x2) # store 0x9f39ec77 in memory
flh f27, 0(x2) # load 0x9f39ec77 from memory into f27
fmul.h f18, f13, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x31, 0x14b7ae3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18b88577 # load x3 with value 0x18b88577
sw x3, 0(x2) # store 0x18b88577 in memory
flh f2, 0(x2) # load 0x18b88577 from memory into f2
li x3, 0x7d5b64e5 # load x3 with value 0x7d5b64e5
sw x3, 0(x2) # store 0x7d5b64e5 in memory
flh f28, 0(x2) # load 0x7d5b64e5 from memory into f28
fmul.h f31, f2, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x15, 0x36c27690 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x713723b2 # load x3 with value 0x713723b2
sw x3, 0(x2) # store 0x713723b2 in memory
flh f27, 0(x2) # load 0x713723b2 from memory into f27
li x3, 0xdddd3b33 # load x3 with value 0xdddd3b33
sw x3, 0(x2) # store 0xdddd3b33 in memory
flh f29, 0(x2) # load 0xdddd3b33 from memory into f29
fmul.h f15, f27, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x21, 0xe9bc2e29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a608932 # load x3 with value 0x8a608932
sw x3, 0(x2) # store 0x8a608932 in memory
flh f24, 0(x2) # load 0x8a608932 from memory into f24
li x3, 0x0a847df5 # load x3 with value 0x0a847df5
sw x3, 0(x2) # store 0x0a847df5 in memory
flh f30, 0(x2) # load 0x0a847df5 from memory into f30
fmul.h f21, f24, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x15, 0x6ab9471d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d7b69ed # load x3 with value 0x2d7b69ed
sw x3, 0(x2) # store 0x2d7b69ed in memory
flh f24, 0(x2) # load 0x2d7b69ed from memory into f24
li x3, 0xcca2199d # load x3 with value 0xcca2199d
sw x3, 0(x2) # store 0xcca2199d in memory
flh f31, 0(x2) # load 0xcca2199d from memory into f31
fmul.h f15, f24, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
