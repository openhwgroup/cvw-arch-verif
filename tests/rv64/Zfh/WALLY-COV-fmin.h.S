///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fmin.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.148049
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
fmin.h f30, f8, f26 # perform first operation
fmin.h f22, f30, f20 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmin.h f20, f29, f26 # perform first operation
fmin.h f5, f8, f20 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmin.h f29, f10, f23 # perform first operation
fmin.h f29, f22, f15 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmin.h f30, f16, f28 # perform first operation
fmin.h f30, f25, f29 # perform second operation

# Testcase cmp_gpr_hazard war test
fmin.h f14, f24, f16 # perform first operation
fmin.h f24, f14, f4 # perform second operation

# Testcase cmp_gpr_hazard war test
fmin.h f7, f8, f3 # perform first operation
fmin.h f3, f26, f24 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xb9faf306e375a5e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56b8b74508ad4edf # load x3 with value 0x56b8b74508ad4edf
sw x3, 0(x2) # store 0x56b8b74508ad4edf in memory
flh f0, 0(x2) # load 0x56b8b74508ad4edf from memory into f0
li x3, 0x40460b935ce198d6 # load x3 with value 0x40460b935ce198d6
sw x3, 0(x2) # store 0x40460b935ce198d6 in memory
flh f11, 0(x2) # load 0x40460b935ce198d6 from memory into f11
fmin.h f0, f0, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x865c95daf4aa05bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d6efe3c3b7b4de0 # load x3 with value 0x1d6efe3c3b7b4de0
sw x3, 0(x2) # store 0x1d6efe3c3b7b4de0 in memory
flh f1, 0(x2) # load 0x1d6efe3c3b7b4de0 from memory into f1
li x3, 0x3bbf538e31c4bca2 # load x3 with value 0x3bbf538e31c4bca2
sw x3, 0(x2) # store 0x3bbf538e31c4bca2 in memory
flh f9, 0(x2) # load 0x3bbf538e31c4bca2 from memory into f9
fmin.h f1, f1, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x5b65403618d8aaeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed7f66a3566941c7 # load x3 with value 0xed7f66a3566941c7
sw x3, 0(x2) # store 0xed7f66a3566941c7 in memory
flh f2, 0(x2) # load 0xed7f66a3566941c7 from memory into f2
li x3, 0xf5ab435e1f98dcb9 # load x3 with value 0xf5ab435e1f98dcb9
sw x3, 0(x2) # store 0xf5ab435e1f98dcb9 in memory
flh f26, 0(x2) # load 0xf5ab435e1f98dcb9 from memory into f26
fmin.h f2, f2, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xba99ac15c69d4ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62fbf79cc4b74f25 # load x3 with value 0x62fbf79cc4b74f25
sw x3, 0(x2) # store 0x62fbf79cc4b74f25 in memory
flh f3, 0(x2) # load 0x62fbf79cc4b74f25 from memory into f3
li x3, 0x599be715ad318304 # load x3 with value 0x599be715ad318304
sw x3, 0(x2) # store 0x599be715ad318304 in memory
flh f19, 0(x2) # load 0x599be715ad318304 from memory into f19
fmin.h f3, f3, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xf9527f3d1f483783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b04d0e958587507 # load x3 with value 0x8b04d0e958587507
sw x3, 0(x2) # store 0x8b04d0e958587507 in memory
flh f4, 0(x2) # load 0x8b04d0e958587507 from memory into f4
li x3, 0xefc75e15ad54ef17 # load x3 with value 0xefc75e15ad54ef17
sw x3, 0(x2) # store 0xefc75e15ad54ef17 in memory
flh f14, 0(x2) # load 0xefc75e15ad54ef17 from memory into f14
fmin.h f4, f4, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xdcecc52dbad681ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9173c906aa06fe79 # load x3 with value 0x9173c906aa06fe79
sw x3, 0(x2) # store 0x9173c906aa06fe79 in memory
flh f5, 0(x2) # load 0x9173c906aa06fe79 from memory into f5
li x3, 0x30d441e2c0800362 # load x3 with value 0x30d441e2c0800362
sw x3, 0(x2) # store 0x30d441e2c0800362 in memory
flh f27, 0(x2) # load 0x30d441e2c0800362 from memory into f27
fmin.h f5, f5, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x137b62759f4c47d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x397fb980e07f3a50 # load x3 with value 0x397fb980e07f3a50
sw x3, 0(x2) # store 0x397fb980e07f3a50 in memory
flh f6, 0(x2) # load 0x397fb980e07f3a50 from memory into f6
li x3, 0x24532d2b51fde09e # load x3 with value 0x24532d2b51fde09e
sw x3, 0(x2) # store 0x24532d2b51fde09e in memory
flh f4, 0(x2) # load 0x24532d2b51fde09e from memory into f4
fmin.h f6, f6, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xef5b52e6e7b9ee77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6332d244de29801 # load x3 with value 0xb6332d244de29801
sw x3, 0(x2) # store 0xb6332d244de29801 in memory
flh f7, 0(x2) # load 0xb6332d244de29801 from memory into f7
li x3, 0xd308020efcc9b2c # load x3 with value 0xd308020efcc9b2c
sw x3, 0(x2) # store 0xd308020efcc9b2c in memory
flh f27, 0(x2) # load 0xd308020efcc9b2c from memory into f27
fmin.h f7, f7, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x7a4452bc69011d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d5aa3c779b244e1 # load x3 with value 0x2d5aa3c779b244e1
sw x3, 0(x2) # store 0x2d5aa3c779b244e1 in memory
flh f8, 0(x2) # load 0x2d5aa3c779b244e1 from memory into f8
li x3, 0x8c77d14417928286 # load x3 with value 0x8c77d14417928286
sw x3, 0(x2) # store 0x8c77d14417928286 in memory
flh f20, 0(x2) # load 0x8c77d14417928286 from memory into f20
fmin.h f8, f8, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xc623c1f85fbf1f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7a5223040fbc4d0 # load x3 with value 0xe7a5223040fbc4d0
sw x3, 0(x2) # store 0xe7a5223040fbc4d0 in memory
flh f9, 0(x2) # load 0xe7a5223040fbc4d0 from memory into f9
li x3, 0xc8a4313ba39415df # load x3 with value 0xc8a4313ba39415df
sw x3, 0(x2) # store 0xc8a4313ba39415df in memory
flh f11, 0(x2) # load 0xc8a4313ba39415df from memory into f11
fmin.h f9, f9, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xf0259cf257071158 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda35a977335f49d0 # load x3 with value 0xda35a977335f49d0
sw x3, 0(x2) # store 0xda35a977335f49d0 in memory
flh f10, 0(x2) # load 0xda35a977335f49d0 from memory into f10
li x3, 0xa6889a1161f1e6c4 # load x3 with value 0xa6889a1161f1e6c4
sw x3, 0(x2) # store 0xa6889a1161f1e6c4 in memory
flh f22, 0(x2) # load 0xa6889a1161f1e6c4 from memory into f22
fmin.h f10, f10, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x7f40892038932efc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99088105e720b02 # load x3 with value 0x99088105e720b02
sw x3, 0(x2) # store 0x99088105e720b02 in memory
flh f11, 0(x2) # load 0x99088105e720b02 from memory into f11
li x3, 0xfe7504bbb3ce084f # load x3 with value 0xfe7504bbb3ce084f
sw x3, 0(x2) # store 0xfe7504bbb3ce084f in memory
flh f17, 0(x2) # load 0xfe7504bbb3ce084f from memory into f17
fmin.h f11, f11, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xffbb8974d68c5bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74f1488e0aa434f8 # load x3 with value 0x74f1488e0aa434f8
sw x3, 0(x2) # store 0x74f1488e0aa434f8 in memory
flh f12, 0(x2) # load 0x74f1488e0aa434f8 from memory into f12
li x3, 0xb04598e7f2b71b7e # load x3 with value 0xb04598e7f2b71b7e
sw x3, 0(x2) # store 0xb04598e7f2b71b7e in memory
flh f20, 0(x2) # load 0xb04598e7f2b71b7e from memory into f20
fmin.h f12, f12, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xb9ddb280b970370f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbab030670c0a7468 # load x3 with value 0xbab030670c0a7468
sw x3, 0(x2) # store 0xbab030670c0a7468 in memory
flh f13, 0(x2) # load 0xbab030670c0a7468 from memory into f13
li x3, 0xa5e3e32c399901d9 # load x3 with value 0xa5e3e32c399901d9
sw x3, 0(x2) # store 0xa5e3e32c399901d9 in memory
flh f2, 0(x2) # load 0xa5e3e32c399901d9 from memory into f2
fmin.h f13, f13, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xcd92f3fc0ca4d53b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb2ab49d63e52e18 # load x3 with value 0xfb2ab49d63e52e18
sw x3, 0(x2) # store 0xfb2ab49d63e52e18 in memory
flh f14, 0(x2) # load 0xfb2ab49d63e52e18 from memory into f14
li x3, 0x996ad34e5a7378e2 # load x3 with value 0x996ad34e5a7378e2
sw x3, 0(x2) # store 0x996ad34e5a7378e2 in memory
flh f26, 0(x2) # load 0x996ad34e5a7378e2 from memory into f26
fmin.h f14, f14, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x621cd1ee88115edb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae3eec6b37973403 # load x3 with value 0xae3eec6b37973403
sw x3, 0(x2) # store 0xae3eec6b37973403 in memory
flh f15, 0(x2) # load 0xae3eec6b37973403 from memory into f15
li x3, 0xaba7350e9d82cdc5 # load x3 with value 0xaba7350e9d82cdc5
sw x3, 0(x2) # store 0xaba7350e9d82cdc5 in memory
flh f2, 0(x2) # load 0xaba7350e9d82cdc5 from memory into f2
fmin.h f15, f15, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xb86eb471a4567ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59011d5bb11b1fd1 # load x3 with value 0x59011d5bb11b1fd1
sw x3, 0(x2) # store 0x59011d5bb11b1fd1 in memory
flh f16, 0(x2) # load 0x59011d5bb11b1fd1 from memory into f16
li x3, 0x188bbe5f7d521a7a # load x3 with value 0x188bbe5f7d521a7a
sw x3, 0(x2) # store 0x188bbe5f7d521a7a in memory
flh f30, 0(x2) # load 0x188bbe5f7d521a7a from memory into f30
fmin.h f16, f16, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xe353773744deb62a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed738258434fc443 # load x3 with value 0xed738258434fc443
sw x3, 0(x2) # store 0xed738258434fc443 in memory
flh f17, 0(x2) # load 0xed738258434fc443 from memory into f17
li x3, 0xaf0e67ea3bc251d1 # load x3 with value 0xaf0e67ea3bc251d1
sw x3, 0(x2) # store 0xaf0e67ea3bc251d1 in memory
flh f8, 0(x2) # load 0xaf0e67ea3bc251d1 from memory into f8
fmin.h f17, f17, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xfb9a8a087843313e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8ed8d377e1be9f9 # load x3 with value 0xb8ed8d377e1be9f9
sw x3, 0(x2) # store 0xb8ed8d377e1be9f9 in memory
flh f18, 0(x2) # load 0xb8ed8d377e1be9f9 from memory into f18
li x3, 0x8f27565347560141 # load x3 with value 0x8f27565347560141
sw x3, 0(x2) # store 0x8f27565347560141 in memory
flh f18, 0(x2) # load 0x8f27565347560141 from memory into f18
fmin.h f18, f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xb50f515061523bb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52488ef18a9e1ba5 # load x3 with value 0x52488ef18a9e1ba5
sw x3, 0(x2) # store 0x52488ef18a9e1ba5 in memory
flh f19, 0(x2) # load 0x52488ef18a9e1ba5 from memory into f19
li x3, 0x4e58a033595492ce # load x3 with value 0x4e58a033595492ce
sw x3, 0(x2) # store 0x4e58a033595492ce in memory
flh f14, 0(x2) # load 0x4e58a033595492ce from memory into f14
fmin.h f19, f19, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x0879b65d4491877c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c71b31dd2cfdc # load x3 with value 0x6c71b31dd2cfdc
sw x3, 0(x2) # store 0x6c71b31dd2cfdc in memory
flh f20, 0(x2) # load 0x6c71b31dd2cfdc from memory into f20
li x3, 0xa997fa1544947684 # load x3 with value 0xa997fa1544947684
sw x3, 0(x2) # store 0xa997fa1544947684 in memory
flh f16, 0(x2) # load 0xa997fa1544947684 from memory into f16
fmin.h f20, f20, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xd723241e6e65ff39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43d3e9e7f5a9b6b1 # load x3 with value 0x43d3e9e7f5a9b6b1
sw x3, 0(x2) # store 0x43d3e9e7f5a9b6b1 in memory
flh f21, 0(x2) # load 0x43d3e9e7f5a9b6b1 from memory into f21
li x3, 0x4ad3b45766b6cdc4 # load x3 with value 0x4ad3b45766b6cdc4
sw x3, 0(x2) # store 0x4ad3b45766b6cdc4 in memory
flh f18, 0(x2) # load 0x4ad3b45766b6cdc4 from memory into f18
fmin.h f21, f21, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x93f9c137d9e02749 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9a289054aee308c # load x3 with value 0xd9a289054aee308c
sw x3, 0(x2) # store 0xd9a289054aee308c in memory
flh f22, 0(x2) # load 0xd9a289054aee308c from memory into f22
li x3, 0xffe357c332b512f6 # load x3 with value 0xffe357c332b512f6
sw x3, 0(x2) # store 0xffe357c332b512f6 in memory
flh f15, 0(x2) # load 0xffe357c332b512f6 from memory into f15
fmin.h f22, f22, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x8b240e6e75e25510 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb44aec9a97c83ef1 # load x3 with value 0xb44aec9a97c83ef1
sw x3, 0(x2) # store 0xb44aec9a97c83ef1 in memory
flh f23, 0(x2) # load 0xb44aec9a97c83ef1 from memory into f23
li x3, 0xe155ee755f484b6d # load x3 with value 0xe155ee755f484b6d
sw x3, 0(x2) # store 0xe155ee755f484b6d in memory
flh f6, 0(x2) # load 0xe155ee755f484b6d from memory into f6
fmin.h f23, f23, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xd5de5b79978946b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4234d3840f8fc862 # load x3 with value 0x4234d3840f8fc862
sw x3, 0(x2) # store 0x4234d3840f8fc862 in memory
flh f24, 0(x2) # load 0x4234d3840f8fc862 from memory into f24
li x3, 0xbaac3d8db53c4ca # load x3 with value 0xbaac3d8db53c4ca
sw x3, 0(x2) # store 0xbaac3d8db53c4ca in memory
flh f11, 0(x2) # load 0xbaac3d8db53c4ca from memory into f11
fmin.h f24, f24, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xe2c4d24e6d592769 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe52e10c89d3844b4 # load x3 with value 0xe52e10c89d3844b4
sw x3, 0(x2) # store 0xe52e10c89d3844b4 in memory
flh f25, 0(x2) # load 0xe52e10c89d3844b4 from memory into f25
li x3, 0xc89970ba568ce884 # load x3 with value 0xc89970ba568ce884
sw x3, 0(x2) # store 0xc89970ba568ce884 in memory
flh f4, 0(x2) # load 0xc89970ba568ce884 from memory into f4
fmin.h f25, f25, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xdcf7c49cd859d815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f9da4b02221fecf # load x3 with value 0x2f9da4b02221fecf
sw x3, 0(x2) # store 0x2f9da4b02221fecf in memory
flh f26, 0(x2) # load 0x2f9da4b02221fecf from memory into f26
li x3, 0x3ac3e3fb4ea52ba4 # load x3 with value 0x3ac3e3fb4ea52ba4
sw x3, 0(x2) # store 0x3ac3e3fb4ea52ba4 in memory
flh f16, 0(x2) # load 0x3ac3e3fb4ea52ba4 from memory into f16
fmin.h f26, f26, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xc7c4dd2405764e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4fa8410477bdb1e8 # load x3 with value 0x4fa8410477bdb1e8
sw x3, 0(x2) # store 0x4fa8410477bdb1e8 in memory
flh f27, 0(x2) # load 0x4fa8410477bdb1e8 from memory into f27
li x3, 0x920b287e03241be2 # load x3 with value 0x920b287e03241be2
sw x3, 0(x2) # store 0x920b287e03241be2 in memory
flh f19, 0(x2) # load 0x920b287e03241be2 from memory into f19
fmin.h f27, f27, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xc67260a713f7c53a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe91d119041ec4691 # load x3 with value 0xe91d119041ec4691
sw x3, 0(x2) # store 0xe91d119041ec4691 in memory
flh f28, 0(x2) # load 0xe91d119041ec4691 from memory into f28
li x3, 0xcf1f413daf91a8a5 # load x3 with value 0xcf1f413daf91a8a5
sw x3, 0(x2) # store 0xcf1f413daf91a8a5 in memory
flh f26, 0(x2) # load 0xcf1f413daf91a8a5 from memory into f26
fmin.h f28, f28, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xacc7ab9fdee12c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e58d336a05db423 # load x3 with value 0x2e58d336a05db423
sw x3, 0(x2) # store 0x2e58d336a05db423 in memory
flh f29, 0(x2) # load 0x2e58d336a05db423 from memory into f29
li x3, 0x92491ce320c12a65 # load x3 with value 0x92491ce320c12a65
sw x3, 0(x2) # store 0x92491ce320c12a65 in memory
flh f24, 0(x2) # load 0x92491ce320c12a65 from memory into f24
fmin.h f29, f29, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x739fcc5ff6a426f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49b3619942e0e1e6 # load x3 with value 0x49b3619942e0e1e6
sw x3, 0(x2) # store 0x49b3619942e0e1e6 in memory
flh f30, 0(x2) # load 0x49b3619942e0e1e6 from memory into f30
li x3, 0x818fb1de49b8df0b # load x3 with value 0x818fb1de49b8df0b
sw x3, 0(x2) # store 0x818fb1de49b8df0b in memory
flh f31, 0(x2) # load 0x818fb1de49b8df0b from memory into f31
fmin.h f30, f30, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x842ccad4bf4b0128 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4bc1f5565206ee # load x3 with value 0xa4bc1f5565206ee
sw x3, 0(x2) # store 0xa4bc1f5565206ee in memory
flh f31, 0(x2) # load 0xa4bc1f5565206ee from memory into f31
li x3, 0xe4785d41d93fbe6d # load x3 with value 0xe4785d41d93fbe6d
sw x3, 0(x2) # store 0xe4785d41d93fbe6d in memory
flh f24, 0(x2) # load 0xe4785d41d93fbe6d from memory into f24
fmin.h f31, f31, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x6b6d13c37556fa10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4d8c6c5c2441cfc # load x3 with value 0xb4d8c6c5c2441cfc
sw x3, 0(x2) # store 0xb4d8c6c5c2441cfc in memory
flh f8, 0(x2) # load 0xb4d8c6c5c2441cfc from memory into f8
li x3, 0x5032b08e80aedfbf # load x3 with value 0x5032b08e80aedfbf
sw x3, 0(x2) # store 0x5032b08e80aedfbf in memory
flh f0, 0(x2) # load 0x5032b08e80aedfbf from memory into f0
fmin.h f0, f8, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x552ce1cfb8d41507 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2c4562e15f9327d # load x3 with value 0xd2c4562e15f9327d
sw x3, 0(x2) # store 0xd2c4562e15f9327d in memory
flh f17, 0(x2) # load 0xd2c4562e15f9327d from memory into f17
li x3, 0xf8bbfef06480ce86 # load x3 with value 0xf8bbfef06480ce86
sw x3, 0(x2) # store 0xf8bbfef06480ce86 in memory
flh f1, 0(x2) # load 0xf8bbfef06480ce86 from memory into f1
fmin.h f1, f17, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x10b46b56457ba6f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28f98895c7b3caca # load x3 with value 0x28f98895c7b3caca
sw x3, 0(x2) # store 0x28f98895c7b3caca in memory
flh f16, 0(x2) # load 0x28f98895c7b3caca from memory into f16
li x3, 0x937709e7e272e567 # load x3 with value 0x937709e7e272e567
sw x3, 0(x2) # store 0x937709e7e272e567 in memory
flh f2, 0(x2) # load 0x937709e7e272e567 from memory into f2
fmin.h f2, f16, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xa06fc87a8f635deb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b8fff8009d31392 # load x3 with value 0x1b8fff8009d31392
sw x3, 0(x2) # store 0x1b8fff8009d31392 in memory
flh f8, 0(x2) # load 0x1b8fff8009d31392 from memory into f8
li x3, 0x5eec16c8d1815446 # load x3 with value 0x5eec16c8d1815446
sw x3, 0(x2) # store 0x5eec16c8d1815446 in memory
flh f3, 0(x2) # load 0x5eec16c8d1815446 from memory into f3
fmin.h f3, f8, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x8c8a54cacf181fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ba478d29fcf47ba # load x3 with value 0x7ba478d29fcf47ba
sw x3, 0(x2) # store 0x7ba478d29fcf47ba in memory
flh f17, 0(x2) # load 0x7ba478d29fcf47ba from memory into f17
li x3, 0xcc2be72559583bea # load x3 with value 0xcc2be72559583bea
sw x3, 0(x2) # store 0xcc2be72559583bea in memory
flh f4, 0(x2) # load 0xcc2be72559583bea from memory into f4
fmin.h f4, f17, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x9966b5a190ba23cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a767f9448291851 # load x3 with value 0x5a767f9448291851
sw x3, 0(x2) # store 0x5a767f9448291851 in memory
flh f27, 0(x2) # load 0x5a767f9448291851 from memory into f27
li x3, 0xf8982830d920403c # load x3 with value 0xf8982830d920403c
sw x3, 0(x2) # store 0xf8982830d920403c in memory
flh f5, 0(x2) # load 0xf8982830d920403c from memory into f5
fmin.h f5, f27, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x29da2e67cca4c5c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa91256720da801fc # load x3 with value 0xa91256720da801fc
sw x3, 0(x2) # store 0xa91256720da801fc in memory
flh f12, 0(x2) # load 0xa91256720da801fc from memory into f12
li x3, 0x8e8daf763d63fea3 # load x3 with value 0x8e8daf763d63fea3
sw x3, 0(x2) # store 0x8e8daf763d63fea3 in memory
flh f6, 0(x2) # load 0x8e8daf763d63fea3 from memory into f6
fmin.h f6, f12, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xa2c22c2feacd2f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cbd30423f3e44e5 # load x3 with value 0x5cbd30423f3e44e5
sw x3, 0(x2) # store 0x5cbd30423f3e44e5 in memory
flh f22, 0(x2) # load 0x5cbd30423f3e44e5 from memory into f22
li x3, 0x6501b9d345355e07 # load x3 with value 0x6501b9d345355e07
sw x3, 0(x2) # store 0x6501b9d345355e07 in memory
flh f7, 0(x2) # load 0x6501b9d345355e07 from memory into f7
fmin.h f7, f22, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x0b426ca9be04b17d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4afaf3ebfbbd6972 # load x3 with value 0x4afaf3ebfbbd6972
sw x3, 0(x2) # store 0x4afaf3ebfbbd6972 in memory
flh f1, 0(x2) # load 0x4afaf3ebfbbd6972 from memory into f1
li x3, 0x7d97e116acc90f8f # load x3 with value 0x7d97e116acc90f8f
sw x3, 0(x2) # store 0x7d97e116acc90f8f in memory
flh f8, 0(x2) # load 0x7d97e116acc90f8f from memory into f8
fmin.h f8, f1, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x2c33dbe6bdb37ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba64afb2886bd7d4 # load x3 with value 0xba64afb2886bd7d4
sw x3, 0(x2) # store 0xba64afb2886bd7d4 in memory
flh f5, 0(x2) # load 0xba64afb2886bd7d4 from memory into f5
li x3, 0xfdec384af43f9249 # load x3 with value 0xfdec384af43f9249
sw x3, 0(x2) # store 0xfdec384af43f9249 in memory
flh f9, 0(x2) # load 0xfdec384af43f9249 from memory into f9
fmin.h f9, f5, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xbdad8a04ede5ce26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4faa1d9b2dbc96a2 # load x3 with value 0x4faa1d9b2dbc96a2
sw x3, 0(x2) # store 0x4faa1d9b2dbc96a2 in memory
flh f31, 0(x2) # load 0x4faa1d9b2dbc96a2 from memory into f31
li x3, 0xf55762c51236f95c # load x3 with value 0xf55762c51236f95c
sw x3, 0(x2) # store 0xf55762c51236f95c in memory
flh f10, 0(x2) # load 0xf55762c51236f95c from memory into f10
fmin.h f10, f31, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x602ad204295258a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebbdef11908a9585 # load x3 with value 0xebbdef11908a9585
sw x3, 0(x2) # store 0xebbdef11908a9585 in memory
flh f18, 0(x2) # load 0xebbdef11908a9585 from memory into f18
li x3, 0x19f1ad35e812b7a5 # load x3 with value 0x19f1ad35e812b7a5
sw x3, 0(x2) # store 0x19f1ad35e812b7a5 in memory
flh f11, 0(x2) # load 0x19f1ad35e812b7a5 from memory into f11
fmin.h f11, f18, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x1e3a5e1fe1fb3ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba8787b932224500 # load x3 with value 0xba8787b932224500
sw x3, 0(x2) # store 0xba8787b932224500 in memory
flh f15, 0(x2) # load 0xba8787b932224500 from memory into f15
li x3, 0x6d64b55a6b4b3ac0 # load x3 with value 0x6d64b55a6b4b3ac0
sw x3, 0(x2) # store 0x6d64b55a6b4b3ac0 in memory
flh f12, 0(x2) # load 0x6d64b55a6b4b3ac0 from memory into f12
fmin.h f12, f15, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xf9a887c3a1092b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f5e38a83d6df43c # load x3 with value 0x2f5e38a83d6df43c
sw x3, 0(x2) # store 0x2f5e38a83d6df43c in memory
flh f29, 0(x2) # load 0x2f5e38a83d6df43c from memory into f29
li x3, 0xda90f4198c70a918 # load x3 with value 0xda90f4198c70a918
sw x3, 0(x2) # store 0xda90f4198c70a918 in memory
flh f13, 0(x2) # load 0xda90f4198c70a918 from memory into f13
fmin.h f13, f29, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xb4e09911b1355d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x867d86e9315d5973 # load x3 with value 0x867d86e9315d5973
sw x3, 0(x2) # store 0x867d86e9315d5973 in memory
flh f16, 0(x2) # load 0x867d86e9315d5973 from memory into f16
li x3, 0xaf67071d8808955b # load x3 with value 0xaf67071d8808955b
sw x3, 0(x2) # store 0xaf67071d8808955b in memory
flh f14, 0(x2) # load 0xaf67071d8808955b from memory into f14
fmin.h f14, f16, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0xe74a5db23e79ac20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c42dd71fe070ca1 # load x3 with value 0x1c42dd71fe070ca1
sw x3, 0(x2) # store 0x1c42dd71fe070ca1 in memory
flh f7, 0(x2) # load 0x1c42dd71fe070ca1 from memory into f7
li x3, 0x95091d2fbe996251 # load x3 with value 0x95091d2fbe996251
sw x3, 0(x2) # store 0x95091d2fbe996251 in memory
flh f15, 0(x2) # load 0x95091d2fbe996251 from memory into f15
fmin.h f15, f7, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xe6dc2b3126efa681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e75952157b27b0b # load x3 with value 0x8e75952157b27b0b
sw x3, 0(x2) # store 0x8e75952157b27b0b in memory
flh f14, 0(x2) # load 0x8e75952157b27b0b from memory into f14
li x3, 0x23f7ff132c7f90c2 # load x3 with value 0x23f7ff132c7f90c2
sw x3, 0(x2) # store 0x23f7ff132c7f90c2 in memory
flh f16, 0(x2) # load 0x23f7ff132c7f90c2 from memory into f16
fmin.h f16, f14, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xa4527e52fede2b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a9107c6cae01447 # load x3 with value 0x2a9107c6cae01447
sw x3, 0(x2) # store 0x2a9107c6cae01447 in memory
flh f3, 0(x2) # load 0x2a9107c6cae01447 from memory into f3
li x3, 0xfb37031c62357a11 # load x3 with value 0xfb37031c62357a11
sw x3, 0(x2) # store 0xfb37031c62357a11 in memory
flh f17, 0(x2) # load 0xfb37031c62357a11 from memory into f17
fmin.h f17, f3, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x0f1bb1572c905bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x437fe30724d5a694 # load x3 with value 0x437fe30724d5a694
sw x3, 0(x2) # store 0x437fe30724d5a694 in memory
flh f14, 0(x2) # load 0x437fe30724d5a694 from memory into f14
li x3, 0xa380017a99d3c87d # load x3 with value 0xa380017a99d3c87d
sw x3, 0(x2) # store 0xa380017a99d3c87d in memory
flh f18, 0(x2) # load 0xa380017a99d3c87d from memory into f18
fmin.h f18, f14, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xdec74bd21bc7c6bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0952dd179a7cb21 # load x3 with value 0xb0952dd179a7cb21
sw x3, 0(x2) # store 0xb0952dd179a7cb21 in memory
flh f4, 0(x2) # load 0xb0952dd179a7cb21 from memory into f4
li x3, 0x8dcad0afaaf4b482 # load x3 with value 0x8dcad0afaaf4b482
sw x3, 0(x2) # store 0x8dcad0afaaf4b482 in memory
flh f19, 0(x2) # load 0x8dcad0afaaf4b482 from memory into f19
fmin.h f19, f4, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x10954e9bff3b4187 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7348f519ae3c1e9 # load x3 with value 0xd7348f519ae3c1e9
sw x3, 0(x2) # store 0xd7348f519ae3c1e9 in memory
flh f24, 0(x2) # load 0xd7348f519ae3c1e9 from memory into f24
li x3, 0xd2254be1cc796fca # load x3 with value 0xd2254be1cc796fca
sw x3, 0(x2) # store 0xd2254be1cc796fca in memory
flh f20, 0(x2) # load 0xd2254be1cc796fca from memory into f20
fmin.h f20, f24, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x1fdd3f755c85be0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfca8f656cc89e9de # load x3 with value 0xfca8f656cc89e9de
sw x3, 0(x2) # store 0xfca8f656cc89e9de in memory
flh f8, 0(x2) # load 0xfca8f656cc89e9de from memory into f8
li x3, 0xfa76a47a72fcfe5a # load x3 with value 0xfa76a47a72fcfe5a
sw x3, 0(x2) # store 0xfa76a47a72fcfe5a in memory
flh f21, 0(x2) # load 0xfa76a47a72fcfe5a from memory into f21
fmin.h f21, f8, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x1d36962ad98f835e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9cdebe01251dc69 # load x3 with value 0xc9cdebe01251dc69
sw x3, 0(x2) # store 0xc9cdebe01251dc69 in memory
flh f22, 0(x2) # load 0xc9cdebe01251dc69 from memory into f22
li x3, 0xf242e9460e7b8097 # load x3 with value 0xf242e9460e7b8097
sw x3, 0(x2) # store 0xf242e9460e7b8097 in memory
flh f22, 0(x2) # load 0xf242e9460e7b8097 from memory into f22
fmin.h f22, f22, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x4e4afa9a86e33eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28741a47d34eccaf # load x3 with value 0x28741a47d34eccaf
sw x3, 0(x2) # store 0x28741a47d34eccaf in memory
flh f21, 0(x2) # load 0x28741a47d34eccaf from memory into f21
li x3, 0xe0a96fb4f6f348ed # load x3 with value 0xe0a96fb4f6f348ed
sw x3, 0(x2) # store 0xe0a96fb4f6f348ed in memory
flh f23, 0(x2) # load 0xe0a96fb4f6f348ed from memory into f23
fmin.h f23, f21, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xded58631fb5241ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61f04902b3506b73 # load x3 with value 0x61f04902b3506b73
sw x3, 0(x2) # store 0x61f04902b3506b73 in memory
flh f15, 0(x2) # load 0x61f04902b3506b73 from memory into f15
li x3, 0x480029450e621cab # load x3 with value 0x480029450e621cab
sw x3, 0(x2) # store 0x480029450e621cab in memory
flh f24, 0(x2) # load 0x480029450e621cab from memory into f24
fmin.h f24, f15, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xac3d574fade8c3f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9073293b81d4498f # load x3 with value 0x9073293b81d4498f
sw x3, 0(x2) # store 0x9073293b81d4498f in memory
flh f29, 0(x2) # load 0x9073293b81d4498f from memory into f29
li x3, 0xc4014f8399bafdda # load x3 with value 0xc4014f8399bafdda
sw x3, 0(x2) # store 0xc4014f8399bafdda in memory
flh f25, 0(x2) # load 0xc4014f8399bafdda from memory into f25
fmin.h f25, f29, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x69c722e6b3257e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25a48af834a69eb6 # load x3 with value 0x25a48af834a69eb6
sw x3, 0(x2) # store 0x25a48af834a69eb6 in memory
flh f30, 0(x2) # load 0x25a48af834a69eb6 from memory into f30
li x3, 0x37aaab262dc01449 # load x3 with value 0x37aaab262dc01449
sw x3, 0(x2) # store 0x37aaab262dc01449 in memory
flh f26, 0(x2) # load 0x37aaab262dc01449 from memory into f26
fmin.h f26, f30, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x5151cd627a7cb93c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x221aa4f85ea8edf # load x3 with value 0x221aa4f85ea8edf
sw x3, 0(x2) # store 0x221aa4f85ea8edf in memory
flh f26, 0(x2) # load 0x221aa4f85ea8edf from memory into f26
li x3, 0xedc656e58bf34acf # load x3 with value 0xedc656e58bf34acf
sw x3, 0(x2) # store 0xedc656e58bf34acf in memory
flh f27, 0(x2) # load 0xedc656e58bf34acf from memory into f27
fmin.h f27, f26, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xe238f00414da1c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1beae6a9284973c4 # load x3 with value 0x1beae6a9284973c4
sw x3, 0(x2) # store 0x1beae6a9284973c4 in memory
flh f29, 0(x2) # load 0x1beae6a9284973c4 from memory into f29
li x3, 0x5bcfc594736530d6 # load x3 with value 0x5bcfc594736530d6
sw x3, 0(x2) # store 0x5bcfc594736530d6 in memory
flh f28, 0(x2) # load 0x5bcfc594736530d6 from memory into f28
fmin.h f28, f29, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x0f3a14bc99fe3b81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd642538b1344a437 # load x3 with value 0xd642538b1344a437
sw x3, 0(x2) # store 0xd642538b1344a437 in memory
flh f20, 0(x2) # load 0xd642538b1344a437 from memory into f20
li x3, 0xaf618eb7f67e3a01 # load x3 with value 0xaf618eb7f67e3a01
sw x3, 0(x2) # store 0xaf618eb7f67e3a01 in memory
flh f29, 0(x2) # load 0xaf618eb7f67e3a01 from memory into f29
fmin.h f29, f20, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x1e8da968a5dd300f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c582675ac4c4577 # load x3 with value 0x7c582675ac4c4577
sw x3, 0(x2) # store 0x7c582675ac4c4577 in memory
flh f22, 0(x2) # load 0x7c582675ac4c4577 from memory into f22
li x3, 0x758052ed9561a58d # load x3 with value 0x758052ed9561a58d
sw x3, 0(x2) # store 0x758052ed9561a58d in memory
flh f30, 0(x2) # load 0x758052ed9561a58d from memory into f30
fmin.h f30, f22, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x6712f5fb06d1f32a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e912cfa08d17ef0 # load x3 with value 0x9e912cfa08d17ef0
sw x3, 0(x2) # store 0x9e912cfa08d17ef0 in memory
flh f22, 0(x2) # load 0x9e912cfa08d17ef0 from memory into f22
li x3, 0x43f21f19ffc789bc # load x3 with value 0x43f21f19ffc789bc
sw x3, 0(x2) # store 0x43f21f19ffc789bc in memory
flh f31, 0(x2) # load 0x43f21f19ffc789bc from memory into f31
fmin.h f31, f22, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x14, 0x5fcc067f5b5bf755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x35a532a457122f45 # load x3 with value 0x35a532a457122f45
sw x3, 0(x2) # store 0x35a532a457122f45 in memory
flh f3, 0(x2) # load 0x35a532a457122f45 from memory into f3
fmin.h f14, f19, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x8, 0x142695da131ff654 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x4ab2f6cf16e02975 # load x3 with value 0x4ab2f6cf16e02975
sw x3, 0(x2) # store 0x4ab2f6cf16e02975 in memory
flh f9, 0(x2) # load 0x4ab2f6cf16e02975 from memory into f9
fmin.h f8, f11, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x30, 0xc77c404d4a71643e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x129366044116cb9f # load x3 with value 0x129366044116cb9f
sw x3, 0(x2) # store 0x129366044116cb9f in memory
flh f23, 0(x2) # load 0x129366044116cb9f from memory into f23
fmin.h f30, f15, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x28, 0x57395f96235a0cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0xa4a33c32eb1a5c4c # load x3 with value 0xa4a33c32eb1a5c4c
sw x3, 0(x2) # store 0xa4a33c32eb1a5c4c in memory
flh f31, 0(x2) # load 0xa4a33c32eb1a5c4c from memory into f31
fmin.h f28, f5, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x2, 0x030c5a08e0dac1db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0xcd38892c6d643ac # load x3 with value 0xcd38892c6d643ac
sw x3, 0(x2) # store 0xcd38892c6d643ac in memory
flh f24, 0(x2) # load 0xcd38892c6d643ac from memory into f24
fmin.h f2, f26, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x30, 0xc57ca3fa055d0695 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
li x3, 0xaedb1df9f72dc01e # load x3 with value 0xaedb1df9f72dc01e
sw x3, 0(x2) # store 0xaedb1df9f72dc01e in memory
flh f13, 0(x2) # load 0xaedb1df9f72dc01e from memory into f13
fmin.h f30, f24, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x26, 0xf8eee891cced4feb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
li x3, 0xa01e14b22a8cb33a # load x3 with value 0xa01e14b22a8cb33a
sw x3, 0(x2) # store 0xa01e14b22a8cb33a in memory
flh f2, 0(x2) # load 0xa01e14b22a8cb33a from memory into f2
fmin.h f26, f14, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x23, 0xabebb987c569c814 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x4607af970eaf2bed # load x3 with value 0x4607af970eaf2bed
sw x3, 0(x2) # store 0x4607af970eaf2bed in memory
flh f25, 0(x2) # load 0x4607af970eaf2bed from memory into f25
fmin.h f23, f9, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x7, 0x582ba35bbb21d1d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0xeddb758f05614f5d # load x3 with value 0xeddb758f05614f5d
sw x3, 0(x2) # store 0xeddb758f05614f5d in memory
flh f14, 0(x2) # load 0xeddb758f05614f5d from memory into f14
fmin.h f7, f24, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x25, 0xd06cedf0e47fd293 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0xfd578bfc28094ef8 # load x3 with value 0xfd578bfc28094ef8
sw x3, 0(x2) # store 0xfd578bfc28094ef8 in memory
flh f6, 0(x2) # load 0xfd578bfc28094ef8 from memory into f6
fmin.h f25, f26, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x21, 0xaecb2e023ed80cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
li x3, 0x1dc4b0e1e2c3e85f # load x3 with value 0x1dc4b0e1e2c3e85f
sw x3, 0(x2) # store 0x1dc4b0e1e2c3e85f in memory
flh f3, 0(x2) # load 0x1dc4b0e1e2c3e85f from memory into f3
fmin.h f21, f5, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x31, 0x5bc308467b1b9507 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0xfe7331086acc304f # load x3 with value 0xfe7331086acc304f
sw x3, 0(x2) # store 0xfe7331086acc304f in memory
flh f29, 0(x2) # load 0xfe7331086acc304f from memory into f29
fmin.h f31, f2, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x14, 0xb81d0d0ffe893950 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
li x3, 0x732e5ea66a5c31dd # load x3 with value 0x732e5ea66a5c31dd
sw x3, 0(x2) # store 0x732e5ea66a5c31dd in memory
flh f31, 0(x2) # load 0x732e5ea66a5c31dd from memory into f31
fmin.h f14, f29, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x19, 0x76739340feb29d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
li x3, 0xff43911bf4ba33ba # load x3 with value 0xff43911bf4ba33ba
sw x3, 0(x2) # store 0xff43911bf4ba33ba in memory
flh f10, 0(x2) # load 0xff43911bf4ba33ba from memory into f10
fmin.h f19, f7, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x31, 0x199f40480fc20a17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x721b705c486534c0 # load x3 with value 0x721b705c486534c0
sw x3, 0(x2) # store 0x721b705c486534c0 in memory
flh f8, 0(x2) # load 0x721b705c486534c0 from memory into f8
fmin.h f31, f16, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x29, 0xb6b2cc5f78216317 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0xebb55c3b7b3ae7cd # load x3 with value 0xebb55c3b7b3ae7cd
sw x3, 0(x2) # store 0xebb55c3b7b3ae7cd in memory
flh f4, 0(x2) # load 0xebb55c3b7b3ae7cd from memory into f4
fmin.h f29, f14, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x1, 0x7b75e093f48b1738 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x71d7358ab5b06028 # load x3 with value 0x71d7358ab5b06028
sw x3, 0(x2) # store 0x71d7358ab5b06028 in memory
flh f25, 0(x2) # load 0x71d7358ab5b06028 from memory into f25
fmin.h f1, f14, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x14, 0xffbbe90502cef303 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x285524f84e7e821f # load x3 with value 0x285524f84e7e821f
sw x3, 0(x2) # store 0x285524f84e7e821f in memory
flh f5, 0(x2) # load 0x285524f84e7e821f from memory into f5
fmin.h f14, f19, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x22, 0x8769e3d57a6f57a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x74e2d1ca5ab0b9ef # load x3 with value 0x74e2d1ca5ab0b9ef
sw x3, 0(x2) # store 0x74e2d1ca5ab0b9ef in memory
flh f28, 0(x2) # load 0x74e2d1ca5ab0b9ef from memory into f28
fmin.h f22, f6, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x6, 0xfbd476b651407164 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0xc3dbea29ed902a96 # load x3 with value 0xc3dbea29ed902a96
sw x3, 0(x2) # store 0xc3dbea29ed902a96 in memory
flh f20, 0(x2) # load 0xc3dbea29ed902a96 from memory into f20
fmin.h f6, f23, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x26, 0xac0ae895b315705c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x10711fab1014ae55 # load x3 with value 0x10711fab1014ae55
sw x3, 0(x2) # store 0x10711fab1014ae55 in memory
flh f6, 0(x2) # load 0x10711fab1014ae55 from memory into f6
fmin.h f26, f23, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x1, 0x4a58a92fcad87291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0xc61bccc6c684c1b7 # load x3 with value 0xc61bccc6c684c1b7
sw x3, 0(x2) # store 0xc61bccc6c684c1b7 in memory
flh f7, 0(x2) # load 0xc61bccc6c684c1b7 from memory into f7
fmin.h f1, f18, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x3, 0xf4bd65f959c12e3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
li x3, 0xe6cf6b8968d1e045 # load x3 with value 0xe6cf6b8968d1e045
sw x3, 0(x2) # store 0xe6cf6b8968d1e045 in memory
flh f2, 0(x2) # load 0xe6cf6b8968d1e045 from memory into f2
fmin.h f3, f25, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x23, 0xe886cce55fa4d0bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
li x3, 0x8d66e92e8d9dbd21 # load x3 with value 0x8d66e92e8d9dbd21
sw x3, 0(x2) # store 0x8d66e92e8d9dbd21 in memory
flh f4, 0(x2) # load 0x8d66e92e8d9dbd21 from memory into f4
fmin.h f23, f16, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x18, 0xee78abf8627c1c72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0xd711f6d134d43823 # load x3 with value 0xd711f6d134d43823
sw x3, 0(x2) # store 0xd711f6d134d43823 in memory
flh f7, 0(x2) # load 0xd711f6d134d43823 from memory into f7
fmin.h f18, f28, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x25, 0x7f102da163f0192d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x548834f01a52e29e # load x3 with value 0x548834f01a52e29e
sw x3, 0(x2) # store 0x548834f01a52e29e in memory
flh f16, 0(x2) # load 0x548834f01a52e29e from memory into f16
fmin.h f25, f28, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x29, 0xf35867edca1e0eaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf041338d5f676563 # load x3 with value 0xf041338d5f676563
sw x3, 0(x2) # store 0xf041338d5f676563 in memory
flh f3, 0(x2) # load 0xf041338d5f676563 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fmin.h f29, f3, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x20, 0xad01852b76c11f9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x939ef608154af377 # load x3 with value 0x939ef608154af377
sw x3, 0(x2) # store 0x939ef608154af377 in memory
flh f26, 0(x2) # load 0x939ef608154af377 from memory into f26
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fmin.h f20, f26, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x26, 0xd1fb5351f48293ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61cce62f7e0a3712 # load x3 with value 0x61cce62f7e0a3712
sw x3, 0(x2) # store 0x61cce62f7e0a3712 in memory
flh f22, 0(x2) # load 0x61cce62f7e0a3712 from memory into f22
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fmin.h f26, f22, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x31, 0x8baefa7c070ddf14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f3e0556a431ecb9 # load x3 with value 0x2f3e0556a431ecb9
sw x3, 0(x2) # store 0x2f3e0556a431ecb9 in memory
flh f1, 0(x2) # load 0x2f3e0556a431ecb9 from memory into f1
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fmin.h f31, f1, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x6, 0x8d47e65571ed3f10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x324e98750309a58a # load x3 with value 0x324e98750309a58a
sw x3, 0(x2) # store 0x324e98750309a58a in memory
flh f28, 0(x2) # load 0x324e98750309a58a from memory into f28
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fmin.h f6, f28, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x23, 0xa708a92a8883ced9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c3615fef747dc58 # load x3 with value 0x8c3615fef747dc58
sw x3, 0(x2) # store 0x8c3615fef747dc58 in memory
flh f24, 0(x2) # load 0x8c3615fef747dc58 from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fmin.h f23, f24, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x31, 0xb4e0ee76512f1d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13b9e1d8a354434a # load x3 with value 0x13b9e1d8a354434a
sw x3, 0(x2) # store 0x13b9e1d8a354434a in memory
flh f28, 0(x2) # load 0x13b9e1d8a354434a from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fmin.h f31, f28, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x19, 0x1725027485548962 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x237f478afbb2879a # load x3 with value 0x237f478afbb2879a
sw x3, 0(x2) # store 0x237f478afbb2879a in memory
flh f16, 0(x2) # load 0x237f478afbb2879a from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fmin.h f19, f16, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x12, 0x6dadfa975a550fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x816df948e2189c0c # load x3 with value 0x816df948e2189c0c
sw x3, 0(x2) # store 0x816df948e2189c0c in memory
flh f30, 0(x2) # load 0x816df948e2189c0c from memory into f30
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmin.h f12, f30, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x8, 0xd2287cbd6bfd620d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d3ad2ad9f73ab49 # load x3 with value 0x8d3ad2ad9f73ab49
sw x3, 0(x2) # store 0x8d3ad2ad9f73ab49 in memory
flh f31, 0(x2) # load 0x8d3ad2ad9f73ab49 from memory into f31
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fmin.h f8, f31, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x10, 0xd757528637f8fe0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1881e4d7dd5d7132 # load x3 with value 0x1881e4d7dd5d7132
sw x3, 0(x2) # store 0x1881e4d7dd5d7132 in memory
flh f21, 0(x2) # load 0x1881e4d7dd5d7132 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
fmin.h f10, f21, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x28, 0x5f4bccdab4dd29c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4de44c3a152d59d # load x3 with value 0x4de44c3a152d59d
sw x3, 0(x2) # store 0x4de44c3a152d59d in memory
flh f30, 0(x2) # load 0x4de44c3a152d59d from memory into f30
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fmin.h f28, f30, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x22, 0x9ba78f8ce218dfc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11a84b0f97d33e35 # load x3 with value 0x11a84b0f97d33e35
sw x3, 0(x2) # store 0x11a84b0f97d33e35 in memory
flh f20, 0(x2) # load 0x11a84b0f97d33e35 from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fmin.h f22, f20, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x10, 0x2449637af13a5d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x410a1aece3ef3339 # load x3 with value 0x410a1aece3ef3339
sw x3, 0(x2) # store 0x410a1aece3ef3339 in memory
flh f25, 0(x2) # load 0x410a1aece3ef3339 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fmin.h f10, f25, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x8, 0x37930303106c5205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0c824c9d21b0927 # load x3 with value 0xc0c824c9d21b0927
sw x3, 0(x2) # store 0xc0c824c9d21b0927 in memory
flh f21, 0(x2) # load 0xc0c824c9d21b0927 from memory into f21
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fmin.h f8, f21, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x27, 0x8271c07f2e9ee999 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90f731d0264bb839 # load x3 with value 0x90f731d0264bb839
sw x3, 0(x2) # store 0x90f731d0264bb839 in memory
flh f28, 0(x2) # load 0x90f731d0264bb839 from memory into f28
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmin.h f27, f28, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x22, 0x04f54075d4d7f158 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf2d93e23d6afc92 # load x3 with value 0xaf2d93e23d6afc92
sw x3, 0(x2) # store 0xaf2d93e23d6afc92 in memory
flh f2, 0(x2) # load 0xaf2d93e23d6afc92 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fmin.h f22, f2, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x31, 0xaa399640c8d8c8af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6d016f1181fb830 # load x3 with value 0xe6d016f1181fb830
sw x3, 0(x2) # store 0xe6d016f1181fb830 in memory
flh f19, 0(x2) # load 0xe6d016f1181fb830 from memory into f19
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fmin.h f31, f19, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x10, 0xb3a34fa305581a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee553ab211b89abd # load x3 with value 0xee553ab211b89abd
sw x3, 0(x2) # store 0xee553ab211b89abd in memory
flh f4, 0(x2) # load 0xee553ab211b89abd from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fmin.h f10, f4, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x2, 0x9f57e65dc37b3723 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf6a8f93c6eea297 # load x3 with value 0xaf6a8f93c6eea297
sw x3, 0(x2) # store 0xaf6a8f93c6eea297 in memory
flh f24, 0(x2) # load 0xaf6a8f93c6eea297 from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fmin.h f2, f24, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x1, 0x683c3e8ead566d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cb2da9ea131fed6 # load x3 with value 0x9cb2da9ea131fed6
sw x3, 0(x2) # store 0x9cb2da9ea131fed6 in memory
flh f8, 0(x2) # load 0x9cb2da9ea131fed6 from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fmin.h f1, f8, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x14, 0x0c0995d85e09293c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc223abe122e04072 # load x3 with value 0xc223abe122e04072
sw x3, 0(x2) # store 0xc223abe122e04072 in memory
flh f3, 0(x2) # load 0xc223abe122e04072 from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fmin.h f14, f3, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x9, 0xea5ca58eacd4d7c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2a5c3090e04b063 # load x3 with value 0xe2a5c3090e04b063
sw x3, 0(x2) # store 0xe2a5c3090e04b063 in memory
flh f11, 0(x2) # load 0xe2a5c3090e04b063 from memory into f11
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fmin.h f9, f11, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x28, 0x2d02f9b146f7de97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x300f7f89a9636c94 # load x3 with value 0x300f7f89a9636c94
sw x3, 0(x2) # store 0x300f7f89a9636c94 in memory
flh f17, 0(x2) # load 0x300f7f89a9636c94 from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmin.h f28, f17, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x28, 0xd09b738e3ffd15b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55492fe5cd3de415 # load x3 with value 0x55492fe5cd3de415
sw x3, 0(x2) # store 0x55492fe5cd3de415 in memory
flh f4, 0(x2) # load 0x55492fe5cd3de415 from memory into f4
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fmin.h f28, f4, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x7, 0x59040c60bd73ee74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5eab383ef1f8a84d # load x3 with value 0x5eab383ef1f8a84d
sw x3, 0(x2) # store 0x5eab383ef1f8a84d in memory
flh f10, 0(x2) # load 0x5eab383ef1f8a84d from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fmin.h f7, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x31, 0x711a89b4c114fabb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fmin.h f31, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x5, 0xa1a1f6d112444c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fmin.h f5, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x6, 0x5fe2245eeba0d126 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fmin.h f6, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x10, 0xd6243a41464955b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fmin.h f10, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x20, 0x982d67241d9630da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fmin.h f20, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x8, 0x146ab1018930a686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fmin.h f8, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x5, 0xaa27315b0fe5c1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fmin.h f5, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x14, 0x373a311862a38bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fmin.h f14, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x12, 0x687b5b2a8b66751a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fmin.h f12, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x7, 0x02481e73f25d38d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fmin.h f7, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x15, 0x5665dfcad69a081e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmin.h f15, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x20, 0xba7808b96fd6ecd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fmin.h f20, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x19, 0x0455510cd7f04245 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmin.h f19, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x12, 0xa1fa1783983c5269 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fmin.h f12, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x19, 0xb3d20cabba83e613 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fmin.h f19, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x13, 0x22a44b14f41f0eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmin.h f13, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x24, 0xc1903c2bda652d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fmin.h f24, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x13, 0xb55c9ceb7837a3f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fmin.h f13, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x15, 0xe6288239a0d365c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fmin.h f15, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x29, 0x40a263de1f312e06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fmin.h f29, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x19, 0x375b16c59a324e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fmin.h f19, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x12, 0xe41e566a8079fb93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fmin.h f12, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x17, 0x149cc1c5a7dbc6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fmin.h f17, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x30, 0x903b89ab5cc321ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fmin.h f30, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x8, 0x9b6c6793eb1ede49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fmin.h f8, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x10, 0x73292ceeb434f6ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fmin.h f10, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x19, 0x1ab04aa640e7558f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fmin.h f19, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x11, 0x57708620c02852ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmin.h f11, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x17, 0xaaf57e753dd35ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fmin.h f17, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x6, 0x83d3f93d378f96ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fmin.h f6, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x24, 0x6a8ebef0fddc4fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmin.h f24, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x27, 0x7cc030973cc2c2df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fmin.h f27, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x1, 0x2c2ed9d69ba9178b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fmin.h f1, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x11, 0x9eb97207cc7b5759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fmin.h f11, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x10, 0x3bb3d6dae24760ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fmin.h f10, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x30, 0xf3abc03d399fe8da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fmin.h f30, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x1, 0x323442a5d452bf05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fmin.h f1, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x15, 0x91b3b39e28f10d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmin.h f15, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x20, 0x314133f6fb69617c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fmin.h f20, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x9, 0x0d33840bb4480e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fmin.h f9, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x29, 0xd0ce1910589aeee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fmin.h f29, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x4, 0xce50794759160582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fmin.h f4, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x26, 0x53a70d70a83c45c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fmin.h f26, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x12, 0x49900fb1a819d76c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
fmin.h f12, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x6, 0x7a1466c09120cbdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
fmin.h f6, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x28, 0x3c22e02b921300e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fmin.h f28, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x27, 0xa11f4261b595b6d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmin.h f27, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x26, 0x3e111c157678436b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fmin.h f26, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x16, 0xc2340f6413c2be45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fmin.h f16, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x23, 0xf093d054aacbafb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fmin.h f23, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x13, 0x43c1464cf2716ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fmin.h f13, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x7, 0x44f9cf45a74b8c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fmin.h f7, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x3, 0x91678a214f697ad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
fmin.h f3, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x8, 0x3180add5a31cfb26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fmin.h f8, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x25, 0xf347fa44f3036b88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fmin.h f25, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x15, 0xc3976c833477bcfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fmin.h f15, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x18, 0xd03464b29c082743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fmin.h f18, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x3, 0x4613e9dfeb2e918f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fmin.h f3, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x31, 0xb158048a0ee54faa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fmin.h f31, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x10, 0x0e17a455ee48e762 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fmin.h f10, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x19, 0xf3bad4f9e914883e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmin.h f19, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x30, 0x337f8d1b36261606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fmin.h f30, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x30, 0x85d1de3d0ea10522 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fmin.h f30, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x20, 0xcb21a23c30915f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fmin.h f20, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x13, 0x35bf88db0bf3c7bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fmin.h f13, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x4, 0x303be4df353f5edd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fmin.h f4, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x25, 0x6f57bca49a9dab10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fmin.h f25, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x25, 0x7705d7457bafa0e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fmin.h f25, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x16, 0xb4a187b67b49b89b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fmin.h f16, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x21, 0x1802c20e6ceaef5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fmin.h f21, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x13, 0x60a65cf4c2cac371 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fmin.h f13, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x11, 0xdf3f17c30f81b8ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fmin.h f11, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x24, 0xfed6ac19aae21865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fmin.h f24, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x17, 0xc077b7f21dcab079 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fmin.h f17, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x29, 0x60c02af6456d9a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmin.h f29, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x10, 0xbf0e02641be41618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmin.h f10, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x12, 0xfaca8aa969036829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmin.h f12, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x23, 0x315335132694a6e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fmin.h f23, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x2, 0x7c4775ed6275ec0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fmin.h f2, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x24, 0xc51e0e1a99a02109 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmin.h f24, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x2, 0x1a59cfc7741cef2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fmin.h f2, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x25, 0x27123f4112c12d6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fmin.h f25, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x25, 0x9fe13e184e7da2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fmin.h f25, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x16, 0x1076f97ad79faf00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmin.h f16, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x19, 0x81f695ec4322d75c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fmin.h f19, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x26, 0x473ccae9a06e1212 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fmin.h f26, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x5, 0xcf2211ca57a16f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fmin.h f5, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x17, 0x40817119b564dd19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fmin.h f17, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x28, 0x02ca5ff2848fb1e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fmin.h f28, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x28, 0xd5cb9c3ec80f9bed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fmin.h f28, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x13, 0x0cd5dda078804556 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fmin.h f13, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x29, 0x16eabb5710797c58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fmin.h f29, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x15, 0x8b8c1d55fe1870d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fmin.h f15, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x17, 0x1b6f453db8c22ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmin.h f17, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x5, 0xb96637e877ffeee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fmin.h f5, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x1, 0x2f99939e694fbb55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fmin.h f1, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x29, 0x246b257ada43d5f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmin.h f29, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x12, 0xfa1c0c5cc762f69a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fmin.h f12, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x11, 0xfb2fb4f2ced64dca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fmin.h f11, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x22, 0x67366cc7b1666077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmin.h f22, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x2, 0xa757e32752f19c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fmin.h f2, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x2, 0x312b0967118ab578 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fmin.h f2, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x21, 0x9f8311461b963f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fmin.h f21, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x13, 0x16fd704dab94f2bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmin.h f13, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x22, 0x810e0f18fdc4a5cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fmin.h f22, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x15, 0xd9bab520673f5abb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fmin.h f15, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x17, 0x01e6b8f15f5503b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fmin.h f17, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x9, 0xab6083152ad4c8ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmin.h f9, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x23, 0x92f672d3d6b668bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fmin.h f23, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x10, 0xe000e9537ca85df8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fmin.h f10, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x9, 0x5948747ce27e01c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fmin.h f9, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x16, 0x9c54a826d555e32b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fmin.h f16, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x7, 0xc2602d6cbb80edfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fmin.h f7, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x14, 0x84566fea216bf1d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fmin.h f14, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x13, 0x08f8f03a4db0b375 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmin.h f13, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x29, 0x7dc5186454370b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fmin.h f29, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x8, 0x464a8002c22ea82c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fmin.h f8, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x31, 0x615c7e5451c7f0d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fmin.h f31, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x8, 0xce9f4fe07326aed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fmin.h f8, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x15, 0xa6bc2468b4a25309 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
fmin.h f15, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x19, 0x829c8ef0a3e4aa56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fmin.h f19, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x23, 0x030a491fc42005e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fmin.h f23, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x7, 0xdbfb61ce2cdaeec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fmin.h f7, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x10, 0xe00e8fc2921850df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fmin.h f10, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x29, 0x992b51f1f3e9b0e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fmin.h f29, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x9, 0x3c71cdf0b830a908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fmin.h f9, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x17, 0xc8ba18af2703cb58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fmin.h f17, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x17, 0xfffc6db7dafff63d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
fmin.h f17, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x30, 0x19028ea4a0f82f75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmin.h f30, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x1, 0xbbefc59be1cc0f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmin.h f1, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x20, 0x7e6ccef56f67e257 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fmin.h f20, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x6, 0x34a67191e7464ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fmin.h f6, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x3, 0x292ba10d24c7b28c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmin.h f3, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x8, 0x03f937d65dc0d7f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fmin.h f8, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x20, 0x755deacc7c91b7cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fmin.h f20, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x24, 0x109dcac2b476aa50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fmin.h f24, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x30, 0x0213cff1e864152f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fmin.h f30, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x17, 0x7f407c09cab6e786 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fmin.h f17, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x6, 0x6822bd52bb91286f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fmin.h f6, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x31, 0x6ed014e11ba7af49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fmin.h f31, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x12, 0x52302191fd8a8e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmin.h f12, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x20, 0x5d58603437ae4535 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fmin.h f20, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x11, 0x15978b62058151c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fmin.h f11, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x15, 0x6b5de55518831fce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fmin.h f15, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x4, 0x28a151404f30356c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fmin.h f4, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x26, 0xe0c48899c15ec1c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fmin.h f26, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x31, 0x778ca896d9cfde9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fmin.h f31, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x6, 0x80cf3cac3af8b57d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fmin.h f6, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x26, 0x3ed514f95a728945 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fmin.h f26, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x1, 0xc778874fe2ed592d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fmin.h f1, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x12, 0x178c306aefa25e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fmin.h f12, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x8, 0x8aeea5deaf83c288 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fmin.h f8, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x11, 0xb7ddbd58594d9464 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fmin.h f11, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x10, 0x899d0a42abfbdf1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fmin.h f10, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x12, 0xfe1a73690deb0c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fmin.h f12, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x21, 0x986650703f9f434b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fmin.h f21, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x29, 0xc53491dc7e8d2772 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fmin.h f29, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x25, 0xd4a6c136576a61dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fmin.h f25, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x16, 0xc881f2c7e8777385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fmin.h f16, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x29, 0x38361307ac5d165d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fmin.h f29, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x11, 0xd4a352fd8ba551eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fmin.h f11, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x12, 0xac2fdb4101444b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fmin.h f12, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x23, 0xfceb6a3924405b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fmin.h f23, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x25, 0x2eee8a60f1dabbdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fmin.h f25, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x11, 0x30b18b90a2669b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fmin.h f11, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x31, 0x83149d28e7406f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fmin.h f31, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x13, 0xf0c49d97e3e8d430 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fmin.h f13, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x27, 0x78c2fd0b62d965d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fmin.h f27, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x5, 0x22c0964928e45cae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmin.h f5, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x26, 0x526c801c23c42aaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fmin.h f26, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x11, 0xf1d38506f5f09d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmin.h f11, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x22, 0x9c95b310f9e75eab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fmin.h f22, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x7, 0x30775f794670b2ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fmin.h f7, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x25, 0xa5ffe42c5089d260 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fmin.h f25, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x25, 0x2894c72c5734a324 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmin.h f25, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x5, 0x56a9e2a7f9819b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fmin.h f5, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x8, 0x8339c312e9712e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fmin.h f8, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x25, 0x20541e07c070708d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fmin.h f25, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x19, 0x80014dd511121962 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fmin.h f19, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x11, 0x61d98580bb00f0c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fmin.h f11, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x25, 0xaea954b09235dd4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fmin.h f25, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x20, 0x7a1932bd779381c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fmin.h f20, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x8, 0xafbb645ce8d61721 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fmin.h f8, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x10, 0x419c2d12386f11c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fmin.h f10, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x9, 0x4b29f859809602b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fmin.h f9, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x27, 0x7ded8e284a1fe84b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fmin.h f27, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x17, 0x7369b0e1b83b1429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmin.h f17, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x6, 0x1f83c08f81718819 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fmin.h f6, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x9, 0x770030a3873b25d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fmin.h f9, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x16, 0xbed0422705d66542 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fmin.h f16, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x14, 0x0ad196f62227d747 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fmin.h f14, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x21, 0x500034a72d2fe2e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fmin.h f21, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x12, 0x5d1cee83bd8aef45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fmin.h f12, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x22, 0x564bd319d83bab21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmin.h f22, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x26, 0xd4835818d187906a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fmin.h f26, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x17, 0xa198c15e6125d690 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fmin.h f17, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x1, 0x5551576f335f837f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fmin.h f1, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x12, 0x004070b382d27b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fmin.h f12, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x1, 0x21e1dc6665aa5a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fmin.h f1, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x6, 0xff84ae3c87402f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fmin.h f6, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x13, 0xa321ea7afada1abf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmin.h f13, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x23, 0x84c657b1ded1dde0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fmin.h f23, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x23, 0xc8ee307df4befe54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fmin.h f23, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x24, 0x365ea381f2acb8b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fmin.h f24, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x17, 0xddeaa090c30c313b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fmin.h f17, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x21, 0x4af0f5beb88c1bc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fmin.h f21, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x22, 0x40e0780e87e5f60d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fmin.h f22, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x19, 0x7033bd3c8678b187 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmin.h f19, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x31, 0xe7df531c35fed63b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fmin.h f31, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x7, 0x50dfdc8e1ac0c993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fmin.h f7, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x21, 0x937bcfda0e0a0067 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
fmin.h f21, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x30, 0x6bccc7b4d8b2c867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fmin.h f30, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x27, 0x8c31e32e0fd36879 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fmin.h f27, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x9, 0xf2d1d48ed9fd7fe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fmin.h f9, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x19, 0x26350e3ed90cdedd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fmin.h f19, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x11, 0x36f6752931f40866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fmin.h f11, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x17, 0xbd9601c06097248c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fmin.h f17, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x22, 0x9c8931cfc7817d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fmin.h f22, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x8, 0x4e2d40c4541a2c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fmin.h f8, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x23, 0xd036fa3eeea82886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fmin.h f23, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x28, 0x9fd7a908ebb22b8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fmin.h f28, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x7, 0x79cd5605b7f58d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmin.h f7, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x9, 0xa7363a7ce3b7bd74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fmin.h f9, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x5, 0x3ba7fc43b4020f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fmin.h f5, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x18, 0xabee2c260a89708d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fmin.h f18, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x20, 0x4b7eb3fd94363451 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fmin.h f20, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x24, 0x6bd90558a11074d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
fmin.h f24, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x12, 0xa7e4c3f1e92343c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fmin.h f12, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x3, 0x323a9a5a35b0a78b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fmin.h f3, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x3, 0xcc3743681e73dd04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fmin.h f3, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x6, 0x87a68d2305be060a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fmin.h f6, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x25, 0x263d73eff925a615 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmin.h f25, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x17, 0x900ddd34cf3592ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fmin.h f17, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x10, 0x0d2809c55e2b17ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fmin.h f10, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x20, 0x4a289306c3c543db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fmin.h f20, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x12, 0x7c1c3b0f8f17fa05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fmin.h f12, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x21, 0x09b83cfc1dab0c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fmin.h f21, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x6, 0xffb5eca9fe7693fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fmin.h f6, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x31, 0x67a095980989ea33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fmin.h f31, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x3, 0x96b84d750443c5cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fmin.h f3, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x2, 0x22e327c2c6368942 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fmin.h f2, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x17, 0xcc070698a7576aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmin.h f17, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x1, 0x54bdf9dab80bdfe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fmin.h f1, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x3, 0xaeb415679aeea0d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fmin.h f3, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x29, 0xcefa060a2d261501 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmin.h f29, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x16, 0x759459aa7a492677 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmin.h f16, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x14, 0xd68bdd47d145902a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fmin.h f14, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x20, 0x9767260402620be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fmin.h f20, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x31, 0x0b77041e31c9bc44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmin.h f31, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x7, 0x450dbb0abe1d07a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fmin.h f7, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x18, 0x9b878439a4ef7459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fmin.h f18, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x31, 0xbbe77692533a11fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fmin.h f31, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x30, 0x73aa38dc5e4f4eca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmin.h f30, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x17, 0xe6de0c6aa8a72b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fmin.h f17, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x16, 0x06f9cbb477788ac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fmin.h f16, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x8, 0x2decab6725df28b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
fmin.h f8, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x13, 0xcd4c4a5a98c0a97b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fmin.h f13, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x25, 0x7159ffa41d681602 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fmin.h f25, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x5, 0xa87c525668699736 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fmin.h f5, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x7, 0x8bb715bc3140216f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fmin.h f7, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x24, 0xa7bdbf91594659d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fmin.h f24, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x23, 0x309fc9c504db089b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fmin.h f23, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x12, 0x908b823dba8b8b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fmin.h f12, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x1, 0x2e688d8a0f50cc4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmin.h f1, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x26, 0x8daa5d7a2402c2eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fmin.h f26, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x31, 0x7d743dab44791eae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmin.h f31, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x17, 0xfaf1ed1d857773fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fmin.h f17, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x1, 0xc0c229512bf33d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fmin.h f1, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x4, 0x7be016d7b2d65859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fmin.h f4, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x1, 0xeded94481b6c65ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fmin.h f1, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x30, 0x4d0f81684a6897c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fmin.h f30, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x8, 0xf5b517d969a345c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fmin.h f8, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x14, 0xd3093dcb87c7c868 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fmin.h f14, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x4, 0x5f03285d7db913e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fmin.h f4, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x3, 0xed954c42b1d16366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fmin.h f3, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x26, 0x411af73c27b47bad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fmin.h f26, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x6, 0xa55ace066a442dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fmin.h f6, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x2, 0x2fd9879a37f737a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fmin.h f2, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x9, 0x02260c7b7380d121 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmin.h f9, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x26, 0x2e8d8066de76405c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fmin.h f26, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x14, 0xf4fb9862c13c2ee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fmin.h f14, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x10, 0xd94f694ff16a63bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fmin.h f10, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x14, 0x85ba13a29f0558eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fmin.h f14, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x17, 0x1e3e4d94683b6ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fmin.h f17, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x28, 0x48b62f606c26ea69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
fmin.h f28, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x11, 0x21cd8bb1d5e62d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fmin.h f11, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x6, 0x7b4628e4af2660cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fmin.h f6, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x5, 0x4e915671a814e062 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmin.h f5, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x25, 0xc93cba662f50a4af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fmin.h f25, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x11, 0x44b7c0ea0c0fee7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fmin.h f11, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x2, 0x29caa0144975b8fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fmin.h f2, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x24, 0xb9960efab8ebf631 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmin.h f24, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x3, 0xde39763585b4b55e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
fmin.h f3, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x14, 0x7c4688e84f1dd029 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fmin.h f14, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x25, 0x558f4f454063a993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fmin.h f25, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x9, 0xfbd3edc9af52260f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fmin.h f9, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x8, 0xe08bfb9a30348785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
fmin.h f8, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x7, 0x942546047fa04d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fmin.h f7, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x3, 0x8e39bb8be82d13e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fmin.h f3, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x26, 0x4b525a80bac8e07e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fmin.h f26, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x6, 0x690615481f3da160 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fmin.h f6, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x11, 0xde555b1478191d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fmin.h f11, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x6, 0x2e0bf08046f9af28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fmin.h f6, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x26, 0xa6f71eed6eebbff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fmin.h f26, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x30, 0x3eb19f7a4d5abab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fmin.h f30, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x22, 0x92b2dc050d91416d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmin.h f22, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x15, 0xcd616c4df96232a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fmin.h f15, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x27, 0x6c996358b1b471e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fmin.h f27, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x20, 0x491e1ba08ae12510 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fmin.h f20, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x18, 0xd45d38264dab6226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fmin.h f18, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x13, 0xdfc11d3611365da3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmin.h f13, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x24, 0x6653134d61052738 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmin.h f24, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x4, 0xa38932207cf2e4be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fmin.h f4, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x21, 0xad2a8e6e20277588 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fmin.h f21, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x28, 0xa9778d04562b9b7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fmin.h f28, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x21, 0xa99588d6f6a4088f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fmin.h f21, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x4, 0x434e8a8931337d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fmin.h f4, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x16, 0x4699a0adc3e95728 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmin.h f16, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x26, 0x8d6acda85d7cb893 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fmin.h f26, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x5, 0x42c88c84dc389bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmin.h f5, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x6, 0xa2683a608af8a829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fmin.h f6, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x24, 0x978f1e0c6ee92df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fmin.h f24, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x11, 0x7d46b1383c9bd82d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmin.h f11, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x2, 0xd5463ba46a613839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fmin.h f2, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x16, 0xb05df758fc8323ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fmin.h f16, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x29, 0x53dffb52b3ea5bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmin.h f29, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x13, 0x0e54bdac070a84f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fmin.h f13, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x29, 0x7ba979748cb20e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fmin.h f29, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x22, 0xa4e32cd0a7be7209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fmin.h f22, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x10, 0x638d0feb777389cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fmin.h f10, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x7, 0x903dd14c0effb521 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmin.h f7, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x9, 0xe548bfe36da2df77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmin.h f9, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x14, 0x857f78d5db9500cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fmin.h f14, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x18, 0xc85e067c68c65ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fmin.h f18, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x14, 0x25b3c6316e8aa67a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fmin.h f14, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x7, 0xa2d30de46dcd01b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fmin.h f7, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x11, 0xb28bfe99223adfcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fmin.h f11, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x17, 0x4b9cd8b0a4b9b3e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fmin.h f17, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x7, 0x4262ef6160541df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmin.h f7, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x1, 0x0e84f239be22b710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fmin.h f1, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x4, 0x44b1120b93acc9f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fmin.h f4, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x12, 0x18a2b9997bdb1a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fmin.h f12, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x19, 0xbed88717ae94a159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fmin.h f19, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x25, 0x419ce6a74a8e4acf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fmin.h f25, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x25, 0x3fe99d3571faadf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fmin.h f25, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x30, 0x26af91d98aa99142 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fmin.h f30, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x9, 0x99abf197787a67da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fmin.h f9, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x13, 0x3fa8ca60132ebd57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fmin.h f13, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x17, 0x016798b2204fb736 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
fmin.h f17, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x17, 0xe45f70f424f8a6e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fmin.h f17, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x18, 0xf0973b8d4fa6e624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fmin.h f18, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x5, 0x3d174282dff7cae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmin.h f5, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x17, 0x5592b04697b7db8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fmin.h f17, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x15, 0xe2b45a8fdc730e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fmin.h f15, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x29, 0x992424f46d4a8ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fmin.h f29, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x7, 0x3b6b697a0280baa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fmin.h f7, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x12, 0xd421f57039fb7b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fmin.h f12, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x4, 0x99ec1d2b8a33ad2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fmin.h f4, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x9, 0xadb0153bc96e7332 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fmin.h f9, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x9, 0xca1b17afb381ab57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fmin.h f9, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x14, 0x5d50c6b59e07afc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
fmin.h f14, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x25, 0xddd5c0ee8543f263 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fmin.h f25, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x17, 0x2bf5ed51ee99ecb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fmin.h f17, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x24, 0xdc1d2e04cbf3dd3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
fmin.h f24, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x5, 0xea309925f70cd446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fmin.h f5, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x29, 0x526c23f86073a332 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fmin.h f29, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x23, 0x707d154d40839009 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmin.h f23, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x22, 0x7536b5b9eb60bdd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fmin.h f22, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x6, 0x50ca1ad259b50b73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fmin.h f6, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x16, 0xf9ee9283cba8486e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fmin.h f16, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x31, 0xb21b44fb8ca2210a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fmin.h f31, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x7, 0x0be07fac52bc2f51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fmin.h f7, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x23, 0x57e3c838da374eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmin.h f23, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x7, 0xabdac710b2a5a3f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fmin.h f7, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x6, 0x59e11a68992ae3c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fmin.h f6, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x18, 0x3e022b85fff6d40b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fmin.h f18, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x3, 0x63b48e2cd6c6628e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fmin.h f3, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x12, 0x97644fbf88595a67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fmin.h f12, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x3, 0x46ff1b76cf9f2223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fmin.h f3, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x14, 0x02e730969b39353b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fmin.h f14, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x6, 0xe6167e4e677538a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fmin.h f6, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x11, 0x4f79c49e96ac1b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fmin.h f11, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x19, 0x19c2d4aa63044f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fmin.h f19, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x9, 0xa33e4d5e54c991a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fmin.h f9, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x14, 0xfce007cb613ec81e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fmin.h f14, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x31, 0x09afbe072108422b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fmin.h f31, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x3, 0x60f08238c65609dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fmin.h f3, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x30, 0xefc110e5ed6cdb06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmin.h f30, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x28, 0x6e879e7d67f6293d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fmin.h f28, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x7, 0x51a61bd1e59efa57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fmin.h f7, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x27, 0xe42dbcc094867fc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmin.h f27, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x16, 0xa7c344a7e44e1f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fmin.h f16, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x24, 0x3b3e8c1abaab431f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fmin.h f24, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x11, 0xedf26ddc02f9c551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fmin.h f11, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x28, 0x86134c0c0a6c0a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fmin.h f28, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x22, 0xd4fc492a5b437a29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fmin.h f22, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x18, 0x0ae9dca75746ed5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fmin.h f18, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x15, 0x1b39d5434fe82b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fmin.h f15, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x31, 0x3a2d2efb4bcd054a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fmin.h f31, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x28, 0xba63cafdd05fcf2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fmin.h f28, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x9, 0x41dbf374bc6489fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fmin.h f9, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x10, 0x2f92d4405144062c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fmin.h f10, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x26, 0x17c7ef4a60d93681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fmin.h f26, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x27, 0x9466574c9bd18310 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fmin.h f27, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x2, 0xc8315305061848da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmin.h f2, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x8, 0x78849c0ff8a5670d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmin.h f8, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x30, 0x7a830341fbb3318c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fmin.h f30, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x29, 0x7b8a6c9bab121c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fmin.h f29, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x7, 0xae195b453838d360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fmin.h f7, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x1, 0x83494ccf7b3f1913 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
fmin.h f1, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x10, 0xbcaa4f49fb21bb8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fmin.h f10, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x15, 0x0009ca37969be5d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fmin.h f15, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x12, 0x600fef5c02b1bf2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fmin.h f12, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x22, 0x7b06f54f070f8177 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fmin.h f22, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x13, 0xa6ff7382f52294b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fmin.h f13, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x29, 0xfa6a9108e33a7c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fmin.h f29, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x17, 0xa149fda273454c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fmin.h f17, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x13, 0x88c6f382a8e73e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fmin.h f13, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x19, 0x33635bd3b1af4dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fmin.h f19, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x30, 0x8d68b9063520760c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fmin.h f30, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x7, 0x5e3b74b3adeeb15a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fmin.h f7, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x20, 0xd3971392f2717cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fmin.h f20, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x15, 0xdf0c9fa0b943ab66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fmin.h f15, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x22, 0xa1c634894ecef957 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fmin.h f22, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x2, 0xb44bb498961022f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fmin.h f2, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x31, 0xdd4b485063d28cdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fmin.h f31, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x22, 0xfdcea535669b0367 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmin.h f22, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x5, 0x5e27086fea73e4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fmin.h f5, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x2, 0xe5dd56b09960afdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fmin.h f2, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x14, 0xc6c7505ca276d195 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fmin.h f14, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x13, 0x3ea2b767c156cdc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fmin.h f13, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x4, 0x0ff6d44c95ae1c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fmin.h f4, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x21, 0xc0aae3399af6872d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmin.h f21, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x10, 0xb79a1e3348fb4a27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fmin.h f10, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x22, 0x46140ca5316ef02a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmin.h f22, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x29, 0xee8a06e4aa0d0043 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fmin.h f29, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x5, 0x69c8ae4b7fa491a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fmin.h f5, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x16, 0xe1639739fda9bc93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fmin.h f16, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x9, 0xbf265e3c60b5a1bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fmin.h f9, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x23, 0xf88376ac8af0504e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fmin.h f23, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x22, 0x1e296a55e1294be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fmin.h f22, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x11, 0x26e623215033c36b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fmin.h f11, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x29, 0x0a7540999a733b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
fmin.h f29, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x2, 0xb1717a86b20af1a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fmin.h f2, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x14, 0x212d295caf02b418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fmin.h f14, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x20, 0x8073f3bb241bc560 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fmin.h f20, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x20, 0xa7897fae37fc4e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fmin.h f20, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x7, 0x125b7a1a57e661a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fmin.h f7, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x25, 0x49bada083ace219b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fmin.h f25, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x15, 0x66cb001038633bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fmin.h f15, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x29, 0xf027d587755a9ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fmin.h f29, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x3, 0xff9db56513afadf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fmin.h f3, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x10, 0x847d4327550dc5be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fmin.h f10, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x6, 0x399691ad297c0e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fmin.h f6, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x9, 0x711627448759e574 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fmin.h f9, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x25, 0x14af5b63340b9142 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmin.h f25, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x21, 0xfbc432d8dd3cf858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fmin.h f21, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x27, 0x4334113ba8c7ca87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fmin.h f27, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x19, 0xa6f7dca814cca43b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fmin.h f19, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x20, 0x8780122ee244d542 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fmin.h f20, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x23, 0xf4d4fa99a492412d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fmin.h f23, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x22, 0x1b04cc0c0ca96b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fmin.h f22, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x10, 0x697484693808f7b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fmin.h f10, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x1, 0x86d93250cf11130a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fmin.h f1, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x11, 0x099c183e87c71768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fmin.h f11, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x10, 0xac0af10f4968ca52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fmin.h f10, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x8, 0x0b6e1d10f2eb1445 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fmin.h f8, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x21, 0xd9c502bb7a17fb59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fmin.h f21, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x24, 0xf17be29d7ae369bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fmin.h f24, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x12, 0x1e8ee89ffc92247c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fmin.h f12, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x2, 0x7eb6aaafa2f14f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fmin.h f2, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x13, 0xe7d140ed24fef5c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fmin.h f13, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x27, 0x9eecf055e6ab8df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fmin.h f27, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x31, 0x92d113b68d6d8f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fmin.h f31, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x18, 0xafd5fee2dbe40eac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fmin.h f18, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x27, 0x7c1c5ce68a0249ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fmin.h f27, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x19, 0x8e3a1db3634afa9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fmin.h f19, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x9, 0x97933035a375a0bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fmin.h f9, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x30, 0xa886faaccd71d2dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fmin.h f30, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x26, 0x530ea24961ac5469 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
fmin.h f26, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x21, 0xb2d37e77cdd78694 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fmin.h f21, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x25, 0xc59b4bbae644fd56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fmin.h f25, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x17, 0xc035b16d6f431f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmin.h f17, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x14, 0x9d9e0c22eb66d2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmin.h f14, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x30, 0x1cbf79f30a40b7f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fmin.h f30, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x4, 0xf348992b3fe4803a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fmin.h f4, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x20, 0x4b34906698c953cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmin.h f20, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x15, 0x5d96dda422af4644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fmin.h f15, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x3, 0x19208ede6a1223d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fmin.h f3, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x22, 0xa686a083e780fadd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmin.h f22, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x7, 0xcc012547aab9569b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fmin.h f7, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x21, 0xb9f5c3184a14bdd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fmin.h f21, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x17, 0xd72559cffa93981c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmin.h f17, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x31, 0x2bb02e6260cdf275 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fmin.h f31, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x5, 0x7c18807045aa1f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fmin.h f5, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x2, 0xb0e74ff2dfc4c4f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fmin.h f2, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x14, 0xf9f110c6bad3cac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fmin.h f14, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x5, 0xbe2e59c739fcec1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fmin.h f5, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x19, 0x12c2c283dc59f19c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmin.h f19, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x12, 0xf53ef026a87c02fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fmin.h f12, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x22, 0x06ecc7652ee2b17c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fmin.h f22, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x3, 0x6bc90a49aa8810cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fmin.h f3, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x20, 0xf1870f3a7299edd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fmin.h f20, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x2, 0x51027a20475b4ac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fmin.h f2, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x2, 0xbe5d61cd33109cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fmin.h f2, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x11, 0x7ae6f1019090bae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fmin.h f11, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x3, 0x05bc3c87096720f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fmin.h f3, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x5, 0x3c69004f97fdfe40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fmin.h f5, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x4, 0x865cc5f02d2ccfcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fmin.h f4, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x20, 0xfab623d6092d4a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
fmin.h f20, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x1, 0x5ef4a45c49cfb995 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fmin.h f1, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x3, 0x6ba4a3283ec43a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fmin.h f3, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x15, 0x3214000e7cac948a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fmin.h f15, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x11, 0xa2b1bcf1f5c8c745 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fmin.h f11, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x24, 0x850251f692c8c575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fmin.h f24, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x23, 0x506869b18eb0e84f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fmin.h f23, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x5, 0x6aba73195cda6120 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fmin.h f5, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x18, 0xc8c5975c4ce9dc8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fmin.h f18, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x27, 0x1013bd3e0834e4ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmin.h f27, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x14, 0x61d7cab18d0b3b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmin.h f14, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x16, 0xccd5b5f2bed9fb2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fmin.h f16, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x16, 0x27c8a222ca5a4567 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fmin.h f16, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x5, 0x9fb46a3051483ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fmin.h f5, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x11, 0x43d2952c9f576301 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fmin.h f11, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x11, 0x42dd9e24971358f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fmin.h f11, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x11, 0x828d21df09aec3ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fmin.h f11, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x10, 0x597a54bd0bc38765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fmin.h f10, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x12, 0x65c02fd5a65893e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fmin.h f12, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x21, 0x54a7a1fa8fd6a322 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fmin.h f21, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x18, 0x9d473dc3bcf18c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fmin.h f18, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x11, 0x8e747e2e95ced475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fmin.h f11, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x29, 0xbd546861561cb17c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fmin.h f29, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x1, 0x2b173543646be02d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fmin.h f1, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x31, 0x8f621b36bb967ce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fmin.h f31, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x16, 0xccf4db43e4066e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fmin.h f16, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x10, 0x519ac7ca5075f765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmin.h f10, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x15, 0x48e8e3c459c359ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fmin.h f15, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x26, 0xdbc5ca8d7876a6c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fmin.h f26, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x28, 0x7e546f089afb1932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fmin.h f28, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x15, 0x7d909e541e4f38c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fmin.h f15, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x18, 0x218d5d59ba932e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fmin.h f18, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x2, 0x63e685c6375dd9ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fmin.h f2, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x18, 0xd3511db5501cc561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fmin.h f18, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x7, 0x65a0fc2c1f3c3475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fmin.h f7, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x3, 0x471b6322046204d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fmin.h f3, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x15, 0xccbf7edf51e6088a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fmin.h f15, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x31, 0x0f8ad7c20d2851e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fmin.h f31, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x1, 0x1e3f79a5fb77d9c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fmin.h f1, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x17, 0x0edb9f480616f7aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fmin.h f17, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x13, 0x4cdf1124cc058469 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmin.h f13, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x27, 0x544e26e448973a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fmin.h f27, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x13, 0x5e369fec20509eea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fmin.h f13, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x10, 0x13f37f3e0c679040 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fmin.h f10, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x26, 0x5f17e9ffc219948e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fmin.h f26, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x20, 0x760eb2e496dde932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmin.h f20, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x18, 0x7a289dfab8e72c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fmin.h f18, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x24, 0x30eb6fbfc3993481 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fmin.h f24, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x13, 0xcb22681a2a190c6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fmin.h f13, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x28, 0x806c64478c70e63f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fmin.h f28, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x14, 0x79f6321bf63d3200 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmin.h f14, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x16, 0x79b7c47ff2474bd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fmin.h f16, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x22, 0x892a4e4287909b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fmin.h f22, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x1, 0xabcbc8e78c1e9901 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fmin.h f1, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x31, 0xc84c069bff645b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fmin.h f31, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x13, 0x17a837ace7f98d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fmin.h f13, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x3, 0x7202443978e03322 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fmin.h f3, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x24, 0x1f2d3f539ff49c70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
fmin.h f24, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x7, 0x2c5e2298e9062edf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fmin.h f7, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x8, 0x188a8594a29787cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fmin.h f8, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x30, 0xeb5bbca8d92e8d6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fmin.h f30, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x1, 0xaba437044008fae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fmin.h f1, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x28, 0xbe16275d480c9f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fmin.h f28, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x23, 0x46f1894f1490a40a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fmin.h f23, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x16, 0x6c65e979671a8a28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fmin.h f16, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x30, 0x06fc67d076cf7e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fmin.h f30, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x14, 0xb681e101576f603b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fmin.h f14, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x28, 0xdd13cdf51256b111 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fmin.h f28, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x29, 0x669f79d42027b284 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fmin.h f29, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x14, 0x0b3142f45198f34f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmin.h f14, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x19, 0x1c3fa03f7fab8e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fmin.h f19, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x3, 0x6dfca1860644942d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fmin.h f3, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x8, 0xe0baeacede2366e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fmin.h f8, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x1, 0x4290b3d76a30aa36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fmin.h f1, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x26, 0x97a07941c0749b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fmin.h f26, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x31, 0x705aec8c72a764a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fmin.h f31, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x3, 0xd0f3eeec22ed2fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fmin.h f3, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x23, 0x55ccff62a1de0c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fmin.h f23, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x11, 0x546ad5fb0f54539a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fmin.h f11, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x2, 0x5ad034898089c348 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmin.h f2, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x10, 0x132ee21d3ef3184a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fmin.h f10, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x18, 0x6410742a1d769a78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fmin.h f18, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x10, 0x93f78204cc24bcc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fmin.h f10, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x21, 0x27a5520cb5d38219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fmin.h f21, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x2, 0x52581c464c1103fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fmin.h f2, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x1, 0xa06853cf8610450a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fmin.h f1, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x15, 0x71ae6ed574484b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fmin.h f15, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x27, 0x9674daede5257a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fmin.h f27, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x30, 0x174e650278221b7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fmin.h f30, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x6, 0x088c025831e04285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fmin.h f6, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x15, 0x7a6bf05769ccc5e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fmin.h f15, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x16, 0x63222e5a6bd05d48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmin.h f16, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x16, 0x09d1ab9867ff125f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fmin.h f16, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x5, 0x96e6a3d78d4f5dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fmin.h f5, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x14, 0x739a998d2e60b36e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fmin.h f14, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x5, 0xb5412051f95ba1dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmin.h f5, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x29, 0x2b574b0afefd312b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fmin.h f29, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x2, 0x1f02215df7c0cee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fmin.h f2, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x9, 0x45993665444ef7cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fmin.h f9, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x7, 0x09ebc1f71bc34883 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fmin.h f7, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x31, 0x36ae9f59de3f14b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fmin.h f31, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x30, 0xa4e4445e0f9d79f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fmin.h f30, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x10, 0x09b5a0d6a6713f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fmin.h f10, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x4, 0xc95684587cd47365 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmin.h f4, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x15, 0x76fc9e6e0e79a4de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmin.h f15, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x9, 0x89796d67bc6620ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fmin.h f9, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x11, 0x822336a3f4ffce60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fmin.h f11, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x29, 0xaf891d91f28baf1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
fmin.h f29, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x29, 0xcf3cca891da1aec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fmin.h f29, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x16, 0x58462bfded6dd67f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fmin.h f16, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x5, 0xef49660891647d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fmin.h f5, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x22, 0xa31c8457a588da47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fmin.h f22, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x15, 0xe3259f0cfdd3b12d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fmin.h f15, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x7, 0xa841a2faf08f43f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fmin.h f7, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x23, 0x8536443584a6a181 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fmin.h f23, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x19, 0x052f9f6ec5131130 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fmin.h f19, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x11, 0x6fe5abff76e346ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fmin.h f11, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x1, 0x41624c9fd39535ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fmin.h f1, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x23, 0x63052e2790ce964d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmin.h f23, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x1, 0x9dec664034d520ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fmin.h f1, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x2, 0x7c3355b274b66a9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
fmin.h f2, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x31, 0xd8df66c161e7ce9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fmin.h f31, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x15, 0x5be7d2b33e6d315b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fmin.h f15, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x23, 0xd280465a2c4b1744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fmin.h f23, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x2, 0x6b87e1c5121a3b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmin.h f2, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x31, 0xbbe9c1d665ebb851 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fmin.h f31, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x31, 0xdae9a6e4693c67ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fmin.h f31, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x28, 0x4e11abf71d939d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmin.h f28, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x12, 0xbc66116e81b23e08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fmin.h f12, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x30, 0x73e29c82c9dc645a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
fmin.h f30, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x21, 0xf2b0c4b7ffcb2ff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmin.h f21, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x15, 0xd6ebe0dd30725815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fmin.h f15, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x10, 0x439d6807c1d0724a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fmin.h f10, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x29, 0xc01425346311b213 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fmin.h f29, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x9, 0xa84576fb78a46f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fmin.h f9, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x7, 0xf3c0c018bcd34edf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fmin.h f7, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x10, 0xff75b308711df4a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fmin.h f10, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x5, 0x0f590c21b5d00767 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmin.h f5, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x5, 0x75287eb75ea78f1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fmin.h f5, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x11, 0x9591c0b8db4dcf37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmin.h f11, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x19, 0x71d9ac73e2af95c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fmin.h f19, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x31, 0xcbea4bc832cbb69b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fmin.h f31, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x23, 0xc1f0e8e37151bf9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fmin.h f23, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x7, 0xe34f897576494898 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fmin.h f7, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x29, 0xc774ce9457210ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fmin.h f29, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x1, 0xe9360a7888d3bca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fmin.h f1, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x8, 0x96773fe6e19bea2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fmin.h f8, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x6, 0xa0d34b72cb47669b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmin.h f6, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x17, 0xa78f5a9572241cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fmin.h f17, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x20, 0x1880f968a97a4fca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fmin.h f20, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x25, 0xa37cae92e5b7df42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fmin.h f25, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x8, 0x27d885ae952fc910 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fmin.h f8, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x4, 0x32c4e5540299f614 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fmin.h f4, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x18, 0x330abfd9d729b347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fmin.h f18, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x22, 0xbae46308ffa368e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fmin.h f22, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x2, 0x3a3357782f6e318d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fmin.h f2, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x16, 0xd20961db190c0e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fmin.h f16, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x7, 0xfd8e68ec45942198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fmin.h f7, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x6, 0x758b3b8117eb4988 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fmin.h f6, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x26, 0x520dda84a2ea54ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fmin.h f26, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x1, 0x715913e2454fd8ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmin.h f1, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x6, 0x3374c2e7e569639d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fmin.h f6, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x26, 0xa5819df1249feb44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmin.h f26, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x14, 0xd359269b7d4d6091 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fmin.h f14, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x15, 0xe71f0d9948454b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fmin.h f15, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x17, 0x56992526983f2648 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmin.h f17, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x20, 0x038a2cc79f012099 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fmin.h f20, f31, f9 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x1ea42ded8dfa6c72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbdca1248f476d85f # load x3 with value 0xbdca1248f476d85f
sw x3, 0(x2) # store 0xbdca1248f476d85f in memory
flh f28, 0(x2) # load 0xbdca1248f476d85f from memory into f28
li x3, 0x168ce75f11df1fc8 # load x3 with value 0x168ce75f11df1fc8
sw x3, 0(x2) # store 0x168ce75f11df1fc8 in memory
flh f17, 0(x2) # load 0x168ce75f11df1fc8 from memory into f17
fmin.h f0, f28, f17 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xbfc78f7cca6bb8c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x193abebc4a775468 # load x3 with value 0x193abebc4a775468
sw x3, 0(x2) # store 0x193abebc4a775468 in memory
flh f11, 0(x2) # load 0x193abebc4a775468 from memory into f11
li x3, 0x6b657f9f497effaa # load x3 with value 0x6b657f9f497effaa
sw x3, 0(x2) # store 0x6b657f9f497effaa in memory
flh f4, 0(x2) # load 0x6b657f9f497effaa from memory into f4
fmin.h f1, f11, f4 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x553613081ec3803f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11c3baf1fca29439 # load x3 with value 0x11c3baf1fca29439
sw x3, 0(x2) # store 0x11c3baf1fca29439 in memory
flh f21, 0(x2) # load 0x11c3baf1fca29439 from memory into f21
li x3, 0x66833cb2e1d73ad # load x3 with value 0x66833cb2e1d73ad
sw x3, 0(x2) # store 0x66833cb2e1d73ad in memory
flh f31, 0(x2) # load 0x66833cb2e1d73ad from memory into f31
fmin.h f2, f21, f31 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xfd8c6890e3665422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e82b07dcb0b91ba # load x3 with value 0x3e82b07dcb0b91ba
sw x3, 0(x2) # store 0x3e82b07dcb0b91ba in memory
flh f21, 0(x2) # load 0x3e82b07dcb0b91ba from memory into f21
li x3, 0x92e2e3997dfcbc93 # load x3 with value 0x92e2e3997dfcbc93
sw x3, 0(x2) # store 0x92e2e3997dfcbc93 in memory
flh f2, 0(x2) # load 0x92e2e3997dfcbc93 from memory into f2
fmin.h f3, f21, f2 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xa0e506f0eb93332f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813874cdc9372dc4 # load x3 with value 0x813874cdc9372dc4
sw x3, 0(x2) # store 0x813874cdc9372dc4 in memory
flh f10, 0(x2) # load 0x813874cdc9372dc4 from memory into f10
li x3, 0x1813fb5ad74c9b33 # load x3 with value 0x1813fb5ad74c9b33
sw x3, 0(x2) # store 0x1813fb5ad74c9b33 in memory
flh f1, 0(x2) # load 0x1813fb5ad74c9b33 from memory into f1
fmin.h f4, f10, f1 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xc0fb5237868055fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cd31a7987df55b2 # load x3 with value 0x9cd31a7987df55b2
sw x3, 0(x2) # store 0x9cd31a7987df55b2 in memory
flh f28, 0(x2) # load 0x9cd31a7987df55b2 from memory into f28
li x3, 0x40d50186f928c67e # load x3 with value 0x40d50186f928c67e
sw x3, 0(x2) # store 0x40d50186f928c67e in memory
flh f15, 0(x2) # load 0x40d50186f928c67e from memory into f15
fmin.h f5, f28, f15 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xacd97c32eae2eb55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1383c4617d938345 # load x3 with value 0x1383c4617d938345
sw x3, 0(x2) # store 0x1383c4617d938345 in memory
flh f25, 0(x2) # load 0x1383c4617d938345 from memory into f25
li x3, 0xd7850c8049f1d799 # load x3 with value 0xd7850c8049f1d799
sw x3, 0(x2) # store 0xd7850c8049f1d799 in memory
flh f3, 0(x2) # load 0xd7850c8049f1d799 from memory into f3
fmin.h f6, f25, f3 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xd0430eb1ad3fcba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb273073d1c950197 # load x3 with value 0xb273073d1c950197
sw x3, 0(x2) # store 0xb273073d1c950197 in memory
flh f30, 0(x2) # load 0xb273073d1c950197 from memory into f30
li x3, 0x39d5efd4ee746f90 # load x3 with value 0x39d5efd4ee746f90
sw x3, 0(x2) # store 0x39d5efd4ee746f90 in memory
flh f27, 0(x2) # load 0x39d5efd4ee746f90 from memory into f27
fmin.h f7, f30, f27 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x202a0a7961d2cf23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12c11a4c0518e8f4 # load x3 with value 0x12c11a4c0518e8f4
sw x3, 0(x2) # store 0x12c11a4c0518e8f4 in memory
flh f19, 0(x2) # load 0x12c11a4c0518e8f4 from memory into f19
li x3, 0x2e5b0f949e89802c # load x3 with value 0x2e5b0f949e89802c
sw x3, 0(x2) # store 0x2e5b0f949e89802c in memory
flh f14, 0(x2) # load 0x2e5b0f949e89802c from memory into f14
fmin.h f8, f19, f14 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x25e53383f0ff2b67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf517291eeb8c51c3 # load x3 with value 0xf517291eeb8c51c3
sw x3, 0(x2) # store 0xf517291eeb8c51c3 in memory
flh f14, 0(x2) # load 0xf517291eeb8c51c3 from memory into f14
li x3, 0xbdf97091b6f3d884 # load x3 with value 0xbdf97091b6f3d884
sw x3, 0(x2) # store 0xbdf97091b6f3d884 in memory
flh f9, 0(x2) # load 0xbdf97091b6f3d884 from memory into f9
fmin.h f9, f14, f9 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xca3d6a741a69167b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x988f552182327eb3 # load x3 with value 0x988f552182327eb3
sw x3, 0(x2) # store 0x988f552182327eb3 in memory
flh f21, 0(x2) # load 0x988f552182327eb3 from memory into f21
li x3, 0xd1ad45476f0c861a # load x3 with value 0xd1ad45476f0c861a
sw x3, 0(x2) # store 0xd1ad45476f0c861a in memory
flh f16, 0(x2) # load 0xd1ad45476f0c861a from memory into f16
fmin.h f10, f21, f16 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x2f14277704d6b197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde4ef6eb35fb52eb # load x3 with value 0xde4ef6eb35fb52eb
sw x3, 0(x2) # store 0xde4ef6eb35fb52eb in memory
flh f1, 0(x2) # load 0xde4ef6eb35fb52eb from memory into f1
li x3, 0xb6e23a1803698c23 # load x3 with value 0xb6e23a1803698c23
sw x3, 0(x2) # store 0xb6e23a1803698c23 in memory
flh f28, 0(x2) # load 0xb6e23a1803698c23 from memory into f28
fmin.h f11, f1, f28 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x9f367274cc8ac590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4aae77b46a4f1bf3 # load x3 with value 0x4aae77b46a4f1bf3
sw x3, 0(x2) # store 0x4aae77b46a4f1bf3 in memory
flh f4, 0(x2) # load 0x4aae77b46a4f1bf3 from memory into f4
li x3, 0xc55caaedb443cf42 # load x3 with value 0xc55caaedb443cf42
sw x3, 0(x2) # store 0xc55caaedb443cf42 in memory
flh f17, 0(x2) # load 0xc55caaedb443cf42 from memory into f17
fmin.h f12, f4, f17 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xe857994158b44220 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2bad3995be26534 # load x3 with value 0xb2bad3995be26534
sw x3, 0(x2) # store 0xb2bad3995be26534 in memory
flh f21, 0(x2) # load 0xb2bad3995be26534 from memory into f21
li x3, 0x65c55ecac00aa3c6 # load x3 with value 0x65c55ecac00aa3c6
sw x3, 0(x2) # store 0x65c55ecac00aa3c6 in memory
flh f27, 0(x2) # load 0x65c55ecac00aa3c6 from memory into f27
fmin.h f13, f21, f27 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x421ca0261c16afa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc136825f80204cf1 # load x3 with value 0xc136825f80204cf1
sw x3, 0(x2) # store 0xc136825f80204cf1 in memory
flh f5, 0(x2) # load 0xc136825f80204cf1 from memory into f5
li x3, 0x183e7caf61797733 # load x3 with value 0x183e7caf61797733
sw x3, 0(x2) # store 0x183e7caf61797733 in memory
flh f28, 0(x2) # load 0x183e7caf61797733 from memory into f28
fmin.h f14, f5, f28 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xa8cc92f7ad962bce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1f5f997d864cb80 # load x3 with value 0xc1f5f997d864cb80
sw x3, 0(x2) # store 0xc1f5f997d864cb80 in memory
flh f4, 0(x2) # load 0xc1f5f997d864cb80 from memory into f4
li x3, 0x3f49da44f355fa1e # load x3 with value 0x3f49da44f355fa1e
sw x3, 0(x2) # store 0x3f49da44f355fa1e in memory
flh f7, 0(x2) # load 0x3f49da44f355fa1e from memory into f7
fmin.h f15, f4, f7 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x1c7aac9676b10d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f4aee60dbc46fc6 # load x3 with value 0x3f4aee60dbc46fc6
sw x3, 0(x2) # store 0x3f4aee60dbc46fc6 in memory
flh f26, 0(x2) # load 0x3f4aee60dbc46fc6 from memory into f26
li x3, 0xbf106b94a8dd0227 # load x3 with value 0xbf106b94a8dd0227
sw x3, 0(x2) # store 0xbf106b94a8dd0227 in memory
flh f9, 0(x2) # load 0xbf106b94a8dd0227 from memory into f9
fmin.h f16, f26, f9 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xfdf35a162f3c446b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf72b55646b651a8 # load x3 with value 0xaf72b55646b651a8
sw x3, 0(x2) # store 0xaf72b55646b651a8 in memory
flh f22, 0(x2) # load 0xaf72b55646b651a8 from memory into f22
li x3, 0x470ec7e8b228571b # load x3 with value 0x470ec7e8b228571b
sw x3, 0(x2) # store 0x470ec7e8b228571b in memory
flh f8, 0(x2) # load 0x470ec7e8b228571b from memory into f8
fmin.h f17, f22, f8 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xc280b32e113de886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd821857823d64635 # load x3 with value 0xd821857823d64635
sw x3, 0(x2) # store 0xd821857823d64635 in memory
flh f4, 0(x2) # load 0xd821857823d64635 from memory into f4
li x3, 0x24b10cb7e5643ee9 # load x3 with value 0x24b10cb7e5643ee9
sw x3, 0(x2) # store 0x24b10cb7e5643ee9 in memory
flh f15, 0(x2) # load 0x24b10cb7e5643ee9 from memory into f15
fmin.h f18, f4, f15 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x34ae84f1b26db952 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6b3996ec9e7aaa9 # load x3 with value 0xe6b3996ec9e7aaa9
sw x3, 0(x2) # store 0xe6b3996ec9e7aaa9 in memory
flh f2, 0(x2) # load 0xe6b3996ec9e7aaa9 from memory into f2
li x3, 0x8b53341d76eb084c # load x3 with value 0x8b53341d76eb084c
sw x3, 0(x2) # store 0x8b53341d76eb084c in memory
flh f3, 0(x2) # load 0x8b53341d76eb084c from memory into f3
fmin.h f19, f2, f3 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x624038debf73c69a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79fdc257f6e1f0ee # load x3 with value 0x79fdc257f6e1f0ee
sw x3, 0(x2) # store 0x79fdc257f6e1f0ee in memory
flh f31, 0(x2) # load 0x79fdc257f6e1f0ee from memory into f31
li x3, 0xe3faf0415a06d8a8 # load x3 with value 0xe3faf0415a06d8a8
sw x3, 0(x2) # store 0xe3faf0415a06d8a8 in memory
flh f6, 0(x2) # load 0xe3faf0415a06d8a8 from memory into f6
fmin.h f20, f31, f6 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xe38ff71aec4aa2f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45c422d83fce9daf # load x3 with value 0x45c422d83fce9daf
sw x3, 0(x2) # store 0x45c422d83fce9daf in memory
flh f19, 0(x2) # load 0x45c422d83fce9daf from memory into f19
li x3, 0xca3f428092d13c0a # load x3 with value 0xca3f428092d13c0a
sw x3, 0(x2) # store 0xca3f428092d13c0a in memory
flh f14, 0(x2) # load 0xca3f428092d13c0a from memory into f14
fmin.h f21, f19, f14 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x39d983f860ccd16d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9de81d15bc6158c # load x3 with value 0xf9de81d15bc6158c
sw x3, 0(x2) # store 0xf9de81d15bc6158c in memory
flh f19, 0(x2) # load 0xf9de81d15bc6158c from memory into f19
li x3, 0xc94ac1e17198ff1b # load x3 with value 0xc94ac1e17198ff1b
sw x3, 0(x2) # store 0xc94ac1e17198ff1b in memory
flh f15, 0(x2) # load 0xc94ac1e17198ff1b from memory into f15
fmin.h f22, f19, f15 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x7240ff2b255b10b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6990ad63e3cae747 # load x3 with value 0x6990ad63e3cae747
sw x3, 0(x2) # store 0x6990ad63e3cae747 in memory
flh f5, 0(x2) # load 0x6990ad63e3cae747 from memory into f5
li x3, 0x6c6d889af37e2c34 # load x3 with value 0x6c6d889af37e2c34
sw x3, 0(x2) # store 0x6c6d889af37e2c34 in memory
flh f2, 0(x2) # load 0x6c6d889af37e2c34 from memory into f2
fmin.h f23, f5, f2 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x469d90d38329ae3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x270ca2f31298c08a # load x3 with value 0x270ca2f31298c08a
sw x3, 0(x2) # store 0x270ca2f31298c08a in memory
flh f22, 0(x2) # load 0x270ca2f31298c08a from memory into f22
li x3, 0x64cbee2d1f0534b5 # load x3 with value 0x64cbee2d1f0534b5
sw x3, 0(x2) # store 0x64cbee2d1f0534b5 in memory
flh f9, 0(x2) # load 0x64cbee2d1f0534b5 from memory into f9
fmin.h f24, f22, f9 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x62d234c13e916ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10c549aaf39c9f16 # load x3 with value 0x10c549aaf39c9f16
sw x3, 0(x2) # store 0x10c549aaf39c9f16 in memory
flh f12, 0(x2) # load 0x10c549aaf39c9f16 from memory into f12
li x3, 0x1f98938521000f6a # load x3 with value 0x1f98938521000f6a
sw x3, 0(x2) # store 0x1f98938521000f6a in memory
flh f1, 0(x2) # load 0x1f98938521000f6a from memory into f1
fmin.h f25, f12, f1 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xfc502af106b66cec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x705a6205a73eaf48 # load x3 with value 0x705a6205a73eaf48
sw x3, 0(x2) # store 0x705a6205a73eaf48 in memory
flh f5, 0(x2) # load 0x705a6205a73eaf48 from memory into f5
li x3, 0xb31c040ebdb3e1e2 # load x3 with value 0xb31c040ebdb3e1e2
sw x3, 0(x2) # store 0xb31c040ebdb3e1e2 in memory
flh f16, 0(x2) # load 0xb31c040ebdb3e1e2 from memory into f16
fmin.h f26, f5, f16 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x9964b8441c105084 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43e8444716dbbb24 # load x3 with value 0x43e8444716dbbb24
sw x3, 0(x2) # store 0x43e8444716dbbb24 in memory
flh f6, 0(x2) # load 0x43e8444716dbbb24 from memory into f6
li x3, 0x3670215c3f0ad6ff # load x3 with value 0x3670215c3f0ad6ff
sw x3, 0(x2) # store 0x3670215c3f0ad6ff in memory
flh f13, 0(x2) # load 0x3670215c3f0ad6ff from memory into f13
fmin.h f27, f6, f13 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xb86af60d3e24ca6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff6c578a3b70b081 # load x3 with value 0xff6c578a3b70b081
sw x3, 0(x2) # store 0xff6c578a3b70b081 in memory
flh f14, 0(x2) # load 0xff6c578a3b70b081 from memory into f14
li x3, 0x54d2516c412f3d61 # load x3 with value 0x54d2516c412f3d61
sw x3, 0(x2) # store 0x54d2516c412f3d61 in memory
flh f1, 0(x2) # load 0x54d2516c412f3d61 from memory into f1
fmin.h f28, f14, f1 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xd5c1816367bece14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92d7d01313094a59 # load x3 with value 0x92d7d01313094a59
sw x3, 0(x2) # store 0x92d7d01313094a59 in memory
flh f24, 0(x2) # load 0x92d7d01313094a59 from memory into f24
li x3, 0xb42843593682a7ad # load x3 with value 0xb42843593682a7ad
sw x3, 0(x2) # store 0xb42843593682a7ad in memory
flh f8, 0(x2) # load 0xb42843593682a7ad from memory into f8
fmin.h f29, f24, f8 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x9be80d47095920d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc61c673d4ca0267 # load x3 with value 0xbc61c673d4ca0267
sw x3, 0(x2) # store 0xbc61c673d4ca0267 in memory
flh f27, 0(x2) # load 0xbc61c673d4ca0267 from memory into f27
li x3, 0xa23d851044b34d5b # load x3 with value 0xa23d851044b34d5b
sw x3, 0(x2) # store 0xa23d851044b34d5b in memory
flh f18, 0(x2) # load 0xa23d851044b34d5b from memory into f18
fmin.h f30, f27, f18 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x4df2e232cda8919d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f22088e49494634 # load x3 with value 0x6f22088e49494634
sw x3, 0(x2) # store 0x6f22088e49494634 in memory
flh f19, 0(x2) # load 0x6f22088e49494634 from memory into f19
li x3, 0x71762902e1810e35 # load x3 with value 0x71762902e1810e35
sw x3, 0(x2) # store 0x71762902e1810e35 in memory
flh f18, 0(x2) # load 0x71762902e1810e35 from memory into f18
fmin.h f31, f19, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x3, 0xf00341726c936108 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60767cfe0b4d2012 # load x3 with value 0x60767cfe0b4d2012
sw x3, 0(x2) # store 0x60767cfe0b4d2012 in memory
flh f0, 0(x2) # load 0x60767cfe0b4d2012 from memory into f0
li x3, 0x17f5b9b3d468d338 # load x3 with value 0x17f5b9b3d468d338
sw x3, 0(x2) # store 0x17f5b9b3d468d338 in memory
flh f10, 0(x2) # load 0x17f5b9b3d468d338 from memory into f10
fmin.h f3, f0, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x21, 0xb9e7d0a57390f268 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2868d7d22df88ae # load x3 with value 0x2868d7d22df88ae
sw x3, 0(x2) # store 0x2868d7d22df88ae in memory
flh f1, 0(x2) # load 0x2868d7d22df88ae from memory into f1
li x3, 0xea6a1ab14ffea7a8 # load x3 with value 0xea6a1ab14ffea7a8
sw x3, 0(x2) # store 0xea6a1ab14ffea7a8 in memory
flh f16, 0(x2) # load 0xea6a1ab14ffea7a8 from memory into f16
fmin.h f21, f1, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x23, 0x1e0802aec51f92dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4616b96b6ecd663 # load x3 with value 0x4616b96b6ecd663
sw x3, 0(x2) # store 0x4616b96b6ecd663 in memory
flh f2, 0(x2) # load 0x4616b96b6ecd663 from memory into f2
li x3, 0x8879616f748835e3 # load x3 with value 0x8879616f748835e3
sw x3, 0(x2) # store 0x8879616f748835e3 in memory
flh f4, 0(x2) # load 0x8879616f748835e3 from memory into f4
fmin.h f23, f2, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x14, 0x6f4f40a88cba82bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc58de0bb7552fd79 # load x3 with value 0xc58de0bb7552fd79
sw x3, 0(x2) # store 0xc58de0bb7552fd79 in memory
flh f3, 0(x2) # load 0xc58de0bb7552fd79 from memory into f3
li x3, 0xf20f9649accadf06 # load x3 with value 0xf20f9649accadf06
sw x3, 0(x2) # store 0xf20f9649accadf06 in memory
flh f1, 0(x2) # load 0xf20f9649accadf06 from memory into f1
fmin.h f14, f3, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x7, 0x50b07001f1dc670d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2d75a2b665b96ac # load x3 with value 0xf2d75a2b665b96ac
sw x3, 0(x2) # store 0xf2d75a2b665b96ac in memory
flh f4, 0(x2) # load 0xf2d75a2b665b96ac from memory into f4
li x3, 0xd6ae7d95d2877dcf # load x3 with value 0xd6ae7d95d2877dcf
sw x3, 0(x2) # store 0xd6ae7d95d2877dcf in memory
flh f25, 0(x2) # load 0xd6ae7d95d2877dcf from memory into f25
fmin.h f7, f4, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x29, 0x19ccfb068cc98fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96b9815ba951cdb3 # load x3 with value 0x96b9815ba951cdb3
sw x3, 0(x2) # store 0x96b9815ba951cdb3 in memory
flh f5, 0(x2) # load 0x96b9815ba951cdb3 from memory into f5
li x3, 0x4e107d8a41110fd8 # load x3 with value 0x4e107d8a41110fd8
sw x3, 0(x2) # store 0x4e107d8a41110fd8 in memory
flh f24, 0(x2) # load 0x4e107d8a41110fd8 from memory into f24
fmin.h f29, f5, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x11, 0x5676d66d1508b816 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ccf0056dc6876b2 # load x3 with value 0x8ccf0056dc6876b2
sw x3, 0(x2) # store 0x8ccf0056dc6876b2 in memory
flh f6, 0(x2) # load 0x8ccf0056dc6876b2 from memory into f6
li x3, 0x147a7c4bc8071104 # load x3 with value 0x147a7c4bc8071104
sw x3, 0(x2) # store 0x147a7c4bc8071104 in memory
flh f23, 0(x2) # load 0x147a7c4bc8071104 from memory into f23
fmin.h f11, f6, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x6, 0x47895479065f4e19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4347e8189874473e # load x3 with value 0x4347e8189874473e
sw x3, 0(x2) # store 0x4347e8189874473e in memory
flh f7, 0(x2) # load 0x4347e8189874473e from memory into f7
li x3, 0x285c7bfa8c689fb1 # load x3 with value 0x285c7bfa8c689fb1
sw x3, 0(x2) # store 0x285c7bfa8c689fb1 in memory
flh f19, 0(x2) # load 0x285c7bfa8c689fb1 from memory into f19
fmin.h f6, f7, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x18, 0x200f34ea3ddc726a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a9fb3ef8e64f489 # load x3 with value 0x6a9fb3ef8e64f489
sw x3, 0(x2) # store 0x6a9fb3ef8e64f489 in memory
flh f8, 0(x2) # load 0x6a9fb3ef8e64f489 from memory into f8
li x3, 0x4f3fc04eca420c90 # load x3 with value 0x4f3fc04eca420c90
sw x3, 0(x2) # store 0x4f3fc04eca420c90 in memory
flh f6, 0(x2) # load 0x4f3fc04eca420c90 from memory into f6
fmin.h f18, f8, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x17, 0xd82a14ec7fb2469a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73347044015e2c9e # load x3 with value 0x73347044015e2c9e
sw x3, 0(x2) # store 0x73347044015e2c9e in memory
flh f9, 0(x2) # load 0x73347044015e2c9e from memory into f9
li x3, 0x409212fdea57445 # load x3 with value 0x409212fdea57445
sw x3, 0(x2) # store 0x409212fdea57445 in memory
flh f27, 0(x2) # load 0x409212fdea57445 from memory into f27
fmin.h f17, f9, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x31, 0x24b5b879a252c93e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3eae79cb869a8a9e # load x3 with value 0x3eae79cb869a8a9e
sw x3, 0(x2) # store 0x3eae79cb869a8a9e in memory
flh f10, 0(x2) # load 0x3eae79cb869a8a9e from memory into f10
li x3, 0x35b45fbc708daabc # load x3 with value 0x35b45fbc708daabc
sw x3, 0(x2) # store 0x35b45fbc708daabc in memory
flh f24, 0(x2) # load 0x35b45fbc708daabc from memory into f24
fmin.h f31, f10, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x25, 0x14456d38f355e21f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b5ddfb7924eb6e8 # load x3 with value 0x2b5ddfb7924eb6e8
sw x3, 0(x2) # store 0x2b5ddfb7924eb6e8 in memory
flh f11, 0(x2) # load 0x2b5ddfb7924eb6e8 from memory into f11
li x3, 0x31ed11eb61686525 # load x3 with value 0x31ed11eb61686525
sw x3, 0(x2) # store 0x31ed11eb61686525 in memory
flh f13, 0(x2) # load 0x31ed11eb61686525 from memory into f13
fmin.h f25, f11, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x4, 0x0384dbf163d9d71f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0baece2793d4649 # load x3 with value 0xe0baece2793d4649
sw x3, 0(x2) # store 0xe0baece2793d4649 in memory
flh f12, 0(x2) # load 0xe0baece2793d4649 from memory into f12
li x3, 0x2fc6964c515443ff # load x3 with value 0x2fc6964c515443ff
sw x3, 0(x2) # store 0x2fc6964c515443ff in memory
flh f3, 0(x2) # load 0x2fc6964c515443ff from memory into f3
fmin.h f4, f12, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x30, 0x17de38b6bf1443de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a5c7e2b40147cfb # load x3 with value 0x1a5c7e2b40147cfb
sw x3, 0(x2) # store 0x1a5c7e2b40147cfb in memory
flh f13, 0(x2) # load 0x1a5c7e2b40147cfb from memory into f13
li x3, 0xbd6bc137bf507f96 # load x3 with value 0xbd6bc137bf507f96
sw x3, 0(x2) # store 0xbd6bc137bf507f96 in memory
flh f16, 0(x2) # load 0xbd6bc137bf507f96 from memory into f16
fmin.h f30, f13, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x9, 0x585f69e34dee5f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x775857e560db8d67 # load x3 with value 0x775857e560db8d67
sw x3, 0(x2) # store 0x775857e560db8d67 in memory
flh f14, 0(x2) # load 0x775857e560db8d67 from memory into f14
li x3, 0x4a46b179cde8663b # load x3 with value 0x4a46b179cde8663b
sw x3, 0(x2) # store 0x4a46b179cde8663b in memory
flh f11, 0(x2) # load 0x4a46b179cde8663b from memory into f11
fmin.h f9, f14, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x19, 0x2bc992cc31eada1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6045eb98a469cef # load x3 with value 0xe6045eb98a469cef
sw x3, 0(x2) # store 0xe6045eb98a469cef in memory
flh f15, 0(x2) # load 0xe6045eb98a469cef from memory into f15
li x3, 0xa8a9ccbe02cf88ed # load x3 with value 0xa8a9ccbe02cf88ed
sw x3, 0(x2) # store 0xa8a9ccbe02cf88ed in memory
flh f7, 0(x2) # load 0xa8a9ccbe02cf88ed from memory into f7
fmin.h f19, f15, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x4, 0xef7c67637e610d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb83253277be80ab0 # load x3 with value 0xb83253277be80ab0
sw x3, 0(x2) # store 0xb83253277be80ab0 in memory
flh f16, 0(x2) # load 0xb83253277be80ab0 from memory into f16
li x3, 0xa667bd5beae119b9 # load x3 with value 0xa667bd5beae119b9
sw x3, 0(x2) # store 0xa667bd5beae119b9 in memory
flh f8, 0(x2) # load 0xa667bd5beae119b9 from memory into f8
fmin.h f4, f16, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x9, 0x94d33cc4eb0854c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4bcb66065830d3c1 # load x3 with value 0x4bcb66065830d3c1
sw x3, 0(x2) # store 0x4bcb66065830d3c1 in memory
flh f17, 0(x2) # load 0x4bcb66065830d3c1 from memory into f17
li x3, 0xef03129001d39bca # load x3 with value 0xef03129001d39bca
sw x3, 0(x2) # store 0xef03129001d39bca in memory
flh f26, 0(x2) # load 0xef03129001d39bca from memory into f26
fmin.h f9, f17, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x7, 0xe075be16ed950644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x241137c9e4dab334 # load x3 with value 0x241137c9e4dab334
sw x3, 0(x2) # store 0x241137c9e4dab334 in memory
flh f18, 0(x2) # load 0x241137c9e4dab334 from memory into f18
li x3, 0xe22c2fcaeaab893f # load x3 with value 0xe22c2fcaeaab893f
sw x3, 0(x2) # store 0xe22c2fcaeaab893f in memory
flh f15, 0(x2) # load 0xe22c2fcaeaab893f from memory into f15
fmin.h f7, f18, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x29, 0xfa50d2bdc6d83d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21b79efb1e7d5e95 # load x3 with value 0x21b79efb1e7d5e95
sw x3, 0(x2) # store 0x21b79efb1e7d5e95 in memory
flh f19, 0(x2) # load 0x21b79efb1e7d5e95 from memory into f19
li x3, 0x1a06ceadcdc27885 # load x3 with value 0x1a06ceadcdc27885
sw x3, 0(x2) # store 0x1a06ceadcdc27885 in memory
flh f31, 0(x2) # load 0x1a06ceadcdc27885 from memory into f31
fmin.h f29, f19, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x6, 0xa1da1675210480ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64000300078ebbde # load x3 with value 0x64000300078ebbde
sw x3, 0(x2) # store 0x64000300078ebbde in memory
flh f20, 0(x2) # load 0x64000300078ebbde from memory into f20
li x3, 0xec3e91798614cb7c # load x3 with value 0xec3e91798614cb7c
sw x3, 0(x2) # store 0xec3e91798614cb7c in memory
flh f13, 0(x2) # load 0xec3e91798614cb7c from memory into f13
fmin.h f6, f20, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x13, 0xd7213af709a27fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf005070c08e2552 # load x3 with value 0xaf005070c08e2552
sw x3, 0(x2) # store 0xaf005070c08e2552 in memory
flh f21, 0(x2) # load 0xaf005070c08e2552 from memory into f21
li x3, 0xbfd42cde12136cdb # load x3 with value 0xbfd42cde12136cdb
sw x3, 0(x2) # store 0xbfd42cde12136cdb in memory
flh f23, 0(x2) # load 0xbfd42cde12136cdb from memory into f23
fmin.h f13, f21, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x4, 0x43f71b5361d8df31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75bd5511045d1703 # load x3 with value 0x75bd5511045d1703
sw x3, 0(x2) # store 0x75bd5511045d1703 in memory
flh f22, 0(x2) # load 0x75bd5511045d1703 from memory into f22
li x3, 0x90357158f58d8739 # load x3 with value 0x90357158f58d8739
sw x3, 0(x2) # store 0x90357158f58d8739 in memory
flh f29, 0(x2) # load 0x90357158f58d8739 from memory into f29
fmin.h f4, f22, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x22, 0x1a4d6b429ab63bb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8303b00066b77105 # load x3 with value 0x8303b00066b77105
sw x3, 0(x2) # store 0x8303b00066b77105 in memory
flh f23, 0(x2) # load 0x8303b00066b77105 from memory into f23
li x3, 0x51b81317b6f376b0 # load x3 with value 0x51b81317b6f376b0
sw x3, 0(x2) # store 0x51b81317b6f376b0 in memory
flh f14, 0(x2) # load 0x51b81317b6f376b0 from memory into f14
fmin.h f22, f23, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x11, 0x0cd891a0f45baba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5129cfdfd74b4564 # load x3 with value 0x5129cfdfd74b4564
sw x3, 0(x2) # store 0x5129cfdfd74b4564 in memory
flh f24, 0(x2) # load 0x5129cfdfd74b4564 from memory into f24
li x3, 0x69169c12b1fa0bb3 # load x3 with value 0x69169c12b1fa0bb3
sw x3, 0(x2) # store 0x69169c12b1fa0bb3 in memory
flh f16, 0(x2) # load 0x69169c12b1fa0bb3 from memory into f16
fmin.h f11, f24, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x30, 0x2d3d75aaa8ef041b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79ca9209372ee5c8 # load x3 with value 0x79ca9209372ee5c8
sw x3, 0(x2) # store 0x79ca9209372ee5c8 in memory
flh f25, 0(x2) # load 0x79ca9209372ee5c8 from memory into f25
li x3, 0xb255b408cdfea146 # load x3 with value 0xb255b408cdfea146
sw x3, 0(x2) # store 0xb255b408cdfea146 in memory
flh f23, 0(x2) # load 0xb255b408cdfea146 from memory into f23
fmin.h f30, f25, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x6, 0xe67b1351e90a3537 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14005e529d91484 # load x3 with value 0x14005e529d91484
sw x3, 0(x2) # store 0x14005e529d91484 in memory
flh f26, 0(x2) # load 0x14005e529d91484 from memory into f26
li x3, 0x651c3194f1496ab3 # load x3 with value 0x651c3194f1496ab3
sw x3, 0(x2) # store 0x651c3194f1496ab3 in memory
flh f20, 0(x2) # load 0x651c3194f1496ab3 from memory into f20
fmin.h f6, f26, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x20, 0x6350526cb531cf20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29a19146bf447e76 # load x3 with value 0x29a19146bf447e76
sw x3, 0(x2) # store 0x29a19146bf447e76 in memory
flh f27, 0(x2) # load 0x29a19146bf447e76 from memory into f27
li x3, 0x2f289b59507accdf # load x3 with value 0x2f289b59507accdf
sw x3, 0(x2) # store 0x2f289b59507accdf in memory
flh f28, 0(x2) # load 0x2f289b59507accdf from memory into f28
fmin.h f20, f27, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x18, 0x4b5b77becabfb4a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccf03825caf0ee57 # load x3 with value 0xccf03825caf0ee57
sw x3, 0(x2) # store 0xccf03825caf0ee57 in memory
flh f28, 0(x2) # load 0xccf03825caf0ee57 from memory into f28
li x3, 0x78296e025996323e # load x3 with value 0x78296e025996323e
sw x3, 0(x2) # store 0x78296e025996323e in memory
flh f27, 0(x2) # load 0x78296e025996323e from memory into f27
fmin.h f18, f28, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x5, 0x6b56d3d8454a6c4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0da42bd77e6999a # load x3 with value 0xc0da42bd77e6999a
sw x3, 0(x2) # store 0xc0da42bd77e6999a in memory
flh f29, 0(x2) # load 0xc0da42bd77e6999a from memory into f29
li x3, 0x4d43a820dbd9e8be # load x3 with value 0x4d43a820dbd9e8be
sw x3, 0(x2) # store 0x4d43a820dbd9e8be in memory
flh f14, 0(x2) # load 0x4d43a820dbd9e8be from memory into f14
fmin.h f5, f29, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x18, 0x352a8d7337545fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c46afdc77aa5a7b # load x3 with value 0x5c46afdc77aa5a7b
sw x3, 0(x2) # store 0x5c46afdc77aa5a7b in memory
flh f30, 0(x2) # load 0x5c46afdc77aa5a7b from memory into f30
li x3, 0x11eda21e162954f9 # load x3 with value 0x11eda21e162954f9
sw x3, 0(x2) # store 0x11eda21e162954f9 in memory
flh f13, 0(x2) # load 0x11eda21e162954f9 from memory into f13
fmin.h f18, f30, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x1, 0xae0f34039f565fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7345dca4758633b2 # load x3 with value 0x7345dca4758633b2
sw x3, 0(x2) # store 0x7345dca4758633b2 in memory
flh f31, 0(x2) # load 0x7345dca4758633b2 from memory into f31
li x3, 0x85e5e1a60d33a6bf # load x3 with value 0x85e5e1a60d33a6bf
sw x3, 0(x2) # store 0x85e5e1a60d33a6bf in memory
flh f8, 0(x2) # load 0x85e5e1a60d33a6bf from memory into f8
fmin.h f1, f31, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x6, 0x2a7cac7b651c8997 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fe5aa7511004fbc # load x3 with value 0x5fe5aa7511004fbc
sw x3, 0(x2) # store 0x5fe5aa7511004fbc in memory
flh f19, 0(x2) # load 0x5fe5aa7511004fbc from memory into f19
li x3, 0x2282f756c9dccc45 # load x3 with value 0x2282f756c9dccc45
sw x3, 0(x2) # store 0x2282f756c9dccc45 in memory
flh f0, 0(x2) # load 0x2282f756c9dccc45 from memory into f0
fmin.h f6, f19, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x16, 0x3582d3ba8d9a2163 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe41c91340e8d935a # load x3 with value 0xe41c91340e8d935a
sw x3, 0(x2) # store 0xe41c91340e8d935a in memory
flh f30, 0(x2) # load 0xe41c91340e8d935a from memory into f30
li x3, 0x4f0dd2eb57c748d1 # load x3 with value 0x4f0dd2eb57c748d1
sw x3, 0(x2) # store 0x4f0dd2eb57c748d1 in memory
flh f1, 0(x2) # load 0x4f0dd2eb57c748d1 from memory into f1
fmin.h f16, f30, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x16, 0x9189fc706ca6ed0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ec9c6f601780a8f # load x3 with value 0x5ec9c6f601780a8f
sw x3, 0(x2) # store 0x5ec9c6f601780a8f in memory
flh f28, 0(x2) # load 0x5ec9c6f601780a8f from memory into f28
li x3, 0x42b75a564f463ae5 # load x3 with value 0x42b75a564f463ae5
sw x3, 0(x2) # store 0x42b75a564f463ae5 in memory
flh f2, 0(x2) # load 0x42b75a564f463ae5 from memory into f2
fmin.h f16, f28, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x29, 0xce1c1d60bd50f16e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x739618044fc13b73 # load x3 with value 0x739618044fc13b73
sw x3, 0(x2) # store 0x739618044fc13b73 in memory
flh f30, 0(x2) # load 0x739618044fc13b73 from memory into f30
li x3, 0x1ccc1c50ea3d795e # load x3 with value 0x1ccc1c50ea3d795e
sw x3, 0(x2) # store 0x1ccc1c50ea3d795e in memory
flh f3, 0(x2) # load 0x1ccc1c50ea3d795e from memory into f3
fmin.h f29, f30, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x19, 0xea619f8eeb240b2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3022ba3f80d53783 # load x3 with value 0x3022ba3f80d53783
sw x3, 0(x2) # store 0x3022ba3f80d53783 in memory
flh f17, 0(x2) # load 0x3022ba3f80d53783 from memory into f17
li x3, 0xbfb156d6bfbb767b # load x3 with value 0xbfb156d6bfbb767b
sw x3, 0(x2) # store 0xbfb156d6bfbb767b in memory
flh f4, 0(x2) # load 0xbfb156d6bfbb767b from memory into f4
fmin.h f19, f17, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x28, 0xd4ef57ad2cff8e08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a81ea7330902b1f # load x3 with value 0x7a81ea7330902b1f
sw x3, 0(x2) # store 0x7a81ea7330902b1f in memory
flh f14, 0(x2) # load 0x7a81ea7330902b1f from memory into f14
li x3, 0xd24461df617b43f2 # load x3 with value 0xd24461df617b43f2
sw x3, 0(x2) # store 0xd24461df617b43f2 in memory
flh f5, 0(x2) # load 0xd24461df617b43f2 from memory into f5
fmin.h f28, f14, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x12, 0x186e8515cd0ded27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf54dcca78b7a1ef5 # load x3 with value 0xf54dcca78b7a1ef5
sw x3, 0(x2) # store 0xf54dcca78b7a1ef5 in memory
flh f11, 0(x2) # load 0xf54dcca78b7a1ef5 from memory into f11
li x3, 0xab88d37ede6b6023 # load x3 with value 0xab88d37ede6b6023
sw x3, 0(x2) # store 0xab88d37ede6b6023 in memory
flh f6, 0(x2) # load 0xab88d37ede6b6023 from memory into f6
fmin.h f12, f11, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x21, 0x5b31f1b9ec1425d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd13ca96aa9dc7b3 # load x3 with value 0xd13ca96aa9dc7b3
sw x3, 0(x2) # store 0xd13ca96aa9dc7b3 in memory
flh f31, 0(x2) # load 0xd13ca96aa9dc7b3 from memory into f31
li x3, 0x6577552ed24ef687 # load x3 with value 0x6577552ed24ef687
sw x3, 0(x2) # store 0x6577552ed24ef687 in memory
flh f7, 0(x2) # load 0x6577552ed24ef687 from memory into f7
fmin.h f21, f31, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x6, 0xac1ba8cce923e905 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdeb9e8cf206b89a6 # load x3 with value 0xdeb9e8cf206b89a6
sw x3, 0(x2) # store 0xdeb9e8cf206b89a6 in memory
flh f13, 0(x2) # load 0xdeb9e8cf206b89a6 from memory into f13
li x3, 0x710cb48251ee7574 # load x3 with value 0x710cb48251ee7574
sw x3, 0(x2) # store 0x710cb48251ee7574 in memory
flh f8, 0(x2) # load 0x710cb48251ee7574 from memory into f8
fmin.h f6, f13, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x11, 0xeab138ab6b1bb6a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe990342d3d0aeac # load x3 with value 0xe990342d3d0aeac
sw x3, 0(x2) # store 0xe990342d3d0aeac in memory
flh f20, 0(x2) # load 0xe990342d3d0aeac from memory into f20
li x3, 0xf420a61457511a3c # load x3 with value 0xf420a61457511a3c
sw x3, 0(x2) # store 0xf420a61457511a3c in memory
flh f9, 0(x2) # load 0xf420a61457511a3c from memory into f9
fmin.h f11, f20, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x20, 0xcdbf1311b8bddee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef674692f6ee4974 # load x3 with value 0xef674692f6ee4974
sw x3, 0(x2) # store 0xef674692f6ee4974 in memory
flh f3, 0(x2) # load 0xef674692f6ee4974 from memory into f3
li x3, 0x3f59cbfe0ccc46b1 # load x3 with value 0x3f59cbfe0ccc46b1
sw x3, 0(x2) # store 0x3f59cbfe0ccc46b1 in memory
flh f10, 0(x2) # load 0x3f59cbfe0ccc46b1 from memory into f10
fmin.h f20, f3, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x5, 0x4cc27cf163e2d156 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51414c7fb8aabaee # load x3 with value 0x51414c7fb8aabaee
sw x3, 0(x2) # store 0x51414c7fb8aabaee in memory
flh f2, 0(x2) # load 0x51414c7fb8aabaee from memory into f2
li x3, 0xb92487305541a6f9 # load x3 with value 0xb92487305541a6f9
sw x3, 0(x2) # store 0xb92487305541a6f9 in memory
flh f11, 0(x2) # load 0xb92487305541a6f9 from memory into f11
fmin.h f5, f2, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x7, 0xe7102b1ad8081dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadc620836f260824 # load x3 with value 0xadc620836f260824
sw x3, 0(x2) # store 0xadc620836f260824 in memory
flh f15, 0(x2) # load 0xadc620836f260824 from memory into f15
li x3, 0x122372898a15f850 # load x3 with value 0x122372898a15f850
sw x3, 0(x2) # store 0x122372898a15f850 in memory
flh f12, 0(x2) # load 0x122372898a15f850 from memory into f12
fmin.h f7, f15, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x19, 0x31ca38682de3186f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97994eb04d782156 # load x3 with value 0x97994eb04d782156
sw x3, 0(x2) # store 0x97994eb04d782156 in memory
flh f27, 0(x2) # load 0x97994eb04d782156 from memory into f27
li x3, 0x954030b857396015 # load x3 with value 0x954030b857396015
sw x3, 0(x2) # store 0x954030b857396015 in memory
flh f13, 0(x2) # load 0x954030b857396015 from memory into f13
fmin.h f19, f27, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x11, 0x786b6fcfa122b39d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d2dee706504ad20 # load x3 with value 0x5d2dee706504ad20
sw x3, 0(x2) # store 0x5d2dee706504ad20 in memory
flh f22, 0(x2) # load 0x5d2dee706504ad20 from memory into f22
li x3, 0x446572b67d449dd6 # load x3 with value 0x446572b67d449dd6
sw x3, 0(x2) # store 0x446572b67d449dd6 in memory
flh f14, 0(x2) # load 0x446572b67d449dd6 from memory into f14
fmin.h f11, f22, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x3, 0xeb9eb2f38c44b50a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda17b5b13116c2b7 # load x3 with value 0xda17b5b13116c2b7
sw x3, 0(x2) # store 0xda17b5b13116c2b7 in memory
flh f14, 0(x2) # load 0xda17b5b13116c2b7 from memory into f14
li x3, 0x43419ff07a668eff # load x3 with value 0x43419ff07a668eff
sw x3, 0(x2) # store 0x43419ff07a668eff in memory
flh f15, 0(x2) # load 0x43419ff07a668eff from memory into f15
fmin.h f3, f14, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x12, 0x41fc89336cc760d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf510cfa7ab7d2a43 # load x3 with value 0xf510cfa7ab7d2a43
sw x3, 0(x2) # store 0xf510cfa7ab7d2a43 in memory
flh f23, 0(x2) # load 0xf510cfa7ab7d2a43 from memory into f23
li x3, 0x28114aa618ebd20f # load x3 with value 0x28114aa618ebd20f
sw x3, 0(x2) # store 0x28114aa618ebd20f in memory
flh f16, 0(x2) # load 0x28114aa618ebd20f from memory into f16
fmin.h f12, f23, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x22, 0x306562bba32c8b72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xede5eb53dedf67fc # load x3 with value 0xede5eb53dedf67fc
sw x3, 0(x2) # store 0xede5eb53dedf67fc in memory
flh f13, 0(x2) # load 0xede5eb53dedf67fc from memory into f13
li x3, 0x1140920655159aaa # load x3 with value 0x1140920655159aaa
sw x3, 0(x2) # store 0x1140920655159aaa in memory
flh f17, 0(x2) # load 0x1140920655159aaa from memory into f17
fmin.h f22, f13, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x16, 0x8ed67d0911420ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff914d8799c956f2 # load x3 with value 0xff914d8799c956f2
sw x3, 0(x2) # store 0xff914d8799c956f2 in memory
flh f19, 0(x2) # load 0xff914d8799c956f2 from memory into f19
li x3, 0x41aac945ff7dc0b3 # load x3 with value 0x41aac945ff7dc0b3
sw x3, 0(x2) # store 0x41aac945ff7dc0b3 in memory
flh f18, 0(x2) # load 0x41aac945ff7dc0b3 from memory into f18
fmin.h f16, f19, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x27, 0x3990ba2912d7a87e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47bf5bcf532f839e # load x3 with value 0x47bf5bcf532f839e
sw x3, 0(x2) # store 0x47bf5bcf532f839e in memory
flh f20, 0(x2) # load 0x47bf5bcf532f839e from memory into f20
li x3, 0x68dd5524689673b3 # load x3 with value 0x68dd5524689673b3
sw x3, 0(x2) # store 0x68dd5524689673b3 in memory
flh f19, 0(x2) # load 0x68dd5524689673b3 from memory into f19
fmin.h f27, f20, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x23, 0xe32c9acdcdc2edec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbaa6b80dc0d3beef # load x3 with value 0xbaa6b80dc0d3beef
sw x3, 0(x2) # store 0xbaa6b80dc0d3beef in memory
flh f2, 0(x2) # load 0xbaa6b80dc0d3beef from memory into f2
li x3, 0x6246477be5b60713 # load x3 with value 0x6246477be5b60713
sw x3, 0(x2) # store 0x6246477be5b60713 in memory
flh f20, 0(x2) # load 0x6246477be5b60713 from memory into f20
fmin.h f23, f2, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x2, 0xf08ad60e0c6fb884 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9f3dbd573d60818 # load x3 with value 0xe9f3dbd573d60818
sw x3, 0(x2) # store 0xe9f3dbd573d60818 in memory
flh f31, 0(x2) # load 0xe9f3dbd573d60818 from memory into f31
li x3, 0xa986449646bb5055 # load x3 with value 0xa986449646bb5055
sw x3, 0(x2) # store 0xa986449646bb5055 in memory
flh f21, 0(x2) # load 0xa986449646bb5055 from memory into f21
fmin.h f2, f31, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x14, 0x00a4075beba75bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75300ae9f2b000b5 # load x3 with value 0x75300ae9f2b000b5
sw x3, 0(x2) # store 0x75300ae9f2b000b5 in memory
flh f4, 0(x2) # load 0x75300ae9f2b000b5 from memory into f4
li x3, 0x6601dcebae6bf99d # load x3 with value 0x6601dcebae6bf99d
sw x3, 0(x2) # store 0x6601dcebae6bf99d in memory
flh f22, 0(x2) # load 0x6601dcebae6bf99d from memory into f22
fmin.h f14, f4, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x6, 0x8ae2381afa2b07ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9aa60fec9061a681 # load x3 with value 0x9aa60fec9061a681
sw x3, 0(x2) # store 0x9aa60fec9061a681 in memory
flh f18, 0(x2) # load 0x9aa60fec9061a681 from memory into f18
li x3, 0xc0a2fde71c09aab1 # load x3 with value 0xc0a2fde71c09aab1
sw x3, 0(x2) # store 0xc0a2fde71c09aab1 in memory
flh f23, 0(x2) # load 0xc0a2fde71c09aab1 from memory into f23
fmin.h f6, f18, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x12, 0xb69474cdab5f5c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7dc4a9196a693ac # load x3 with value 0xd7dc4a9196a693ac
sw x3, 0(x2) # store 0xd7dc4a9196a693ac in memory
flh f14, 0(x2) # load 0xd7dc4a9196a693ac from memory into f14
li x3, 0xe7ad19fcc0530cfa # load x3 with value 0xe7ad19fcc0530cfa
sw x3, 0(x2) # store 0xe7ad19fcc0530cfa in memory
flh f24, 0(x2) # load 0xe7ad19fcc0530cfa from memory into f24
fmin.h f12, f14, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x18, 0x901677304506b811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc926fd4487615465 # load x3 with value 0xc926fd4487615465
sw x3, 0(x2) # store 0xc926fd4487615465 in memory
flh f9, 0(x2) # load 0xc926fd4487615465 from memory into f9
li x3, 0x3aeb111c3133d87d # load x3 with value 0x3aeb111c3133d87d
sw x3, 0(x2) # store 0x3aeb111c3133d87d in memory
flh f25, 0(x2) # load 0x3aeb111c3133d87d from memory into f25
fmin.h f18, f9, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x19, 0xf1d9c50290e4175e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2821251402a93b91 # load x3 with value 0x2821251402a93b91
sw x3, 0(x2) # store 0x2821251402a93b91 in memory
flh f17, 0(x2) # load 0x2821251402a93b91 from memory into f17
li x3, 0xa4bc640e982c94d4 # load x3 with value 0xa4bc640e982c94d4
sw x3, 0(x2) # store 0xa4bc640e982c94d4 in memory
flh f26, 0(x2) # load 0xa4bc640e982c94d4 from memory into f26
fmin.h f19, f17, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x14, 0x9bb162d79e364c9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb8d442713d4dd05 # load x3 with value 0xdb8d442713d4dd05
sw x3, 0(x2) # store 0xdb8d442713d4dd05 in memory
flh f9, 0(x2) # load 0xdb8d442713d4dd05 from memory into f9
li x3, 0x80474cf74c08610d # load x3 with value 0x80474cf74c08610d
sw x3, 0(x2) # store 0x80474cf74c08610d in memory
flh f27, 0(x2) # load 0x80474cf74c08610d from memory into f27
fmin.h f14, f9, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x6, 0x88f9a81c6ae4625b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbacbe5ab6c8ac750 # load x3 with value 0xbacbe5ab6c8ac750
sw x3, 0(x2) # store 0xbacbe5ab6c8ac750 in memory
flh f24, 0(x2) # load 0xbacbe5ab6c8ac750 from memory into f24
li x3, 0xbf62f4c62fcb64a9 # load x3 with value 0xbf62f4c62fcb64a9
sw x3, 0(x2) # store 0xbf62f4c62fcb64a9 in memory
flh f28, 0(x2) # load 0xbf62f4c62fcb64a9 from memory into f28
fmin.h f6, f24, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x7, 0xfa7f0f203425e0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4993ba43ecd5208b # load x3 with value 0x4993ba43ecd5208b
sw x3, 0(x2) # store 0x4993ba43ecd5208b in memory
flh f19, 0(x2) # load 0x4993ba43ecd5208b from memory into f19
li x3, 0xd32d43e5d06a05c2 # load x3 with value 0xd32d43e5d06a05c2
sw x3, 0(x2) # store 0xd32d43e5d06a05c2 in memory
flh f29, 0(x2) # load 0xd32d43e5d06a05c2 from memory into f29
fmin.h f7, f19, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x31, 0x349e7dffc11f94d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1a90b0666dc2597 # load x3 with value 0xd1a90b0666dc2597
sw x3, 0(x2) # store 0xd1a90b0666dc2597 in memory
flh f22, 0(x2) # load 0xd1a90b0666dc2597 from memory into f22
li x3, 0xd6cddcf967a10c9d # load x3 with value 0xd6cddcf967a10c9d
sw x3, 0(x2) # store 0xd6cddcf967a10c9d in memory
flh f30, 0(x2) # load 0xd6cddcf967a10c9d from memory into f30
fmin.h f31, f22, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x26, 0xfbc6610918fc3130 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd884cff3ddf28179 # load x3 with value 0xd884cff3ddf28179
sw x3, 0(x2) # store 0xd884cff3ddf28179 in memory
flh f17, 0(x2) # load 0xd884cff3ddf28179 from memory into f17
li x3, 0x1627105bcf725792 # load x3 with value 0x1627105bcf725792
sw x3, 0(x2) # store 0x1627105bcf725792 in memory
flh f31, 0(x2) # load 0x1627105bcf725792 from memory into f31
fmin.h f26, f17, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
