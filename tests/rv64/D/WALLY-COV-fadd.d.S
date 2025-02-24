///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fadd.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.482360
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
fadd.d f11, f4, f17 # perform first operation
fadd.d f24, f11, f30 # perform second operation

# Testcase cmp_gpr_hazard raw test
fadd.d f7, f6, f20 # perform first operation
fadd.d f6, f19, f7 # perform second operation

# Testcase cmp_gpr_hazard waw test
fadd.d f11, f20, f10 # perform first operation
fadd.d f11, f6, f31 # perform second operation

# Testcase cmp_gpr_hazard waw test
fadd.d f21, f22, f3 # perform first operation
fadd.d f21, f18, f22 # perform second operation

# Testcase cmp_gpr_hazard war test
fadd.d f21, f23, f15 # perform first operation
fadd.d f23, f26, f3 # perform second operation

# Testcase cmp_gpr_hazard war test
fadd.d f22, f21, f26 # perform first operation
fadd.d f26, f5, f23 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x0238d6f67e6d958c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25da57a3d9579abe # load x3 with value 0x25da57a3d9579abe
sd x3, 0(x2) # store 0x25da57a3d9579abe in memory
fld f0, 0(x2) # load 0x25da57a3d9579abe from memory into f0
li x3, 0x5726ff05896f2d26 # load x3 with value 0x5726ff05896f2d26
sd x3, 0(x2) # store 0x5726ff05896f2d26 in memory
fld f21, 0(x2) # load 0x5726ff05896f2d26 from memory into f21
fadd.d f0, f0, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x6fd254f37283ea1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1675f011867767ff # load x3 with value 0x1675f011867767ff
sd x3, 0(x2) # store 0x1675f011867767ff in memory
fld f1, 0(x2) # load 0x1675f011867767ff from memory into f1
li x3, 0xf3a3fc19946b23eb # load x3 with value 0xf3a3fc19946b23eb
sd x3, 0(x2) # store 0xf3a3fc19946b23eb in memory
fld f22, 0(x2) # load 0xf3a3fc19946b23eb from memory into f22
fadd.d f1, f1, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x4b9f0dfb7fb7f78d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5f20db3f901c0eb # load x3 with value 0xf5f20db3f901c0eb
sd x3, 0(x2) # store 0xf5f20db3f901c0eb in memory
fld f2, 0(x2) # load 0xf5f20db3f901c0eb from memory into f2
li x3, 0x62e658e7b3750207 # load x3 with value 0x62e658e7b3750207
sd x3, 0(x2) # store 0x62e658e7b3750207 in memory
fld f31, 0(x2) # load 0x62e658e7b3750207 from memory into f31
fadd.d f2, f2, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xb1b988e8d46e4272 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d7d463f1d40b01f # load x3 with value 0x6d7d463f1d40b01f
sd x3, 0(x2) # store 0x6d7d463f1d40b01f in memory
fld f3, 0(x2) # load 0x6d7d463f1d40b01f from memory into f3
li x3, 0x0140c648622f384f # load x3 with value 0x0140c648622f384f
sd x3, 0(x2) # store 0x0140c648622f384f in memory
fld f24, 0(x2) # load 0x0140c648622f384f from memory into f24
fadd.d f3, f3, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x399ef8afd1b8537d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3e0f69210ea54e4 # load x3 with value 0xa3e0f69210ea54e4
sd x3, 0(x2) # store 0xa3e0f69210ea54e4 in memory
fld f4, 0(x2) # load 0xa3e0f69210ea54e4 from memory into f4
li x3, 0x16911295e97c3e3d # load x3 with value 0x16911295e97c3e3d
sd x3, 0(x2) # store 0x16911295e97c3e3d in memory
fld f3, 0(x2) # load 0x16911295e97c3e3d from memory into f3
fadd.d f4, f4, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xb0c2dd140fe3144c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08692717f9d51bd6 # load x3 with value 0x08692717f9d51bd6
sd x3, 0(x2) # store 0x08692717f9d51bd6 in memory
fld f5, 0(x2) # load 0x08692717f9d51bd6 from memory into f5
li x3, 0x0dc52b3d26b0bb18 # load x3 with value 0x0dc52b3d26b0bb18
sd x3, 0(x2) # store 0x0dc52b3d26b0bb18 in memory
fld f28, 0(x2) # load 0x0dc52b3d26b0bb18 from memory into f28
fadd.d f5, f5, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x96fa5047a77c8664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65192b9036f05d56 # load x3 with value 0x65192b9036f05d56
sd x3, 0(x2) # store 0x65192b9036f05d56 in memory
fld f6, 0(x2) # load 0x65192b9036f05d56 from memory into f6
li x3, 0x1ca74b1dc2d7a0c9 # load x3 with value 0x1ca74b1dc2d7a0c9
sd x3, 0(x2) # store 0x1ca74b1dc2d7a0c9 in memory
fld f31, 0(x2) # load 0x1ca74b1dc2d7a0c9 from memory into f31
fadd.d f6, f6, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x6bd9a4760af3f087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b20d1e08ec97e68 # load x3 with value 0x3b20d1e08ec97e68
sd x3, 0(x2) # store 0x3b20d1e08ec97e68 in memory
fld f7, 0(x2) # load 0x3b20d1e08ec97e68 from memory into f7
li x3, 0xdb867390ca4a9ac0 # load x3 with value 0xdb867390ca4a9ac0
sd x3, 0(x2) # store 0xdb867390ca4a9ac0 in memory
fld f3, 0(x2) # load 0xdb867390ca4a9ac0 from memory into f3
fadd.d f7, f7, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xc9091e9a570cf802 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e866975d6400f14 # load x3 with value 0x8e866975d6400f14
sd x3, 0(x2) # store 0x8e866975d6400f14 in memory
fld f8, 0(x2) # load 0x8e866975d6400f14 from memory into f8
li x3, 0x2eef7af430778583 # load x3 with value 0x2eef7af430778583
sd x3, 0(x2) # store 0x2eef7af430778583 in memory
fld f31, 0(x2) # load 0x2eef7af430778583 from memory into f31
fadd.d f8, f8, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xb14063f2707df8e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4c583cb19af7fd7 # load x3 with value 0xc4c583cb19af7fd7
sd x3, 0(x2) # store 0xc4c583cb19af7fd7 in memory
fld f9, 0(x2) # load 0xc4c583cb19af7fd7 from memory into f9
li x3, 0x9e528bf74cd91ac1 # load x3 with value 0x9e528bf74cd91ac1
sd x3, 0(x2) # store 0x9e528bf74cd91ac1 in memory
fld f10, 0(x2) # load 0x9e528bf74cd91ac1 from memory into f10
fadd.d f9, f9, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xef7ebcab163e9065 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4edeea1d4e333284 # load x3 with value 0x4edeea1d4e333284
sd x3, 0(x2) # store 0x4edeea1d4e333284 in memory
fld f10, 0(x2) # load 0x4edeea1d4e333284 from memory into f10
li x3, 0x319e77bc1296f305 # load x3 with value 0x319e77bc1296f305
sd x3, 0(x2) # store 0x319e77bc1296f305 in memory
fld f28, 0(x2) # load 0x319e77bc1296f305 from memory into f28
fadd.d f10, f10, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x1f39c31cff5b4f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ae8b326bbfe0684 # load x3 with value 0x6ae8b326bbfe0684
sd x3, 0(x2) # store 0x6ae8b326bbfe0684 in memory
fld f11, 0(x2) # load 0x6ae8b326bbfe0684 from memory into f11
li x3, 0xb25506e40f73007e # load x3 with value 0xb25506e40f73007e
sd x3, 0(x2) # store 0xb25506e40f73007e in memory
fld f30, 0(x2) # load 0xb25506e40f73007e from memory into f30
fadd.d f11, f11, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x11f7d864482b5af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f2da6c3dac85618 # load x3 with value 0x3f2da6c3dac85618
sd x3, 0(x2) # store 0x3f2da6c3dac85618 in memory
fld f12, 0(x2) # load 0x3f2da6c3dac85618 from memory into f12
li x3, 0x80698c5b0d22f8ec # load x3 with value 0x80698c5b0d22f8ec
sd x3, 0(x2) # store 0x80698c5b0d22f8ec in memory
fld f24, 0(x2) # load 0x80698c5b0d22f8ec from memory into f24
fadd.d f12, f12, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xfa64429a550038a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc794618b1ad0f7f6 # load x3 with value 0xc794618b1ad0f7f6
sd x3, 0(x2) # store 0xc794618b1ad0f7f6 in memory
fld f13, 0(x2) # load 0xc794618b1ad0f7f6 from memory into f13
li x3, 0xa11f4a067c8dbfa2 # load x3 with value 0xa11f4a067c8dbfa2
sd x3, 0(x2) # store 0xa11f4a067c8dbfa2 in memory
fld f30, 0(x2) # load 0xa11f4a067c8dbfa2 from memory into f30
fadd.d f13, f13, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x868f83e5e1c42326 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8bfa1006194aa04 # load x3 with value 0xf8bfa1006194aa04
sd x3, 0(x2) # store 0xf8bfa1006194aa04 in memory
fld f14, 0(x2) # load 0xf8bfa1006194aa04 from memory into f14
li x3, 0xd0047cb49229021b # load x3 with value 0xd0047cb49229021b
sd x3, 0(x2) # store 0xd0047cb49229021b in memory
fld f22, 0(x2) # load 0xd0047cb49229021b from memory into f22
fadd.d f14, f14, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x26e64876c4898e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c70557d4c3d7e1a # load x3 with value 0x6c70557d4c3d7e1a
sd x3, 0(x2) # store 0x6c70557d4c3d7e1a in memory
fld f15, 0(x2) # load 0x6c70557d4c3d7e1a from memory into f15
li x3, 0x85ac7bb3007ff270 # load x3 with value 0x85ac7bb3007ff270
sd x3, 0(x2) # store 0x85ac7bb3007ff270 in memory
fld f24, 0(x2) # load 0x85ac7bb3007ff270 from memory into f24
fadd.d f15, f15, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xaf1f5b410965409e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4899cabaa7b6968a # load x3 with value 0x4899cabaa7b6968a
sd x3, 0(x2) # store 0x4899cabaa7b6968a in memory
fld f16, 0(x2) # load 0x4899cabaa7b6968a from memory into f16
li x3, 0x6a280773f4b8a50a # load x3 with value 0x6a280773f4b8a50a
sd x3, 0(x2) # store 0x6a280773f4b8a50a in memory
fld f1, 0(x2) # load 0x6a280773f4b8a50a from memory into f1
fadd.d f16, f16, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x6ff5207188624020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b2a6236e3dfd33c # load x3 with value 0x4b2a6236e3dfd33c
sd x3, 0(x2) # store 0x4b2a6236e3dfd33c in memory
fld f17, 0(x2) # load 0x4b2a6236e3dfd33c from memory into f17
li x3, 0x70a4de4e25f73818 # load x3 with value 0x70a4de4e25f73818
sd x3, 0(x2) # store 0x70a4de4e25f73818 in memory
fld f3, 0(x2) # load 0x70a4de4e25f73818 from memory into f3
fadd.d f17, f17, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x74f5beb3dee08e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c9338be76d71928 # load x3 with value 0x0c9338be76d71928
sd x3, 0(x2) # store 0x0c9338be76d71928 in memory
fld f18, 0(x2) # load 0x0c9338be76d71928 from memory into f18
li x3, 0xc20bd617dca39b9f # load x3 with value 0xc20bd617dca39b9f
sd x3, 0(x2) # store 0xc20bd617dca39b9f in memory
fld f16, 0(x2) # load 0xc20bd617dca39b9f from memory into f16
fadd.d f18, f18, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x2362f3937d9bcc2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08d494deb9b60ee8 # load x3 with value 0x08d494deb9b60ee8
sd x3, 0(x2) # store 0x08d494deb9b60ee8 in memory
fld f19, 0(x2) # load 0x08d494deb9b60ee8 from memory into f19
li x3, 0x9adc68abe6331472 # load x3 with value 0x9adc68abe6331472
sd x3, 0(x2) # store 0x9adc68abe6331472 in memory
fld f3, 0(x2) # load 0x9adc68abe6331472 from memory into f3
fadd.d f19, f19, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x8e5ed74fac956cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e153183143bce88 # load x3 with value 0x2e153183143bce88
sd x3, 0(x2) # store 0x2e153183143bce88 in memory
fld f20, 0(x2) # load 0x2e153183143bce88 from memory into f20
li x3, 0x068609fe6c987b97 # load x3 with value 0x068609fe6c987b97
sd x3, 0(x2) # store 0x068609fe6c987b97 in memory
fld f11, 0(x2) # load 0x068609fe6c987b97 from memory into f11
fadd.d f20, f20, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x665938da7cb28e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda3e63d64c534d54 # load x3 with value 0xda3e63d64c534d54
sd x3, 0(x2) # store 0xda3e63d64c534d54 in memory
fld f21, 0(x2) # load 0xda3e63d64c534d54 from memory into f21
li x3, 0x7ed82afb742493fe # load x3 with value 0x7ed82afb742493fe
sd x3, 0(x2) # store 0x7ed82afb742493fe in memory
fld f6, 0(x2) # load 0x7ed82afb742493fe from memory into f6
fadd.d f21, f21, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xf4bd2402a29477bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06e5705faf3145d7 # load x3 with value 0x06e5705faf3145d7
sd x3, 0(x2) # store 0x06e5705faf3145d7 in memory
fld f22, 0(x2) # load 0x06e5705faf3145d7 from memory into f22
li x3, 0x914d7e46b65c78c4 # load x3 with value 0x914d7e46b65c78c4
sd x3, 0(x2) # store 0x914d7e46b65c78c4 in memory
fld f6, 0(x2) # load 0x914d7e46b65c78c4 from memory into f6
fadd.d f22, f22, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xdc6636bda836e8eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c1bbbb005266839 # load x3 with value 0x2c1bbbb005266839
sd x3, 0(x2) # store 0x2c1bbbb005266839 in memory
fld f23, 0(x2) # load 0x2c1bbbb005266839 from memory into f23
li x3, 0x4aedc9c813270dd5 # load x3 with value 0x4aedc9c813270dd5
sd x3, 0(x2) # store 0x4aedc9c813270dd5 in memory
fld f21, 0(x2) # load 0x4aedc9c813270dd5 from memory into f21
fadd.d f23, f23, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x6918610d63c602ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6391d66f627d2fc6 # load x3 with value 0x6391d66f627d2fc6
sd x3, 0(x2) # store 0x6391d66f627d2fc6 in memory
fld f24, 0(x2) # load 0x6391d66f627d2fc6 from memory into f24
li x3, 0xa3fa4525325609d1 # load x3 with value 0xa3fa4525325609d1
sd x3, 0(x2) # store 0xa3fa4525325609d1 in memory
fld f11, 0(x2) # load 0xa3fa4525325609d1 from memory into f11
fadd.d f24, f24, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xe716ccf5cb9ed25a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d057a0c7c1897bc # load x3 with value 0x0d057a0c7c1897bc
sd x3, 0(x2) # store 0x0d057a0c7c1897bc in memory
fld f25, 0(x2) # load 0x0d057a0c7c1897bc from memory into f25
li x3, 0xac91a6c3e79ce907 # load x3 with value 0xac91a6c3e79ce907
sd x3, 0(x2) # store 0xac91a6c3e79ce907 in memory
fld f31, 0(x2) # load 0xac91a6c3e79ce907 from memory into f31
fadd.d f25, f25, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x90beff699609126c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f603f750fb46be9 # load x3 with value 0x3f603f750fb46be9
sd x3, 0(x2) # store 0x3f603f750fb46be9 in memory
fld f26, 0(x2) # load 0x3f603f750fb46be9 from memory into f26
li x3, 0xeb4e972ef586eae9 # load x3 with value 0xeb4e972ef586eae9
sd x3, 0(x2) # store 0xeb4e972ef586eae9 in memory
fld f17, 0(x2) # load 0xeb4e972ef586eae9 from memory into f17
fadd.d f26, f26, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xb6f7a29ecb730f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23f19ef16786bfcf # load x3 with value 0x23f19ef16786bfcf
sd x3, 0(x2) # store 0x23f19ef16786bfcf in memory
fld f27, 0(x2) # load 0x23f19ef16786bfcf from memory into f27
li x3, 0x81ad8e4cbc6e1b9c # load x3 with value 0x81ad8e4cbc6e1b9c
sd x3, 0(x2) # store 0x81ad8e4cbc6e1b9c in memory
fld f11, 0(x2) # load 0x81ad8e4cbc6e1b9c from memory into f11
fadd.d f27, f27, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x831884d0c2959964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcede065f05b88d29 # load x3 with value 0xcede065f05b88d29
sd x3, 0(x2) # store 0xcede065f05b88d29 in memory
fld f28, 0(x2) # load 0xcede065f05b88d29 from memory into f28
li x3, 0xea4586f39d5719e4 # load x3 with value 0xea4586f39d5719e4
sd x3, 0(x2) # store 0xea4586f39d5719e4 in memory
fld f22, 0(x2) # load 0xea4586f39d5719e4 from memory into f22
fadd.d f28, f28, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x87cbec257b8e3025 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2648af42a0d1d6d0 # load x3 with value 0x2648af42a0d1d6d0
sd x3, 0(x2) # store 0x2648af42a0d1d6d0 in memory
fld f29, 0(x2) # load 0x2648af42a0d1d6d0 from memory into f29
li x3, 0x06f9ef8724fe52b3 # load x3 with value 0x06f9ef8724fe52b3
sd x3, 0(x2) # store 0x06f9ef8724fe52b3 in memory
fld f30, 0(x2) # load 0x06f9ef8724fe52b3 from memory into f30
fadd.d f29, f29, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x8dd310826e17bab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a993b324ffbeed1 # load x3 with value 0x8a993b324ffbeed1
sd x3, 0(x2) # store 0x8a993b324ffbeed1 in memory
fld f30, 0(x2) # load 0x8a993b324ffbeed1 from memory into f30
li x3, 0x915a5899b137f1de # load x3 with value 0x915a5899b137f1de
sd x3, 0(x2) # store 0x915a5899b137f1de in memory
fld f24, 0(x2) # load 0x915a5899b137f1de from memory into f24
fadd.d f30, f30, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x39e0184dd14d9097 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x124f8204d80aab6c # load x3 with value 0x124f8204d80aab6c
sd x3, 0(x2) # store 0x124f8204d80aab6c in memory
fld f31, 0(x2) # load 0x124f8204d80aab6c from memory into f31
li x3, 0xf86032649242e607 # load x3 with value 0xf86032649242e607
sd x3, 0(x2) # store 0xf86032649242e607 in memory
fld f3, 0(x2) # load 0xf86032649242e607 from memory into f3
fadd.d f31, f31, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x0753dac6de9e4ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a50bd31b749b4c6 # load x3 with value 0x6a50bd31b749b4c6
sd x3, 0(x2) # store 0x6a50bd31b749b4c6 in memory
fld f12, 0(x2) # load 0x6a50bd31b749b4c6 from memory into f12
li x3, 0x155ab843beb37413 # load x3 with value 0x155ab843beb37413
sd x3, 0(x2) # store 0x155ab843beb37413 in memory
fld f0, 0(x2) # load 0x155ab843beb37413 from memory into f0
fadd.d f0, f12, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xa79fda618eb3aad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc37a3f26379236bd # load x3 with value 0xc37a3f26379236bd
sd x3, 0(x2) # store 0xc37a3f26379236bd in memory
fld f31, 0(x2) # load 0xc37a3f26379236bd from memory into f31
li x3, 0xc629e179e4c08a89 # load x3 with value 0xc629e179e4c08a89
sd x3, 0(x2) # store 0xc629e179e4c08a89 in memory
fld f1, 0(x2) # load 0xc629e179e4c08a89 from memory into f1
fadd.d f1, f31, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xb1f4c9208c073d37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ed5bbd69aa5aea9 # load x3 with value 0x9ed5bbd69aa5aea9
sd x3, 0(x2) # store 0x9ed5bbd69aa5aea9 in memory
fld f6, 0(x2) # load 0x9ed5bbd69aa5aea9 from memory into f6
li x3, 0x2ce78edcdfc6e66d # load x3 with value 0x2ce78edcdfc6e66d
sd x3, 0(x2) # store 0x2ce78edcdfc6e66d in memory
fld f2, 0(x2) # load 0x2ce78edcdfc6e66d from memory into f2
fadd.d f2, f6, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xe711d2d56e6156fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc25fee50296cd899 # load x3 with value 0xc25fee50296cd899
sd x3, 0(x2) # store 0xc25fee50296cd899 in memory
fld f13, 0(x2) # load 0xc25fee50296cd899 from memory into f13
li x3, 0x5a53691a93f0f48a # load x3 with value 0x5a53691a93f0f48a
sd x3, 0(x2) # store 0x5a53691a93f0f48a in memory
fld f3, 0(x2) # load 0x5a53691a93f0f48a from memory into f3
fadd.d f3, f13, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x83710673cefa0c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa359158da4903904 # load x3 with value 0xa359158da4903904
sd x3, 0(x2) # store 0xa359158da4903904 in memory
fld f18, 0(x2) # load 0xa359158da4903904 from memory into f18
li x3, 0x91fbeb88a9a9c7e3 # load x3 with value 0x91fbeb88a9a9c7e3
sd x3, 0(x2) # store 0x91fbeb88a9a9c7e3 in memory
fld f4, 0(x2) # load 0x91fbeb88a9a9c7e3 from memory into f4
fadd.d f4, f18, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xd5b5cba0508152e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf3676f27562b2c0 # load x3 with value 0xdf3676f27562b2c0
sd x3, 0(x2) # store 0xdf3676f27562b2c0 in memory
fld f30, 0(x2) # load 0xdf3676f27562b2c0 from memory into f30
li x3, 0xba02e34c933aa5a0 # load x3 with value 0xba02e34c933aa5a0
sd x3, 0(x2) # store 0xba02e34c933aa5a0 in memory
fld f5, 0(x2) # load 0xba02e34c933aa5a0 from memory into f5
fadd.d f5, f30, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xd710de0b34d6dcbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94483cebd313fc2f # load x3 with value 0x94483cebd313fc2f
sd x3, 0(x2) # store 0x94483cebd313fc2f in memory
fld f25, 0(x2) # load 0x94483cebd313fc2f from memory into f25
li x3, 0x2206ecdae6352dcc # load x3 with value 0x2206ecdae6352dcc
sd x3, 0(x2) # store 0x2206ecdae6352dcc in memory
fld f6, 0(x2) # load 0x2206ecdae6352dcc from memory into f6
fadd.d f6, f25, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x2748eb8a6b9bdf2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56d9542243edcd2c # load x3 with value 0x56d9542243edcd2c
sd x3, 0(x2) # store 0x56d9542243edcd2c in memory
fld f30, 0(x2) # load 0x56d9542243edcd2c from memory into f30
li x3, 0x2effc661faa7fe06 # load x3 with value 0x2effc661faa7fe06
sd x3, 0(x2) # store 0x2effc661faa7fe06 in memory
fld f7, 0(x2) # load 0x2effc661faa7fe06 from memory into f7
fadd.d f7, f30, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x6e01364fa3fb7412 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77923cd6e00b4ca9 # load x3 with value 0x77923cd6e00b4ca9
sd x3, 0(x2) # store 0x77923cd6e00b4ca9 in memory
fld f27, 0(x2) # load 0x77923cd6e00b4ca9 from memory into f27
li x3, 0x578be522e94af799 # load x3 with value 0x578be522e94af799
sd x3, 0(x2) # store 0x578be522e94af799 in memory
fld f8, 0(x2) # load 0x578be522e94af799 from memory into f8
fadd.d f8, f27, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xf9435b5b6be00070 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e9fa3446df52c11 # load x3 with value 0x0e9fa3446df52c11
sd x3, 0(x2) # store 0x0e9fa3446df52c11 in memory
fld f12, 0(x2) # load 0x0e9fa3446df52c11 from memory into f12
li x3, 0x339b9948a10277be # load x3 with value 0x339b9948a10277be
sd x3, 0(x2) # store 0x339b9948a10277be in memory
fld f9, 0(x2) # load 0x339b9948a10277be from memory into f9
fadd.d f9, f12, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x5b3924567a1abe93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf44550ddf23ace81 # load x3 with value 0xf44550ddf23ace81
sd x3, 0(x2) # store 0xf44550ddf23ace81 in memory
fld f22, 0(x2) # load 0xf44550ddf23ace81 from memory into f22
li x3, 0x7ad24b8f6c14c2d8 # load x3 with value 0x7ad24b8f6c14c2d8
sd x3, 0(x2) # store 0x7ad24b8f6c14c2d8 in memory
fld f10, 0(x2) # load 0x7ad24b8f6c14c2d8 from memory into f10
fadd.d f10, f22, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x6b356f41fef61b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72ceb84d7f749b47 # load x3 with value 0x72ceb84d7f749b47
sd x3, 0(x2) # store 0x72ceb84d7f749b47 in memory
fld f16, 0(x2) # load 0x72ceb84d7f749b47 from memory into f16
li x3, 0x633772e0d20970d4 # load x3 with value 0x633772e0d20970d4
sd x3, 0(x2) # store 0x633772e0d20970d4 in memory
fld f11, 0(x2) # load 0x633772e0d20970d4 from memory into f11
fadd.d f11, f16, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x56a8192f41a0c30d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ee39bd4b5869246 # load x3 with value 0x3ee39bd4b5869246
sd x3, 0(x2) # store 0x3ee39bd4b5869246 in memory
fld f30, 0(x2) # load 0x3ee39bd4b5869246 from memory into f30
li x3, 0x0bc21a053cdab5a2 # load x3 with value 0x0bc21a053cdab5a2
sd x3, 0(x2) # store 0x0bc21a053cdab5a2 in memory
fld f12, 0(x2) # load 0x0bc21a053cdab5a2 from memory into f12
fadd.d f12, f30, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xcfffd0f5c6ab4977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x651d18087b7927df # load x3 with value 0x651d18087b7927df
sd x3, 0(x2) # store 0x651d18087b7927df in memory
fld f24, 0(x2) # load 0x651d18087b7927df from memory into f24
li x3, 0xa3d1ae5bab924946 # load x3 with value 0xa3d1ae5bab924946
sd x3, 0(x2) # store 0xa3d1ae5bab924946 in memory
fld f13, 0(x2) # load 0xa3d1ae5bab924946 from memory into f13
fadd.d f13, f24, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xe216dd7e987baf34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7cc2c1fd5005fd99 # load x3 with value 0x7cc2c1fd5005fd99
sd x3, 0(x2) # store 0x7cc2c1fd5005fd99 in memory
fld f5, 0(x2) # load 0x7cc2c1fd5005fd99 from memory into f5
li x3, 0x83e618c92bfc107b # load x3 with value 0x83e618c92bfc107b
sd x3, 0(x2) # store 0x83e618c92bfc107b in memory
fld f14, 0(x2) # load 0x83e618c92bfc107b from memory into f14
fadd.d f14, f5, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0xe89a3ba308a0df0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70a81a202d0b798e # load x3 with value 0x70a81a202d0b798e
sd x3, 0(x2) # store 0x70a81a202d0b798e in memory
fld f12, 0(x2) # load 0x70a81a202d0b798e from memory into f12
li x3, 0xda65cd48a78b7d8d # load x3 with value 0xda65cd48a78b7d8d
sd x3, 0(x2) # store 0xda65cd48a78b7d8d in memory
fld f15, 0(x2) # load 0xda65cd48a78b7d8d from memory into f15
fadd.d f15, f12, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xec5b9a6d51b64d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa903619d43e35257 # load x3 with value 0xa903619d43e35257
sd x3, 0(x2) # store 0xa903619d43e35257 in memory
fld f24, 0(x2) # load 0xa903619d43e35257 from memory into f24
li x3, 0x7e7c455862c3796d # load x3 with value 0x7e7c455862c3796d
sd x3, 0(x2) # store 0x7e7c455862c3796d in memory
fld f16, 0(x2) # load 0x7e7c455862c3796d from memory into f16
fadd.d f16, f24, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xd478f55d4940c81c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55a24241cd14c88a # load x3 with value 0x55a24241cd14c88a
sd x3, 0(x2) # store 0x55a24241cd14c88a in memory
fld f15, 0(x2) # load 0x55a24241cd14c88a from memory into f15
li x3, 0x9fc25b2be108dd57 # load x3 with value 0x9fc25b2be108dd57
sd x3, 0(x2) # store 0x9fc25b2be108dd57 in memory
fld f17, 0(x2) # load 0x9fc25b2be108dd57 from memory into f17
fadd.d f17, f15, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x6d380c38f2826fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1cf934eecaba65a1 # load x3 with value 0x1cf934eecaba65a1
sd x3, 0(x2) # store 0x1cf934eecaba65a1 in memory
fld f5, 0(x2) # load 0x1cf934eecaba65a1 from memory into f5
li x3, 0x46486158f3bdc2c7 # load x3 with value 0x46486158f3bdc2c7
sd x3, 0(x2) # store 0x46486158f3bdc2c7 in memory
fld f18, 0(x2) # load 0x46486158f3bdc2c7 from memory into f18
fadd.d f18, f5, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xfec424970db86eab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d652c6e73e0cafc # load x3 with value 0x9d652c6e73e0cafc
sd x3, 0(x2) # store 0x9d652c6e73e0cafc in memory
fld f9, 0(x2) # load 0x9d652c6e73e0cafc from memory into f9
li x3, 0x632a92c97f584edf # load x3 with value 0x632a92c97f584edf
sd x3, 0(x2) # store 0x632a92c97f584edf in memory
fld f19, 0(x2) # load 0x632a92c97f584edf from memory into f19
fadd.d f19, f9, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xecbb152f14071da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb516e2f94da8499e # load x3 with value 0xb516e2f94da8499e
sd x3, 0(x2) # store 0xb516e2f94da8499e in memory
fld f2, 0(x2) # load 0xb516e2f94da8499e from memory into f2
li x3, 0x1571a42403a02f2e # load x3 with value 0x1571a42403a02f2e
sd x3, 0(x2) # store 0x1571a42403a02f2e in memory
fld f20, 0(x2) # load 0x1571a42403a02f2e from memory into f20
fadd.d f20, f2, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xce27c7e04c642c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba3d35fda68ff8d7 # load x3 with value 0xba3d35fda68ff8d7
sd x3, 0(x2) # store 0xba3d35fda68ff8d7 in memory
fld f15, 0(x2) # load 0xba3d35fda68ff8d7 from memory into f15
li x3, 0x58f6ceb181131b6c # load x3 with value 0x58f6ceb181131b6c
sd x3, 0(x2) # store 0x58f6ceb181131b6c in memory
fld f21, 0(x2) # load 0x58f6ceb181131b6c from memory into f21
fadd.d f21, f15, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xaab334a8a3260489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabc62822238833b3 # load x3 with value 0xabc62822238833b3
sd x3, 0(x2) # store 0xabc62822238833b3 in memory
fld f24, 0(x2) # load 0xabc62822238833b3 from memory into f24
li x3, 0x66ea8d29d3b3db72 # load x3 with value 0x66ea8d29d3b3db72
sd x3, 0(x2) # store 0x66ea8d29d3b3db72 in memory
fld f22, 0(x2) # load 0x66ea8d29d3b3db72 from memory into f22
fadd.d f22, f24, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xa6811e41883c0b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8445f9b5d365ade7 # load x3 with value 0x8445f9b5d365ade7
sd x3, 0(x2) # store 0x8445f9b5d365ade7 in memory
fld f4, 0(x2) # load 0x8445f9b5d365ade7 from memory into f4
li x3, 0xf3a6c5a210fb1ab0 # load x3 with value 0xf3a6c5a210fb1ab0
sd x3, 0(x2) # store 0xf3a6c5a210fb1ab0 in memory
fld f23, 0(x2) # load 0xf3a6c5a210fb1ab0 from memory into f23
fadd.d f23, f4, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x082f3a2d2cbff849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2444d4a898d857de # load x3 with value 0x2444d4a898d857de
sd x3, 0(x2) # store 0x2444d4a898d857de in memory
fld f12, 0(x2) # load 0x2444d4a898d857de from memory into f12
li x3, 0x55a0a9f251f76500 # load x3 with value 0x55a0a9f251f76500
sd x3, 0(x2) # store 0x55a0a9f251f76500 in memory
fld f24, 0(x2) # load 0x55a0a9f251f76500 from memory into f24
fadd.d f24, f12, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x41a8e41946369371 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6eb1078b16496d12 # load x3 with value 0x6eb1078b16496d12
sd x3, 0(x2) # store 0x6eb1078b16496d12 in memory
fld f6, 0(x2) # load 0x6eb1078b16496d12 from memory into f6
li x3, 0xa32a89cca240dd91 # load x3 with value 0xa32a89cca240dd91
sd x3, 0(x2) # store 0xa32a89cca240dd91 in memory
fld f25, 0(x2) # load 0xa32a89cca240dd91 from memory into f25
fadd.d f25, f6, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x8a91a4e200b80fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e73f324666df4e6 # load x3 with value 0x1e73f324666df4e6
sd x3, 0(x2) # store 0x1e73f324666df4e6 in memory
fld f23, 0(x2) # load 0x1e73f324666df4e6 from memory into f23
li x3, 0x9876920f7e83adba # load x3 with value 0x9876920f7e83adba
sd x3, 0(x2) # store 0x9876920f7e83adba in memory
fld f26, 0(x2) # load 0x9876920f7e83adba from memory into f26
fadd.d f26, f23, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x7327421231a6d1dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e84084c48d4910c # load x3 with value 0x6e84084c48d4910c
sd x3, 0(x2) # store 0x6e84084c48d4910c in memory
fld f3, 0(x2) # load 0x6e84084c48d4910c from memory into f3
li x3, 0x5a7804bf997da8bb # load x3 with value 0x5a7804bf997da8bb
sd x3, 0(x2) # store 0x5a7804bf997da8bb in memory
fld f27, 0(x2) # load 0x5a7804bf997da8bb from memory into f27
fadd.d f27, f3, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x0ff3f10225348495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4cf825914286790f # load x3 with value 0x4cf825914286790f
sd x3, 0(x2) # store 0x4cf825914286790f in memory
fld f17, 0(x2) # load 0x4cf825914286790f from memory into f17
li x3, 0x49d7ea66b56a73cf # load x3 with value 0x49d7ea66b56a73cf
sd x3, 0(x2) # store 0x49d7ea66b56a73cf in memory
fld f28, 0(x2) # load 0x49d7ea66b56a73cf from memory into f28
fadd.d f28, f17, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x14b1b2294055eb92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc347b7de5408f705 # load x3 with value 0xc347b7de5408f705
sd x3, 0(x2) # store 0xc347b7de5408f705 in memory
fld f28, 0(x2) # load 0xc347b7de5408f705 from memory into f28
li x3, 0x90d214b92de88072 # load x3 with value 0x90d214b92de88072
sd x3, 0(x2) # store 0x90d214b92de88072 in memory
fld f29, 0(x2) # load 0x90d214b92de88072 from memory into f29
fadd.d f29, f28, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x18796e2dcc109080 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32357522e1dfd31f # load x3 with value 0x32357522e1dfd31f
sd x3, 0(x2) # store 0x32357522e1dfd31f in memory
fld f30, 0(x2) # load 0x32357522e1dfd31f from memory into f30
li x3, 0x1c34334223f69b55 # load x3 with value 0x1c34334223f69b55
sd x3, 0(x2) # store 0x1c34334223f69b55 in memory
fld f30, 0(x2) # load 0x1c34334223f69b55 from memory into f30
fadd.d f30, f30, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x29fefcd7aa327585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2add30b469d5ff1c # load x3 with value 0x2add30b469d5ff1c
sd x3, 0(x2) # store 0x2add30b469d5ff1c in memory
fld f17, 0(x2) # load 0x2add30b469d5ff1c from memory into f17
li x3, 0x13d7783dfb35a855 # load x3 with value 0x13d7783dfb35a855
sd x3, 0(x2) # store 0x13d7783dfb35a855 in memory
fld f31, 0(x2) # load 0x13d7783dfb35a855 from memory into f31
fadd.d f31, f17, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x4, 0xa8e3c5cd7c6be722 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
li x3, 0xe1fdc9db0ab75bb3 # load x3 with value 0xe1fdc9db0ab75bb3
sd x3, 0(x2) # store 0xe1fdc9db0ab75bb3 in memory
fld f21, 0(x2) # load 0xe1fdc9db0ab75bb3 from memory into f21
fadd.d f4, f31, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x30, 0xa43a7d8c3b3006ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
li x3, 0x9011785e1ac0126e # load x3 with value 0x9011785e1ac0126e
sd x3, 0(x2) # store 0x9011785e1ac0126e in memory
fld f21, 0(x2) # load 0x9011785e1ac0126e from memory into f21
fadd.d f30, f26, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x2, 0xc6dfbcd330be1cad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
li x3, 0xf4ece68aa67f1ba9 # load x3 with value 0xf4ece68aa67f1ba9
sd x3, 0(x2) # store 0xf4ece68aa67f1ba9 in memory
fld f22, 0(x2) # load 0xf4ece68aa67f1ba9 from memory into f22
fadd.d f2, f4, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x16, 0x0a2f7142990206a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0xfbd27a70360b55d5 # load x3 with value 0xfbd27a70360b55d5
sd x3, 0(x2) # store 0xfbd27a70360b55d5 in memory
fld f6, 0(x2) # load 0xfbd27a70360b55d5 from memory into f6
fadd.d f16, f26, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x30, 0x8f2ff9060ad176ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
li x3, 0x825d655c8e8f0e0e # load x3 with value 0x825d655c8e8f0e0e
sd x3, 0(x2) # store 0x825d655c8e8f0e0e in memory
fld f28, 0(x2) # load 0x825d655c8e8f0e0e from memory into f28
fadd.d f30, f3, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x23, 0x1dd282f08e9a1346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0x33bb7158014a69df # load x3 with value 0x33bb7158014a69df
sd x3, 0(x2) # store 0x33bb7158014a69df in memory
fld f31, 0(x2) # load 0x33bb7158014a69df from memory into f31
fadd.d f23, f18, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x22, 0x92da7441d6a8c583 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
li x3, 0xe03bda2797e33dbc # load x3 with value 0xe03bda2797e33dbc
sd x3, 0(x2) # store 0xe03bda2797e33dbc in memory
fld f3, 0(x2) # load 0xe03bda2797e33dbc from memory into f3
fadd.d f22, f31, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x22, 0x92fb8f0772cfcafe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
li x3, 0x353f34b0d711c7f2 # load x3 with value 0x353f34b0d711c7f2
sd x3, 0(x2) # store 0x353f34b0d711c7f2 in memory
fld f10, 0(x2) # load 0x353f34b0d711c7f2 from memory into f10
fadd.d f22, f5, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x10, 0x165b115a4c7d84e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0x5a984849a9ea32fc # load x3 with value 0x5a984849a9ea32fc
sd x3, 0(x2) # store 0x5a984849a9ea32fc in memory
fld f15, 0(x2) # load 0x5a984849a9ea32fc from memory into f15
fadd.d f10, f5, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x1, 0xcf3078d98d316f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
li x3, 0xe6ae5c6a3fa4dc4d # load x3 with value 0xe6ae5c6a3fa4dc4d
sd x3, 0(x2) # store 0xe6ae5c6a3fa4dc4d in memory
fld f29, 0(x2) # load 0xe6ae5c6a3fa4dc4d from memory into f29
fadd.d f1, f13, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x29, 0x3bbade37e6c9b80e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
li x3, 0x6d04da039202aab6 # load x3 with value 0x6d04da039202aab6
sd x3, 0(x2) # store 0x6d04da039202aab6 in memory
fld f8, 0(x2) # load 0x6d04da039202aab6 from memory into f8
fadd.d f29, f6, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x6, 0xe67d72b1558f94f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
li x3, 0x4629ffd839758009 # load x3 with value 0x4629ffd839758009
sd x3, 0(x2) # store 0x4629ffd839758009 in memory
fld f31, 0(x2) # load 0x4629ffd839758009 from memory into f31
fadd.d f6, f22, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x29, 0x099f5978ef114b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
li x3, 0x40ac939d45c28610 # load x3 with value 0x40ac939d45c28610
sd x3, 0(x2) # store 0x40ac939d45c28610 in memory
fld f23, 0(x2) # load 0x40ac939d45c28610 from memory into f23
fadd.d f29, f22, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x20, 0x0a090d4f8aa4f425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
li x3, 0x56e1a985a90b720a # load x3 with value 0x56e1a985a90b720a
sd x3, 0(x2) # store 0x56e1a985a90b720a in memory
fld f24, 0(x2) # load 0x56e1a985a90b720a from memory into f24
fadd.d f20, f30, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x9, 0xa25ecd8ea1378528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
li x3, 0x4a756d2f122800fe # load x3 with value 0x4a756d2f122800fe
sd x3, 0(x2) # store 0x4a756d2f122800fe in memory
fld f27, 0(x2) # load 0x4a756d2f122800fe from memory into f27
fadd.d f9, f12, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x6, 0xa8db6a5f519cb0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
li x3, 0x5962bbf191a780aa # load x3 with value 0x5962bbf191a780aa
sd x3, 0(x2) # store 0x5962bbf191a780aa in memory
fld f14, 0(x2) # load 0x5962bbf191a780aa from memory into f14
fadd.d f6, f9, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x12, 0xc04ee524098a26ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
li x3, 0xb7eabd6f17a0a0b7 # load x3 with value 0xb7eabd6f17a0a0b7
sd x3, 0(x2) # store 0xb7eabd6f17a0a0b7 in memory
fld f18, 0(x2) # load 0xb7eabd6f17a0a0b7 from memory into f18
fadd.d f12, f31, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x29, 0x706c08688b79daf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
li x3, 0x0b099b7945ee1591 # load x3 with value 0x0b099b7945ee1591
sd x3, 0(x2) # store 0x0b099b7945ee1591 in memory
fld f15, 0(x2) # load 0x0b099b7945ee1591 from memory into f15
fadd.d f29, f16, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x15, 0xaeebbeea01367b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
li x3, 0x2c0334b472611e77 # load x3 with value 0x2c0334b472611e77
sd x3, 0(x2) # store 0x2c0334b472611e77 in memory
fld f28, 0(x2) # load 0x2c0334b472611e77 from memory into f28
fadd.d f15, f14, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x23, 0xd427e1d2c6999952 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
li x3, 0x3874a6caa02a0c15 # load x3 with value 0x3874a6caa02a0c15
sd x3, 0(x2) # store 0x3874a6caa02a0c15 in memory
fld f7, 0(x2) # load 0x3874a6caa02a0c15 from memory into f7
fadd.d f23, f25, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x13, 0xbab8a2d8bb715755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
li x3, 0xd74bc4e10be470f9 # load x3 with value 0xd74bc4e10be470f9
sd x3, 0(x2) # store 0xd74bc4e10be470f9 in memory
fld f27, 0(x2) # load 0xd74bc4e10be470f9 from memory into f27
fadd.d f13, f6, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x21, 0x222a4d33eff1937a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
li x3, 0xfb5e0368d166c7a6 # load x3 with value 0xfb5e0368d166c7a6
sd x3, 0(x2) # store 0xfb5e0368d166c7a6 in memory
fld f6, 0(x2) # load 0xfb5e0368d166c7a6 from memory into f6
fadd.d f21, f19, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x20, 0x3dc7cce364e9c67d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
li x3, 0x00d7fca24431043e # load x3 with value 0x00d7fca24431043e
sd x3, 0(x2) # store 0x00d7fca24431043e in memory
fld f26, 0(x2) # load 0x00d7fca24431043e from memory into f26
fadd.d f20, f29, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x3, 0x7c30f35b0930a8ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
li x3, 0x6069efd8289560dc # load x3 with value 0x6069efd8289560dc
sd x3, 0(x2) # store 0x6069efd8289560dc in memory
fld f13, 0(x2) # load 0x6069efd8289560dc from memory into f13
fadd.d f3, f6, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x17, 0x1c14ee4f56f7255e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
li x3, 0x1c2b10ebd7cc3aa2 # load x3 with value 0x1c2b10ebd7cc3aa2
sd x3, 0(x2) # store 0x1c2b10ebd7cc3aa2 in memory
fld f15, 0(x2) # load 0x1c2b10ebd7cc3aa2 from memory into f15
fadd.d f17, f11, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x26, 0xa580f7ed790c0b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
li x3, 0xe4ad45ede705ea32 # load x3 with value 0xe4ad45ede705ea32
sd x3, 0(x2) # store 0xe4ad45ede705ea32 in memory
fld f27, 0(x2) # load 0xe4ad45ede705ea32 from memory into f27
fadd.d f26, f13, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x5, 0x5141a065626473db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fae5611745f0b0f # load x3 with value 0x0fae5611745f0b0f
sd x3, 0(x2) # store 0x0fae5611745f0b0f in memory
fld f18, 0(x2) # load 0x0fae5611745f0b0f from memory into f18
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
fadd.d f5, f18, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x8, 0xcbf07a530295d3b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb19a545bd96f7f1f # load x3 with value 0xb19a545bd96f7f1f
sd x3, 0(x2) # store 0xb19a545bd96f7f1f in memory
fld f24, 0(x2) # load 0xb19a545bd96f7f1f from memory into f24
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fadd.d f8, f24, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x10, 0xa3a6f7802a1a15e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4066004abc95787 # load x3 with value 0xb4066004abc95787
sd x3, 0(x2) # store 0xb4066004abc95787 in memory
fld f6, 0(x2) # load 0xb4066004abc95787 from memory into f6
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
fadd.d f10, f6, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x11, 0x251869c23f5ed5b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3cbae1400a7c6b95 # load x3 with value 0x3cbae1400a7c6b95
sd x3, 0(x2) # store 0x3cbae1400a7c6b95 in memory
fld f31, 0(x2) # load 0x3cbae1400a7c6b95 from memory into f31
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
fadd.d f11, f31, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x25, 0x8a00ae64e4609e91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3044584d7e6f2e4 # load x3 with value 0xf3044584d7e6f2e4
sd x3, 0(x2) # store 0xf3044584d7e6f2e4 in memory
fld f22, 0(x2) # load 0xf3044584d7e6f2e4 from memory into f22
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fadd.d f25, f22, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x3, 0x68cc1e45460e08f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b8eaf37de806d72 # load x3 with value 0x7b8eaf37de806d72
sd x3, 0(x2) # store 0x7b8eaf37de806d72 in memory
fld f8, 0(x2) # load 0x7b8eaf37de806d72 from memory into f8
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
fadd.d f3, f8, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x25, 0x69d72d29ce47fdb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57c2bc2e623689ff # load x3 with value 0x57c2bc2e623689ff
sd x3, 0(x2) # store 0x57c2bc2e623689ff in memory
fld f21, 0(x2) # load 0x57c2bc2e623689ff from memory into f21
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
fadd.d f25, f21, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x31, 0x340b15144c54b074 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f635535ad1e8c64 # load x3 with value 0x8f635535ad1e8c64
sd x3, 0(x2) # store 0x8f635535ad1e8c64 in memory
fld f9, 0(x2) # load 0x8f635535ad1e8c64 from memory into f9
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fadd.d f31, f9, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x9, 0x30d36867137dd06f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5766a0d4e03493d3 # load x3 with value 0x5766a0d4e03493d3
sd x3, 0(x2) # store 0x5766a0d4e03493d3 in memory
fld f28, 0(x2) # load 0x5766a0d4e03493d3 from memory into f28
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fadd.d f9, f28, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x17, 0xe40894bf3e96e11c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x601fc24b43d76b71 # load x3 with value 0x601fc24b43d76b71
sd x3, 0(x2) # store 0x601fc24b43d76b71 in memory
fld f26, 0(x2) # load 0x601fc24b43d76b71 from memory into f26
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
fadd.d f17, f26, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x21, 0x31e4eaa1672c9dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb58c2025f5ab0e0f # load x3 with value 0xb58c2025f5ab0e0f
sd x3, 0(x2) # store 0xb58c2025f5ab0e0f in memory
fld f29, 0(x2) # load 0xb58c2025f5ab0e0f from memory into f29
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fadd.d f21, f29, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x3, 0xce606e1931bac1ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1dd887f4a94917f3 # load x3 with value 0x1dd887f4a94917f3
sd x3, 0(x2) # store 0x1dd887f4a94917f3 in memory
fld f21, 0(x2) # load 0x1dd887f4a94917f3 from memory into f21
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
fadd.d f3, f21, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x27, 0xc517e0a0f065c77b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x856d7f972cc9d7ef # load x3 with value 0x856d7f972cc9d7ef
sd x3, 0(x2) # store 0x856d7f972cc9d7ef in memory
fld f13, 0(x2) # load 0x856d7f972cc9d7ef from memory into f13
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
fadd.d f27, f13, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x20, 0xd92b3990e7c2ecf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06cddb9f4fdda3b4 # load x3 with value 0x06cddb9f4fdda3b4
sd x3, 0(x2) # store 0x06cddb9f4fdda3b4 in memory
fld f8, 0(x2) # load 0x06cddb9f4fdda3b4 from memory into f8
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fadd.d f20, f8, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x19, 0xa4cbfd784cf7283f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x025b5dfdbf2d7a79 # load x3 with value 0x025b5dfdbf2d7a79
sd x3, 0(x2) # store 0x025b5dfdbf2d7a79 in memory
fld f26, 0(x2) # load 0x025b5dfdbf2d7a79 from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
fadd.d f19, f26, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x29, 0x5ee89cc5ef5819a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x937fd21f287e43bf # load x3 with value 0x937fd21f287e43bf
sd x3, 0(x2) # store 0x937fd21f287e43bf in memory
fld f25, 0(x2) # load 0x937fd21f287e43bf from memory into f25
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
fadd.d f29, f25, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x30, 0xaa77d5174b2d0636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x834603b626155672 # load x3 with value 0x834603b626155672
sd x3, 0(x2) # store 0x834603b626155672 in memory
fld f20, 0(x2) # load 0x834603b626155672 from memory into f20
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
fadd.d f30, f20, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x30, 0x38fd356556c47238 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x892e017dbe0374ec # load x3 with value 0x892e017dbe0374ec
sd x3, 0(x2) # store 0x892e017dbe0374ec in memory
fld f31, 0(x2) # load 0x892e017dbe0374ec from memory into f31
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fadd.d f30, f31, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x22, 0x9daad81471e8d9ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5dc687a75c398510 # load x3 with value 0x5dc687a75c398510
sd x3, 0(x2) # store 0x5dc687a75c398510 in memory
fld f18, 0(x2) # load 0x5dc687a75c398510 from memory into f18
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fadd.d f22, f18, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x29, 0x42408a8c4ac357e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c15ceeb93225cea # load x3 with value 0x5c15ceeb93225cea
sd x3, 0(x2) # store 0x5c15ceeb93225cea in memory
fld f10, 0(x2) # load 0x5c15ceeb93225cea from memory into f10
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
fadd.d f29, f10, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x22, 0xfd95290d84f0637e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d540b9f20ef9a57 # load x3 with value 0x2d540b9f20ef9a57
sd x3, 0(x2) # store 0x2d540b9f20ef9a57 in memory
fld f29, 0(x2) # load 0x2d540b9f20ef9a57 from memory into f29
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fadd.d f22, f29, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x1, 0x7335deb165ca295e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2dd9ca886d53070 # load x3 with value 0xf2dd9ca886d53070
sd x3, 0(x2) # store 0xf2dd9ca886d53070 in memory
fld f3, 0(x2) # load 0xf2dd9ca886d53070 from memory into f3
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
fadd.d f1, f3, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x12, 0x36be620ce4886069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x225f0080c36b8acf # load x3 with value 0x225f0080c36b8acf
sd x3, 0(x2) # store 0x225f0080c36b8acf in memory
fld f25, 0(x2) # load 0x225f0080c36b8acf from memory into f25
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fadd.d f12, f25, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x11, 0x8ee36d291bb65d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9080b104a1e6e77d # load x3 with value 0x9080b104a1e6e77d
sd x3, 0(x2) # store 0x9080b104a1e6e77d in memory
fld f17, 0(x2) # load 0x9080b104a1e6e77d from memory into f17
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
fadd.d f11, f17, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x12, 0x9ebee028d3d501aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x722187b50a6e5c25 # load x3 with value 0x722187b50a6e5c25
sd x3, 0(x2) # store 0x722187b50a6e5c25 in memory
fld f1, 0(x2) # load 0x722187b50a6e5c25 from memory into f1
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fadd.d f12, f1, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x20, 0x5c9d1a8cf4bc33ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b4332bb633dd1b1 # load x3 with value 0x5b4332bb633dd1b1
sd x3, 0(x2) # store 0x5b4332bb633dd1b1 in memory
fld f1, 0(x2) # load 0x5b4332bb633dd1b1 from memory into f1
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fadd.d f20, f1, f14 # perform operation

# Testcase cp_frm
li x9, 0x6a70ddcaf0cec725 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x350c364c80dd4489 # load x3 with value 0x350c364c80dd4489
sd x3, 0(x2) # store 0x350c364c80dd4489 in memory
fld f18, 0(x2) # load 0x350c364c80dd4489 from memory into f18
li x3, 0x58efbe27d1946513 # load x3 with value 0x58efbe27d1946513
sd x3, 0(x2) # store 0x58efbe27d1946513 in memory
fld f7, 0(x2) # load 0x58efbe27d1946513 from memory into f7
fadd.d f9, f18, f7, dyn # perform operation
fadd.d f9, f18, f7, rdn # perform operation
fadd.d f9, f18, f7, rmm # perform operation
fadd.d f9, f18, f7, rne # perform operation
fadd.d f9, f18, f7, rtz # perform operation
fadd.d f9, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x27, 0x84803946a59221fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
fadd.d f27, f15, f29, dyn # perform operation
fadd.d f27, f15, f29, rdn # perform operation
fadd.d f27, f15, f29, rmm # perform operation
fadd.d f27, f15, f29, rne # perform operation
fadd.d f27, f15, f29, rtz # perform operation
fadd.d f27, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000000)
li x8, 0x306527675f3169be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
fadd.d f8, f28, f14, dyn # perform operation
fadd.d f8, f28, f14, rdn # perform operation
fadd.d f8, f28, f14, rmm # perform operation
fadd.d f8, f28, f14, rne # perform operation
fadd.d f8, f28, f14, rtz # perform operation
fadd.d f8, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff0000000000000)
li x7, 0xc1e4645448bdbaa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fadd.d f7, f2, f11, dyn # perform operation
fadd.d f7, f2, f11, rdn # perform operation
fadd.d f7, f2, f11, rmm # perform operation
fadd.d f7, f2, f11, rne # perform operation
fadd.d f7, f2, f11, rtz # perform operation
fadd.d f7, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff0000000000000)
li x3, 0xd7979a97a92184fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fadd.d f3, f7, f28, dyn # perform operation
fadd.d f3, f7, f28, rdn # perform operation
fadd.d f3, f7, f28, rmm # perform operation
fadd.d f3, f7, f28, rne # perform operation
fadd.d f3, f7, f28, rtz # perform operation
fadd.d f3, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff8000000000000)
li x21, 0x275403c6fd53db22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fadd.d f21, f9, f28, dyn # perform operation
fadd.d f21, f9, f28, rdn # perform operation
fadd.d f21, f9, f28, rmm # perform operation
fadd.d f21, f9, f28, rne # perform operation
fadd.d f21, f9, f28, rtz # perform operation
fadd.d f21, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff8000000000000)
li x8, 0x2172bcfbc71bda30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
fadd.d f8, f19, f7, dyn # perform operation
fadd.d f8, f19, f7, rdn # perform operation
fadd.d f8, f19, f7, rmm # perform operation
fadd.d f8, f19, f7, rne # perform operation
fadd.d f8, f19, f7, rtz # perform operation
fadd.d f8, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000000000000000)
li x23, 0x9836ee48faed7624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f7, 0(x2) # load 0x4000000000000000 from memory into f7
fadd.d f23, f19, f7, dyn # perform operation
fadd.d f23, f19, f7, rdn # perform operation
fadd.d f23, f19, f7, rmm # perform operation
fadd.d f23, f19, f7, rne # perform operation
fadd.d f23, f19, f7, rtz # perform operation
fadd.d f23, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000000000000000)
li x21, 0x5daadb4f01e99f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fadd.d f21, f24, f20, dyn # perform operation
fadd.d f21, f24, f20, rdn # perform operation
fadd.d f21, f24, f20, rmm # perform operation
fadd.d f21, f24, f20, rne # perform operation
fadd.d f21, f24, f20, rtz # perform operation
fadd.d f21, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x10000000000000)
li x11, 0x7e885d01b8279797 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
fadd.d f11, f7, f1, dyn # perform operation
fadd.d f11, f7, f1, rdn # perform operation
fadd.d f11, f7, f1, rmm # perform operation
fadd.d f11, f7, f1, rne # perform operation
fadd.d f11, f7, f1, rtz # perform operation
fadd.d f11, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8010000000000000)
li x24, 0xc99b0657fe77ff2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fadd.d f24, f23, f10, dyn # perform operation
fadd.d f24, f23, f10, rdn # perform operation
fadd.d f24, f23, f10, rmm # perform operation
fadd.d f24, f23, f10, rne # perform operation
fadd.d f24, f23, f10, rtz # perform operation
fadd.d f24, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fefffffffffffff)
li x22, 0x10105882013be4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
fadd.d f22, f8, f26, dyn # perform operation
fadd.d f22, f8, f26, rdn # perform operation
fadd.d f22, f8, f26, rmm # perform operation
fadd.d f22, f8, f26, rne # perform operation
fadd.d f22, f8, f26, rtz # perform operation
fadd.d f22, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffefffffffffffff)
li x31, 0xd95d627b5bd7d3fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
fadd.d f31, f11, f15, dyn # perform operation
fadd.d f31, f11, f15, rdn # perform operation
fadd.d f31, f11, f15, rmm # perform operation
fadd.d f31, f11, f15, rne # perform operation
fadd.d f31, f11, f15, rtz # perform operation
fadd.d f31, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfffffffffffff)
li x15, 0x195d862b524cd5aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f27, 0(x2) # load 0x0000000000000000 from memory into f27
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
fadd.d f15, f27, f2, dyn # perform operation
fadd.d f15, f27, f2, rdn # perform operation
fadd.d f15, f27, f2, rmm # perform operation
fadd.d f15, f27, f2, rne # perform operation
fadd.d f15, f27, f2, rtz # perform operation
fadd.d f15, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800fffffffffffff)
li x30, 0xf3135799b22fde52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fadd.d f30, f1, f19, dyn # perform operation
fadd.d f30, f1, f19, rdn # perform operation
fadd.d f30, f1, f19, rmm # perform operation
fadd.d f30, f1, f19, rne # perform operation
fadd.d f30, f1, f19, rtz # perform operation
fadd.d f30, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000)
li x28, 0x0c1c319968fadd16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fadd.d f28, f24, f23, dyn # perform operation
fadd.d f28, f24, f23, rdn # perform operation
fadd.d f28, f24, f23, rmm # perform operation
fadd.d f28, f24, f23, rne # perform operation
fadd.d f28, f24, f23, rtz # perform operation
fadd.d f28, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8008000000000000)
li x21, 0xd70a9cedba5dfa03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
fadd.d f21, f7, f9, dyn # perform operation
fadd.d f21, f7, f9, rdn # perform operation
fadd.d f21, f7, f9, rmm # perform operation
fadd.d f21, f7, f9, rne # perform operation
fadd.d f21, f7, f9, rtz # perform operation
fadd.d f21, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x24, 0x9c73ab081eb6b821 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f14, 0(x2) # load 0x0000000000000000 from memory into f14
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
fadd.d f24, f14, f1, dyn # perform operation
fadd.d f24, f14, f1, rdn # perform operation
fadd.d f24, f14, f1, rmm # perform operation
fadd.d f24, f14, f1, rne # perform operation
fadd.d f24, f14, f1, rtz # perform operation
fadd.d f24, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000001)
li x5, 0x8e295e4268db30f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
fadd.d f5, f6, f28, dyn # perform operation
fadd.d f5, f6, f28, rdn # perform operation
fadd.d f5, f6, f28, rmm # perform operation
fadd.d f5, f6, f28, rne # perform operation
fadd.d f5, f6, f28, rtz # perform operation
fadd.d f5, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000000)
li x21, 0x07b254044369e794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fadd.d f21, f15, f22, dyn # perform operation
fadd.d f21, f15, f22, rdn # perform operation
fadd.d f21, f15, f22, rmm # perform operation
fadd.d f21, f15, f22, rne # perform operation
fadd.d f21, f15, f22, rtz # perform operation
fadd.d f21, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfff0000000000000)
li x9, 0x9494ff3b731c7200 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fadd.d f9, f17, f3, dyn # perform operation
fadd.d f9, f17, f3, rdn # perform operation
fadd.d f9, f17, f3, rmm # perform operation
fadd.d f9, f17, f3, rne # perform operation
fadd.d f9, f17, f3, rtz # perform operation
fadd.d f9, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff8000000000000)
li x14, 0xa277fe4e4e0e5b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fadd.d f14, f31, f28, dyn # perform operation
fadd.d f14, f31, f28, rdn # perform operation
fadd.d f14, f31, f28, rmm # perform operation
fadd.d f14, f31, f28, rne # perform operation
fadd.d f14, f31, f28, rtz # perform operation
fadd.d f14, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffffffffffff)
li x13, 0x426b37f4010fe64a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
fadd.d f13, f18, f11, dyn # perform operation
fadd.d f13, f18, f11, rdn # perform operation
fadd.d f13, f18, f11, rmm # perform operation
fadd.d f13, f18, f11, rne # perform operation
fadd.d f13, f18, f11, rtz # perform operation
fadd.d f13, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000001)
li x31, 0xc0f9dc790a513d03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fadd.d f31, f18, f12, dyn # perform operation
fadd.d f31, f18, f12, rdn # perform operation
fadd.d f31, f18, f12, rmm # perform operation
fadd.d f31, f18, f12, rne # perform operation
fadd.d f31, f18, f12, rtz # perform operation
fadd.d f31, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff7ffffffffffff)
li x2, 0xff11fcca0973c829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fadd.d f2, f28, f25, dyn # perform operation
fadd.d f2, f28, f25, rdn # perform operation
fadd.d f2, f28, f25, rmm # perform operation
fadd.d f2, f28, f25, rne # perform operation
fadd.d f2, f28, f25, rtz # perform operation
fadd.d f2, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x5a392534a57711ad)
li x7, 0x46ff0adfb88f4ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
fadd.d f7, f6, f23, dyn # perform operation
fadd.d f7, f6, f23, rdn # perform operation
fadd.d f7, f6, f23, rmm # perform operation
fadd.d f7, f6, f23, rne # perform operation
fadd.d f7, f6, f23, rtz # perform operation
fadd.d f7, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xa6e895993737426c)
li x21, 0xd3be041dc69e5f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fadd.d f21, f16, f14, dyn # perform operation
fadd.d f21, f16, f14, rdn # perform operation
fadd.d f21, f16, f14, rmm # perform operation
fadd.d f21, f16, f14, rne # perform operation
fadd.d f21, f16, f14, rtz # perform operation
fadd.d f21, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x0)
li x27, 0xf9ea40362556da98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fadd.d f27, f16, f2, dyn # perform operation
fadd.d f27, f16, f2, rdn # perform operation
fadd.d f27, f16, f2, rmm # perform operation
fadd.d f27, f16, f2, rne # perform operation
fadd.d f27, f16, f2, rtz # perform operation
fadd.d f27, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000000)
li x30, 0x6dd474c0096f368e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
fadd.d f30, f6, f2, dyn # perform operation
fadd.d f30, f6, f2, rdn # perform operation
fadd.d f30, f6, f2, rmm # perform operation
fadd.d f30, f6, f2, rne # perform operation
fadd.d f30, f6, f2, rtz # perform operation
fadd.d f30, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff0000000000000)
li x13, 0xb5390e683d6be2c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
fadd.d f13, f28, f7, dyn # perform operation
fadd.d f13, f28, f7, rdn # perform operation
fadd.d f13, f28, f7, rmm # perform operation
fadd.d f13, f28, f7, rne # perform operation
fadd.d f13, f28, f7, rtz # perform operation
fadd.d f13, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff0000000000000)
li x14, 0x747672d3194f1342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fadd.d f14, f15, f3, dyn # perform operation
fadd.d f14, f15, f3, rdn # perform operation
fadd.d f14, f15, f3, rmm # perform operation
fadd.d f14, f15, f3, rne # perform operation
fadd.d f14, f15, f3, rtz # perform operation
fadd.d f14, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff8000000000000)
li x15, 0x305a30d6577ea832 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fadd.d f15, f8, f26, dyn # perform operation
fadd.d f15, f8, f26, rdn # perform operation
fadd.d f15, f8, f26, rmm # perform operation
fadd.d f15, f8, f26, rne # perform operation
fadd.d f15, f8, f26, rtz # perform operation
fadd.d f15, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff8000000000000)
li x18, 0xab559fce89bf5049 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
fadd.d f18, f10, f15, dyn # perform operation
fadd.d f18, f10, f15, rdn # perform operation
fadd.d f18, f10, f15, rmm # perform operation
fadd.d f18, f10, f15, rne # perform operation
fadd.d f18, f10, f15, rtz # perform operation
fadd.d f18, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x4000000000000000)
li x2, 0x632fb69ea2bf37a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
fadd.d f2, f19, f24, dyn # perform operation
fadd.d f2, f19, f24, rdn # perform operation
fadd.d f2, f19, f24, rmm # perform operation
fadd.d f2, f19, f24, rne # perform operation
fadd.d f2, f19, f24, rtz # perform operation
fadd.d f2, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xc000000000000000)
li x14, 0xb4d05e0d4bb92f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
fadd.d f14, f5, f12, dyn # perform operation
fadd.d f14, f5, f12, rdn # perform operation
fadd.d f14, f5, f12, rmm # perform operation
fadd.d f14, f5, f12, rne # perform operation
fadd.d f14, f5, f12, rtz # perform operation
fadd.d f14, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x10000000000000)
li x12, 0xb132074a86b01b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fadd.d f12, f31, f19, dyn # perform operation
fadd.d f12, f31, f19, rdn # perform operation
fadd.d f12, f31, f19, rmm # perform operation
fadd.d f12, f31, f19, rne # perform operation
fadd.d f12, f31, f19, rtz # perform operation
fadd.d f12, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8010000000000000)
li x4, 0xea33122102775ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
fadd.d f4, f18, f13, dyn # perform operation
fadd.d f4, f18, f13, rdn # perform operation
fadd.d f4, f18, f13, rmm # perform operation
fadd.d f4, f18, f13, rne # perform operation
fadd.d f4, f18, f13, rtz # perform operation
fadd.d f4, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fefffffffffffff)
li x1, 0xb0efb4851903b889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
fadd.d f1, f23, f12, dyn # perform operation
fadd.d f1, f23, f12, rdn # perform operation
fadd.d f1, f23, f12, rmm # perform operation
fadd.d f1, f23, f12, rne # perform operation
fadd.d f1, f23, f12, rtz # perform operation
fadd.d f1, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xffefffffffffffff)
li x25, 0xd88631b2675b0710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
fadd.d f25, f13, f2, dyn # perform operation
fadd.d f25, f13, f2, rdn # perform operation
fadd.d f25, f13, f2, rmm # perform operation
fadd.d f25, f13, f2, rne # perform operation
fadd.d f25, f13, f2, rtz # perform operation
fadd.d f25, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfffffffffffff)
li x14, 0xa7a9ae2d75c37d5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
fadd.d f14, f31, f26, dyn # perform operation
fadd.d f14, f31, f26, rdn # perform operation
fadd.d f14, f31, f26, rmm # perform operation
fadd.d f14, f31, f26, rne # perform operation
fadd.d f14, f31, f26, rtz # perform operation
fadd.d f14, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x800fffffffffffff)
li x31, 0x89aab894755324ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fadd.d f31, f26, f30, dyn # perform operation
fadd.d f31, f26, f30, rdn # perform operation
fadd.d f31, f26, f30, rmm # perform operation
fadd.d f31, f26, f30, rne # perform operation
fadd.d f31, f26, f30, rtz # perform operation
fadd.d f31, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000)
li x17, 0x02934e5b87feb593 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fadd.d f17, f31, f27, dyn # perform operation
fadd.d f17, f31, f27, rdn # perform operation
fadd.d f17, f31, f27, rmm # perform operation
fadd.d f17, f31, f27, rne # perform operation
fadd.d f17, f31, f27, rtz # perform operation
fadd.d f17, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8008000000000000)
li x22, 0x2b9fc9b28548d18e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fadd.d f22, f20, f26, dyn # perform operation
fadd.d f22, f20, f26, rdn # perform operation
fadd.d f22, f20, f26, rmm # perform operation
fadd.d f22, f20, f26, rne # perform operation
fadd.d f22, f20, f26, rtz # perform operation
fadd.d f22, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x1)
li x25, 0x6ec36368a166174e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fadd.d f25, f2, f27, dyn # perform operation
fadd.d f25, f2, f27, rdn # perform operation
fadd.d f25, f2, f27, rmm # perform operation
fadd.d f25, f2, f27, rne # perform operation
fadd.d f25, f2, f27, rtz # perform operation
fadd.d f25, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000001)
li x6, 0x761a076e9616309d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
fadd.d f6, f30, f17, dyn # perform operation
fadd.d f6, f30, f17, rdn # perform operation
fadd.d f6, f30, f17, rmm # perform operation
fadd.d f6, f30, f17, rne # perform operation
fadd.d f6, f30, f17, rtz # perform operation
fadd.d f6, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000000)
li x18, 0x38be35b1afa1bb6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fadd.d f18, f26, f7, dyn # perform operation
fadd.d f18, f26, f7, rdn # perform operation
fadd.d f18, f26, f7, rmm # perform operation
fadd.d f18, f26, f7, rne # perform operation
fadd.d f18, f26, f7, rtz # perform operation
fadd.d f18, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfff0000000000000)
li x1, 0xfa82e07266bed7fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fadd.d f1, f5, f26, dyn # perform operation
fadd.d f1, f5, f26, rdn # perform operation
fadd.d f1, f5, f26, rmm # perform operation
fadd.d f1, f5, f26, rne # perform operation
fadd.d f1, f5, f26, rtz # perform operation
fadd.d f1, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff8000000000000)
li x15, 0xf6647e32bc08d7b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fadd.d f15, f20, f6, dyn # perform operation
fadd.d f15, f20, f6, rdn # perform operation
fadd.d f15, f20, f6, rmm # perform operation
fadd.d f15, f20, f6, rne # perform operation
fadd.d f15, f20, f6, rtz # perform operation
fadd.d f15, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fffffffffffffff)
li x25, 0xc12e2d9a3d66d6ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fadd.d f25, f1, f29, dyn # perform operation
fadd.d f25, f1, f29, rdn # perform operation
fadd.d f25, f1, f29, rmm # perform operation
fadd.d f25, f1, f29, rne # perform operation
fadd.d f25, f1, f29, rtz # perform operation
fadd.d f25, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000001)
li x3, 0x9661994715d7a513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
fadd.d f3, f10, f28, dyn # perform operation
fadd.d f3, f10, f28, rdn # perform operation
fadd.d f3, f10, f28, rmm # perform operation
fadd.d f3, f10, f28, rne # perform operation
fadd.d f3, f10, f28, rtz # perform operation
fadd.d f3, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff7ffffffffffff)
li x3, 0x3a582f3528797f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f14, 0(x2) # load 0x7ff7ffffffffffff from memory into f14
fadd.d f3, f6, f14, dyn # perform operation
fadd.d f3, f6, f14, rdn # perform operation
fadd.d f3, f6, f14, rmm # perform operation
fadd.d f3, f6, f14, rne # perform operation
fadd.d f3, f6, f14, rtz # perform operation
fadd.d f3, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x5a392534a57711ad)
li x24, 0x3f4566e1750031ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fadd.d f24, f3, f28, dyn # perform operation
fadd.d f24, f3, f28, rdn # perform operation
fadd.d f24, f3, f28, rmm # perform operation
fadd.d f24, f3, f28, rne # perform operation
fadd.d f24, f3, f28, rtz # perform operation
fadd.d f24, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xa6e895993737426c)
li x8, 0xa2e3cf1624fd69fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
fadd.d f8, f12, f15, dyn # perform operation
fadd.d f8, f12, f15, rdn # perform operation
fadd.d f8, f12, f15, rmm # perform operation
fadd.d f8, f12, f15, rne # perform operation
fadd.d f8, f12, f15, rtz # perform operation
fadd.d f8, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x0)
li x8, 0x07f73a5f04892b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fadd.d f8, f30, f2, dyn # perform operation
fadd.d f8, f30, f2, rdn # perform operation
fadd.d f8, f30, f2, rmm # perform operation
fadd.d f8, f30, f2, rne # perform operation
fadd.d f8, f30, f2, rtz # perform operation
fadd.d f8, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000000)
li x30, 0x85d7899eaf3d4797 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fadd.d f30, f27, f1, dyn # perform operation
fadd.d f30, f27, f1, rdn # perform operation
fadd.d f30, f27, f1, rmm # perform operation
fadd.d f30, f27, f1, rne # perform operation
fadd.d f30, f27, f1, rtz # perform operation
fadd.d f30, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff0000000000000)
li x3, 0x286bf112deaf82c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
fadd.d f3, f26, f7, dyn # perform operation
fadd.d f3, f26, f7, rdn # perform operation
fadd.d f3, f26, f7, rmm # perform operation
fadd.d f3, f26, f7, rne # perform operation
fadd.d f3, f26, f7, rtz # perform operation
fadd.d f3, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff0000000000000)
li x25, 0xeae0755b5ce231f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fadd.d f25, f31, f20, dyn # perform operation
fadd.d f25, f31, f20, rdn # perform operation
fadd.d f25, f31, f20, rmm # perform operation
fadd.d f25, f31, f20, rne # perform operation
fadd.d f25, f31, f20, rtz # perform operation
fadd.d f25, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff8000000000000)
li x3, 0xd90feb3e60e23601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
fadd.d f3, f6, f4, dyn # perform operation
fadd.d f3, f6, f4, rdn # perform operation
fadd.d f3, f6, f4, rmm # perform operation
fadd.d f3, f6, f4, rne # perform operation
fadd.d f3, f6, f4, rtz # perform operation
fadd.d f3, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff8000000000000)
li x8, 0x8571ccb741455c35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
fadd.d f8, f6, f15, dyn # perform operation
fadd.d f8, f6, f15, rdn # perform operation
fadd.d f8, f6, f15, rmm # perform operation
fadd.d f8, f6, f15, rne # perform operation
fadd.d f8, f6, f15, rtz # perform operation
fadd.d f8, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x4000000000000000)
li x20, 0xbeb15737a4ff96b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fadd.d f20, f30, f19, dyn # perform operation
fadd.d f20, f30, f19, rdn # perform operation
fadd.d f20, f30, f19, rmm # perform operation
fadd.d f20, f30, f19, rne # perform operation
fadd.d f20, f30, f19, rtz # perform operation
fadd.d f20, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xc000000000000000)
li x3, 0x29b5c481fff29cab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
fadd.d f3, f23, f5, dyn # perform operation
fadd.d f3, f23, f5, rdn # perform operation
fadd.d f3, f23, f5, rmm # perform operation
fadd.d f3, f23, f5, rne # perform operation
fadd.d f3, f23, f5, rtz # perform operation
fadd.d f3, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x10000000000000)
li x18, 0x01f8dece2b989932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
fadd.d f18, f5, f27, dyn # perform operation
fadd.d f18, f5, f27, rdn # perform operation
fadd.d f18, f5, f27, rmm # perform operation
fadd.d f18, f5, f27, rne # perform operation
fadd.d f18, f5, f27, rtz # perform operation
fadd.d f18, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8010000000000000)
li x4, 0x192fd049dd7f1a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
fadd.d f4, f2, f3, dyn # perform operation
fadd.d f4, f2, f3, rdn # perform operation
fadd.d f4, f2, f3, rmm # perform operation
fadd.d f4, f2, f3, rne # perform operation
fadd.d f4, f2, f3, rtz # perform operation
fadd.d f4, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fefffffffffffff)
li x5, 0x5eed4c62d7b4805f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fadd.d f5, f27, f8, dyn # perform operation
fadd.d f5, f27, f8, rdn # perform operation
fadd.d f5, f27, f8, rmm # perform operation
fadd.d f5, f27, f8, rne # perform operation
fadd.d f5, f27, f8, rtz # perform operation
fadd.d f5, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xffefffffffffffff)
li x3, 0x6d7859ae21750b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
fadd.d f3, f12, f15, dyn # perform operation
fadd.d f3, f12, f15, rdn # perform operation
fadd.d f3, f12, f15, rmm # perform operation
fadd.d f3, f12, f15, rne # perform operation
fadd.d f3, f12, f15, rtz # perform operation
fadd.d f3, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfffffffffffff)
li x13, 0xd4c7fe26659df352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
fadd.d f13, f16, f28, dyn # perform operation
fadd.d f13, f16, f28, rdn # perform operation
fadd.d f13, f16, f28, rmm # perform operation
fadd.d f13, f16, f28, rne # perform operation
fadd.d f13, f16, f28, rtz # perform operation
fadd.d f13, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x800fffffffffffff)
li x21, 0x63aeb5271e632a8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
fadd.d f21, f18, f13, dyn # perform operation
fadd.d f21, f18, f13, rdn # perform operation
fadd.d f21, f18, f13, rmm # perform operation
fadd.d f21, f18, f13, rne # perform operation
fadd.d f21, f18, f13, rtz # perform operation
fadd.d f21, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000)
li x5, 0xa29823344a72f2a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
fadd.d f5, f12, f17, dyn # perform operation
fadd.d f5, f12, f17, rdn # perform operation
fadd.d f5, f12, f17, rmm # perform operation
fadd.d f5, f12, f17, rne # perform operation
fadd.d f5, f12, f17, rtz # perform operation
fadd.d f5, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8008000000000000)
li x16, 0xe3fd626973d3c008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
fadd.d f16, f6, f23, dyn # perform operation
fadd.d f16, f6, f23, rdn # perform operation
fadd.d f16, f6, f23, rmm # perform operation
fadd.d f16, f6, f23, rne # perform operation
fadd.d f16, f6, f23, rtz # perform operation
fadd.d f16, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x1)
li x18, 0xbd3ccb98cbd3ff42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fadd.d f18, f20, f2, dyn # perform operation
fadd.d f18, f20, f2, rdn # perform operation
fadd.d f18, f20, f2, rmm # perform operation
fadd.d f18, f20, f2, rne # perform operation
fadd.d f18, f20, f2, rtz # perform operation
fadd.d f18, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000001)
li x12, 0xaf388ee6dba31362 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fadd.d f12, f14, f27, dyn # perform operation
fadd.d f12, f14, f27, rdn # perform operation
fadd.d f12, f14, f27, rmm # perform operation
fadd.d f12, f14, f27, rne # perform operation
fadd.d f12, f14, f27, rtz # perform operation
fadd.d f12, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000000)
li x28, 0x2ffccbb83d12b991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fadd.d f28, f4, f3, dyn # perform operation
fadd.d f28, f4, f3, rdn # perform operation
fadd.d f28, f4, f3, rmm # perform operation
fadd.d f28, f4, f3, rne # perform operation
fadd.d f28, f4, f3, rtz # perform operation
fadd.d f28, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfff0000000000000)
li x20, 0x9352cc8c338d8199 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fadd.d f20, f13, f17, dyn # perform operation
fadd.d f20, f13, f17, rdn # perform operation
fadd.d f20, f13, f17, rmm # perform operation
fadd.d f20, f13, f17, rne # perform operation
fadd.d f20, f13, f17, rtz # perform operation
fadd.d f20, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff8000000000000)
li x1, 0x055016d072d2acc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
fadd.d f1, f4, f16, dyn # perform operation
fadd.d f1, f4, f16, rdn # perform operation
fadd.d f1, f4, f16, rmm # perform operation
fadd.d f1, f4, f16, rne # perform operation
fadd.d f1, f4, f16, rtz # perform operation
fadd.d f1, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fffffffffffffff)
li x19, 0x338f32a7eea984c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
fadd.d f19, f18, f13, dyn # perform operation
fadd.d f19, f18, f13, rdn # perform operation
fadd.d f19, f18, f13, rmm # perform operation
fadd.d f19, f18, f13, rne # perform operation
fadd.d f19, f18, f13, rtz # perform operation
fadd.d f19, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000001)
li x5, 0xe00f83338d5071c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
fadd.d f5, f29, f21, dyn # perform operation
fadd.d f5, f29, f21, rdn # perform operation
fadd.d f5, f29, f21, rmm # perform operation
fadd.d f5, f29, f21, rne # perform operation
fadd.d f5, f29, f21, rtz # perform operation
fadd.d f5, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x5, 0x03011a97f5f8ab63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fadd.d f5, f29, f28, dyn # perform operation
fadd.d f5, f29, f28, rdn # perform operation
fadd.d f5, f29, f28, rmm # perform operation
fadd.d f5, f29, f28, rne # perform operation
fadd.d f5, f29, f28, rtz # perform operation
fadd.d f5, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x5a392534a57711ad)
li x28, 0x430f18193e6a9563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
fadd.d f28, f6, f8, dyn # perform operation
fadd.d f28, f6, f8, rdn # perform operation
fadd.d f28, f6, f8, rmm # perform operation
fadd.d f28, f6, f8, rne # perform operation
fadd.d f28, f6, f8, rtz # perform operation
fadd.d f28, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xa6e895993737426c)
li x12, 0xa66b7a2f9c8ea27c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
fadd.d f12, f7, f23, dyn # perform operation
fadd.d f12, f7, f23, rdn # perform operation
fadd.d f12, f7, f23, rmm # perform operation
fadd.d f12, f7, f23, rne # perform operation
fadd.d f12, f7, f23, rtz # perform operation
fadd.d f12, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x0)
li x14, 0x20a801bb2251d2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
fadd.d f14, f28, f10, dyn # perform operation
fadd.d f14, f28, f10, rdn # perform operation
fadd.d f14, f28, f10, rmm # perform operation
fadd.d f14, f28, f10, rne # perform operation
fadd.d f14, f28, f10, rtz # perform operation
fadd.d f14, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000000)
li x15, 0x91e2068618d2f8de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
fadd.d f15, f2, f30, dyn # perform operation
fadd.d f15, f2, f30, rdn # perform operation
fadd.d f15, f2, f30, rmm # perform operation
fadd.d f15, f2, f30, rne # perform operation
fadd.d f15, f2, f30, rtz # perform operation
fadd.d f15, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff0000000000000)
li x7, 0x82f53ec7bfe25130 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
fadd.d f7, f18, f5, dyn # perform operation
fadd.d f7, f18, f5, rdn # perform operation
fadd.d f7, f18, f5, rmm # perform operation
fadd.d f7, f18, f5, rne # perform operation
fadd.d f7, f18, f5, rtz # perform operation
fadd.d f7, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff0000000000000)
li x6, 0xfebcf0f24b0f275e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
fadd.d f6, f4, f16, dyn # perform operation
fadd.d f6, f4, f16, rdn # perform operation
fadd.d f6, f4, f16, rmm # perform operation
fadd.d f6, f4, f16, rne # perform operation
fadd.d f6, f4, f16, rtz # perform operation
fadd.d f6, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff8000000000000)
li x23, 0x761a80e4eb6c6477 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
fadd.d f23, f3, f17, dyn # perform operation
fadd.d f23, f3, f17, rdn # perform operation
fadd.d f23, f3, f17, rmm # perform operation
fadd.d f23, f3, f17, rne # perform operation
fadd.d f23, f3, f17, rtz # perform operation
fadd.d f23, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff8000000000000)
li x29, 0x1bd64e622e278cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fadd.d f29, f26, f25, dyn # perform operation
fadd.d f29, f26, f25, rdn # perform operation
fadd.d f29, f26, f25, rmm # perform operation
fadd.d f29, f26, f25, rne # perform operation
fadd.d f29, f26, f25, rtz # perform operation
fadd.d f29, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x4000000000000000)
li x22, 0x4f83f3866c846979 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fadd.d f22, f6, f2, dyn # perform operation
fadd.d f22, f6, f2, rdn # perform operation
fadd.d f22, f6, f2, rmm # perform operation
fadd.d f22, f6, f2, rne # perform operation
fadd.d f22, f6, f2, rtz # perform operation
fadd.d f22, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xc000000000000000)
li x3, 0xf6e11d7b653b257c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f5, 0(x2) # load 0xbff0000000000000 from memory into f5
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fadd.d f3, f5, f15, dyn # perform operation
fadd.d f3, f5, f15, rdn # perform operation
fadd.d f3, f5, f15, rmm # perform operation
fadd.d f3, f5, f15, rne # perform operation
fadd.d f3, f5, f15, rtz # perform operation
fadd.d f3, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x10000000000000)
li x11, 0xf43ad898f1e9905a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
fadd.d f11, f22, f15, dyn # perform operation
fadd.d f11, f22, f15, rdn # perform operation
fadd.d f11, f22, f15, rmm # perform operation
fadd.d f11, f22, f15, rne # perform operation
fadd.d f11, f22, f15, rtz # perform operation
fadd.d f11, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8010000000000000)
li x24, 0xec5166950f0ff8af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
fadd.d f24, f13, f29, dyn # perform operation
fadd.d f24, f13, f29, rdn # perform operation
fadd.d f24, f13, f29, rmm # perform operation
fadd.d f24, f13, f29, rne # perform operation
fadd.d f24, f13, f29, rtz # perform operation
fadd.d f24, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fefffffffffffff)
li x29, 0x750ddd78e16479f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
fadd.d f29, f12, f23, dyn # perform operation
fadd.d f29, f12, f23, rdn # perform operation
fadd.d f29, f12, f23, rmm # perform operation
fadd.d f29, f12, f23, rne # perform operation
fadd.d f29, f12, f23, rtz # perform operation
fadd.d f29, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xffefffffffffffff)
li x31, 0x4e106a77eb8f1ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
fadd.d f31, f1, f16, dyn # perform operation
fadd.d f31, f1, f16, rdn # perform operation
fadd.d f31, f1, f16, rmm # perform operation
fadd.d f31, f1, f16, rne # perform operation
fadd.d f31, f1, f16, rtz # perform operation
fadd.d f31, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfffffffffffff)
li x11, 0x87168c26dc19c5d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fadd.d f11, f26, f16, dyn # perform operation
fadd.d f11, f26, f16, rdn # perform operation
fadd.d f11, f26, f16, rmm # perform operation
fadd.d f11, f26, f16, rne # perform operation
fadd.d f11, f26, f16, rtz # perform operation
fadd.d f11, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x800fffffffffffff)
li x6, 0x6133c854f929fb9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
fadd.d f6, f26, f14, dyn # perform operation
fadd.d f6, f26, f14, rdn # perform operation
fadd.d f6, f26, f14, rmm # perform operation
fadd.d f6, f26, f14, rne # perform operation
fadd.d f6, f26, f14, rtz # perform operation
fadd.d f6, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000)
li x12, 0xff907ec0c254330a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
fadd.d f12, f10, f16, dyn # perform operation
fadd.d f12, f10, f16, rdn # perform operation
fadd.d f12, f10, f16, rmm # perform operation
fadd.d f12, f10, f16, rne # perform operation
fadd.d f12, f10, f16, rtz # perform operation
fadd.d f12, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8008000000000000)
li x4, 0xa25f2eef4fdd9cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f13, 0(x2) # load 0x8008000000000000 from memory into f13
fadd.d f4, f20, f13, dyn # perform operation
fadd.d f4, f20, f13, rdn # perform operation
fadd.d f4, f20, f13, rmm # perform operation
fadd.d f4, f20, f13, rne # perform operation
fadd.d f4, f20, f13, rtz # perform operation
fadd.d f4, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x1)
li x15, 0x63ae369fae892119 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fadd.d f15, f21, f13, dyn # perform operation
fadd.d f15, f21, f13, rdn # perform operation
fadd.d f15, f21, f13, rmm # perform operation
fadd.d f15, f21, f13, rne # perform operation
fadd.d f15, f21, f13, rtz # perform operation
fadd.d f15, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000001)
li x3, 0x52691e8588a95f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
fadd.d f3, f13, f12, dyn # perform operation
fadd.d f3, f13, f12, rdn # perform operation
fadd.d f3, f13, f12, rmm # perform operation
fadd.d f3, f13, f12, rne # perform operation
fadd.d f3, f13, f12, rtz # perform operation
fadd.d f3, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000000)
li x3, 0x7ef5bb301734405c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
fadd.d f3, f31, f28, dyn # perform operation
fadd.d f3, f31, f28, rdn # perform operation
fadd.d f3, f31, f28, rmm # perform operation
fadd.d f3, f31, f28, rne # perform operation
fadd.d f3, f31, f28, rtz # perform operation
fadd.d f3, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfff0000000000000)
li x26, 0xc9a7d8ea77eaf789 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
fadd.d f26, f7, f19, dyn # perform operation
fadd.d f26, f7, f19, rdn # perform operation
fadd.d f26, f7, f19, rmm # perform operation
fadd.d f26, f7, f19, rne # perform operation
fadd.d f26, f7, f19, rtz # perform operation
fadd.d f26, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff8000000000000)
li x18, 0x8c647d8f6d39ea1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
fadd.d f18, f31, f14, dyn # perform operation
fadd.d f18, f31, f14, rdn # perform operation
fadd.d f18, f31, f14, rmm # perform operation
fadd.d f18, f31, f14, rne # perform operation
fadd.d f18, f31, f14, rtz # perform operation
fadd.d f18, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fffffffffffffff)
li x30, 0x17f33512e17e01a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
fadd.d f30, f21, f22, dyn # perform operation
fadd.d f30, f21, f22, rdn # perform operation
fadd.d f30, f21, f22, rmm # perform operation
fadd.d f30, f21, f22, rne # perform operation
fadd.d f30, f21, f22, rtz # perform operation
fadd.d f30, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000001)
li x9, 0xea7c6ab2261ca17f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fadd.d f9, f26, f11, dyn # perform operation
fadd.d f9, f26, f11, rdn # perform operation
fadd.d f9, f26, f11, rmm # perform operation
fadd.d f9, f26, f11, rne # perform operation
fadd.d f9, f26, f11, rtz # perform operation
fadd.d f9, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x3, 0x016ec3dac191ee3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fadd.d f3, f27, f30, dyn # perform operation
fadd.d f3, f27, f30, rdn # perform operation
fadd.d f3, f27, f30, rmm # perform operation
fadd.d f3, f27, f30, rne # perform operation
fadd.d f3, f27, f30, rtz # perform operation
fadd.d f3, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x5a392534a57711ad)
li x5, 0x32602a3396512460 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
fadd.d f5, f15, f4, dyn # perform operation
fadd.d f5, f15, f4, rdn # perform operation
fadd.d f5, f15, f4, rmm # perform operation
fadd.d f5, f15, f4, rne # perform operation
fadd.d f5, f15, f4, rtz # perform operation
fadd.d f5, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xa6e895993737426c)
li x8, 0x7572650c1573ac92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fadd.d f8, f7, f28, dyn # perform operation
fadd.d f8, f7, f28, rdn # perform operation
fadd.d f8, f7, f28, rmm # perform operation
fadd.d f8, f7, f28, rne # perform operation
fadd.d f8, f7, f28, rtz # perform operation
fadd.d f8, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x0)
li x20, 0xae7c2b6a7e7f63fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fadd.d f20, f14, f15, dyn # perform operation
fadd.d f20, f14, f15, rdn # perform operation
fadd.d f20, f14, f15, rmm # perform operation
fadd.d f20, f14, f15, rne # perform operation
fadd.d f20, f14, f15, rtz # perform operation
fadd.d f20, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000000)
li x3, 0x2d72436a590fc449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fadd.d f3, f21, f22, dyn # perform operation
fadd.d f3, f21, f22, rdn # perform operation
fadd.d f3, f21, f22, rmm # perform operation
fadd.d f3, f21, f22, rne # perform operation
fadd.d f3, f21, f22, rtz # perform operation
fadd.d f3, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff0000000000000)
li x9, 0x58b8ad394c36c651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f7, 0(x2) # load 0x3ff8000000000000 from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fadd.d f9, f7, f27, dyn # perform operation
fadd.d f9, f7, f27, rdn # perform operation
fadd.d f9, f7, f27, rmm # perform operation
fadd.d f9, f7, f27, rne # perform operation
fadd.d f9, f7, f27, rtz # perform operation
fadd.d f9, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff0000000000000)
li x22, 0xe8ebf934ee490fd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
fadd.d f22, f26, f13, dyn # perform operation
fadd.d f22, f26, f13, rdn # perform operation
fadd.d f22, f26, f13, rmm # perform operation
fadd.d f22, f26, f13, rne # perform operation
fadd.d f22, f26, f13, rtz # perform operation
fadd.d f22, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff8000000000000)
li x18, 0x6e6abf6f0440058e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
fadd.d f18, f4, f19, dyn # perform operation
fadd.d f18, f4, f19, rdn # perform operation
fadd.d f18, f4, f19, rmm # perform operation
fadd.d f18, f4, f19, rne # perform operation
fadd.d f18, f4, f19, rtz # perform operation
fadd.d f18, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff8000000000000)
li x20, 0x308194f3c1983434 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fadd.d f20, f30, f24, dyn # perform operation
fadd.d f20, f30, f24, rdn # perform operation
fadd.d f20, f30, f24, rmm # perform operation
fadd.d f20, f30, f24, rne # perform operation
fadd.d f20, f30, f24, rtz # perform operation
fadd.d f20, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x4000000000000000)
li x14, 0x4102024c988467fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
fadd.d f14, f15, f27, dyn # perform operation
fadd.d f14, f15, f27, rdn # perform operation
fadd.d f14, f15, f27, rmm # perform operation
fadd.d f14, f15, f27, rne # perform operation
fadd.d f14, f15, f27, rtz # perform operation
fadd.d f14, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xc000000000000000)
li x30, 0xe74a371d56bec25f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fadd.d f30, f14, f11, dyn # perform operation
fadd.d f30, f14, f11, rdn # perform operation
fadd.d f30, f14, f11, rmm # perform operation
fadd.d f30, f14, f11, rne # perform operation
fadd.d f30, f14, f11, rtz # perform operation
fadd.d f30, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x10000000000000)
li x2, 0xc657e1c3a0bf9c1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
fadd.d f2, f13, f21, dyn # perform operation
fadd.d f2, f13, f21, rdn # perform operation
fadd.d f2, f13, f21, rmm # perform operation
fadd.d f2, f13, f21, rne # perform operation
fadd.d f2, f13, f21, rtz # perform operation
fadd.d f2, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8010000000000000)
li x5, 0x9192a81bd3dedb39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fadd.d f5, f26, f22, dyn # perform operation
fadd.d f5, f26, f22, rdn # perform operation
fadd.d f5, f26, f22, rmm # perform operation
fadd.d f5, f26, f22, rne # perform operation
fadd.d f5, f26, f22, rtz # perform operation
fadd.d f5, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fefffffffffffff)
li x7, 0xc37b15f9d3e768cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
fadd.d f7, f10, f16, dyn # perform operation
fadd.d f7, f10, f16, rdn # perform operation
fadd.d f7, f10, f16, rmm # perform operation
fadd.d f7, f10, f16, rne # perform operation
fadd.d f7, f10, f16, rtz # perform operation
fadd.d f7, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xffefffffffffffff)
li x30, 0x103f4f45b033733f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f9, 0(x2) # load 0x3ff8000000000000 from memory into f9
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
fadd.d f30, f9, f22, dyn # perform operation
fadd.d f30, f9, f22, rdn # perform operation
fadd.d f30, f9, f22, rmm # perform operation
fadd.d f30, f9, f22, rne # perform operation
fadd.d f30, f9, f22, rtz # perform operation
fadd.d f30, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfffffffffffff)
li x6, 0x767258b1502f87bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fadd.d f6, f29, f9, dyn # perform operation
fadd.d f6, f29, f9, rdn # perform operation
fadd.d f6, f29, f9, rmm # perform operation
fadd.d f6, f29, f9, rne # perform operation
fadd.d f6, f29, f9, rtz # perform operation
fadd.d f6, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x800fffffffffffff)
li x3, 0x13017f0dabfb202f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
fadd.d f3, f8, f28, dyn # perform operation
fadd.d f3, f8, f28, rdn # perform operation
fadd.d f3, f8, f28, rmm # perform operation
fadd.d f3, f8, f28, rne # perform operation
fadd.d f3, f8, f28, rtz # perform operation
fadd.d f3, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000)
li x25, 0xa74e4659167faffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fadd.d f25, f10, f31, dyn # perform operation
fadd.d f25, f10, f31, rdn # perform operation
fadd.d f25, f10, f31, rmm # perform operation
fadd.d f25, f10, f31, rne # perform operation
fadd.d f25, f10, f31, rtz # perform operation
fadd.d f25, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8008000000000000)
li x13, 0x0610b56ad87885cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
fadd.d f13, f21, f2, dyn # perform operation
fadd.d f13, f21, f2, rdn # perform operation
fadd.d f13, f21, f2, rmm # perform operation
fadd.d f13, f21, f2, rne # perform operation
fadd.d f13, f21, f2, rtz # perform operation
fadd.d f13, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x1)
li x7, 0xf8600f4508d38944 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fadd.d f7, f21, f5, dyn # perform operation
fadd.d f7, f21, f5, rdn # perform operation
fadd.d f7, f21, f5, rmm # perform operation
fadd.d f7, f21, f5, rne # perform operation
fadd.d f7, f21, f5, rtz # perform operation
fadd.d f7, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000001)
li x14, 0xe0ab4a58ff619a39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
fadd.d f14, f27, f20, dyn # perform operation
fadd.d f14, f27, f20, rdn # perform operation
fadd.d f14, f27, f20, rmm # perform operation
fadd.d f14, f27, f20, rne # perform operation
fadd.d f14, f27, f20, rtz # perform operation
fadd.d f14, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000000)
li x16, 0x0a038c66b84ff306 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
fadd.d f16, f27, f18, dyn # perform operation
fadd.d f16, f27, f18, rdn # perform operation
fadd.d f16, f27, f18, rmm # perform operation
fadd.d f16, f27, f18, rne # perform operation
fadd.d f16, f27, f18, rtz # perform operation
fadd.d f16, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfff0000000000000)
li x26, 0x8e70cd286d2a17b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
fadd.d f26, f21, f2, dyn # perform operation
fadd.d f26, f21, f2, rdn # perform operation
fadd.d f26, f21, f2, rmm # perform operation
fadd.d f26, f21, f2, rne # perform operation
fadd.d f26, f21, f2, rtz # perform operation
fadd.d f26, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff8000000000000)
li x24, 0x219509d0712ad058 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
fadd.d f24, f12, f31, dyn # perform operation
fadd.d f24, f12, f31, rdn # perform operation
fadd.d f24, f12, f31, rmm # perform operation
fadd.d f24, f12, f31, rne # perform operation
fadd.d f24, f12, f31, rtz # perform operation
fadd.d f24, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fffffffffffffff)
li x18, 0x1472c3c9abde6664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
fadd.d f18, f22, f12, dyn # perform operation
fadd.d f18, f22, f12, rdn # perform operation
fadd.d f18, f22, f12, rmm # perform operation
fadd.d f18, f22, f12, rne # perform operation
fadd.d f18, f22, f12, rtz # perform operation
fadd.d f18, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000001)
li x29, 0xcb47ce1e74c0bfae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fadd.d f29, f22, f2, dyn # perform operation
fadd.d f29, f22, f2, rdn # perform operation
fadd.d f29, f22, f2, rmm # perform operation
fadd.d f29, f22, f2, rne # perform operation
fadd.d f29, f22, f2, rtz # perform operation
fadd.d f29, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x14, 0xe99d4b6e4d9bd125 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
fadd.d f14, f28, f21, dyn # perform operation
fadd.d f14, f28, f21, rdn # perform operation
fadd.d f14, f28, f21, rmm # perform operation
fadd.d f14, f28, f21, rne # perform operation
fadd.d f14, f28, f21, rtz # perform operation
fadd.d f14, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x5a392534a57711ad)
li x5, 0x4f2634da9291b845 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
fadd.d f5, f26, f11, dyn # perform operation
fadd.d f5, f26, f11, rdn # perform operation
fadd.d f5, f26, f11, rmm # perform operation
fadd.d f5, f26, f11, rne # perform operation
fadd.d f5, f26, f11, rtz # perform operation
fadd.d f5, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xa6e895993737426c)
li x13, 0x5381dc62d66254f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
fadd.d f13, f1, f22, dyn # perform operation
fadd.d f13, f1, f22, rdn # perform operation
fadd.d f13, f1, f22, rmm # perform operation
fadd.d f13, f1, f22, rne # perform operation
fadd.d f13, f1, f22, rtz # perform operation
fadd.d f13, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x0)
li x14, 0xf9981ec89ecc5399 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
fadd.d f14, f16, f23, dyn # perform operation
fadd.d f14, f16, f23, rdn # perform operation
fadd.d f14, f16, f23, rmm # perform operation
fadd.d f14, f16, f23, rne # perform operation
fadd.d f14, f16, f23, rtz # perform operation
fadd.d f14, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000000)
li x20, 0x4694b0506cdfa615 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fadd.d f20, f30, f3, dyn # perform operation
fadd.d f20, f30, f3, rdn # perform operation
fadd.d f20, f30, f3, rmm # perform operation
fadd.d f20, f30, f3, rne # perform operation
fadd.d f20, f30, f3, rtz # perform operation
fadd.d f20, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff0000000000000)
li x6, 0x11f32616c3dfaf67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fadd.d f6, f7, f2, dyn # perform operation
fadd.d f6, f7, f2, rdn # perform operation
fadd.d f6, f7, f2, rmm # perform operation
fadd.d f6, f7, f2, rne # perform operation
fadd.d f6, f7, f2, rtz # perform operation
fadd.d f6, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff0000000000000)
li x25, 0x55cc92ff35eef71f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
fadd.d f25, f27, f29, dyn # perform operation
fadd.d f25, f27, f29, rdn # perform operation
fadd.d f25, f27, f29, rmm # perform operation
fadd.d f25, f27, f29, rne # perform operation
fadd.d f25, f27, f29, rtz # perform operation
fadd.d f25, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff8000000000000)
li x4, 0x3306806bdd47f402 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fadd.d f4, f15, f8, dyn # perform operation
fadd.d f4, f15, f8, rdn # perform operation
fadd.d f4, f15, f8, rmm # perform operation
fadd.d f4, f15, f8, rne # perform operation
fadd.d f4, f15, f8, rtz # perform operation
fadd.d f4, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff8000000000000)
li x4, 0xf01e3740dc4f21a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
fadd.d f4, f16, f10, dyn # perform operation
fadd.d f4, f16, f10, rdn # perform operation
fadd.d f4, f16, f10, rmm # perform operation
fadd.d f4, f16, f10, rne # perform operation
fadd.d f4, f16, f10, rtz # perform operation
fadd.d f4, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x4000000000000000)
li x12, 0x477b771e04b188a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f7, 0(x2) # load 0x4000000000000000 from memory into f7
fadd.d f12, f30, f7, dyn # perform operation
fadd.d f12, f30, f7, rdn # perform operation
fadd.d f12, f30, f7, rmm # perform operation
fadd.d f12, f30, f7, rne # perform operation
fadd.d f12, f30, f7, rtz # perform operation
fadd.d f12, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xc000000000000000)
li x23, 0xdbe5c35cdf1da9b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fadd.d f23, f10, f15, dyn # perform operation
fadd.d f23, f10, f15, rdn # perform operation
fadd.d f23, f10, f15, rmm # perform operation
fadd.d f23, f10, f15, rne # perform operation
fadd.d f23, f10, f15, rtz # perform operation
fadd.d f23, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x10000000000000)
li x21, 0x999e1659d3003c70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fadd.d f21, f3, f22, dyn # perform operation
fadd.d f21, f3, f22, rdn # perform operation
fadd.d f21, f3, f22, rmm # perform operation
fadd.d f21, f3, f22, rne # perform operation
fadd.d f21, f3, f22, rtz # perform operation
fadd.d f21, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8010000000000000)
li x28, 0xf5825be1425d0ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
fadd.d f28, f1, f5, dyn # perform operation
fadd.d f28, f1, f5, rdn # perform operation
fadd.d f28, f1, f5, rmm # perform operation
fadd.d f28, f1, f5, rne # perform operation
fadd.d f28, f1, f5, rtz # perform operation
fadd.d f28, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fefffffffffffff)
li x27, 0x9c33a44a9388063d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f28, 0(x2) # load 0xbff8000000000000 from memory into f28
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
fadd.d f27, f28, f20, dyn # perform operation
fadd.d f27, f28, f20, rdn # perform operation
fadd.d f27, f28, f20, rmm # perform operation
fadd.d f27, f28, f20, rne # perform operation
fadd.d f27, f28, f20, rtz # perform operation
fadd.d f27, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xffefffffffffffff)
li x21, 0x5cfad539ce52c964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
fadd.d f21, f22, f5, dyn # perform operation
fadd.d f21, f22, f5, rdn # perform operation
fadd.d f21, f22, f5, rmm # perform operation
fadd.d f21, f22, f5, rne # perform operation
fadd.d f21, f22, f5, rtz # perform operation
fadd.d f21, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfffffffffffff)
li x17, 0x75ae74198da246d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
fadd.d f17, f25, f31, dyn # perform operation
fadd.d f17, f25, f31, rdn # perform operation
fadd.d f17, f25, f31, rmm # perform operation
fadd.d f17, f25, f31, rne # perform operation
fadd.d f17, f25, f31, rtz # perform operation
fadd.d f17, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x800fffffffffffff)
li x25, 0x58dc5a9ff0ca5681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
fadd.d f25, f4, f27, dyn # perform operation
fadd.d f25, f4, f27, rdn # perform operation
fadd.d f25, f4, f27, rmm # perform operation
fadd.d f25, f4, f27, rne # perform operation
fadd.d f25, f4, f27, rtz # perform operation
fadd.d f25, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000)
li x15, 0x4e27ec764af30302 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
fadd.d f15, f29, f5, dyn # perform operation
fadd.d f15, f29, f5, rdn # perform operation
fadd.d f15, f29, f5, rmm # perform operation
fadd.d f15, f29, f5, rne # perform operation
fadd.d f15, f29, f5, rtz # perform operation
fadd.d f15, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8008000000000000)
li x5, 0xc32777fd81bd3918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fadd.d f5, f2, f28, dyn # perform operation
fadd.d f5, f2, f28, rdn # perform operation
fadd.d f5, f2, f28, rmm # perform operation
fadd.d f5, f2, f28, rne # perform operation
fadd.d f5, f2, f28, rtz # perform operation
fadd.d f5, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x1)
li x27, 0x7a100cfa2eda1717 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
fadd.d f27, f6, f7, dyn # perform operation
fadd.d f27, f6, f7, rdn # perform operation
fadd.d f27, f6, f7, rmm # perform operation
fadd.d f27, f6, f7, rne # perform operation
fadd.d f27, f6, f7, rtz # perform operation
fadd.d f27, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000001)
li x4, 0x8ed6f4820761d746 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
fadd.d f4, f15, f9, dyn # perform operation
fadd.d f4, f15, f9, rdn # perform operation
fadd.d f4, f15, f9, rmm # perform operation
fadd.d f4, f15, f9, rne # perform operation
fadd.d f4, f15, f9, rtz # perform operation
fadd.d f4, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000000)
li x9, 0x62d0853a9e8640b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
fadd.d f9, f8, f17, dyn # perform operation
fadd.d f9, f8, f17, rdn # perform operation
fadd.d f9, f8, f17, rmm # perform operation
fadd.d f9, f8, f17, rne # perform operation
fadd.d f9, f8, f17, rtz # perform operation
fadd.d f9, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfff0000000000000)
li x7, 0xc553b3dd599f809e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
fadd.d f7, f9, f6, dyn # perform operation
fadd.d f7, f9, f6, rdn # perform operation
fadd.d f7, f9, f6, rmm # perform operation
fadd.d f7, f9, f6, rne # perform operation
fadd.d f7, f9, f6, rtz # perform operation
fadd.d f7, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff8000000000000)
li x17, 0xfd01782084558251 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
fadd.d f17, f5, f3, dyn # perform operation
fadd.d f17, f5, f3, rdn # perform operation
fadd.d f17, f5, f3, rmm # perform operation
fadd.d f17, f5, f3, rne # perform operation
fadd.d f17, f5, f3, rtz # perform operation
fadd.d f17, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fffffffffffffff)
li x22, 0xb300abd4cc2cffcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fadd.d f22, f3, f19, dyn # perform operation
fadd.d f22, f3, f19, rdn # perform operation
fadd.d f22, f3, f19, rmm # perform operation
fadd.d f22, f3, f19, rne # perform operation
fadd.d f22, f3, f19, rtz # perform operation
fadd.d f22, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000001)
li x6, 0x956bf81fae500f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
fadd.d f6, f10, f28, dyn # perform operation
fadd.d f6, f10, f28, rdn # perform operation
fadd.d f6, f10, f28, rmm # perform operation
fadd.d f6, f10, f28, rne # perform operation
fadd.d f6, f10, f28, rtz # perform operation
fadd.d f6, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x23, 0x1b89064818fb88cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fadd.d f23, f8, f1, dyn # perform operation
fadd.d f23, f8, f1, rdn # perform operation
fadd.d f23, f8, f1, rmm # perform operation
fadd.d f23, f8, f1, rne # perform operation
fadd.d f23, f8, f1, rtz # perform operation
fadd.d f23, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x5a392534a57711ad)
li x16, 0xb5459202b9924715 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fadd.d f16, f17, f24, dyn # perform operation
fadd.d f16, f17, f24, rdn # perform operation
fadd.d f16, f17, f24, rmm # perform operation
fadd.d f16, f17, f24, rne # perform operation
fadd.d f16, f17, f24, rtz # perform operation
fadd.d f16, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xa6e895993737426c)
li x10, 0x1772cc9e769d374f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fadd.d f10, f7, f8, dyn # perform operation
fadd.d f10, f7, f8, rdn # perform operation
fadd.d f10, f7, f8, rmm # perform operation
fadd.d f10, f7, f8, rne # perform operation
fadd.d f10, f7, f8, rtz # perform operation
fadd.d f10, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x0)
li x7, 0xcaac1216c5b837fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
fadd.d f7, f10, f18, dyn # perform operation
fadd.d f7, f10, f18, rdn # perform operation
fadd.d f7, f10, f18, rmm # perform operation
fadd.d f7, f10, f18, rne # perform operation
fadd.d f7, f10, f18, rtz # perform operation
fadd.d f7, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000000)
li x6, 0x73aca37d4b4ed67d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
fadd.d f6, f1, f26, dyn # perform operation
fadd.d f6, f1, f26, rdn # perform operation
fadd.d f6, f1, f26, rmm # perform operation
fadd.d f6, f1, f26, rne # perform operation
fadd.d f6, f1, f26, rtz # perform operation
fadd.d f6, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff0000000000000)
li x29, 0xeeca686c1766dbd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fadd.d f29, f8, f11, dyn # perform operation
fadd.d f29, f8, f11, rdn # perform operation
fadd.d f29, f8, f11, rmm # perform operation
fadd.d f29, f8, f11, rne # perform operation
fadd.d f29, f8, f11, rtz # perform operation
fadd.d f29, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff0000000000000)
li x30, 0xa10d5e7c30495315 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fadd.d f30, f15, f23, dyn # perform operation
fadd.d f30, f15, f23, rdn # perform operation
fadd.d f30, f15, f23, rmm # perform operation
fadd.d f30, f15, f23, rne # perform operation
fadd.d f30, f15, f23, rtz # perform operation
fadd.d f30, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff8000000000000)
li x19, 0x58c32768dc562bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
fadd.d f19, f29, f22, dyn # perform operation
fadd.d f19, f29, f22, rdn # perform operation
fadd.d f19, f29, f22, rmm # perform operation
fadd.d f19, f29, f22, rne # perform operation
fadd.d f19, f29, f22, rtz # perform operation
fadd.d f19, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff8000000000000)
li x28, 0x60915a67b543e186 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
fadd.d f28, f1, f13, dyn # perform operation
fadd.d f28, f1, f13, rdn # perform operation
fadd.d f28, f1, f13, rmm # perform operation
fadd.d f28, f1, f13, rne # perform operation
fadd.d f28, f1, f13, rtz # perform operation
fadd.d f28, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x4000000000000000)
li x22, 0x10dbebfc2e2d23ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
fadd.d f22, f4, f3, dyn # perform operation
fadd.d f22, f4, f3, rdn # perform operation
fadd.d f22, f4, f3, rmm # perform operation
fadd.d f22, f4, f3, rne # perform operation
fadd.d f22, f4, f3, rtz # perform operation
fadd.d f22, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xc000000000000000)
li x7, 0xfdf46d5b32c7e917 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fadd.d f7, f26, f11, dyn # perform operation
fadd.d f7, f26, f11, rdn # perform operation
fadd.d f7, f26, f11, rmm # perform operation
fadd.d f7, f26, f11, rne # perform operation
fadd.d f7, f26, f11, rtz # perform operation
fadd.d f7, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x10000000000000)
li x29, 0x9699a6319d92bd5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
fadd.d f29, f5, f17, dyn # perform operation
fadd.d f29, f5, f17, rdn # perform operation
fadd.d f29, f5, f17, rmm # perform operation
fadd.d f29, f5, f17, rne # perform operation
fadd.d f29, f5, f17, rtz # perform operation
fadd.d f29, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8010000000000000)
li x31, 0xb4fd6104ae9d2558 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
fadd.d f31, f19, f28, dyn # perform operation
fadd.d f31, f19, f28, rdn # perform operation
fadd.d f31, f19, f28, rmm # perform operation
fadd.d f31, f19, f28, rne # perform operation
fadd.d f31, f19, f28, rtz # perform operation
fadd.d f31, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fefffffffffffff)
li x23, 0x59c0de29022a68fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fadd.d f23, f25, f1, dyn # perform operation
fadd.d f23, f25, f1, rdn # perform operation
fadd.d f23, f25, f1, rmm # perform operation
fadd.d f23, f25, f1, rne # perform operation
fadd.d f23, f25, f1, rtz # perform operation
fadd.d f23, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xffefffffffffffff)
li x10, 0xe2c18a122ca5d034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f12, 0(x2) # load 0xffefffffffffffff from memory into f12
fadd.d f10, f5, f12, dyn # perform operation
fadd.d f10, f5, f12, rdn # perform operation
fadd.d f10, f5, f12, rmm # perform operation
fadd.d f10, f5, f12, rne # perform operation
fadd.d f10, f5, f12, rtz # perform operation
fadd.d f10, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfffffffffffff)
li x15, 0xd08fa2e06d345776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f4, 0(x2) # load 0x000fffffffffffff from memory into f4
fadd.d f15, f2, f4, dyn # perform operation
fadd.d f15, f2, f4, rdn # perform operation
fadd.d f15, f2, f4, rmm # perform operation
fadd.d f15, f2, f4, rne # perform operation
fadd.d f15, f2, f4, rtz # perform operation
fadd.d f15, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x800fffffffffffff)
li x27, 0x0ef0b00ba7427273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
fadd.d f27, f12, f23, dyn # perform operation
fadd.d f27, f12, f23, rdn # perform operation
fadd.d f27, f12, f23, rmm # perform operation
fadd.d f27, f12, f23, rne # perform operation
fadd.d f27, f12, f23, rtz # perform operation
fadd.d f27, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000)
li x10, 0xe47cb27aadb5e773 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
fadd.d f10, f6, f18, dyn # perform operation
fadd.d f10, f6, f18, rdn # perform operation
fadd.d f10, f6, f18, rmm # perform operation
fadd.d f10, f6, f18, rne # perform operation
fadd.d f10, f6, f18, rtz # perform operation
fadd.d f10, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8008000000000000)
li x16, 0x737eb082e43158f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
fadd.d f16, f23, f24, dyn # perform operation
fadd.d f16, f23, f24, rdn # perform operation
fadd.d f16, f23, f24, rmm # perform operation
fadd.d f16, f23, f24, rne # perform operation
fadd.d f16, f23, f24, rtz # perform operation
fadd.d f16, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x1)
li x30, 0xa19f44c59d08a8e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
fadd.d f30, f19, f14, dyn # perform operation
fadd.d f30, f19, f14, rdn # perform operation
fadd.d f30, f19, f14, rmm # perform operation
fadd.d f30, f19, f14, rne # perform operation
fadd.d f30, f19, f14, rtz # perform operation
fadd.d f30, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000001)
li x29, 0x1536ffb85d51294e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fadd.d f29, f30, f31, dyn # perform operation
fadd.d f29, f30, f31, rdn # perform operation
fadd.d f29, f30, f31, rmm # perform operation
fadd.d f29, f30, f31, rne # perform operation
fadd.d f29, f30, f31, rtz # perform operation
fadd.d f29, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000000)
li x12, 0x0a69d4aa1258162e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
fadd.d f12, f19, f24, dyn # perform operation
fadd.d f12, f19, f24, rdn # perform operation
fadd.d f12, f19, f24, rmm # perform operation
fadd.d f12, f19, f24, rne # perform operation
fadd.d f12, f19, f24, rtz # perform operation
fadd.d f12, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfff0000000000000)
li x22, 0x0aaee2e15524d116 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
fadd.d f22, f25, f12, dyn # perform operation
fadd.d f22, f25, f12, rdn # perform operation
fadd.d f22, f25, f12, rmm # perform operation
fadd.d f22, f25, f12, rne # perform operation
fadd.d f22, f25, f12, rtz # perform operation
fadd.d f22, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff8000000000000)
li x7, 0x0dcdabf977e47e50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
fadd.d f7, f17, f30, dyn # perform operation
fadd.d f7, f17, f30, rdn # perform operation
fadd.d f7, f17, f30, rmm # perform operation
fadd.d f7, f17, f30, rne # perform operation
fadd.d f7, f17, f30, rtz # perform operation
fadd.d f7, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fffffffffffffff)
li x8, 0xeb3c07d124801e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
fadd.d f8, f19, f27, dyn # perform operation
fadd.d f8, f19, f27, rdn # perform operation
fadd.d f8, f19, f27, rmm # perform operation
fadd.d f8, f19, f27, rne # perform operation
fadd.d f8, f19, f27, rtz # perform operation
fadd.d f8, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000001)
li x15, 0x99cde344d296dcba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
fadd.d f15, f31, f22, dyn # perform operation
fadd.d f15, f31, f22, rdn # perform operation
fadd.d f15, f31, f22, rmm # perform operation
fadd.d f15, f31, f22, rne # perform operation
fadd.d f15, f31, f22, rtz # perform operation
fadd.d f15, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff7ffffffffffff)
li x13, 0x327ebc827679e9a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
fadd.d f13, f20, f3, dyn # perform operation
fadd.d f13, f20, f3, rdn # perform operation
fadd.d f13, f20, f3, rmm # perform operation
fadd.d f13, f20, f3, rne # perform operation
fadd.d f13, f20, f3, rtz # perform operation
fadd.d f13, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x5a392534a57711ad)
li x22, 0xe581624baaad4f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
fadd.d f22, f20, f8, dyn # perform operation
fadd.d f22, f20, f8, rdn # perform operation
fadd.d f22, f20, f8, rmm # perform operation
fadd.d f22, f20, f8, rne # perform operation
fadd.d f22, f20, f8, rtz # perform operation
fadd.d f22, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xa6e895993737426c)
li x12, 0x1ba1450c2cfc2e87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fadd.d f12, f23, f24, dyn # perform operation
fadd.d f12, f23, f24, rdn # perform operation
fadd.d f12, f23, f24, rmm # perform operation
fadd.d f12, f23, f24, rne # perform operation
fadd.d f12, f23, f24, rtz # perform operation
fadd.d f12, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x0)
li x8, 0xad23ee905c9acb06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
fadd.d f8, f23, f31, dyn # perform operation
fadd.d f8, f23, f31, rdn # perform operation
fadd.d f8, f23, f31, rmm # perform operation
fadd.d f8, f23, f31, rne # perform operation
fadd.d f8, f23, f31, rtz # perform operation
fadd.d f8, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000000)
li x22, 0x19cb723d32b165e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
fadd.d f22, f15, f30, dyn # perform operation
fadd.d f22, f15, f30, rdn # perform operation
fadd.d f22, f15, f30, rmm # perform operation
fadd.d f22, f15, f30, rne # perform operation
fadd.d f22, f15, f30, rtz # perform operation
fadd.d f22, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff0000000000000)
li x28, 0x51765e684f6c8e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
fadd.d f28, f17, f25, dyn # perform operation
fadd.d f28, f17, f25, rdn # perform operation
fadd.d f28, f17, f25, rmm # perform operation
fadd.d f28, f17, f25, rne # perform operation
fadd.d f28, f17, f25, rtz # perform operation
fadd.d f28, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff0000000000000)
li x2, 0x5d1ed080063c96ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
fadd.d f2, f18, f13, dyn # perform operation
fadd.d f2, f18, f13, rdn # perform operation
fadd.d f2, f18, f13, rmm # perform operation
fadd.d f2, f18, f13, rne # perform operation
fadd.d f2, f18, f13, rtz # perform operation
fadd.d f2, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff8000000000000)
li x6, 0x643be4a15ffcabc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f9, 0(x2) # load 0x3ff8000000000000 from memory into f9
fadd.d f6, f25, f9, dyn # perform operation
fadd.d f6, f25, f9, rdn # perform operation
fadd.d f6, f25, f9, rmm # perform operation
fadd.d f6, f25, f9, rne # perform operation
fadd.d f6, f25, f9, rtz # perform operation
fadd.d f6, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff8000000000000)
li x15, 0xdf25e5b5eeea635d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
fadd.d f15, f25, f13, dyn # perform operation
fadd.d f15, f25, f13, rdn # perform operation
fadd.d f15, f25, f13, rmm # perform operation
fadd.d f15, f25, f13, rne # perform operation
fadd.d f15, f25, f13, rtz # perform operation
fadd.d f15, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x4000000000000000)
li x2, 0xfdae184b5382055f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fadd.d f2, f18, f19, dyn # perform operation
fadd.d f2, f18, f19, rdn # perform operation
fadd.d f2, f18, f19, rmm # perform operation
fadd.d f2, f18, f19, rne # perform operation
fadd.d f2, f18, f19, rtz # perform operation
fadd.d f2, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xc000000000000000)
li x24, 0xa3e8ec4c8dbbe796 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
fadd.d f24, f9, f30, dyn # perform operation
fadd.d f24, f9, f30, rdn # perform operation
fadd.d f24, f9, f30, rmm # perform operation
fadd.d f24, f9, f30, rne # perform operation
fadd.d f24, f9, f30, rtz # perform operation
fadd.d f24, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x10000000000000)
li x17, 0xa66545cfba06d0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fadd.d f17, f28, f19, dyn # perform operation
fadd.d f17, f28, f19, rdn # perform operation
fadd.d f17, f28, f19, rmm # perform operation
fadd.d f17, f28, f19, rne # perform operation
fadd.d f17, f28, f19, rtz # perform operation
fadd.d f17, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8010000000000000)
li x29, 0x3ee9383d68520dc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
fadd.d f29, f19, f13, dyn # perform operation
fadd.d f29, f19, f13, rdn # perform operation
fadd.d f29, f19, f13, rmm # perform operation
fadd.d f29, f19, f13, rne # perform operation
fadd.d f29, f19, f13, rtz # perform operation
fadd.d f29, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fefffffffffffff)
li x21, 0xbec16bba56337368 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
fadd.d f21, f7, f13, dyn # perform operation
fadd.d f21, f7, f13, rdn # perform operation
fadd.d f21, f7, f13, rmm # perform operation
fadd.d f21, f7, f13, rne # perform operation
fadd.d f21, f7, f13, rtz # perform operation
fadd.d f21, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xffefffffffffffff)
li x8, 0xc440894cfe0f9970 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
fadd.d f8, f5, f20, dyn # perform operation
fadd.d f8, f5, f20, rdn # perform operation
fadd.d f8, f5, f20, rmm # perform operation
fadd.d f8, f5, f20, rne # perform operation
fadd.d f8, f5, f20, rtz # perform operation
fadd.d f8, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfffffffffffff)
li x7, 0x936ccaa6db75218b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fadd.d f7, f29, f9, dyn # perform operation
fadd.d f7, f29, f9, rdn # perform operation
fadd.d f7, f29, f9, rmm # perform operation
fadd.d f7, f29, f9, rne # perform operation
fadd.d f7, f29, f9, rtz # perform operation
fadd.d f7, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x800fffffffffffff)
li x7, 0xb68c52a7edf4823f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
fadd.d f7, f17, f16, dyn # perform operation
fadd.d f7, f17, f16, rdn # perform operation
fadd.d f7, f17, f16, rmm # perform operation
fadd.d f7, f17, f16, rne # perform operation
fadd.d f7, f17, f16, rtz # perform operation
fadd.d f7, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000)
li x3, 0x5ca39d1de3d1e046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fadd.d f3, f24, f12, dyn # perform operation
fadd.d f3, f24, f12, rdn # perform operation
fadd.d f3, f24, f12, rmm # perform operation
fadd.d f3, f24, f12, rne # perform operation
fadd.d f3, f24, f12, rtz # perform operation
fadd.d f3, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8008000000000000)
li x26, 0xa43ca8a06422ed08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fadd.d f26, f31, f28, dyn # perform operation
fadd.d f26, f31, f28, rdn # perform operation
fadd.d f26, f31, f28, rmm # perform operation
fadd.d f26, f31, f28, rne # perform operation
fadd.d f26, f31, f28, rtz # perform operation
fadd.d f26, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x1)
li x20, 0xa4f49678de70d39e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
fadd.d f20, f16, f24, dyn # perform operation
fadd.d f20, f16, f24, rdn # perform operation
fadd.d f20, f16, f24, rmm # perform operation
fadd.d f20, f16, f24, rne # perform operation
fadd.d f20, f16, f24, rtz # perform operation
fadd.d f20, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000001)
li x30, 0xc5318cd61a30a409 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fadd.d f30, f2, f13, dyn # perform operation
fadd.d f30, f2, f13, rdn # perform operation
fadd.d f30, f2, f13, rmm # perform operation
fadd.d f30, f2, f13, rne # perform operation
fadd.d f30, f2, f13, rtz # perform operation
fadd.d f30, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000000)
li x24, 0x1a5e44313166c06b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
fadd.d f24, f3, f15, dyn # perform operation
fadd.d f24, f3, f15, rdn # perform operation
fadd.d f24, f3, f15, rmm # perform operation
fadd.d f24, f3, f15, rne # perform operation
fadd.d f24, f3, f15, rtz # perform operation
fadd.d f24, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfff0000000000000)
li x11, 0x1a49d0ed7d12ea04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
fadd.d f11, f22, f28, dyn # perform operation
fadd.d f11, f22, f28, rdn # perform operation
fadd.d f11, f22, f28, rmm # perform operation
fadd.d f11, f22, f28, rne # perform operation
fadd.d f11, f22, f28, rtz # perform operation
fadd.d f11, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff8000000000000)
li x5, 0x23e729a6f3b81a43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fadd.d f5, f16, f4, dyn # perform operation
fadd.d f5, f16, f4, rdn # perform operation
fadd.d f5, f16, f4, rmm # perform operation
fadd.d f5, f16, f4, rne # perform operation
fadd.d f5, f16, f4, rtz # perform operation
fadd.d f5, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fffffffffffffff)
li x21, 0x2e663e6e34148cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
fadd.d f21, f5, f16, dyn # perform operation
fadd.d f21, f5, f16, rdn # perform operation
fadd.d f21, f5, f16, rmm # perform operation
fadd.d f21, f5, f16, rne # perform operation
fadd.d f21, f5, f16, rtz # perform operation
fadd.d f21, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000001)
li x8, 0x756028b32d5ba899 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
fadd.d f8, f15, f24, dyn # perform operation
fadd.d f8, f15, f24, rdn # perform operation
fadd.d f8, f15, f24, rmm # perform operation
fadd.d f8, f15, f24, rne # perform operation
fadd.d f8, f15, f24, rtz # perform operation
fadd.d f8, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff7ffffffffffff)
li x11, 0xa9f6e39fe8b07ef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f14, 0(x2) # load 0x7ff7ffffffffffff from memory into f14
fadd.d f11, f2, f14, dyn # perform operation
fadd.d f11, f2, f14, rdn # perform operation
fadd.d f11, f2, f14, rmm # perform operation
fadd.d f11, f2, f14, rne # perform operation
fadd.d f11, f2, f14, rtz # perform operation
fadd.d f11, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x5a392534a57711ad)
li x28, 0x5e08fc75b07d0335 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fadd.d f28, f12, f6, dyn # perform operation
fadd.d f28, f12, f6, rdn # perform operation
fadd.d f28, f12, f6, rmm # perform operation
fadd.d f28, f12, f6, rne # perform operation
fadd.d f28, f12, f6, rtz # perform operation
fadd.d f28, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xa6e895993737426c)
li x24, 0xd91d3c5bf713b604 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
fadd.d f24, f25, f11, dyn # perform operation
fadd.d f24, f25, f11, rdn # perform operation
fadd.d f24, f25, f11, rmm # perform operation
fadd.d f24, f25, f11, rne # perform operation
fadd.d f24, f25, f11, rtz # perform operation
fadd.d f24, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x0)
li x2, 0x77308edb31eb0411 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fadd.d f2, f26, f25, dyn # perform operation
fadd.d f2, f26, f25, rdn # perform operation
fadd.d f2, f26, f25, rmm # perform operation
fadd.d f2, f26, f25, rne # perform operation
fadd.d f2, f26, f25, rtz # perform operation
fadd.d f2, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000000)
li x13, 0x206a8cabd9bc963b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fadd.d f13, f26, f12, dyn # perform operation
fadd.d f13, f26, f12, rdn # perform operation
fadd.d f13, f26, f12, rmm # perform operation
fadd.d f13, f26, f12, rne # perform operation
fadd.d f13, f26, f12, rtz # perform operation
fadd.d f13, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff0000000000000)
li x17, 0xab27352e8aba6a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fadd.d f17, f12, f13, dyn # perform operation
fadd.d f17, f12, f13, rdn # perform operation
fadd.d f17, f12, f13, rmm # perform operation
fadd.d f17, f12, f13, rne # perform operation
fadd.d f17, f12, f13, rtz # perform operation
fadd.d f17, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff0000000000000)
li x29, 0x1ee8aec2afcd10b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
fadd.d f29, f21, f10, dyn # perform operation
fadd.d f29, f21, f10, rdn # perform operation
fadd.d f29, f21, f10, rmm # perform operation
fadd.d f29, f21, f10, rne # perform operation
fadd.d f29, f21, f10, rtz # perform operation
fadd.d f29, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff8000000000000)
li x26, 0x94744218f12935d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
fadd.d f26, f16, f30, dyn # perform operation
fadd.d f26, f16, f30, rdn # perform operation
fadd.d f26, f16, f30, rmm # perform operation
fadd.d f26, f16, f30, rne # perform operation
fadd.d f26, f16, f30, rtz # perform operation
fadd.d f26, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff8000000000000)
li x22, 0x1b244fe0f8517b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
fadd.d f22, f29, f11, dyn # perform operation
fadd.d f22, f29, f11, rdn # perform operation
fadd.d f22, f29, f11, rmm # perform operation
fadd.d f22, f29, f11, rne # perform operation
fadd.d f22, f29, f11, rtz # perform operation
fadd.d f22, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x4000000000000000)
li x6, 0x4678e6c28174a239 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
fadd.d f6, f13, f30, dyn # perform operation
fadd.d f6, f13, f30, rdn # perform operation
fadd.d f6, f13, f30, rmm # perform operation
fadd.d f6, f13, f30, rne # perform operation
fadd.d f6, f13, f30, rtz # perform operation
fadd.d f6, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xc000000000000000)
li x24, 0xfe7f51be0b7f54e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
fadd.d f24, f25, f17, dyn # perform operation
fadd.d f24, f25, f17, rdn # perform operation
fadd.d f24, f25, f17, rmm # perform operation
fadd.d f24, f25, f17, rne # perform operation
fadd.d f24, f25, f17, rtz # perform operation
fadd.d f24, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x10000000000000)
li x14, 0x29ab05088b7cc364 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
fadd.d f14, f12, f29, dyn # perform operation
fadd.d f14, f12, f29, rdn # perform operation
fadd.d f14, f12, f29, rmm # perform operation
fadd.d f14, f12, f29, rne # perform operation
fadd.d f14, f12, f29, rtz # perform operation
fadd.d f14, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8010000000000000)
li x6, 0x4a2fc8691181f813 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fadd.d f6, f9, f17, dyn # perform operation
fadd.d f6, f9, f17, rdn # perform operation
fadd.d f6, f9, f17, rmm # perform operation
fadd.d f6, f9, f17, rne # perform operation
fadd.d f6, f9, f17, rtz # perform operation
fadd.d f6, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fefffffffffffff)
li x9, 0x18af8bb02f2becaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fadd.d f9, f10, f2, dyn # perform operation
fadd.d f9, f10, f2, rdn # perform operation
fadd.d f9, f10, f2, rmm # perform operation
fadd.d f9, f10, f2, rne # perform operation
fadd.d f9, f10, f2, rtz # perform operation
fadd.d f9, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xffefffffffffffff)
li x5, 0x4093afb87db8f244 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
fadd.d f5, f28, f4, dyn # perform operation
fadd.d f5, f28, f4, rdn # perform operation
fadd.d f5, f28, f4, rmm # perform operation
fadd.d f5, f28, f4, rne # perform operation
fadd.d f5, f28, f4, rtz # perform operation
fadd.d f5, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfffffffffffff)
li x10, 0x97be4f864e9fa731 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
fadd.d f10, f17, f3, dyn # perform operation
fadd.d f10, f17, f3, rdn # perform operation
fadd.d f10, f17, f3, rmm # perform operation
fadd.d f10, f17, f3, rne # perform operation
fadd.d f10, f17, f3, rtz # perform operation
fadd.d f10, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x800fffffffffffff)
li x8, 0xd75c1a0d6848a592 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fadd.d f8, f3, f24, dyn # perform operation
fadd.d f8, f3, f24, rdn # perform operation
fadd.d f8, f3, f24, rmm # perform operation
fadd.d f8, f3, f24, rne # perform operation
fadd.d f8, f3, f24, rtz # perform operation
fadd.d f8, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000)
li x16, 0xe40b3bc2635d4882 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
fadd.d f16, f17, f10, dyn # perform operation
fadd.d f16, f17, f10, rdn # perform operation
fadd.d f16, f17, f10, rmm # perform operation
fadd.d f16, f17, f10, rne # perform operation
fadd.d f16, f17, f10, rtz # perform operation
fadd.d f16, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8008000000000000)
li x10, 0x3c9991e4365bdf3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
fadd.d f10, f22, f3, dyn # perform operation
fadd.d f10, f22, f3, rdn # perform operation
fadd.d f10, f22, f3, rmm # perform operation
fadd.d f10, f22, f3, rne # perform operation
fadd.d f10, f22, f3, rtz # perform operation
fadd.d f10, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x1)
li x24, 0x59cd8683786d6c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fadd.d f24, f16, f27, dyn # perform operation
fadd.d f24, f16, f27, rdn # perform operation
fadd.d f24, f16, f27, rmm # perform operation
fadd.d f24, f16, f27, rne # perform operation
fadd.d f24, f16, f27, rtz # perform operation
fadd.d f24, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000001)
li x20, 0x5356d8652bf9acda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fadd.d f20, f6, f2, dyn # perform operation
fadd.d f20, f6, f2, rdn # perform operation
fadd.d f20, f6, f2, rmm # perform operation
fadd.d f20, f6, f2, rne # perform operation
fadd.d f20, f6, f2, rtz # perform operation
fadd.d f20, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000000)
li x22, 0x2f9465ce87dcf8b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
fadd.d f22, f24, f15, dyn # perform operation
fadd.d f22, f24, f15, rdn # perform operation
fadd.d f22, f24, f15, rmm # perform operation
fadd.d f22, f24, f15, rne # perform operation
fadd.d f22, f24, f15, rtz # perform operation
fadd.d f22, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfff0000000000000)
li x10, 0xc469b41b1bb1c13c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fadd.d f10, f18, f26, dyn # perform operation
fadd.d f10, f18, f26, rdn # perform operation
fadd.d f10, f18, f26, rmm # perform operation
fadd.d f10, f18, f26, rne # perform operation
fadd.d f10, f18, f26, rtz # perform operation
fadd.d f10, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff8000000000000)
li x15, 0x51a9152872aadd2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
fadd.d f15, f22, f26, dyn # perform operation
fadd.d f15, f22, f26, rdn # perform operation
fadd.d f15, f22, f26, rmm # perform operation
fadd.d f15, f22, f26, rne # perform operation
fadd.d f15, f22, f26, rtz # perform operation
fadd.d f15, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fffffffffffffff)
li x15, 0x3532c06562f77db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
fadd.d f15, f10, f21, dyn # perform operation
fadd.d f15, f10, f21, rdn # perform operation
fadd.d f15, f10, f21, rmm # perform operation
fadd.d f15, f10, f21, rne # perform operation
fadd.d f15, f10, f21, rtz # perform operation
fadd.d f15, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000001)
li x1, 0x3a542a0a818fcd81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
fadd.d f1, f10, f27, dyn # perform operation
fadd.d f1, f10, f27, rdn # perform operation
fadd.d f1, f10, f27, rmm # perform operation
fadd.d f1, f10, f27, rne # perform operation
fadd.d f1, f10, f27, rtz # perform operation
fadd.d f1, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff7ffffffffffff)
li x8, 0xe2c60fe24495457b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
fadd.d f8, f17, f21, dyn # perform operation
fadd.d f8, f17, f21, rdn # perform operation
fadd.d f8, f17, f21, rmm # perform operation
fadd.d f8, f17, f21, rne # perform operation
fadd.d f8, f17, f21, rtz # perform operation
fadd.d f8, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x5a392534a57711ad)
li x21, 0x83b7baede1718b20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
fadd.d f21, f31, f30, dyn # perform operation
fadd.d f21, f31, f30, rdn # perform operation
fadd.d f21, f31, f30, rmm # perform operation
fadd.d f21, f31, f30, rne # perform operation
fadd.d f21, f31, f30, rtz # perform operation
fadd.d f21, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xa6e895993737426c)
li x9, 0x806f052b95871f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
fadd.d f9, f12, f20, dyn # perform operation
fadd.d f9, f12, f20, rdn # perform operation
fadd.d f9, f12, f20, rmm # perform operation
fadd.d f9, f12, f20, rne # perform operation
fadd.d f9, f12, f20, rtz # perform operation
fadd.d f9, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x0)
li x17, 0xba011a169bb6075a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
fadd.d f17, f4, f9, dyn # perform operation
fadd.d f17, f4, f9, rdn # perform operation
fadd.d f17, f4, f9, rmm # perform operation
fadd.d f17, f4, f9, rne # perform operation
fadd.d f17, f4, f9, rtz # perform operation
fadd.d f17, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000000)
li x20, 0xcbacf0349f41c701 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
fadd.d f20, f29, f11, dyn # perform operation
fadd.d f20, f29, f11, rdn # perform operation
fadd.d f20, f29, f11, rmm # perform operation
fadd.d f20, f29, f11, rne # perform operation
fadd.d f20, f29, f11, rtz # perform operation
fadd.d f20, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff0000000000000)
li x26, 0xe05014076da75c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
fadd.d f26, f24, f18, dyn # perform operation
fadd.d f26, f24, f18, rdn # perform operation
fadd.d f26, f24, f18, rmm # perform operation
fadd.d f26, f24, f18, rne # perform operation
fadd.d f26, f24, f18, rtz # perform operation
fadd.d f26, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff0000000000000)
li x21, 0x662146d0ee244cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
fadd.d f21, f24, f4, dyn # perform operation
fadd.d f21, f24, f4, rdn # perform operation
fadd.d f21, f24, f4, rmm # perform operation
fadd.d f21, f24, f4, rne # perform operation
fadd.d f21, f24, f4, rtz # perform operation
fadd.d f21, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff8000000000000)
li x4, 0x721d1e6813510754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fadd.d f4, f27, f28, dyn # perform operation
fadd.d f4, f27, f28, rdn # perform operation
fadd.d f4, f27, f28, rmm # perform operation
fadd.d f4, f27, f28, rne # perform operation
fadd.d f4, f27, f28, rtz # perform operation
fadd.d f4, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff8000000000000)
li x30, 0xacd65478fca62763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
fadd.d f30, f12, f18, dyn # perform operation
fadd.d f30, f12, f18, rdn # perform operation
fadd.d f30, f12, f18, rmm # perform operation
fadd.d f30, f12, f18, rne # perform operation
fadd.d f30, f12, f18, rtz # perform operation
fadd.d f30, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x4000000000000000)
li x17, 0xc64878258d9cb544 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fadd.d f17, f4, f19, dyn # perform operation
fadd.d f17, f4, f19, rdn # perform operation
fadd.d f17, f4, f19, rmm # perform operation
fadd.d f17, f4, f19, rne # perform operation
fadd.d f17, f4, f19, rtz # perform operation
fadd.d f17, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xc000000000000000)
li x8, 0xe9ac84c9ecd155b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
fadd.d f8, f19, f12, dyn # perform operation
fadd.d f8, f19, f12, rdn # perform operation
fadd.d f8, f19, f12, rmm # perform operation
fadd.d f8, f19, f12, rne # perform operation
fadd.d f8, f19, f12, rtz # perform operation
fadd.d f8, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x10000000000000)
li x24, 0xfa7bf60e421fd299 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fadd.d f24, f8, f28, dyn # perform operation
fadd.d f24, f8, f28, rdn # perform operation
fadd.d f24, f8, f28, rmm # perform operation
fadd.d f24, f8, f28, rne # perform operation
fadd.d f24, f8, f28, rtz # perform operation
fadd.d f24, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8010000000000000)
li x4, 0x753579fcf175a46c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fadd.d f4, f30, f17, dyn # perform operation
fadd.d f4, f30, f17, rdn # perform operation
fadd.d f4, f30, f17, rmm # perform operation
fadd.d f4, f30, f17, rne # perform operation
fadd.d f4, f30, f17, rtz # perform operation
fadd.d f4, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fefffffffffffff)
li x23, 0x12b759ceac7c9fec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fadd.d f23, f26, f19, dyn # perform operation
fadd.d f23, f26, f19, rdn # perform operation
fadd.d f23, f26, f19, rmm # perform operation
fadd.d f23, f26, f19, rne # perform operation
fadd.d f23, f26, f19, rtz # perform operation
fadd.d f23, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xffefffffffffffff)
li x29, 0x12b48d7cf39510ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
fadd.d f29, f31, f5, dyn # perform operation
fadd.d f29, f31, f5, rdn # perform operation
fadd.d f29, f31, f5, rmm # perform operation
fadd.d f29, f31, f5, rne # perform operation
fadd.d f29, f31, f5, rtz # perform operation
fadd.d f29, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfffffffffffff)
li x28, 0xad6f8e2a373f611f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
fadd.d f28, f16, f3, dyn # perform operation
fadd.d f28, f16, f3, rdn # perform operation
fadd.d f28, f16, f3, rmm # perform operation
fadd.d f28, f16, f3, rne # perform operation
fadd.d f28, f16, f3, rtz # perform operation
fadd.d f28, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x800fffffffffffff)
li x22, 0xe8b8957a44d429f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fadd.d f22, f26, f29, dyn # perform operation
fadd.d f22, f26, f29, rdn # perform operation
fadd.d f22, f26, f29, rmm # perform operation
fadd.d f22, f26, f29, rne # perform operation
fadd.d f22, f26, f29, rtz # perform operation
fadd.d f22, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000)
li x15, 0x19903287d26a0f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
fadd.d f15, f23, f18, dyn # perform operation
fadd.d f15, f23, f18, rdn # perform operation
fadd.d f15, f23, f18, rmm # perform operation
fadd.d f15, f23, f18, rne # perform operation
fadd.d f15, f23, f18, rtz # perform operation
fadd.d f15, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8008000000000000)
li x10, 0xf634c10fa50a41a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
fadd.d f10, f5, f2, dyn # perform operation
fadd.d f10, f5, f2, rdn # perform operation
fadd.d f10, f5, f2, rmm # perform operation
fadd.d f10, f5, f2, rne # perform operation
fadd.d f10, f5, f2, rtz # perform operation
fadd.d f10, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x1)
li x23, 0x06207b92fdec11ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
fadd.d f23, f15, f18, dyn # perform operation
fadd.d f23, f15, f18, rdn # perform operation
fadd.d f23, f15, f18, rmm # perform operation
fadd.d f23, f15, f18, rne # perform operation
fadd.d f23, f15, f18, rtz # perform operation
fadd.d f23, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000001)
li x23, 0xc5de70686f846853 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
fadd.d f23, f30, f16, dyn # perform operation
fadd.d f23, f30, f16, rdn # perform operation
fadd.d f23, f30, f16, rmm # perform operation
fadd.d f23, f30, f16, rne # perform operation
fadd.d f23, f30, f16, rtz # perform operation
fadd.d f23, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000000)
li x21, 0xee7680a9f664d76a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fadd.d f21, f15, f3, dyn # perform operation
fadd.d f21, f15, f3, rdn # perform operation
fadd.d f21, f15, f3, rmm # perform operation
fadd.d f21, f15, f3, rne # perform operation
fadd.d f21, f15, f3, rtz # perform operation
fadd.d f21, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfff0000000000000)
li x16, 0xdeec4104c46fc3d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
fadd.d f16, f4, f10, dyn # perform operation
fadd.d f16, f4, f10, rdn # perform operation
fadd.d f16, f4, f10, rmm # perform operation
fadd.d f16, f4, f10, rne # perform operation
fadd.d f16, f4, f10, rtz # perform operation
fadd.d f16, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff8000000000000)
li x11, 0x567f9c805dacfb95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
fadd.d f11, f15, f30, dyn # perform operation
fadd.d f11, f15, f30, rdn # perform operation
fadd.d f11, f15, f30, rmm # perform operation
fadd.d f11, f15, f30, rne # perform operation
fadd.d f11, f15, f30, rtz # perform operation
fadd.d f11, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fffffffffffffff)
li x15, 0xb0749eab458ad8e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fadd.d f15, f7, f1, dyn # perform operation
fadd.d f15, f7, f1, rdn # perform operation
fadd.d f15, f7, f1, rmm # perform operation
fadd.d f15, f7, f1, rne # perform operation
fadd.d f15, f7, f1, rtz # perform operation
fadd.d f15, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000001)
li x23, 0x8262993fbaf89fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fadd.d f23, f18, f6, dyn # perform operation
fadd.d f23, f18, f6, rdn # perform operation
fadd.d f23, f18, f6, rmm # perform operation
fadd.d f23, f18, f6, rne # perform operation
fadd.d f23, f18, f6, rtz # perform operation
fadd.d f23, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff7ffffffffffff)
li x27, 0x9f305f4eb5902bbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
fadd.d f27, f22, f8, dyn # perform operation
fadd.d f27, f22, f8, rdn # perform operation
fadd.d f27, f22, f8, rmm # perform operation
fadd.d f27, f22, f8, rne # perform operation
fadd.d f27, f22, f8, rtz # perform operation
fadd.d f27, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x5a392534a57711ad)
li x1, 0xff4ce8278a42c4fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fadd.d f1, f21, f26, dyn # perform operation
fadd.d f1, f21, f26, rdn # perform operation
fadd.d f1, f21, f26, rmm # perform operation
fadd.d f1, f21, f26, rne # perform operation
fadd.d f1, f21, f26, rtz # perform operation
fadd.d f1, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xa6e895993737426c)
li x5, 0x851988eb573ca6e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fadd.d f5, f31, f28, dyn # perform operation
fadd.d f5, f31, f28, rdn # perform operation
fadd.d f5, f31, f28, rmm # perform operation
fadd.d f5, f31, f28, rne # perform operation
fadd.d f5, f31, f28, rtz # perform operation
fadd.d f5, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x0)
li x25, 0x3d703d17fb367c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fadd.d f25, f27, f7, dyn # perform operation
fadd.d f25, f27, f7, rdn # perform operation
fadd.d f25, f27, f7, rmm # perform operation
fadd.d f25, f27, f7, rne # perform operation
fadd.d f25, f27, f7, rtz # perform operation
fadd.d f25, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000000)
li x11, 0xcf5474bdcd1504ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
fadd.d f11, f12, f30, dyn # perform operation
fadd.d f11, f12, f30, rdn # perform operation
fadd.d f11, f12, f30, rmm # perform operation
fadd.d f11, f12, f30, rne # perform operation
fadd.d f11, f12, f30, rtz # perform operation
fadd.d f11, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff0000000000000)
li x25, 0x42455c777ccbb3c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
fadd.d f25, f28, f31, dyn # perform operation
fadd.d f25, f28, f31, rdn # perform operation
fadd.d f25, f28, f31, rmm # perform operation
fadd.d f25, f28, f31, rne # perform operation
fadd.d f25, f28, f31, rtz # perform operation
fadd.d f25, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff0000000000000)
li x12, 0x9d00f9c36d685b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
fadd.d f12, f16, f30, dyn # perform operation
fadd.d f12, f16, f30, rdn # perform operation
fadd.d f12, f16, f30, rmm # perform operation
fadd.d f12, f16, f30, rne # perform operation
fadd.d f12, f16, f30, rtz # perform operation
fadd.d f12, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff8000000000000)
li x13, 0xa6ddce84800023d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fadd.d f13, f30, f26, dyn # perform operation
fadd.d f13, f30, f26, rdn # perform operation
fadd.d f13, f30, f26, rmm # perform operation
fadd.d f13, f30, f26, rne # perform operation
fadd.d f13, f30, f26, rtz # perform operation
fadd.d f13, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff8000000000000)
li x23, 0xb61a9c8d617a0b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
fadd.d f23, f13, f4, dyn # perform operation
fadd.d f23, f13, f4, rdn # perform operation
fadd.d f23, f13, f4, rmm # perform operation
fadd.d f23, f13, f4, rne # perform operation
fadd.d f23, f13, f4, rtz # perform operation
fadd.d f23, f13, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f13, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f13, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f13, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f13, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x4000000000000000)
li x25, 0x31b2052bfd9e444e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
fadd.d f25, f6, f9, dyn # perform operation
fadd.d f25, f6, f9, rdn # perform operation
fadd.d f25, f6, f9, rmm # perform operation
fadd.d f25, f6, f9, rne # perform operation
fadd.d f25, f6, f9, rtz # perform operation
fadd.d f25, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xc000000000000000)
li x19, 0x0f4d8f9ed6ea9d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
fadd.d f19, f23, f16, dyn # perform operation
fadd.d f19, f23, f16, rdn # perform operation
fadd.d f19, f23, f16, rmm # perform operation
fadd.d f19, f23, f16, rne # perform operation
fadd.d f19, f23, f16, rtz # perform operation
fadd.d f19, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x10000000000000)
li x21, 0xb9a93a2e3d8d4ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
fadd.d f21, f7, f3, dyn # perform operation
fadd.d f21, f7, f3, rdn # perform operation
fadd.d f21, f7, f3, rmm # perform operation
fadd.d f21, f7, f3, rne # perform operation
fadd.d f21, f7, f3, rtz # perform operation
fadd.d f21, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8010000000000000)
li x23, 0x63793a338cf4388c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fadd.d f23, f4, f9, dyn # perform operation
fadd.d f23, f4, f9, rdn # perform operation
fadd.d f23, f4, f9, rmm # perform operation
fadd.d f23, f4, f9, rne # perform operation
fadd.d f23, f4, f9, rtz # perform operation
fadd.d f23, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fefffffffffffff)
li x2, 0x619af2ad55860c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fadd.d f2, f3, f1, dyn # perform operation
fadd.d f2, f3, f1, rdn # perform operation
fadd.d f2, f3, f1, rmm # perform operation
fadd.d f2, f3, f1, rne # perform operation
fadd.d f2, f3, f1, rtz # perform operation
fadd.d f2, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xffefffffffffffff)
li x16, 0x6c894adcce313abd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fadd.d f16, f12, f1, dyn # perform operation
fadd.d f16, f12, f1, rdn # perform operation
fadd.d f16, f12, f1, rmm # perform operation
fadd.d f16, f12, f1, rne # perform operation
fadd.d f16, f12, f1, rtz # perform operation
fadd.d f16, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfffffffffffff)
li x3, 0xeee1221ba1234167 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fadd.d f3, f1, f22, dyn # perform operation
fadd.d f3, f1, f22, rdn # perform operation
fadd.d f3, f1, f22, rmm # perform operation
fadd.d f3, f1, f22, rne # perform operation
fadd.d f3, f1, f22, rtz # perform operation
fadd.d f3, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x800fffffffffffff)
li x11, 0x18f1ee90e44e6e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
fadd.d f11, f8, f2, dyn # perform operation
fadd.d f11, f8, f2, rdn # perform operation
fadd.d f11, f8, f2, rmm # perform operation
fadd.d f11, f8, f2, rne # perform operation
fadd.d f11, f8, f2, rtz # perform operation
fadd.d f11, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000)
li x10, 0x1028c53ede237940 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
fadd.d f10, f13, f14, dyn # perform operation
fadd.d f10, f13, f14, rdn # perform operation
fadd.d f10, f13, f14, rmm # perform operation
fadd.d f10, f13, f14, rne # perform operation
fadd.d f10, f13, f14, rtz # perform operation
fadd.d f10, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8008000000000000)
li x26, 0x417ca132a317065d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
fadd.d f26, f22, f31, dyn # perform operation
fadd.d f26, f22, f31, rdn # perform operation
fadd.d f26, f22, f31, rmm # perform operation
fadd.d f26, f22, f31, rne # perform operation
fadd.d f26, f22, f31, rtz # perform operation
fadd.d f26, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x1)
li x2, 0x5260b3f8d93e73fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
fadd.d f2, f20, f24, dyn # perform operation
fadd.d f2, f20, f24, rdn # perform operation
fadd.d f2, f20, f24, rmm # perform operation
fadd.d f2, f20, f24, rne # perform operation
fadd.d f2, f20, f24, rtz # perform operation
fadd.d f2, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000001)
li x1, 0xd0f20b7b900b9952 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
fadd.d f1, f20, f17, dyn # perform operation
fadd.d f1, f20, f17, rdn # perform operation
fadd.d f1, f20, f17, rmm # perform operation
fadd.d f1, f20, f17, rne # perform operation
fadd.d f1, f20, f17, rtz # perform operation
fadd.d f1, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000000)
li x13, 0x9be1a6d14dc209c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
fadd.d f13, f23, f17, dyn # perform operation
fadd.d f13, f23, f17, rdn # perform operation
fadd.d f13, f23, f17, rmm # perform operation
fadd.d f13, f23, f17, rne # perform operation
fadd.d f13, f23, f17, rtz # perform operation
fadd.d f13, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfff0000000000000)
li x5, 0x891df0c37c4e053a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
fadd.d f5, f31, f24, dyn # perform operation
fadd.d f5, f31, f24, rdn # perform operation
fadd.d f5, f31, f24, rmm # perform operation
fadd.d f5, f31, f24, rne # perform operation
fadd.d f5, f31, f24, rtz # perform operation
fadd.d f5, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff8000000000000)
li x13, 0x5a4af7d1dba0637c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fadd.d f13, f16, f1, dyn # perform operation
fadd.d f13, f16, f1, rdn # perform operation
fadd.d f13, f16, f1, rmm # perform operation
fadd.d f13, f16, f1, rne # perform operation
fadd.d f13, f16, f1, rtz # perform operation
fadd.d f13, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fffffffffffffff)
li x4, 0x0546efd06f9372f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
fadd.d f4, f23, f24, dyn # perform operation
fadd.d f4, f23, f24, rdn # perform operation
fadd.d f4, f23, f24, rmm # perform operation
fadd.d f4, f23, f24, rne # perform operation
fadd.d f4, f23, f24, rtz # perform operation
fadd.d f4, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000001)
li x1, 0x91dac3e991d58a94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fadd.d f1, f21, f31, dyn # perform operation
fadd.d f1, f21, f31, rdn # perform operation
fadd.d f1, f21, f31, rmm # perform operation
fadd.d f1, f21, f31, rne # perform operation
fadd.d f1, f21, f31, rtz # perform operation
fadd.d f1, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x12, 0xa25bc08d031c7fed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
fadd.d f12, f30, f5, dyn # perform operation
fadd.d f12, f30, f5, rdn # perform operation
fadd.d f12, f30, f5, rmm # perform operation
fadd.d f12, f30, f5, rne # perform operation
fadd.d f12, f30, f5, rtz # perform operation
fadd.d f12, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x5a392534a57711ad)
li x28, 0xede46829a561a257 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
fadd.d f28, f3, f15, dyn # perform operation
fadd.d f28, f3, f15, rdn # perform operation
fadd.d f28, f3, f15, rmm # perform operation
fadd.d f28, f3, f15, rne # perform operation
fadd.d f28, f3, f15, rtz # perform operation
fadd.d f28, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xa6e895993737426c)
li x13, 0xc0dcd08cc7f296a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fadd.d f13, f21, f27, dyn # perform operation
fadd.d f13, f21, f27, rdn # perform operation
fadd.d f13, f21, f27, rmm # perform operation
fadd.d f13, f21, f27, rne # perform operation
fadd.d f13, f21, f27, rtz # perform operation
fadd.d f13, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x0)
li x14, 0xdb84d8a22b0f3904 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fadd.d f14, f11, f26, dyn # perform operation
fadd.d f14, f11, f26, rdn # perform operation
fadd.d f14, f11, f26, rmm # perform operation
fadd.d f14, f11, f26, rne # perform operation
fadd.d f14, f11, f26, rtz # perform operation
fadd.d f14, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000000)
li x31, 0xc916af9c860d1523 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f4, 0(x2) # load 0x8000000000000000 from memory into f4
fadd.d f31, f27, f4, dyn # perform operation
fadd.d f31, f27, f4, rdn # perform operation
fadd.d f31, f27, f4, rmm # perform operation
fadd.d f31, f27, f4, rne # perform operation
fadd.d f31, f27, f4, rtz # perform operation
fadd.d f31, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff0000000000000)
li x29, 0x64e92594cd52df70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
fadd.d f29, f18, f20, dyn # perform operation
fadd.d f29, f18, f20, rdn # perform operation
fadd.d f29, f18, f20, rmm # perform operation
fadd.d f29, f18, f20, rne # perform operation
fadd.d f29, f18, f20, rtz # perform operation
fadd.d f29, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff0000000000000)
li x26, 0x88d44352135e3bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
fadd.d f26, f22, f13, dyn # perform operation
fadd.d f26, f22, f13, rdn # perform operation
fadd.d f26, f22, f13, rmm # perform operation
fadd.d f26, f22, f13, rne # perform operation
fadd.d f26, f22, f13, rtz # perform operation
fadd.d f26, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff8000000000000)
li x3, 0x6e225585b096f74e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
fadd.d f3, f19, f13, dyn # perform operation
fadd.d f3, f19, f13, rdn # perform operation
fadd.d f3, f19, f13, rmm # perform operation
fadd.d f3, f19, f13, rne # perform operation
fadd.d f3, f19, f13, rtz # perform operation
fadd.d f3, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff8000000000000)
li x20, 0x43a13ec4fe73f032 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
fadd.d f20, f25, f5, dyn # perform operation
fadd.d f20, f25, f5, rdn # perform operation
fadd.d f20, f25, f5, rmm # perform operation
fadd.d f20, f25, f5, rne # perform operation
fadd.d f20, f25, f5, rtz # perform operation
fadd.d f20, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x4000000000000000)
li x14, 0x7fe6fec9606d1ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fadd.d f14, f9, f29, dyn # perform operation
fadd.d f14, f9, f29, rdn # perform operation
fadd.d f14, f9, f29, rmm # perform operation
fadd.d f14, f9, f29, rne # perform operation
fadd.d f14, f9, f29, rtz # perform operation
fadd.d f14, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xc000000000000000)
li x27, 0x33166f1de6656c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
fadd.d f27, f30, f1, dyn # perform operation
fadd.d f27, f30, f1, rdn # perform operation
fadd.d f27, f30, f1, rmm # perform operation
fadd.d f27, f30, f1, rne # perform operation
fadd.d f27, f30, f1, rtz # perform operation
fadd.d f27, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x10000000000000)
li x7, 0x69f7d0bc12898f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fadd.d f7, f13, f23, dyn # perform operation
fadd.d f7, f13, f23, rdn # perform operation
fadd.d f7, f13, f23, rmm # perform operation
fadd.d f7, f13, f23, rne # perform operation
fadd.d f7, f13, f23, rtz # perform operation
fadd.d f7, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8010000000000000)
li x25, 0x7aa6ffa40ad7d6b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
fadd.d f25, f21, f18, dyn # perform operation
fadd.d f25, f21, f18, rdn # perform operation
fadd.d f25, f21, f18, rmm # perform operation
fadd.d f25, f21, f18, rne # perform operation
fadd.d f25, f21, f18, rtz # perform operation
fadd.d f25, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fefffffffffffff)
li x19, 0xc48580ff6e8eb9be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
fadd.d f19, f3, f21, dyn # perform operation
fadd.d f19, f3, f21, rdn # perform operation
fadd.d f19, f3, f21, rmm # perform operation
fadd.d f19, f3, f21, rne # perform operation
fadd.d f19, f3, f21, rtz # perform operation
fadd.d f19, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xffefffffffffffff)
li x5, 0x78bf24e1ce1d656d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
fadd.d f5, f16, f15, dyn # perform operation
fadd.d f5, f16, f15, rdn # perform operation
fadd.d f5, f16, f15, rmm # perform operation
fadd.d f5, f16, f15, rne # perform operation
fadd.d f5, f16, f15, rtz # perform operation
fadd.d f5, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfffffffffffff)
li x1, 0x29e93fbad929a8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fadd.d f1, f24, f12, dyn # perform operation
fadd.d f1, f24, f12, rdn # perform operation
fadd.d f1, f24, f12, rmm # perform operation
fadd.d f1, f24, f12, rne # perform operation
fadd.d f1, f24, f12, rtz # perform operation
fadd.d f1, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x800fffffffffffff)
li x20, 0xdbe66bafd5a848be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fadd.d f20, f22, f19, dyn # perform operation
fadd.d f20, f22, f19, rdn # perform operation
fadd.d f20, f22, f19, rmm # perform operation
fadd.d f20, f22, f19, rne # perform operation
fadd.d f20, f22, f19, rtz # perform operation
fadd.d f20, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000)
li x26, 0xbbd733f270fd34cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fadd.d f26, f16, f12, dyn # perform operation
fadd.d f26, f16, f12, rdn # perform operation
fadd.d f26, f16, f12, rmm # perform operation
fadd.d f26, f16, f12, rne # perform operation
fadd.d f26, f16, f12, rtz # perform operation
fadd.d f26, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8008000000000000)
li x15, 0x1dfd519f947f1c76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fadd.d f15, f3, f17, dyn # perform operation
fadd.d f15, f3, f17, rdn # perform operation
fadd.d f15, f3, f17, rmm # perform operation
fadd.d f15, f3, f17, rne # perform operation
fadd.d f15, f3, f17, rtz # perform operation
fadd.d f15, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x1)
li x27, 0x97396c1efe39f7e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
fadd.d f27, f3, f15, dyn # perform operation
fadd.d f27, f3, f15, rdn # perform operation
fadd.d f27, f3, f15, rmm # perform operation
fadd.d f27, f3, f15, rne # perform operation
fadd.d f27, f3, f15, rtz # perform operation
fadd.d f27, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000001)
li x9, 0xaf03985441b4f3c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
fadd.d f9, f11, f23, dyn # perform operation
fadd.d f9, f11, f23, rdn # perform operation
fadd.d f9, f11, f23, rmm # perform operation
fadd.d f9, f11, f23, rne # perform operation
fadd.d f9, f11, f23, rtz # perform operation
fadd.d f9, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000000)
li x11, 0x2e979f6c365149ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f12, 0(x2) # load 0xffefffffffffffff from memory into f12
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
fadd.d f11, f12, f4, dyn # perform operation
fadd.d f11, f12, f4, rdn # perform operation
fadd.d f11, f12, f4, rmm # perform operation
fadd.d f11, f12, f4, rne # perform operation
fadd.d f11, f12, f4, rtz # perform operation
fadd.d f11, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfff0000000000000)
li x6, 0x4a685d58937fd908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fadd.d f6, f25, f5, dyn # perform operation
fadd.d f6, f25, f5, rdn # perform operation
fadd.d f6, f25, f5, rmm # perform operation
fadd.d f6, f25, f5, rne # perform operation
fadd.d f6, f25, f5, rtz # perform operation
fadd.d f6, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff8000000000000)
li x20, 0x3baa555acd1e608a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fadd.d f20, f1, f29, dyn # perform operation
fadd.d f20, f1, f29, rdn # perform operation
fadd.d f20, f1, f29, rmm # perform operation
fadd.d f20, f1, f29, rne # perform operation
fadd.d f20, f1, f29, rtz # perform operation
fadd.d f20, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fffffffffffffff)
li x10, 0xabc11607c766f1ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
fadd.d f10, f19, f27, dyn # perform operation
fadd.d f10, f19, f27, rdn # perform operation
fadd.d f10, f19, f27, rmm # perform operation
fadd.d f10, f19, f27, rne # perform operation
fadd.d f10, f19, f27, rtz # perform operation
fadd.d f10, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000001)
li x13, 0xd1c92e1395856024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fadd.d f13, f27, f31, dyn # perform operation
fadd.d f13, f27, f31, rdn # perform operation
fadd.d f13, f27, f31, rmm # perform operation
fadd.d f13, f27, f31, rne # perform operation
fadd.d f13, f27, f31, rtz # perform operation
fadd.d f13, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x6, 0x245c1bd9686a96c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
fadd.d f6, f1, f11, dyn # perform operation
fadd.d f6, f1, f11, rdn # perform operation
fadd.d f6, f1, f11, rmm # perform operation
fadd.d f6, f1, f11, rne # perform operation
fadd.d f6, f1, f11, rtz # perform operation
fadd.d f6, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x5a392534a57711ad)
li x11, 0xcd94c5726acff0e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
fadd.d f11, f18, f8, dyn # perform operation
fadd.d f11, f18, f8, rdn # perform operation
fadd.d f11, f18, f8, rmm # perform operation
fadd.d f11, f18, f8, rne # perform operation
fadd.d f11, f18, f8, rtz # perform operation
fadd.d f11, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xa6e895993737426c)
li x11, 0xa29e0dba1e192bad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
fadd.d f11, f8, f15, dyn # perform operation
fadd.d f11, f8, f15, rdn # perform operation
fadd.d f11, f8, f15, rmm # perform operation
fadd.d f11, f8, f15, rne # perform operation
fadd.d f11, f8, f15, rtz # perform operation
fadd.d f11, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x0)
li x22, 0x9eef80c193e9ff0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
fadd.d f22, f14, f4, dyn # perform operation
fadd.d f22, f14, f4, rdn # perform operation
fadd.d f22, f14, f4, rmm # perform operation
fadd.d f22, f14, f4, rne # perform operation
fadd.d f22, f14, f4, rtz # perform operation
fadd.d f22, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000000)
li x24, 0x0bb9a36e4600f7a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
fadd.d f24, f29, f16, dyn # perform operation
fadd.d f24, f29, f16, rdn # perform operation
fadd.d f24, f29, f16, rmm # perform operation
fadd.d f24, f29, f16, rne # perform operation
fadd.d f24, f29, f16, rtz # perform operation
fadd.d f24, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff0000000000000)
li x27, 0x4eec1b14ab050707 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
fadd.d f27, f28, f8, dyn # perform operation
fadd.d f27, f28, f8, rdn # perform operation
fadd.d f27, f28, f8, rmm # perform operation
fadd.d f27, f28, f8, rne # perform operation
fadd.d f27, f28, f8, rtz # perform operation
fadd.d f27, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff0000000000000)
li x26, 0x29530cb899d8ab26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
fadd.d f26, f16, f15, dyn # perform operation
fadd.d f26, f16, f15, rdn # perform operation
fadd.d f26, f16, f15, rmm # perform operation
fadd.d f26, f16, f15, rne # perform operation
fadd.d f26, f16, f15, rtz # perform operation
fadd.d f26, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff8000000000000)
li x31, 0xc5e48d002ab0c486 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fadd.d f31, f28, f8, dyn # perform operation
fadd.d f31, f28, f8, rdn # perform operation
fadd.d f31, f28, f8, rmm # perform operation
fadd.d f31, f28, f8, rne # perform operation
fadd.d f31, f28, f8, rtz # perform operation
fadd.d f31, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff8000000000000)
li x31, 0xbeb708b287ec96cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
fadd.d f31, f2, f5, dyn # perform operation
fadd.d f31, f2, f5, rdn # perform operation
fadd.d f31, f2, f5, rmm # perform operation
fadd.d f31, f2, f5, rne # perform operation
fadd.d f31, f2, f5, rtz # perform operation
fadd.d f31, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x4000000000000000)
li x19, 0x5e2562517febcecd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
fadd.d f19, f6, f12, dyn # perform operation
fadd.d f19, f6, f12, rdn # perform operation
fadd.d f19, f6, f12, rmm # perform operation
fadd.d f19, f6, f12, rne # perform operation
fadd.d f19, f6, f12, rtz # perform operation
fadd.d f19, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xc000000000000000)
li x13, 0xfab1223cc2ce514c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
fadd.d f13, f25, f27, dyn # perform operation
fadd.d f13, f25, f27, rdn # perform operation
fadd.d f13, f25, f27, rmm # perform operation
fadd.d f13, f25, f27, rne # perform operation
fadd.d f13, f25, f27, rtz # perform operation
fadd.d f13, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x10000000000000)
li x4, 0xfee81967e7d8ad54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
fadd.d f4, f17, f1, dyn # perform operation
fadd.d f4, f17, f1, rdn # perform operation
fadd.d f4, f17, f1, rmm # perform operation
fadd.d f4, f17, f1, rne # perform operation
fadd.d f4, f17, f1, rtz # perform operation
fadd.d f4, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8010000000000000)
li x28, 0xb39f9320f25022be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fadd.d f28, f12, f2, dyn # perform operation
fadd.d f28, f12, f2, rdn # perform operation
fadd.d f28, f12, f2, rmm # perform operation
fadd.d f28, f12, f2, rne # perform operation
fadd.d f28, f12, f2, rtz # perform operation
fadd.d f28, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fefffffffffffff)
li x16, 0x977c5e2da289e3be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fadd.d f16, f11, f8, dyn # perform operation
fadd.d f16, f11, f8, rdn # perform operation
fadd.d f16, f11, f8, rmm # perform operation
fadd.d f16, f11, f8, rne # perform operation
fadd.d f16, f11, f8, rtz # perform operation
fadd.d f16, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xffefffffffffffff)
li x27, 0xf512ef6afc2285fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f4, 0(x2) # load 0x000fffffffffffff from memory into f4
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
fadd.d f27, f4, f10, dyn # perform operation
fadd.d f27, f4, f10, rdn # perform operation
fadd.d f27, f4, f10, rmm # perform operation
fadd.d f27, f4, f10, rne # perform operation
fadd.d f27, f4, f10, rtz # perform operation
fadd.d f27, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfffffffffffff)
li x19, 0x957e7d3cb6ef441d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
fadd.d f19, f27, f7, dyn # perform operation
fadd.d f19, f27, f7, rdn # perform operation
fadd.d f19, f27, f7, rmm # perform operation
fadd.d f19, f27, f7, rne # perform operation
fadd.d f19, f27, f7, rtz # perform operation
fadd.d f19, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x800fffffffffffff)
li x14, 0x94723c8ac01a07be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
fadd.d f14, f7, f3, dyn # perform operation
fadd.d f14, f7, f3, rdn # perform operation
fadd.d f14, f7, f3, rmm # perform operation
fadd.d f14, f7, f3, rne # perform operation
fadd.d f14, f7, f3, rtz # perform operation
fadd.d f14, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000)
li x5, 0xb6580ca765c30b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
fadd.d f5, f10, f24, dyn # perform operation
fadd.d f5, f10, f24, rdn # perform operation
fadd.d f5, f10, f24, rmm # perform operation
fadd.d f5, f10, f24, rne # perform operation
fadd.d f5, f10, f24, rtz # perform operation
fadd.d f5, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8008000000000000)
li x10, 0xc15c97a467cc9582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fadd.d f10, f22, f29, dyn # perform operation
fadd.d f10, f22, f29, rdn # perform operation
fadd.d f10, f22, f29, rmm # perform operation
fadd.d f10, f22, f29, rne # perform operation
fadd.d f10, f22, f29, rtz # perform operation
fadd.d f10, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x1)
li x3, 0xa995d196cf1f3dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f18, 0(x2) # load 0x000fffffffffffff from memory into f18
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
fadd.d f3, f18, f20, dyn # perform operation
fadd.d f3, f18, f20, rdn # perform operation
fadd.d f3, f18, f20, rmm # perform operation
fadd.d f3, f18, f20, rne # perform operation
fadd.d f3, f18, f20, rtz # perform operation
fadd.d f3, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000001)
li x25, 0x5aee23d6b0d3a77a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fadd.d f25, f27, f19, dyn # perform operation
fadd.d f25, f27, f19, rdn # perform operation
fadd.d f25, f27, f19, rmm # perform operation
fadd.d f25, f27, f19, rne # perform operation
fadd.d f25, f27, f19, rtz # perform operation
fadd.d f25, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000000)
li x15, 0xdca896feea2e7b4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fadd.d f15, f24, f20, dyn # perform operation
fadd.d f15, f24, f20, rdn # perform operation
fadd.d f15, f24, f20, rmm # perform operation
fadd.d f15, f24, f20, rne # perform operation
fadd.d f15, f24, f20, rtz # perform operation
fadd.d f15, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfff0000000000000)
li x27, 0x798058d0bb5cb102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
fadd.d f27, f1, f9, dyn # perform operation
fadd.d f27, f1, f9, rdn # perform operation
fadd.d f27, f1, f9, rmm # perform operation
fadd.d f27, f1, f9, rne # perform operation
fadd.d f27, f1, f9, rtz # perform operation
fadd.d f27, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff8000000000000)
li x20, 0x840b304d68cefaf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fadd.d f20, f15, f21, dyn # perform operation
fadd.d f20, f15, f21, rdn # perform operation
fadd.d f20, f15, f21, rmm # perform operation
fadd.d f20, f15, f21, rne # perform operation
fadd.d f20, f15, f21, rtz # perform operation
fadd.d f20, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fffffffffffffff)
li x5, 0xef758fbe191aeeac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fadd.d f5, f31, f14, dyn # perform operation
fadd.d f5, f31, f14, rdn # perform operation
fadd.d f5, f31, f14, rmm # perform operation
fadd.d f5, f31, f14, rne # perform operation
fadd.d f5, f31, f14, rtz # perform operation
fadd.d f5, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000001)
li x22, 0xbded8fdc98e7d1fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
fadd.d f22, f6, f1, dyn # perform operation
fadd.d f22, f6, f1, rdn # perform operation
fadd.d f22, f6, f1, rmm # perform operation
fadd.d f22, f6, f1, rne # perform operation
fadd.d f22, f6, f1, rtz # perform operation
fadd.d f22, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff7ffffffffffff)
li x26, 0xbc124eae59d78d42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f19, 0(x2) # load 0x7ff7ffffffffffff from memory into f19
fadd.d f26, f20, f19, dyn # perform operation
fadd.d f26, f20, f19, rdn # perform operation
fadd.d f26, f20, f19, rmm # perform operation
fadd.d f26, f20, f19, rne # perform operation
fadd.d f26, f20, f19, rtz # perform operation
fadd.d f26, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x5a392534a57711ad)
li x8, 0x5e695eeaa6964dec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
fadd.d f8, f15, f4, dyn # perform operation
fadd.d f8, f15, f4, rdn # perform operation
fadd.d f8, f15, f4, rmm # perform operation
fadd.d f8, f15, f4, rne # perform operation
fadd.d f8, f15, f4, rtz # perform operation
fadd.d f8, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xa6e895993737426c)
li x2, 0x4264e91ba550fce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
fadd.d f2, f14, f29, dyn # perform operation
fadd.d f2, f14, f29, rdn # perform operation
fadd.d f2, f14, f29, rmm # perform operation
fadd.d f2, f14, f29, rne # perform operation
fadd.d f2, f14, f29, rtz # perform operation
fadd.d f2, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x0)
li x15, 0xf5da52f2cbb3dcc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
fadd.d f15, f4, f30, dyn # perform operation
fadd.d f15, f4, f30, rdn # perform operation
fadd.d f15, f4, f30, rmm # perform operation
fadd.d f15, f4, f30, rne # perform operation
fadd.d f15, f4, f30, rtz # perform operation
fadd.d f15, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000000)
li x13, 0x52ba62e322e53360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
fadd.d f13, f27, f6, dyn # perform operation
fadd.d f13, f27, f6, rdn # perform operation
fadd.d f13, f27, f6, rmm # perform operation
fadd.d f13, f27, f6, rne # perform operation
fadd.d f13, f27, f6, rtz # perform operation
fadd.d f13, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff0000000000000)
li x5, 0x3ba60f5b64e360ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fadd.d f5, f2, f21, dyn # perform operation
fadd.d f5, f2, f21, rdn # perform operation
fadd.d f5, f2, f21, rmm # perform operation
fadd.d f5, f2, f21, rne # perform operation
fadd.d f5, f2, f21, rtz # perform operation
fadd.d f5, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff0000000000000)
li x28, 0x55bb8550f40679a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fadd.d f28, f3, f18, dyn # perform operation
fadd.d f28, f3, f18, rdn # perform operation
fadd.d f28, f3, f18, rmm # perform operation
fadd.d f28, f3, f18, rne # perform operation
fadd.d f28, f3, f18, rtz # perform operation
fadd.d f28, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff8000000000000)
li x1, 0xb43f02d47e33cee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fadd.d f1, f19, f2, dyn # perform operation
fadd.d f1, f19, f2, rdn # perform operation
fadd.d f1, f19, f2, rmm # perform operation
fadd.d f1, f19, f2, rne # perform operation
fadd.d f1, f19, f2, rtz # perform operation
fadd.d f1, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff8000000000000)
li x12, 0x8957e7e4181211ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fadd.d f12, f30, f24, dyn # perform operation
fadd.d f12, f30, f24, rdn # perform operation
fadd.d f12, f30, f24, rmm # perform operation
fadd.d f12, f30, f24, rne # perform operation
fadd.d f12, f30, f24, rtz # perform operation
fadd.d f12, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x4000000000000000)
li x28, 0x20a2906cb8939c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
fadd.d f28, f2, f4, dyn # perform operation
fadd.d f28, f2, f4, rdn # perform operation
fadd.d f28, f2, f4, rmm # perform operation
fadd.d f28, f2, f4, rne # perform operation
fadd.d f28, f2, f4, rtz # perform operation
fadd.d f28, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xc000000000000000)
li x14, 0x9beac4b30f2e76ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fadd.d f14, f15, f20, dyn # perform operation
fadd.d f14, f15, f20, rdn # perform operation
fadd.d f14, f15, f20, rmm # perform operation
fadd.d f14, f15, f20, rne # perform operation
fadd.d f14, f15, f20, rtz # perform operation
fadd.d f14, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x10000000000000)
li x22, 0xdb91b64b42bb0c65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
fadd.d f22, f9, f12, dyn # perform operation
fadd.d f22, f9, f12, rdn # perform operation
fadd.d f22, f9, f12, rmm # perform operation
fadd.d f22, f9, f12, rne # perform operation
fadd.d f22, f9, f12, rtz # perform operation
fadd.d f22, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8010000000000000)
li x4, 0x26c393b781efe528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
fadd.d f4, f21, f24, dyn # perform operation
fadd.d f4, f21, f24, rdn # perform operation
fadd.d f4, f21, f24, rmm # perform operation
fadd.d f4, f21, f24, rne # perform operation
fadd.d f4, f21, f24, rtz # perform operation
fadd.d f4, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fefffffffffffff)
li x3, 0xc9ae8d823608910e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
fadd.d f3, f7, f6, dyn # perform operation
fadd.d f3, f7, f6, rdn # perform operation
fadd.d f3, f7, f6, rmm # perform operation
fadd.d f3, f7, f6, rne # perform operation
fadd.d f3, f7, f6, rtz # perform operation
fadd.d f3, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xffefffffffffffff)
li x14, 0x01802b0d56362b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fadd.d f14, f12, f7, dyn # perform operation
fadd.d f14, f12, f7, rdn # perform operation
fadd.d f14, f12, f7, rmm # perform operation
fadd.d f14, f12, f7, rne # perform operation
fadd.d f14, f12, f7, rtz # perform operation
fadd.d f14, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfffffffffffff)
li x3, 0xd959d4b6943c8780 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
fadd.d f3, f30, f26, dyn # perform operation
fadd.d f3, f30, f26, rdn # perform operation
fadd.d f3, f30, f26, rmm # perform operation
fadd.d f3, f30, f26, rne # perform operation
fadd.d f3, f30, f26, rtz # perform operation
fadd.d f3, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x800fffffffffffff)
li x12, 0x1a6c4db2c75833fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fadd.d f12, f14, f19, dyn # perform operation
fadd.d f12, f14, f19, rdn # perform operation
fadd.d f12, f14, f19, rmm # perform operation
fadd.d f12, f14, f19, rne # perform operation
fadd.d f12, f14, f19, rtz # perform operation
fadd.d f12, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000)
li x17, 0xdc4ec8a821ff4a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
fadd.d f17, f1, f2, dyn # perform operation
fadd.d f17, f1, f2, rdn # perform operation
fadd.d f17, f1, f2, rmm # perform operation
fadd.d f17, f1, f2, rne # perform operation
fadd.d f17, f1, f2, rtz # perform operation
fadd.d f17, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8008000000000000)
li x11, 0xf66cdf9f32ac0222 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
fadd.d f11, f24, f4, dyn # perform operation
fadd.d f11, f24, f4, rdn # perform operation
fadd.d f11, f24, f4, rmm # perform operation
fadd.d f11, f24, f4, rne # perform operation
fadd.d f11, f24, f4, rtz # perform operation
fadd.d f11, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x1)
li x2, 0x58ad31039badef7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
fadd.d f2, f7, f25, dyn # perform operation
fadd.d f2, f7, f25, rdn # perform operation
fadd.d f2, f7, f25, rmm # perform operation
fadd.d f2, f7, f25, rne # perform operation
fadd.d f2, f7, f25, rtz # perform operation
fadd.d f2, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000001)
li x17, 0x70029eb1cf958cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fadd.d f17, f4, f7, dyn # perform operation
fadd.d f17, f4, f7, rdn # perform operation
fadd.d f17, f4, f7, rmm # perform operation
fadd.d f17, f4, f7, rne # perform operation
fadd.d f17, f4, f7, rtz # perform operation
fadd.d f17, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000000)
li x6, 0xcd0ec35ee833a25e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fadd.d f6, f31, f29, dyn # perform operation
fadd.d f6, f31, f29, rdn # perform operation
fadd.d f6, f31, f29, rmm # perform operation
fadd.d f6, f31, f29, rne # perform operation
fadd.d f6, f31, f29, rtz # perform operation
fadd.d f6, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfff0000000000000)
li x10, 0x8ce2bdaa632af339 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
fadd.d f10, f9, f8, dyn # perform operation
fadd.d f10, f9, f8, rdn # perform operation
fadd.d f10, f9, f8, rmm # perform operation
fadd.d f10, f9, f8, rne # perform operation
fadd.d f10, f9, f8, rtz # perform operation
fadd.d f10, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff8000000000000)
li x6, 0x351db6064b3f465f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
fadd.d f6, f11, f19, dyn # perform operation
fadd.d f6, f11, f19, rdn # perform operation
fadd.d f6, f11, f19, rmm # perform operation
fadd.d f6, f11, f19, rne # perform operation
fadd.d f6, f11, f19, rtz # perform operation
fadd.d f6, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fffffffffffffff)
li x12, 0xee10d86356ad62dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
fadd.d f12, f29, f31, dyn # perform operation
fadd.d f12, f29, f31, rdn # perform operation
fadd.d f12, f29, f31, rmm # perform operation
fadd.d f12, f29, f31, rne # perform operation
fadd.d f12, f29, f31, rtz # perform operation
fadd.d f12, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000001)
li x21, 0xbb9eb80424085658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fadd.d f21, f27, f11, dyn # perform operation
fadd.d f21, f27, f11, rdn # perform operation
fadd.d f21, f27, f11, rmm # perform operation
fadd.d f21, f27, f11, rne # perform operation
fadd.d f21, f27, f11, rtz # perform operation
fadd.d f21, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff7ffffffffffff)
li x9, 0x55aabadb4d481c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fadd.d f9, f23, f25, dyn # perform operation
fadd.d f9, f23, f25, rdn # perform operation
fadd.d f9, f23, f25, rmm # perform operation
fadd.d f9, f23, f25, rne # perform operation
fadd.d f9, f23, f25, rtz # perform operation
fadd.d f9, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x5a392534a57711ad)
li x26, 0xafbbde439b8aaac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fadd.d f26, f31, f17, dyn # perform operation
fadd.d f26, f31, f17, rdn # perform operation
fadd.d f26, f31, f17, rmm # perform operation
fadd.d f26, f31, f17, rne # perform operation
fadd.d f26, f31, f17, rtz # perform operation
fadd.d f26, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xa6e895993737426c)
li x5, 0x345a28b0284d79d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
fadd.d f5, f28, f30, dyn # perform operation
fadd.d f5, f28, f30, rdn # perform operation
fadd.d f5, f28, f30, rmm # perform operation
fadd.d f5, f28, f30, rne # perform operation
fadd.d f5, f28, f30, rtz # perform operation
fadd.d f5, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x0)
li x2, 0x923450813e5afea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
fadd.d f2, f6, f28, dyn # perform operation
fadd.d f2, f6, f28, rdn # perform operation
fadd.d f2, f6, f28, rmm # perform operation
fadd.d f2, f6, f28, rne # perform operation
fadd.d f2, f6, f28, rtz # perform operation
fadd.d f2, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000000)
li x16, 0xeea2f324fd7cef02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fadd.d f16, f13, f22, dyn # perform operation
fadd.d f16, f13, f22, rdn # perform operation
fadd.d f16, f13, f22, rmm # perform operation
fadd.d f16, f13, f22, rne # perform operation
fadd.d f16, f13, f22, rtz # perform operation
fadd.d f16, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff0000000000000)
li x6, 0x0d42d68c773c9f57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fadd.d f6, f3, f21, dyn # perform operation
fadd.d f6, f3, f21, rdn # perform operation
fadd.d f6, f3, f21, rmm # perform operation
fadd.d f6, f3, f21, rne # perform operation
fadd.d f6, f3, f21, rtz # perform operation
fadd.d f6, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff0000000000000)
li x29, 0x629b40810bfb008c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fadd.d f29, f5, f23, dyn # perform operation
fadd.d f29, f5, f23, rdn # perform operation
fadd.d f29, f5, f23, rmm # perform operation
fadd.d f29, f5, f23, rne # perform operation
fadd.d f29, f5, f23, rtz # perform operation
fadd.d f29, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff8000000000000)
li x31, 0x8f094a7f924a875b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
fadd.d f31, f19, f24, dyn # perform operation
fadd.d f31, f19, f24, rdn # perform operation
fadd.d f31, f19, f24, rmm # perform operation
fadd.d f31, f19, f24, rne # perform operation
fadd.d f31, f19, f24, rtz # perform operation
fadd.d f31, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff8000000000000)
li x24, 0x9e379f5dff28eacd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
fadd.d f24, f20, f30, dyn # perform operation
fadd.d f24, f20, f30, rdn # perform operation
fadd.d f24, f20, f30, rmm # perform operation
fadd.d f24, f20, f30, rne # perform operation
fadd.d f24, f20, f30, rtz # perform operation
fadd.d f24, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x4000000000000000)
li x30, 0x2252f091dacaa4a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
fadd.d f30, f19, f13, dyn # perform operation
fadd.d f30, f19, f13, rdn # perform operation
fadd.d f30, f19, f13, rmm # perform operation
fadd.d f30, f19, f13, rne # perform operation
fadd.d f30, f19, f13, rtz # perform operation
fadd.d f30, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xc000000000000000)
li x30, 0xc6659650cbbe2713 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fadd.d f30, f8, f25, dyn # perform operation
fadd.d f30, f8, f25, rdn # perform operation
fadd.d f30, f8, f25, rmm # perform operation
fadd.d f30, f8, f25, rne # perform operation
fadd.d f30, f8, f25, rtz # perform operation
fadd.d f30, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x10000000000000)
li x13, 0xbab852f8e5780a61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fadd.d f13, f23, f20, dyn # perform operation
fadd.d f13, f23, f20, rdn # perform operation
fadd.d f13, f23, f20, rmm # perform operation
fadd.d f13, f23, f20, rne # perform operation
fadd.d f13, f23, f20, rtz # perform operation
fadd.d f13, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8010000000000000)
li x15, 0x824577aa7be481a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fadd.d f15, f30, f17, dyn # perform operation
fadd.d f15, f30, f17, rdn # perform operation
fadd.d f15, f30, f17, rmm # perform operation
fadd.d f15, f30, f17, rne # perform operation
fadd.d f15, f30, f17, rtz # perform operation
fadd.d f15, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fefffffffffffff)
li x12, 0x78cbcc7b968d8f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
fadd.d f12, f21, f22, dyn # perform operation
fadd.d f12, f21, f22, rdn # perform operation
fadd.d f12, f21, f22, rmm # perform operation
fadd.d f12, f21, f22, rne # perform operation
fadd.d f12, f21, f22, rtz # perform operation
fadd.d f12, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xffefffffffffffff)
li x26, 0x22ae2955d5441140 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fadd.d f26, f6, f14, dyn # perform operation
fadd.d f26, f6, f14, rdn # perform operation
fadd.d f26, f6, f14, rmm # perform operation
fadd.d f26, f6, f14, rne # perform operation
fadd.d f26, f6, f14, rtz # perform operation
fadd.d f26, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfffffffffffff)
li x29, 0x74557a8859052a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fadd.d f29, f27, f20, dyn # perform operation
fadd.d f29, f27, f20, rdn # perform operation
fadd.d f29, f27, f20, rmm # perform operation
fadd.d f29, f27, f20, rne # perform operation
fadd.d f29, f27, f20, rtz # perform operation
fadd.d f29, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x800fffffffffffff)
li x25, 0xffc76c8cb595a624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fadd.d f25, f7, f17, dyn # perform operation
fadd.d f25, f7, f17, rdn # perform operation
fadd.d f25, f7, f17, rmm # perform operation
fadd.d f25, f7, f17, rne # perform operation
fadd.d f25, f7, f17, rtz # perform operation
fadd.d f25, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000)
li x11, 0xad9ddf2beaccee94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fadd.d f11, f15, f7, dyn # perform operation
fadd.d f11, f15, f7, rdn # perform operation
fadd.d f11, f15, f7, rmm # perform operation
fadd.d f11, f15, f7, rne # perform operation
fadd.d f11, f15, f7, rtz # perform operation
fadd.d f11, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8008000000000000)
li x31, 0xd6dab6a50ac39cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fadd.d f31, f26, f22, dyn # perform operation
fadd.d f31, f26, f22, rdn # perform operation
fadd.d f31, f26, f22, rmm # perform operation
fadd.d f31, f26, f22, rne # perform operation
fadd.d f31, f26, f22, rtz # perform operation
fadd.d f31, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x1)
li x11, 0x9760e291f74678f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fadd.d f11, f19, f2, dyn # perform operation
fadd.d f11, f19, f2, rdn # perform operation
fadd.d f11, f19, f2, rmm # perform operation
fadd.d f11, f19, f2, rne # perform operation
fadd.d f11, f19, f2, rtz # perform operation
fadd.d f11, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000001)
li x3, 0x46470e86f83605d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
fadd.d f3, f26, f10, dyn # perform operation
fadd.d f3, f26, f10, rdn # perform operation
fadd.d f3, f26, f10, rmm # perform operation
fadd.d f3, f26, f10, rne # perform operation
fadd.d f3, f26, f10, rtz # perform operation
fadd.d f3, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000000)
li x23, 0x5b31bca51a17932c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fadd.d f23, f24, f20, dyn # perform operation
fadd.d f23, f24, f20, rdn # perform operation
fadd.d f23, f24, f20, rmm # perform operation
fadd.d f23, f24, f20, rne # perform operation
fadd.d f23, f24, f20, rtz # perform operation
fadd.d f23, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfff0000000000000)
li x30, 0x21b847c2680f061a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fadd.d f30, f6, f17, dyn # perform operation
fadd.d f30, f6, f17, rdn # perform operation
fadd.d f30, f6, f17, rmm # perform operation
fadd.d f30, f6, f17, rne # perform operation
fadd.d f30, f6, f17, rtz # perform operation
fadd.d f30, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff8000000000000)
li x26, 0x46424f9e9dc7c501 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fadd.d f26, f31, f15, dyn # perform operation
fadd.d f26, f31, f15, rdn # perform operation
fadd.d f26, f31, f15, rmm # perform operation
fadd.d f26, f31, f15, rne # perform operation
fadd.d f26, f31, f15, rtz # perform operation
fadd.d f26, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fffffffffffffff)
li x31, 0x357ac1be4bf17cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f8, 0(x2) # load 0x7fffffffffffffff from memory into f8
fadd.d f31, f25, f8, dyn # perform operation
fadd.d f31, f25, f8, rdn # perform operation
fadd.d f31, f25, f8, rmm # perform operation
fadd.d f31, f25, f8, rne # perform operation
fadd.d f31, f25, f8, rtz # perform operation
fadd.d f31, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000001)
li x14, 0xe2b2c0c7a0e8af79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
fadd.d f14, f1, f20, dyn # perform operation
fadd.d f14, f1, f20, rdn # perform operation
fadd.d f14, f1, f20, rmm # perform operation
fadd.d f14, f1, f20, rne # perform operation
fadd.d f14, f1, f20, rtz # perform operation
fadd.d f14, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff7ffffffffffff)
li x11, 0x98acff80dc0d8bb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fadd.d f11, f18, f25, dyn # perform operation
fadd.d f11, f18, f25, rdn # perform operation
fadd.d f11, f18, f25, rmm # perform operation
fadd.d f11, f18, f25, rne # perform operation
fadd.d f11, f18, f25, rtz # perform operation
fadd.d f11, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x5a392534a57711ad)
li x18, 0x8610828887eea6bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fadd.d f18, f19, f1, dyn # perform operation
fadd.d f18, f19, f1, rdn # perform operation
fadd.d f18, f19, f1, rmm # perform operation
fadd.d f18, f19, f1, rne # perform operation
fadd.d f18, f19, f1, rtz # perform operation
fadd.d f18, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xa6e895993737426c)
li x9, 0x0e40794c759b3e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fadd.d f9, f15, f3, dyn # perform operation
fadd.d f9, f15, f3, rdn # perform operation
fadd.d f9, f15, f3, rmm # perform operation
fadd.d f9, f15, f3, rne # perform operation
fadd.d f9, f15, f3, rtz # perform operation
fadd.d f9, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x0)
li x19, 0x04674a51f6c8e419 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
fadd.d f19, f16, f5, dyn # perform operation
fadd.d f19, f16, f5, rdn # perform operation
fadd.d f19, f16, f5, rmm # perform operation
fadd.d f19, f16, f5, rne # perform operation
fadd.d f19, f16, f5, rtz # perform operation
fadd.d f19, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000000)
li x9, 0xf1f40ded7e474c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
fadd.d f9, f21, f23, dyn # perform operation
fadd.d f9, f21, f23, rdn # perform operation
fadd.d f9, f21, f23, rmm # perform operation
fadd.d f9, f21, f23, rne # perform operation
fadd.d f9, f21, f23, rtz # perform operation
fadd.d f9, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff0000000000000)
li x9, 0x57eb6a569da61724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
fadd.d f9, f15, f12, dyn # perform operation
fadd.d f9, f15, f12, rdn # perform operation
fadd.d f9, f15, f12, rmm # perform operation
fadd.d f9, f15, f12, rne # perform operation
fadd.d f9, f15, f12, rtz # perform operation
fadd.d f9, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff0000000000000)
li x16, 0x7a9640a76e5ba468 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
fadd.d f16, f19, f31, dyn # perform operation
fadd.d f16, f19, f31, rdn # perform operation
fadd.d f16, f19, f31, rmm # perform operation
fadd.d f16, f19, f31, rne # perform operation
fadd.d f16, f19, f31, rtz # perform operation
fadd.d f16, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff8000000000000)
li x11, 0x7c9698e415628f7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
fadd.d f11, f29, f17, dyn # perform operation
fadd.d f11, f29, f17, rdn # perform operation
fadd.d f11, f29, f17, rmm # perform operation
fadd.d f11, f29, f17, rne # perform operation
fadd.d f11, f29, f17, rtz # perform operation
fadd.d f11, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff8000000000000)
li x2, 0xcf8c35d475c908fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
fadd.d f2, f24, f27, dyn # perform operation
fadd.d f2, f24, f27, rdn # perform operation
fadd.d f2, f24, f27, rmm # perform operation
fadd.d f2, f24, f27, rne # perform operation
fadd.d f2, f24, f27, rtz # perform operation
fadd.d f2, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x4000000000000000)
li x8, 0x5e034a1cee6ebe62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fadd.d f8, f16, f25, dyn # perform operation
fadd.d f8, f16, f25, rdn # perform operation
fadd.d f8, f16, f25, rmm # perform operation
fadd.d f8, f16, f25, rne # perform operation
fadd.d f8, f16, f25, rtz # perform operation
fadd.d f8, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xc000000000000000)
li x11, 0x0eb1a48674914d9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
fadd.d f11, f12, f10, dyn # perform operation
fadd.d f11, f12, f10, rdn # perform operation
fadd.d f11, f12, f10, rmm # perform operation
fadd.d f11, f12, f10, rne # perform operation
fadd.d f11, f12, f10, rtz # perform operation
fadd.d f11, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x10000000000000)
li x18, 0xc800e898016c92b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
fadd.d f18, f28, f16, dyn # perform operation
fadd.d f18, f28, f16, rdn # perform operation
fadd.d f18, f28, f16, rmm # perform operation
fadd.d f18, f28, f16, rne # perform operation
fadd.d f18, f28, f16, rtz # perform operation
fadd.d f18, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8010000000000000)
li x22, 0x274e206bb1fa5857 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
fadd.d f22, f15, f13, dyn # perform operation
fadd.d f22, f15, f13, rdn # perform operation
fadd.d f22, f15, f13, rmm # perform operation
fadd.d f22, f15, f13, rne # perform operation
fadd.d f22, f15, f13, rtz # perform operation
fadd.d f22, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fefffffffffffff)
li x21, 0xe122a199720cc1ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f13, 0(x2) # load 0x8008000000000000 from memory into f13
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
fadd.d f21, f13, f26, dyn # perform operation
fadd.d f21, f13, f26, rdn # perform operation
fadd.d f21, f13, f26, rmm # perform operation
fadd.d f21, f13, f26, rne # perform operation
fadd.d f21, f13, f26, rtz # perform operation
fadd.d f21, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xffefffffffffffff)
li x23, 0xfc31068e2a6a1c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fadd.d f23, f7, f31, dyn # perform operation
fadd.d f23, f7, f31, rdn # perform operation
fadd.d f23, f7, f31, rmm # perform operation
fadd.d f23, f7, f31, rne # perform operation
fadd.d f23, f7, f31, rtz # perform operation
fadd.d f23, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfffffffffffff)
li x24, 0x9bb6eada1bae64ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
fadd.d f24, f31, f11, dyn # perform operation
fadd.d f24, f31, f11, rdn # perform operation
fadd.d f24, f31, f11, rmm # perform operation
fadd.d f24, f31, f11, rne # perform operation
fadd.d f24, f31, f11, rtz # perform operation
fadd.d f24, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x800fffffffffffff)
li x11, 0x19531f8a71485f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fadd.d f11, f2, f19, dyn # perform operation
fadd.d f11, f2, f19, rdn # perform operation
fadd.d f11, f2, f19, rmm # perform operation
fadd.d f11, f2, f19, rne # perform operation
fadd.d f11, f2, f19, rtz # perform operation
fadd.d f11, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000)
li x30, 0xe0390b66ad03a7c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fadd.d f30, f2, f23, dyn # perform operation
fadd.d f30, f2, f23, rdn # perform operation
fadd.d f30, f2, f23, rmm # perform operation
fadd.d f30, f2, f23, rne # perform operation
fadd.d f30, f2, f23, rtz # perform operation
fadd.d f30, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8008000000000000)
li x8, 0xe8a828c030e69446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fadd.d f8, f4, f17, dyn # perform operation
fadd.d f8, f4, f17, rdn # perform operation
fadd.d f8, f4, f17, rmm # perform operation
fadd.d f8, f4, f17, rne # perform operation
fadd.d f8, f4, f17, rtz # perform operation
fadd.d f8, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x1)
li x6, 0xa4de52372a4532f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fadd.d f6, f8, f27, dyn # perform operation
fadd.d f6, f8, f27, rdn # perform operation
fadd.d f6, f8, f27, rmm # perform operation
fadd.d f6, f8, f27, rne # perform operation
fadd.d f6, f8, f27, rtz # perform operation
fadd.d f6, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000001)
li x17, 0x9cdd54eeed047172 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fadd.d f17, f5, f27, dyn # perform operation
fadd.d f17, f5, f27, rdn # perform operation
fadd.d f17, f5, f27, rmm # perform operation
fadd.d f17, f5, f27, rne # perform operation
fadd.d f17, f5, f27, rtz # perform operation
fadd.d f17, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000000)
li x15, 0x702f65bb2c0ae54a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
fadd.d f15, f19, f28, dyn # perform operation
fadd.d f15, f19, f28, rdn # perform operation
fadd.d f15, f19, f28, rmm # perform operation
fadd.d f15, f19, f28, rne # perform operation
fadd.d f15, f19, f28, rtz # perform operation
fadd.d f15, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfff0000000000000)
li x28, 0x1ad01dc4b4913eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
fadd.d f28, f29, f15, dyn # perform operation
fadd.d f28, f29, f15, rdn # perform operation
fadd.d f28, f29, f15, rmm # perform operation
fadd.d f28, f29, f15, rne # perform operation
fadd.d f28, f29, f15, rtz # perform operation
fadd.d f28, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff8000000000000)
li x12, 0xa8ce559c0c14483d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
fadd.d f12, f7, f5, dyn # perform operation
fadd.d f12, f7, f5, rdn # perform operation
fadd.d f12, f7, f5, rmm # perform operation
fadd.d f12, f7, f5, rne # perform operation
fadd.d f12, f7, f5, rtz # perform operation
fadd.d f12, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fffffffffffffff)
li x24, 0xa62d8993ccbb0d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
fadd.d f24, f17, f27, dyn # perform operation
fadd.d f24, f17, f27, rdn # perform operation
fadd.d f24, f17, f27, rmm # perform operation
fadd.d f24, f17, f27, rne # perform operation
fadd.d f24, f17, f27, rtz # perform operation
fadd.d f24, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000001)
li x10, 0xb9191df12a6cef7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
fadd.d f10, f2, f13, dyn # perform operation
fadd.d f10, f2, f13, rdn # perform operation
fadd.d f10, f2, f13, rmm # perform operation
fadd.d f10, f2, f13, rne # perform operation
fadd.d f10, f2, f13, rtz # perform operation
fadd.d f10, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff7ffffffffffff)
li x7, 0x255c7200d7703ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
fadd.d f7, f28, f6, dyn # perform operation
fadd.d f7, f28, f6, rdn # perform operation
fadd.d f7, f28, f6, rmm # perform operation
fadd.d f7, f28, f6, rne # perform operation
fadd.d f7, f28, f6, rtz # perform operation
fadd.d f7, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x5a392534a57711ad)
li x29, 0x2cb411eb8591333f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fadd.d f29, f23, f17, dyn # perform operation
fadd.d f29, f23, f17, rdn # perform operation
fadd.d f29, f23, f17, rmm # perform operation
fadd.d f29, f23, f17, rne # perform operation
fadd.d f29, f23, f17, rtz # perform operation
fadd.d f29, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xa6e895993737426c)
li x25, 0x515c08dbbf2444c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
fadd.d f25, f10, f2, dyn # perform operation
fadd.d f25, f10, f2, rdn # perform operation
fadd.d f25, f10, f2, rmm # perform operation
fadd.d f25, f10, f2, rne # perform operation
fadd.d f25, f10, f2, rtz # perform operation
fadd.d f25, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x11, 0x4838585b47a46680 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
fadd.d f11, f26, f22, dyn # perform operation
fadd.d f11, f26, f22, rdn # perform operation
fadd.d f11, f26, f22, rmm # perform operation
fadd.d f11, f26, f22, rne # perform operation
fadd.d f11, f26, f22, rtz # perform operation
fadd.d f11, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000000)
li x12, 0x503051e6ae3938be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f16, 0(x2) # load 0x0000000000000001 from memory into f16
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
fadd.d f12, f16, f24, dyn # perform operation
fadd.d f12, f16, f24, rdn # perform operation
fadd.d f12, f16, f24, rmm # perform operation
fadd.d f12, f16, f24, rne # perform operation
fadd.d f12, f16, f24, rtz # perform operation
fadd.d f12, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff0000000000000)
li x11, 0x802d221b20660c4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f30, 0(x2) # load 0x0000000000000001 from memory into f30
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
fadd.d f11, f30, f10, dyn # perform operation
fadd.d f11, f30, f10, rdn # perform operation
fadd.d f11, f30, f10, rmm # perform operation
fadd.d f11, f30, f10, rne # perform operation
fadd.d f11, f30, f10, rtz # perform operation
fadd.d f11, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff0000000000000)
li x6, 0x824d87f444ed5c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
fadd.d f6, f4, f24, dyn # perform operation
fadd.d f6, f4, f24, rdn # perform operation
fadd.d f6, f4, f24, rmm # perform operation
fadd.d f6, f4, f24, rne # perform operation
fadd.d f6, f4, f24, rtz # perform operation
fadd.d f6, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff8000000000000)
li x14, 0xa56558e5b3fb29b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fadd.d f14, f11, f29, dyn # perform operation
fadd.d f14, f11, f29, rdn # perform operation
fadd.d f14, f11, f29, rmm # perform operation
fadd.d f14, f11, f29, rne # perform operation
fadd.d f14, f11, f29, rtz # perform operation
fadd.d f14, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff8000000000000)
li x19, 0x2e7e81d64be59718 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
fadd.d f19, f11, f14, dyn # perform operation
fadd.d f19, f11, f14, rdn # perform operation
fadd.d f19, f11, f14, rmm # perform operation
fadd.d f19, f11, f14, rne # perform operation
fadd.d f19, f11, f14, rtz # perform operation
fadd.d f19, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000000000000000)
li x1, 0x98df9b8d1dbe1447 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fadd.d f1, f21, f8, dyn # perform operation
fadd.d f1, f21, f8, rdn # perform operation
fadd.d f1, f21, f8, rmm # perform operation
fadd.d f1, f21, f8, rne # perform operation
fadd.d f1, f21, f8, rtz # perform operation
fadd.d f1, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000000000000000)
li x13, 0x10828f88a85ad048 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
fadd.d f13, f22, f31, dyn # perform operation
fadd.d f13, f22, f31, rdn # perform operation
fadd.d f13, f22, f31, rmm # perform operation
fadd.d f13, f22, f31, rne # perform operation
fadd.d f13, f22, f31, rtz # perform operation
fadd.d f13, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x10000000000000)
li x12, 0xa3a5f69eefb76198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fadd.d f12, f17, f25, dyn # perform operation
fadd.d f12, f17, f25, rdn # perform operation
fadd.d f12, f17, f25, rmm # perform operation
fadd.d f12, f17, f25, rne # perform operation
fadd.d f12, f17, f25, rtz # perform operation
fadd.d f12, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8010000000000000)
li x12, 0x93d1896ed9481133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fadd.d f12, f14, f22, dyn # perform operation
fadd.d f12, f14, f22, rdn # perform operation
fadd.d f12, f14, f22, rmm # perform operation
fadd.d f12, f14, f22, rne # perform operation
fadd.d f12, f14, f22, rtz # perform operation
fadd.d f12, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fefffffffffffff)
li x21, 0x5c7800670bc94459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
fadd.d f21, f18, f17, dyn # perform operation
fadd.d f21, f18, f17, rdn # perform operation
fadd.d f21, f18, f17, rmm # perform operation
fadd.d f21, f18, f17, rne # perform operation
fadd.d f21, f18, f17, rtz # perform operation
fadd.d f21, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffefffffffffffff)
li x25, 0x149559042d5e5ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
fadd.d f25, f1, f29, dyn # perform operation
fadd.d f25, f1, f29, rdn # perform operation
fadd.d f25, f1, f29, rmm # perform operation
fadd.d f25, f1, f29, rne # perform operation
fadd.d f25, f1, f29, rtz # perform operation
fadd.d f25, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfffffffffffff)
li x31, 0x47f3270da3ece744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
fadd.d f31, f21, f5, dyn # perform operation
fadd.d f31, f21, f5, rdn # perform operation
fadd.d f31, f21, f5, rmm # perform operation
fadd.d f31, f21, f5, rne # perform operation
fadd.d f31, f21, f5, rtz # perform operation
fadd.d f31, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800fffffffffffff)
li x18, 0xb19e4dbc6e31a1a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fadd.d f18, f4, f29, dyn # perform operation
fadd.d f18, f4, f29, rdn # perform operation
fadd.d f18, f4, f29, rmm # perform operation
fadd.d f18, f4, f29, rne # perform operation
fadd.d f18, f4, f29, rtz # perform operation
fadd.d f18, f4, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f4, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f4, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f4, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f4, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000)
li x21, 0xac244d34270d15a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fadd.d f21, f20, f28, dyn # perform operation
fadd.d f21, f20, f28, rdn # perform operation
fadd.d f21, f20, f28, rmm # perform operation
fadd.d f21, f20, f28, rne # perform operation
fadd.d f21, f20, f28, rtz # perform operation
fadd.d f21, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8008000000000000)
li x7, 0xae2087f4a8fa2378 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fadd.d f7, f25, f28, dyn # perform operation
fadd.d f7, f25, f28, rdn # perform operation
fadd.d f7, f25, f28, rmm # perform operation
fadd.d f7, f25, f28, rne # perform operation
fadd.d f7, f25, f28, rtz # perform operation
fadd.d f7, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x9, 0x9bbb818101b90068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
fadd.d f9, f6, f24, dyn # perform operation
fadd.d f9, f6, f24, rdn # perform operation
fadd.d f9, f6, f24, rmm # perform operation
fadd.d f9, f6, f24, rne # perform operation
fadd.d f9, f6, f24, rtz # perform operation
fadd.d f9, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000001)
li x1, 0x297370bfd6bccb05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
fadd.d f1, f13, f11, dyn # perform operation
fadd.d f1, f13, f11, rdn # perform operation
fadd.d f1, f13, f11, rmm # perform operation
fadd.d f1, f13, f11, rne # perform operation
fadd.d f1, f13, f11, rtz # perform operation
fadd.d f1, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000000)
li x26, 0xf2794894c436301e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
fadd.d f26, f28, f15, dyn # perform operation
fadd.d f26, f28, f15, rdn # perform operation
fadd.d f26, f28, f15, rmm # perform operation
fadd.d f26, f28, f15, rne # perform operation
fadd.d f26, f28, f15, rtz # perform operation
fadd.d f26, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfff0000000000000)
li x18, 0x6d8c43ddb580440d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
fadd.d f18, f13, f9, dyn # perform operation
fadd.d f18, f13, f9, rdn # perform operation
fadd.d f18, f13, f9, rmm # perform operation
fadd.d f18, f13, f9, rne # perform operation
fadd.d f18, f13, f9, rtz # perform operation
fadd.d f18, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff8000000000000)
li x13, 0x671335de2d971f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fadd.d f13, f15, f29, dyn # perform operation
fadd.d f13, f15, f29, rdn # perform operation
fadd.d f13, f15, f29, rmm # perform operation
fadd.d f13, f15, f29, rne # perform operation
fadd.d f13, f15, f29, rtz # perform operation
fadd.d f13, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffffffffffff)
li x4, 0x8c0532859522bdf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
fadd.d f4, f8, f7, dyn # perform operation
fadd.d f4, f8, f7, rdn # perform operation
fadd.d f4, f8, f7, rmm # perform operation
fadd.d f4, f8, f7, rne # perform operation
fadd.d f4, f8, f7, rtz # perform operation
fadd.d f4, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000001)
li x8, 0xcdca99897ec95c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
fadd.d f8, f24, f21, dyn # perform operation
fadd.d f8, f24, f21, rdn # perform operation
fadd.d f8, f24, f21, rmm # perform operation
fadd.d f8, f24, f21, rne # perform operation
fadd.d f8, f24, f21, rtz # perform operation
fadd.d f8, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff7ffffffffffff)
li x16, 0xfe4ac92eb750c591 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fadd.d f16, f21, f2, dyn # perform operation
fadd.d f16, f21, f2, rdn # perform operation
fadd.d f16, f21, f2, rmm # perform operation
fadd.d f16, f21, f2, rne # perform operation
fadd.d f16, f21, f2, rtz # perform operation
fadd.d f16, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x5a392534a57711ad)
li x9, 0xdb0f4514a336cc73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fadd.d f9, f1, f28, dyn # perform operation
fadd.d f9, f1, f28, rdn # perform operation
fadd.d f9, f1, f28, rmm # perform operation
fadd.d f9, f1, f28, rne # perform operation
fadd.d f9, f1, f28, rtz # perform operation
fadd.d f9, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xa6e895993737426c)
li x4, 0x5195de7668f0c386 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fadd.d f4, f11, f3, dyn # perform operation
fadd.d f4, f11, f3, rdn # perform operation
fadd.d f4, f11, f3, rmm # perform operation
fadd.d f4, f11, f3, rne # perform operation
fadd.d f4, f11, f3, rtz # perform operation
fadd.d f4, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x0)
li x17, 0x93441de88fb88a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fadd.d f17, f20, f2, dyn # perform operation
fadd.d f17, f20, f2, rdn # perform operation
fadd.d f17, f20, f2, rmm # perform operation
fadd.d f17, f20, f2, rne # perform operation
fadd.d f17, f20, f2, rtz # perform operation
fadd.d f17, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000000)
li x24, 0x10a0ebe95842ab92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
fadd.d f24, f16, f23, dyn # perform operation
fadd.d f24, f16, f23, rdn # perform operation
fadd.d f24, f16, f23, rmm # perform operation
fadd.d f24, f16, f23, rne # perform operation
fadd.d f24, f16, f23, rtz # perform operation
fadd.d f24, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff0000000000000)
li x9, 0x41e3f0ea969be425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
fadd.d f9, f30, f6, dyn # perform operation
fadd.d f9, f30, f6, rdn # perform operation
fadd.d f9, f30, f6, rmm # perform operation
fadd.d f9, f30, f6, rne # perform operation
fadd.d f9, f30, f6, rtz # perform operation
fadd.d f9, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff0000000000000)
li x24, 0xeca10c44e7d9c7d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fadd.d f24, f16, f18, dyn # perform operation
fadd.d f24, f16, f18, rdn # perform operation
fadd.d f24, f16, f18, rmm # perform operation
fadd.d f24, f16, f18, rne # perform operation
fadd.d f24, f16, f18, rtz # perform operation
fadd.d f24, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff8000000000000)
li x5, 0x8d1272e7ee2b16b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
fadd.d f5, f8, f22, dyn # perform operation
fadd.d f5, f8, f22, rdn # perform operation
fadd.d f5, f8, f22, rmm # perform operation
fadd.d f5, f8, f22, rne # perform operation
fadd.d f5, f8, f22, rtz # perform operation
fadd.d f5, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff8000000000000)
li x9, 0xfadd524740cbf0e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
fadd.d f9, f14, f11, dyn # perform operation
fadd.d f9, f14, f11, rdn # perform operation
fadd.d f9, f14, f11, rmm # perform operation
fadd.d f9, f14, f11, rne # perform operation
fadd.d f9, f14, f11, rtz # perform operation
fadd.d f9, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x4000000000000000)
li x17, 0x04493129ed1452ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fadd.d f17, f24, f8, dyn # perform operation
fadd.d f17, f24, f8, rdn # perform operation
fadd.d f17, f24, f8, rmm # perform operation
fadd.d f17, f24, f8, rne # perform operation
fadd.d f17, f24, f8, rtz # perform operation
fadd.d f17, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xc000000000000000)
li x8, 0x115f0db442b75462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
fadd.d f8, f18, f12, dyn # perform operation
fadd.d f8, f18, f12, rdn # perform operation
fadd.d f8, f18, f12, rmm # perform operation
fadd.d f8, f18, f12, rne # perform operation
fadd.d f8, f18, f12, rtz # perform operation
fadd.d f8, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x10000000000000)
li x7, 0x974ff04846b082a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
fadd.d f7, f6, f8, dyn # perform operation
fadd.d f7, f6, f8, rdn # perform operation
fadd.d f7, f6, f8, rmm # perform operation
fadd.d f7, f6, f8, rne # perform operation
fadd.d f7, f6, f8, rtz # perform operation
fadd.d f7, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8010000000000000)
li x27, 0x8590ef11bf974937 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fadd.d f27, f24, f23, dyn # perform operation
fadd.d f27, f24, f23, rdn # perform operation
fadd.d f27, f24, f23, rmm # perform operation
fadd.d f27, f24, f23, rne # perform operation
fadd.d f27, f24, f23, rtz # perform operation
fadd.d f27, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fefffffffffffff)
li x13, 0x1e8563b4e4cfd547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fadd.d f13, f7, f2, dyn # perform operation
fadd.d f13, f7, f2, rdn # perform operation
fadd.d f13, f7, f2, rmm # perform operation
fadd.d f13, f7, f2, rne # perform operation
fadd.d f13, f7, f2, rtz # perform operation
fadd.d f13, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xffefffffffffffff)
li x20, 0xf2d51c3696bd7ae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fadd.d f20, f5, f19, dyn # perform operation
fadd.d f20, f5, f19, rdn # perform operation
fadd.d f20, f5, f19, rmm # perform operation
fadd.d f20, f5, f19, rne # perform operation
fadd.d f20, f5, f19, rtz # perform operation
fadd.d f20, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfffffffffffff)
li x12, 0x1b6403c06137bb3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
fadd.d f12, f8, f28, dyn # perform operation
fadd.d f12, f8, f28, rdn # perform operation
fadd.d f12, f8, f28, rmm # perform operation
fadd.d f12, f8, f28, rne # perform operation
fadd.d f12, f8, f28, rtz # perform operation
fadd.d f12, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x800fffffffffffff)
li x19, 0x17cfc051544561d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fadd.d f19, f30, f8, dyn # perform operation
fadd.d f19, f30, f8, rdn # perform operation
fadd.d f19, f30, f8, rmm # perform operation
fadd.d f19, f30, f8, rne # perform operation
fadd.d f19, f30, f8, rtz # perform operation
fadd.d f19, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000)
li x7, 0xc26f2168885a2355 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
fadd.d f7, f31, f3, dyn # perform operation
fadd.d f7, f31, f3, rdn # perform operation
fadd.d f7, f31, f3, rmm # perform operation
fadd.d f7, f31, f3, rne # perform operation
fadd.d f7, f31, f3, rtz # perform operation
fadd.d f7, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8008000000000000)
li x27, 0xc3dbd02a55e41bd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
fadd.d f27, f16, f3, dyn # perform operation
fadd.d f27, f16, f3, rdn # perform operation
fadd.d f27, f16, f3, rmm # perform operation
fadd.d f27, f16, f3, rne # perform operation
fadd.d f27, f16, f3, rtz # perform operation
fadd.d f27, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x1)
li x3, 0x085365f2194cefb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
fadd.d f3, f19, f8, dyn # perform operation
fadd.d f3, f19, f8, rdn # perform operation
fadd.d f3, f19, f8, rmm # perform operation
fadd.d f3, f19, f8, rne # perform operation
fadd.d f3, f19, f8, rtz # perform operation
fadd.d f3, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000001)
li x4, 0x90b548de3f4d984c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f1, 0(x2) # load 0x8000000000000001 from memory into f1
fadd.d f4, f2, f1, dyn # perform operation
fadd.d f4, f2, f1, rdn # perform operation
fadd.d f4, f2, f1, rmm # perform operation
fadd.d f4, f2, f1, rne # perform operation
fadd.d f4, f2, f1, rtz # perform operation
fadd.d f4, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000000)
li x26, 0xb8d94c1881442962 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
fadd.d f26, f17, f14, dyn # perform operation
fadd.d f26, f17, f14, rdn # perform operation
fadd.d f26, f17, f14, rmm # perform operation
fadd.d f26, f17, f14, rne # perform operation
fadd.d f26, f17, f14, rtz # perform operation
fadd.d f26, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfff0000000000000)
li x2, 0x77e0e6218353e874 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
fadd.d f2, f18, f14, dyn # perform operation
fadd.d f2, f18, f14, rdn # perform operation
fadd.d f2, f18, f14, rmm # perform operation
fadd.d f2, f18, f14, rne # perform operation
fadd.d f2, f18, f14, rtz # perform operation
fadd.d f2, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff8000000000000)
li x6, 0x28a5e6f8a5efce15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
fadd.d f6, f18, f20, dyn # perform operation
fadd.d f6, f18, f20, rdn # perform operation
fadd.d f6, f18, f20, rmm # perform operation
fadd.d f6, f18, f20, rne # perform operation
fadd.d f6, f18, f20, rtz # perform operation
fadd.d f6, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fffffffffffffff)
li x20, 0xb6633bf13a150d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fadd.d f20, f28, f9, dyn # perform operation
fadd.d f20, f28, f9, rdn # perform operation
fadd.d f20, f28, f9, rmm # perform operation
fadd.d f20, f28, f9, rne # perform operation
fadd.d f20, f28, f9, rtz # perform operation
fadd.d f20, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000001)
li x10, 0xb759abc1b8c792f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
fadd.d f10, f26, f13, dyn # perform operation
fadd.d f10, f26, f13, rdn # perform operation
fadd.d f10, f26, f13, rmm # perform operation
fadd.d f10, f26, f13, rne # perform operation
fadd.d f10, f26, f13, rtz # perform operation
fadd.d f10, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff7ffffffffffff)
li x15, 0x1037e8a142cb63fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f1, 0(x2) # load 0x8000000000000001 from memory into f1
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
fadd.d f15, f1, f7, dyn # perform operation
fadd.d f15, f1, f7, rdn # perform operation
fadd.d f15, f1, f7, rmm # perform operation
fadd.d f15, f1, f7, rne # perform operation
fadd.d f15, f1, f7, rtz # perform operation
fadd.d f15, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x5a392534a57711ad)
li x9, 0x4c184dd46c8fe3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
fadd.d f9, f5, f15, dyn # perform operation
fadd.d f9, f5, f15, rdn # perform operation
fadd.d f9, f5, f15, rmm # perform operation
fadd.d f9, f5, f15, rne # perform operation
fadd.d f9, f5, f15, rtz # perform operation
fadd.d f9, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xa6e895993737426c)
li x24, 0xf2d9ffb11ee12b21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
fadd.d f24, f26, f11, dyn # perform operation
fadd.d f24, f26, f11, rdn # perform operation
fadd.d f24, f26, f11, rmm # perform operation
fadd.d f24, f26, f11, rne # perform operation
fadd.d f24, f26, f11, rtz # perform operation
fadd.d f24, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x0)
li x4, 0xe03b0a21269455af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fadd.d f4, f9, f12, dyn # perform operation
fadd.d f4, f9, f12, rdn # perform operation
fadd.d f4, f9, f12, rmm # perform operation
fadd.d f4, f9, f12, rne # perform operation
fadd.d f4, f9, f12, rtz # perform operation
fadd.d f4, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000000)
li x20, 0x0e184d41d922d189 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
fadd.d f20, f3, f14, dyn # perform operation
fadd.d f20, f3, f14, rdn # perform operation
fadd.d f20, f3, f14, rmm # perform operation
fadd.d f20, f3, f14, rne # perform operation
fadd.d f20, f3, f14, rtz # perform operation
fadd.d f20, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff0000000000000)
li x24, 0x9d0549ca0254a5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fadd.d f24, f16, f1, dyn # perform operation
fadd.d f24, f16, f1, rdn # perform operation
fadd.d f24, f16, f1, rmm # perform operation
fadd.d f24, f16, f1, rne # perform operation
fadd.d f24, f16, f1, rtz # perform operation
fadd.d f24, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff0000000000000)
li x30, 0x76776501ad952ada # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
fadd.d f30, f27, f21, dyn # perform operation
fadd.d f30, f27, f21, rdn # perform operation
fadd.d f30, f27, f21, rmm # perform operation
fadd.d f30, f27, f21, rne # perform operation
fadd.d f30, f27, f21, rtz # perform operation
fadd.d f30, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff8000000000000)
li x1, 0xee8de095a2627fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
fadd.d f1, f18, f11, dyn # perform operation
fadd.d f1, f18, f11, rdn # perform operation
fadd.d f1, f18, f11, rmm # perform operation
fadd.d f1, f18, f11, rne # perform operation
fadd.d f1, f18, f11, rtz # perform operation
fadd.d f1, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff8000000000000)
li x31, 0x6927a1286e109b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fadd.d f31, f17, f22, dyn # perform operation
fadd.d f31, f17, f22, rdn # perform operation
fadd.d f31, f17, f22, rmm # perform operation
fadd.d f31, f17, f22, rne # perform operation
fadd.d f31, f17, f22, rtz # perform operation
fadd.d f31, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x4000000000000000)
li x16, 0x4f3f8fb60c38d3e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
fadd.d f16, f12, f28, dyn # perform operation
fadd.d f16, f12, f28, rdn # perform operation
fadd.d f16, f12, f28, rmm # perform operation
fadd.d f16, f12, f28, rne # perform operation
fadd.d f16, f12, f28, rtz # perform operation
fadd.d f16, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xc000000000000000)
li x23, 0x80cab8c899f084af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fadd.d f23, f28, f20, dyn # perform operation
fadd.d f23, f28, f20, rdn # perform operation
fadd.d f23, f28, f20, rmm # perform operation
fadd.d f23, f28, f20, rne # perform operation
fadd.d f23, f28, f20, rtz # perform operation
fadd.d f23, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x10000000000000)
li x13, 0x09c4e72b8775360c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
fadd.d f13, f17, f10, dyn # perform operation
fadd.d f13, f17, f10, rdn # perform operation
fadd.d f13, f17, f10, rmm # perform operation
fadd.d f13, f17, f10, rne # perform operation
fadd.d f13, f17, f10, rtz # perform operation
fadd.d f13, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8010000000000000)
li x7, 0xc1bc8b705c82458b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fadd.d f7, f10, f12, dyn # perform operation
fadd.d f7, f10, f12, rdn # perform operation
fadd.d f7, f10, f12, rmm # perform operation
fadd.d f7, f10, f12, rne # perform operation
fadd.d f7, f10, f12, rtz # perform operation
fadd.d f7, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fefffffffffffff)
li x2, 0xcd2da124790a98c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
fadd.d f2, f1, f13, dyn # perform operation
fadd.d f2, f1, f13, rdn # perform operation
fadd.d f2, f1, f13, rmm # perform operation
fadd.d f2, f1, f13, rne # perform operation
fadd.d f2, f1, f13, rtz # perform operation
fadd.d f2, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xffefffffffffffff)
li x20, 0x83f2635fa5ce2ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fadd.d f20, f5, f31, dyn # perform operation
fadd.d f20, f5, f31, rdn # perform operation
fadd.d f20, f5, f31, rmm # perform operation
fadd.d f20, f5, f31, rne # perform operation
fadd.d f20, f5, f31, rtz # perform operation
fadd.d f20, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfffffffffffff)
li x5, 0x2b6bfd6a061f9ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
fadd.d f5, f4, f7, dyn # perform operation
fadd.d f5, f4, f7, rdn # perform operation
fadd.d f5, f4, f7, rmm # perform operation
fadd.d f5, f4, f7, rne # perform operation
fadd.d f5, f4, f7, rtz # perform operation
fadd.d f5, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x800fffffffffffff)
li x27, 0x8c21b373a1cfe595 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
fadd.d f27, f15, f26, dyn # perform operation
fadd.d f27, f15, f26, rdn # perform operation
fadd.d f27, f15, f26, rmm # perform operation
fadd.d f27, f15, f26, rne # perform operation
fadd.d f27, f15, f26, rtz # perform operation
fadd.d f27, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000)
li x30, 0x99a2c4fc068dd701 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
fadd.d f30, f19, f6, dyn # perform operation
fadd.d f30, f19, f6, rdn # perform operation
fadd.d f30, f19, f6, rmm # perform operation
fadd.d f30, f19, f6, rne # perform operation
fadd.d f30, f19, f6, rtz # perform operation
fadd.d f30, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8008000000000000)
li x14, 0xbde74330f896a559 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fadd.d f14, f17, f26, dyn # perform operation
fadd.d f14, f17, f26, rdn # perform operation
fadd.d f14, f17, f26, rmm # perform operation
fadd.d f14, f17, f26, rne # perform operation
fadd.d f14, f17, f26, rtz # perform operation
fadd.d f14, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x1)
li x5, 0x85039f649fdca75f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fadd.d f5, f4, f22, dyn # perform operation
fadd.d f5, f4, f22, rdn # perform operation
fadd.d f5, f4, f22, rmm # perform operation
fadd.d f5, f4, f22, rne # perform operation
fadd.d f5, f4, f22, rtz # perform operation
fadd.d f5, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000001)
li x8, 0x84e6c8342794e4f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fadd.d f8, f27, f25, dyn # perform operation
fadd.d f8, f27, f25, rdn # perform operation
fadd.d f8, f27, f25, rmm # perform operation
fadd.d f8, f27, f25, rne # perform operation
fadd.d f8, f27, f25, rtz # perform operation
fadd.d f8, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000000)
li x18, 0x389dc19bb8eb81d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
fadd.d f18, f19, f10, dyn # perform operation
fadd.d f18, f19, f10, rdn # perform operation
fadd.d f18, f19, f10, rmm # perform operation
fadd.d f18, f19, f10, rne # perform operation
fadd.d f18, f19, f10, rtz # perform operation
fadd.d f18, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfff0000000000000)
li x27, 0x7ff9fdccd8ba2d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
fadd.d f27, f22, f24, dyn # perform operation
fadd.d f27, f22, f24, rdn # perform operation
fadd.d f27, f22, f24, rmm # perform operation
fadd.d f27, f22, f24, rne # perform operation
fadd.d f27, f22, f24, rtz # perform operation
fadd.d f27, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff8000000000000)
li x22, 0xc11a82f81da68c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f13, 0(x2) # load 0x7ff0000000000000 from memory into f13
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fadd.d f22, f13, f21, dyn # perform operation
fadd.d f22, f13, f21, rdn # perform operation
fadd.d f22, f13, f21, rmm # perform operation
fadd.d f22, f13, f21, rne # perform operation
fadd.d f22, f13, f21, rtz # perform operation
fadd.d f22, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fffffffffffffff)
li x6, 0x03cd4e66271b7b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fadd.d f6, f2, f30, dyn # perform operation
fadd.d f6, f2, f30, rdn # perform operation
fadd.d f6, f2, f30, rmm # perform operation
fadd.d f6, f2, f30, rne # perform operation
fadd.d f6, f2, f30, rtz # perform operation
fadd.d f6, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000001)
li x15, 0x91f9132af7cf1f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
fadd.d f15, f17, f23, dyn # perform operation
fadd.d f15, f17, f23, rdn # perform operation
fadd.d f15, f17, f23, rmm # perform operation
fadd.d f15, f17, f23, rne # perform operation
fadd.d f15, f17, f23, rtz # perform operation
fadd.d f15, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x27, 0x2272d18362d7ad47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fadd.d f27, f6, f12, dyn # perform operation
fadd.d f27, f6, f12, rdn # perform operation
fadd.d f27, f6, f12, rmm # perform operation
fadd.d f27, f6, f12, rne # perform operation
fadd.d f27, f6, f12, rtz # perform operation
fadd.d f27, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x5a392534a57711ad)
li x5, 0x6ee16760b9a0d1d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
fadd.d f5, f1, f23, dyn # perform operation
fadd.d f5, f1, f23, rdn # perform operation
fadd.d f5, f1, f23, rmm # perform operation
fadd.d f5, f1, f23, rne # perform operation
fadd.d f5, f1, f23, rtz # perform operation
fadd.d f5, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xa6e895993737426c)
li x24, 0x1aa14d5c6c9bc2de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fadd.d f24, f1, f28, dyn # perform operation
fadd.d f24, f1, f28, rdn # perform operation
fadd.d f24, f1, f28, rmm # perform operation
fadd.d f24, f1, f28, rne # perform operation
fadd.d f24, f1, f28, rtz # perform operation
fadd.d f24, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x0)
li x22, 0xac2e7deb90686609 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f1, 0(x2) # load 0xfff0000000000000 from memory into f1
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
fadd.d f22, f1, f3, dyn # perform operation
fadd.d f22, f1, f3, rdn # perform operation
fadd.d f22, f1, f3, rmm # perform operation
fadd.d f22, f1, f3, rne # perform operation
fadd.d f22, f1, f3, rtz # perform operation
fadd.d f22, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000000)
li x9, 0x3b6da3b93d16f322 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fadd.d f9, f6, f18, dyn # perform operation
fadd.d f9, f6, f18, rdn # perform operation
fadd.d f9, f6, f18, rmm # perform operation
fadd.d f9, f6, f18, rne # perform operation
fadd.d f9, f6, f18, rtz # perform operation
fadd.d f9, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff0000000000000)
li x9, 0x3b39e3dc4418fd8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
fadd.d f9, f11, f14, dyn # perform operation
fadd.d f9, f11, f14, rdn # perform operation
fadd.d f9, f11, f14, rmm # perform operation
fadd.d f9, f11, f14, rne # perform operation
fadd.d f9, f11, f14, rtz # perform operation
fadd.d f9, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff0000000000000)
li x31, 0xe3ab5f104c77c39e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
fadd.d f31, f24, f19, dyn # perform operation
fadd.d f31, f24, f19, rdn # perform operation
fadd.d f31, f24, f19, rmm # perform operation
fadd.d f31, f24, f19, rne # perform operation
fadd.d f31, f24, f19, rtz # perform operation
fadd.d f31, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff8000000000000)
li x26, 0x4dc437eb7d0e2017 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
fadd.d f26, f15, f22, dyn # perform operation
fadd.d f26, f15, f22, rdn # perform operation
fadd.d f26, f15, f22, rmm # perform operation
fadd.d f26, f15, f22, rne # perform operation
fadd.d f26, f15, f22, rtz # perform operation
fadd.d f26, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff8000000000000)
li x6, 0x992a4da64a2ecf3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
fadd.d f6, f28, f4, dyn # perform operation
fadd.d f6, f28, f4, rdn # perform operation
fadd.d f6, f28, f4, rmm # perform operation
fadd.d f6, f28, f4, rne # perform operation
fadd.d f6, f28, f4, rtz # perform operation
fadd.d f6, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x4000000000000000)
li x31, 0xf5af5bee7c48c335 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fadd.d f31, f27, f29, dyn # perform operation
fadd.d f31, f27, f29, rdn # perform operation
fadd.d f31, f27, f29, rmm # perform operation
fadd.d f31, f27, f29, rne # perform operation
fadd.d f31, f27, f29, rtz # perform operation
fadd.d f31, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xc000000000000000)
li x1, 0xd4f9309cd171ef96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
fadd.d f1, f16, f22, dyn # perform operation
fadd.d f1, f16, f22, rdn # perform operation
fadd.d f1, f16, f22, rmm # perform operation
fadd.d f1, f16, f22, rne # perform operation
fadd.d f1, f16, f22, rtz # perform operation
fadd.d f1, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x10000000000000)
li x18, 0x41358ccfa6775c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
fadd.d f18, f14, f5, dyn # perform operation
fadd.d f18, f14, f5, rdn # perform operation
fadd.d f18, f14, f5, rmm # perform operation
fadd.d f18, f14, f5, rne # perform operation
fadd.d f18, f14, f5, rtz # perform operation
fadd.d f18, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8010000000000000)
li x27, 0xc728b44e0a99f7ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fadd.d f27, f3, f21, dyn # perform operation
fadd.d f27, f3, f21, rdn # perform operation
fadd.d f27, f3, f21, rmm # perform operation
fadd.d f27, f3, f21, rne # perform operation
fadd.d f27, f3, f21, rtz # perform operation
fadd.d f27, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fefffffffffffff)
li x27, 0xf94dc491664d7cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fadd.d f27, f6, f29, dyn # perform operation
fadd.d f27, f6, f29, rdn # perform operation
fadd.d f27, f6, f29, rmm # perform operation
fadd.d f27, f6, f29, rne # perform operation
fadd.d f27, f6, f29, rtz # perform operation
fadd.d f27, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xffefffffffffffff)
li x3, 0xd116481c547c9617 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fadd.d f3, f17, f21, dyn # perform operation
fadd.d f3, f17, f21, rdn # perform operation
fadd.d f3, f17, f21, rmm # perform operation
fadd.d f3, f17, f21, rne # perform operation
fadd.d f3, f17, f21, rtz # perform operation
fadd.d f3, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfffffffffffff)
li x1, 0x51a4914e6276fbb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f4, 0(x2) # load 0x000fffffffffffff from memory into f4
fadd.d f1, f25, f4, dyn # perform operation
fadd.d f1, f25, f4, rdn # perform operation
fadd.d f1, f25, f4, rmm # perform operation
fadd.d f1, f25, f4, rne # perform operation
fadd.d f1, f25, f4, rtz # perform operation
fadd.d f1, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x800fffffffffffff)
li x7, 0x963f48f14e415bef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f18, 0(x2) # load 0xfff0000000000000 from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fadd.d f7, f18, f30, dyn # perform operation
fadd.d f7, f18, f30, rdn # perform operation
fadd.d f7, f18, f30, rmm # perform operation
fadd.d f7, f18, f30, rne # perform operation
fadd.d f7, f18, f30, rtz # perform operation
fadd.d f7, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000)
li x3, 0x7386883b6c6d3cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fadd.d f3, f9, f28, dyn # perform operation
fadd.d f3, f9, f28, rdn # perform operation
fadd.d f3, f9, f28, rmm # perform operation
fadd.d f3, f9, f28, rne # perform operation
fadd.d f3, f9, f28, rtz # perform operation
fadd.d f3, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8008000000000000)
li x3, 0x53e99b892a4d5a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fadd.d f3, f9, f29, dyn # perform operation
fadd.d f3, f9, f29, rdn # perform operation
fadd.d f3, f9, f29, rmm # perform operation
fadd.d f3, f9, f29, rne # perform operation
fadd.d f3, f9, f29, rtz # perform operation
fadd.d f3, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x1)
li x11, 0xe669d3cbc35c8c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
fadd.d f11, f30, f23, dyn # perform operation
fadd.d f11, f30, f23, rdn # perform operation
fadd.d f11, f30, f23, rmm # perform operation
fadd.d f11, f30, f23, rne # perform operation
fadd.d f11, f30, f23, rtz # perform operation
fadd.d f11, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000001)
li x22, 0x2f024060635b124a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
fadd.d f22, f26, f18, dyn # perform operation
fadd.d f22, f26, f18, rdn # perform operation
fadd.d f22, f26, f18, rmm # perform operation
fadd.d f22, f26, f18, rne # perform operation
fadd.d f22, f26, f18, rtz # perform operation
fadd.d f22, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000000)
li x29, 0x23ccbe08a427c670 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
fadd.d f29, f12, f17, dyn # perform operation
fadd.d f29, f12, f17, rdn # perform operation
fadd.d f29, f12, f17, rmm # perform operation
fadd.d f29, f12, f17, rne # perform operation
fadd.d f29, f12, f17, rtz # perform operation
fadd.d f29, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfff0000000000000)
li x19, 0x7e07a8073d8c80dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
fadd.d f19, f20, f30, dyn # perform operation
fadd.d f19, f20, f30, rdn # perform operation
fadd.d f19, f20, f30, rmm # perform operation
fadd.d f19, f20, f30, rne # perform operation
fadd.d f19, f20, f30, rtz # perform operation
fadd.d f19, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff8000000000000)
li x25, 0x41630155895b4e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
fadd.d f25, f26, f13, dyn # perform operation
fadd.d f25, f26, f13, rdn # perform operation
fadd.d f25, f26, f13, rmm # perform operation
fadd.d f25, f26, f13, rne # perform operation
fadd.d f25, f26, f13, rtz # perform operation
fadd.d f25, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fffffffffffffff)
li x9, 0x929edc0d4a378302 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
fadd.d f9, f4, f13, dyn # perform operation
fadd.d f9, f4, f13, rdn # perform operation
fadd.d f9, f4, f13, rmm # perform operation
fadd.d f9, f4, f13, rne # perform operation
fadd.d f9, f4, f13, rtz # perform operation
fadd.d f9, f4, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f4, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f4, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f4, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f4, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000001)
li x8, 0x2c4f78d4e3f69cff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
fadd.d f8, f10, f1, dyn # perform operation
fadd.d f8, f10, f1, rdn # perform operation
fadd.d f8, f10, f1, rmm # perform operation
fadd.d f8, f10, f1, rne # perform operation
fadd.d f8, f10, f1, rtz # perform operation
fadd.d f8, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x10, 0x1645dc01133aa190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fadd.d f10, f11, f1, dyn # perform operation
fadd.d f10, f11, f1, rdn # perform operation
fadd.d f10, f11, f1, rmm # perform operation
fadd.d f10, f11, f1, rne # perform operation
fadd.d f10, f11, f1, rtz # perform operation
fadd.d f10, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x5a392534a57711ad)
li x29, 0x6b4fbc189ee9e890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
fadd.d f29, f25, f2, dyn # perform operation
fadd.d f29, f25, f2, rdn # perform operation
fadd.d f29, f25, f2, rmm # perform operation
fadd.d f29, f25, f2, rne # perform operation
fadd.d f29, f25, f2, rtz # perform operation
fadd.d f29, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xa6e895993737426c)
li x26, 0x46d8d636093fb2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f18, 0(x2) # load 0xfff0000000000000 from memory into f18
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
fadd.d f26, f18, f6, dyn # perform operation
fadd.d f26, f18, f6, rdn # perform operation
fadd.d f26, f18, f6, rmm # perform operation
fadd.d f26, f18, f6, rne # perform operation
fadd.d f26, f18, f6, rtz # perform operation
fadd.d f26, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x0)
li x6, 0xb52ffb9b704fc90f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
fadd.d f6, f20, f23, dyn # perform operation
fadd.d f6, f20, f23, rdn # perform operation
fadd.d f6, f20, f23, rmm # perform operation
fadd.d f6, f20, f23, rne # perform operation
fadd.d f6, f20, f23, rtz # perform operation
fadd.d f6, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000000)
li x10, 0x8b792f2c1a36b24c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fadd.d f10, f22, f12, dyn # perform operation
fadd.d f10, f22, f12, rdn # perform operation
fadd.d f10, f22, f12, rmm # perform operation
fadd.d f10, f22, f12, rne # perform operation
fadd.d f10, f22, f12, rtz # perform operation
fadd.d f10, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff0000000000000)
li x5, 0xf76023d6953e444f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fadd.d f5, f6, f27, dyn # perform operation
fadd.d f5, f6, f27, rdn # perform operation
fadd.d f5, f6, f27, rmm # perform operation
fadd.d f5, f6, f27, rne # perform operation
fadd.d f5, f6, f27, rtz # perform operation
fadd.d f5, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff0000000000000)
li x10, 0x9a8397447f4fe283 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f25, 0(x2) # load 0x7ff8000000000000 from memory into f25
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
fadd.d f10, f25, f12, dyn # perform operation
fadd.d f10, f25, f12, rdn # perform operation
fadd.d f10, f25, f12, rmm # perform operation
fadd.d f10, f25, f12, rne # perform operation
fadd.d f10, f25, f12, rtz # perform operation
fadd.d f10, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff8000000000000)
li x23, 0xfe486d1c61326386 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f25, 0(x2) # load 0x7ff8000000000000 from memory into f25
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
fadd.d f23, f25, f27, dyn # perform operation
fadd.d f23, f25, f27, rdn # perform operation
fadd.d f23, f25, f27, rmm # perform operation
fadd.d f23, f25, f27, rne # perform operation
fadd.d f23, f25, f27, rtz # perform operation
fadd.d f23, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff8000000000000)
li x10, 0x70c8989556caf8da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fadd.d f10, f12, f23, dyn # perform operation
fadd.d f10, f12, f23, rdn # perform operation
fadd.d f10, f12, f23, rmm # perform operation
fadd.d f10, f12, f23, rne # perform operation
fadd.d f10, f12, f23, rtz # perform operation
fadd.d f10, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x4000000000000000)
li x28, 0xfa873a79076dc38d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fadd.d f28, f10, f26, dyn # perform operation
fadd.d f28, f10, f26, rdn # perform operation
fadd.d f28, f10, f26, rmm # perform operation
fadd.d f28, f10, f26, rne # perform operation
fadd.d f28, f10, f26, rtz # perform operation
fadd.d f28, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xc000000000000000)
li x6, 0x6d9d9e9f643f0eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
fadd.d f6, f4, f28, dyn # perform operation
fadd.d f6, f4, f28, rdn # perform operation
fadd.d f6, f4, f28, rmm # perform operation
fadd.d f6, f4, f28, rne # perform operation
fadd.d f6, f4, f28, rtz # perform operation
fadd.d f6, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x10000000000000)
li x14, 0xac79fab6371bf396 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
fadd.d f14, f20, f5, dyn # perform operation
fadd.d f14, f20, f5, rdn # perform operation
fadd.d f14, f20, f5, rmm # perform operation
fadd.d f14, f20, f5, rne # perform operation
fadd.d f14, f20, f5, rtz # perform operation
fadd.d f14, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8010000000000000)
li x20, 0x848e8ea605984cd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
fadd.d f20, f4, f18, dyn # perform operation
fadd.d f20, f4, f18, rdn # perform operation
fadd.d f20, f4, f18, rmm # perform operation
fadd.d f20, f4, f18, rne # perform operation
fadd.d f20, f4, f18, rtz # perform operation
fadd.d f20, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fefffffffffffff)
li x30, 0x402cc7da4d1a7f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fadd.d f30, f31, f29, dyn # perform operation
fadd.d f30, f31, f29, rdn # perform operation
fadd.d f30, f31, f29, rmm # perform operation
fadd.d f30, f31, f29, rne # perform operation
fadd.d f30, f31, f29, rtz # perform operation
fadd.d f30, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xffefffffffffffff)
li x19, 0xc3636fb24b963ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fadd.d f19, f22, f21, dyn # perform operation
fadd.d f19, f22, f21, rdn # perform operation
fadd.d f19, f22, f21, rmm # perform operation
fadd.d f19, f22, f21, rne # perform operation
fadd.d f19, f22, f21, rtz # perform operation
fadd.d f19, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfffffffffffff)
li x5, 0xb2a5f39379b3ff4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
fadd.d f5, f21, f2, dyn # perform operation
fadd.d f5, f21, f2, rdn # perform operation
fadd.d f5, f21, f2, rmm # perform operation
fadd.d f5, f21, f2, rne # perform operation
fadd.d f5, f21, f2, rtz # perform operation
fadd.d f5, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x800fffffffffffff)
li x31, 0xb3df4ae722230a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
fadd.d f31, f23, f5, dyn # perform operation
fadd.d f31, f23, f5, rdn # perform operation
fadd.d f31, f23, f5, rmm # perform operation
fadd.d f31, f23, f5, rne # perform operation
fadd.d f31, f23, f5, rtz # perform operation
fadd.d f31, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000)
li x9, 0x501fd2c76de3ef78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
fadd.d f9, f17, f5, dyn # perform operation
fadd.d f9, f17, f5, rdn # perform operation
fadd.d f9, f17, f5, rmm # perform operation
fadd.d f9, f17, f5, rne # perform operation
fadd.d f9, f17, f5, rtz # perform operation
fadd.d f9, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8008000000000000)
li x18, 0x08273ae4f7f13655 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
fadd.d f18, f26, f14, dyn # perform operation
fadd.d f18, f26, f14, rdn # perform operation
fadd.d f18, f26, f14, rmm # perform operation
fadd.d f18, f26, f14, rne # perform operation
fadd.d f18, f26, f14, rtz # perform operation
fadd.d f18, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x1)
li x14, 0x0dbca1822cf97adf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
fadd.d f14, f26, f23, dyn # perform operation
fadd.d f14, f26, f23, rdn # perform operation
fadd.d f14, f26, f23, rmm # perform operation
fadd.d f14, f26, f23, rne # perform operation
fadd.d f14, f26, f23, rtz # perform operation
fadd.d f14, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000001)
li x24, 0xa3c2614ec6d63854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f27, 0(x2) # load 0x7ff8000000000000 from memory into f27
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
fadd.d f24, f27, f8, dyn # perform operation
fadd.d f24, f27, f8, rdn # perform operation
fadd.d f24, f27, f8, rmm # perform operation
fadd.d f24, f27, f8, rne # perform operation
fadd.d f24, f27, f8, rtz # perform operation
fadd.d f24, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000000)
li x3, 0x99836c7bef252f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
fadd.d f3, f24, f26, dyn # perform operation
fadd.d f3, f24, f26, rdn # perform operation
fadd.d f3, f24, f26, rmm # perform operation
fadd.d f3, f24, f26, rne # perform operation
fadd.d f3, f24, f26, rtz # perform operation
fadd.d f3, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfff0000000000000)
li x26, 0x0099f3bb25773188 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fadd.d f26, f2, f29, dyn # perform operation
fadd.d f26, f2, f29, rdn # perform operation
fadd.d f26, f2, f29, rmm # perform operation
fadd.d f26, f2, f29, rne # perform operation
fadd.d f26, f2, f29, rtz # perform operation
fadd.d f26, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff8000000000000)
li x19, 0x99a1798fc1be8682 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fadd.d f19, f29, f1, dyn # perform operation
fadd.d f19, f29, f1, rdn # perform operation
fadd.d f19, f29, f1, rmm # perform operation
fadd.d f19, f29, f1, rne # perform operation
fadd.d f19, f29, f1, rtz # perform operation
fadd.d f19, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fffffffffffffff)
li x13, 0x1d14d96bfa90a96b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
fadd.d f13, f22, f3, dyn # perform operation
fadd.d f13, f22, f3, rdn # perform operation
fadd.d f13, f22, f3, rmm # perform operation
fadd.d f13, f22, f3, rne # perform operation
fadd.d f13, f22, f3, rtz # perform operation
fadd.d f13, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000001)
li x29, 0xa3c0020c3a97ff9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
fadd.d f29, f21, f26, dyn # perform operation
fadd.d f29, f21, f26, rdn # perform operation
fadd.d f29, f21, f26, rmm # perform operation
fadd.d f29, f21, f26, rne # perform operation
fadd.d f29, f21, f26, rtz # perform operation
fadd.d f29, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x16, 0xe28f7b891d26a40a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fadd.d f16, f23, f25, dyn # perform operation
fadd.d f16, f23, f25, rdn # perform operation
fadd.d f16, f23, f25, rmm # perform operation
fadd.d f16, f23, f25, rne # perform operation
fadd.d f16, f23, f25, rtz # perform operation
fadd.d f16, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x5a392534a57711ad)
li x4, 0x0ed5f88521590c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
fadd.d f4, f8, f15, dyn # perform operation
fadd.d f4, f8, f15, rdn # perform operation
fadd.d f4, f8, f15, rmm # perform operation
fadd.d f4, f8, f15, rne # perform operation
fadd.d f4, f8, f15, rtz # perform operation
fadd.d f4, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xa6e895993737426c)
li x5, 0xeb8e384c90ba39b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
fadd.d f5, f24, f18, dyn # perform operation
fadd.d f5, f24, f18, rdn # perform operation
fadd.d f5, f24, f18, rmm # perform operation
fadd.d f5, f24, f18, rne # perform operation
fadd.d f5, f24, f18, rtz # perform operation
fadd.d f5, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x0)
li x10, 0x88cd15b0f5b9d2bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
fadd.d f10, f31, f1, dyn # perform operation
fadd.d f10, f31, f1, rdn # perform operation
fadd.d f10, f31, f1, rmm # perform operation
fadd.d f10, f31, f1, rne # perform operation
fadd.d f10, f31, f1, rtz # perform operation
fadd.d f10, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000000)
li x23, 0x837c0ab84e5241b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f18, 0(x2) # load 0x7fffffffffffffff from memory into f18
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
fadd.d f23, f18, f31, dyn # perform operation
fadd.d f23, f18, f31, rdn # perform operation
fadd.d f23, f18, f31, rmm # perform operation
fadd.d f23, f18, f31, rne # perform operation
fadd.d f23, f18, f31, rtz # perform operation
fadd.d f23, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff0000000000000)
li x9, 0x9e3562a10b41ab1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fadd.d f9, f12, f21, dyn # perform operation
fadd.d f9, f12, f21, rdn # perform operation
fadd.d f9, f12, f21, rmm # perform operation
fadd.d f9, f12, f21, rne # perform operation
fadd.d f9, f12, f21, rtz # perform operation
fadd.d f9, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff0000000000000)
li x12, 0x3a546e9bc573a423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
fadd.d f12, f7, f21, dyn # perform operation
fadd.d f12, f7, f21, rdn # perform operation
fadd.d f12, f7, f21, rmm # perform operation
fadd.d f12, f7, f21, rne # perform operation
fadd.d f12, f7, f21, rtz # perform operation
fadd.d f12, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff8000000000000)
li x23, 0xef426019505e9fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
fadd.d f23, f27, f12, dyn # perform operation
fadd.d f23, f27, f12, rdn # perform operation
fadd.d f23, f27, f12, rmm # perform operation
fadd.d f23, f27, f12, rne # perform operation
fadd.d f23, f27, f12, rtz # perform operation
fadd.d f23, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f23, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f23, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f23, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f23, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f23, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff8000000000000)
li x11, 0x05f2f3419f60f33f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
fadd.d f11, f26, f12, dyn # perform operation
fadd.d f11, f26, f12, rdn # perform operation
fadd.d f11, f26, f12, rmm # perform operation
fadd.d f11, f26, f12, rne # perform operation
fadd.d f11, f26, f12, rtz # perform operation
fadd.d f11, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x4000000000000000)
li x29, 0x81c3086fb284a46d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
fadd.d f29, f28, f5, dyn # perform operation
fadd.d f29, f28, f5, rdn # perform operation
fadd.d f29, f28, f5, rmm # perform operation
fadd.d f29, f28, f5, rne # perform operation
fadd.d f29, f28, f5, rtz # perform operation
fadd.d f29, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xc000000000000000)
li x31, 0x8e859b2190eed417 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
fadd.d f31, f3, f30, dyn # perform operation
fadd.d f31, f3, f30, rdn # perform operation
fadd.d f31, f3, f30, rmm # perform operation
fadd.d f31, f3, f30, rne # perform operation
fadd.d f31, f3, f30, rtz # perform operation
fadd.d f31, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x10000000000000)
li x28, 0xbb33293bad78eddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fadd.d f28, f14, f23, dyn # perform operation
fadd.d f28, f14, f23, rdn # perform operation
fadd.d f28, f14, f23, rmm # perform operation
fadd.d f28, f14, f23, rne # perform operation
fadd.d f28, f14, f23, rtz # perform operation
fadd.d f28, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8010000000000000)
li x1, 0x1bf7689e925503c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
fadd.d f1, f14, f5, dyn # perform operation
fadd.d f1, f14, f5, rdn # perform operation
fadd.d f1, f14, f5, rmm # perform operation
fadd.d f1, f14, f5, rne # perform operation
fadd.d f1, f14, f5, rtz # perform operation
fadd.d f1, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fefffffffffffff)
li x9, 0xd8906bb654129284 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
fadd.d f9, f22, f4, dyn # perform operation
fadd.d f9, f22, f4, rdn # perform operation
fadd.d f9, f22, f4, rmm # perform operation
fadd.d f9, f22, f4, rne # perform operation
fadd.d f9, f22, f4, rtz # perform operation
fadd.d f9, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xffefffffffffffff)
li x16, 0xb485dbd7719e9012 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
fadd.d f16, f12, f11, dyn # perform operation
fadd.d f16, f12, f11, rdn # perform operation
fadd.d f16, f12, f11, rmm # perform operation
fadd.d f16, f12, f11, rne # perform operation
fadd.d f16, f12, f11, rtz # perform operation
fadd.d f16, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfffffffffffff)
li x24, 0x88c96e5eb1e3584c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fadd.d f24, f3, f12, dyn # perform operation
fadd.d f24, f3, f12, rdn # perform operation
fadd.d f24, f3, f12, rmm # perform operation
fadd.d f24, f3, f12, rne # perform operation
fadd.d f24, f3, f12, rtz # perform operation
fadd.d f24, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x800fffffffffffff)
li x31, 0x22ec2b1bdf27156b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
fadd.d f31, f20, f22, dyn # perform operation
fadd.d f31, f20, f22, rdn # perform operation
fadd.d f31, f20, f22, rmm # perform operation
fadd.d f31, f20, f22, rne # perform operation
fadd.d f31, f20, f22, rtz # perform operation
fadd.d f31, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000)
li x11, 0xfddf65e5073861e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
fadd.d f11, f6, f21, dyn # perform operation
fadd.d f11, f6, f21, rdn # perform operation
fadd.d f11, f6, f21, rmm # perform operation
fadd.d f11, f6, f21, rne # perform operation
fadd.d f11, f6, f21, rtz # perform operation
fadd.d f11, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8008000000000000)
li x30, 0x0780ad75efc4d8c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fadd.d f30, f17, f26, dyn # perform operation
fadd.d f30, f17, f26, rdn # perform operation
fadd.d f30, f17, f26, rmm # perform operation
fadd.d f30, f17, f26, rne # perform operation
fadd.d f30, f17, f26, rtz # perform operation
fadd.d f30, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x1)
li x22, 0x690bd0c23e09a1f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
fadd.d f22, f29, f24, dyn # perform operation
fadd.d f22, f29, f24, rdn # perform operation
fadd.d f22, f29, f24, rmm # perform operation
fadd.d f22, f29, f24, rne # perform operation
fadd.d f22, f29, f24, rtz # perform operation
fadd.d f22, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000001)
li x14, 0x97af29d5a2b74190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
fadd.d f14, f27, f18, dyn # perform operation
fadd.d f14, f27, f18, rdn # perform operation
fadd.d f14, f27, f18, rmm # perform operation
fadd.d f14, f27, f18, rne # perform operation
fadd.d f14, f27, f18, rtz # perform operation
fadd.d f14, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000000)
li x26, 0xa05b2460974d1db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
fadd.d f26, f29, f4, dyn # perform operation
fadd.d f26, f29, f4, rdn # perform operation
fadd.d f26, f29, f4, rmm # perform operation
fadd.d f26, f29, f4, rne # perform operation
fadd.d f26, f29, f4, rtz # perform operation
fadd.d f26, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfff0000000000000)
li x11, 0x9015ff0249498fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f8, 0(x2) # load 0x7fffffffffffffff from memory into f8
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
fadd.d f11, f8, f24, dyn # perform operation
fadd.d f11, f8, f24, rdn # perform operation
fadd.d f11, f8, f24, rmm # perform operation
fadd.d f11, f8, f24, rne # perform operation
fadd.d f11, f8, f24, rtz # perform operation
fadd.d f11, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff8000000000000)
li x5, 0x45803c555e930037 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
fadd.d f5, f21, f8, dyn # perform operation
fadd.d f5, f21, f8, rdn # perform operation
fadd.d f5, f21, f8, rmm # perform operation
fadd.d f5, f21, f8, rne # perform operation
fadd.d f5, f21, f8, rtz # perform operation
fadd.d f5, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fffffffffffffff)
li x26, 0xcbcbfc0e60477a1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
fadd.d f26, f14, f25, dyn # perform operation
fadd.d f26, f14, f25, rdn # perform operation
fadd.d f26, f14, f25, rmm # perform operation
fadd.d f26, f14, f25, rne # perform operation
fadd.d f26, f14, f25, rtz # perform operation
fadd.d f26, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000001)
li x8, 0x295b264e2bb94685 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fadd.d f8, f22, f10, dyn # perform operation
fadd.d f8, f22, f10, rdn # perform operation
fadd.d f8, f22, f10, rmm # perform operation
fadd.d f8, f22, f10, rne # perform operation
fadd.d f8, f22, f10, rtz # perform operation
fadd.d f8, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff7ffffffffffff)
li x10, 0x9d7ac201a5f437f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fadd.d f10, f23, f27, dyn # perform operation
fadd.d f10, f23, f27, rdn # perform operation
fadd.d f10, f23, f27, rmm # perform operation
fadd.d f10, f23, f27, rne # perform operation
fadd.d f10, f23, f27, rtz # perform operation
fadd.d f10, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x5a392534a57711ad)
li x19, 0xffb3d419fa09eba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
fadd.d f19, f6, f31, dyn # perform operation
fadd.d f19, f6, f31, rdn # perform operation
fadd.d f19, f6, f31, rmm # perform operation
fadd.d f19, f6, f31, rne # perform operation
fadd.d f19, f6, f31, rtz # perform operation
fadd.d f19, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xa6e895993737426c)
li x29, 0x70945aae59de0b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fadd.d f29, f21, f3, dyn # perform operation
fadd.d f29, f21, f3, rdn # perform operation
fadd.d f29, f21, f3, rmm # perform operation
fadd.d f29, f21, f3, rne # perform operation
fadd.d f29, f21, f3, rtz # perform operation
fadd.d f29, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x0)
li x18, 0xa48627f3ddca65bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
fadd.d f18, f17, f28, dyn # perform operation
fadd.d f18, f17, f28, rdn # perform operation
fadd.d f18, f17, f28, rmm # perform operation
fadd.d f18, f17, f28, rne # perform operation
fadd.d f18, f17, f28, rtz # perform operation
fadd.d f18, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000000)
li x19, 0x308a6c36bb9cbe06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
fadd.d f19, f4, f31, dyn # perform operation
fadd.d f19, f4, f31, rdn # perform operation
fadd.d f19, f4, f31, rmm # perform operation
fadd.d f19, f4, f31, rne # perform operation
fadd.d f19, f4, f31, rtz # perform operation
fadd.d f19, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff0000000000000)
li x15, 0x793cafab616ab484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fadd.d f15, f8, f2, dyn # perform operation
fadd.d f15, f8, f2, rdn # perform operation
fadd.d f15, f8, f2, rmm # perform operation
fadd.d f15, f8, f2, rne # perform operation
fadd.d f15, f8, f2, rtz # perform operation
fadd.d f15, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff0000000000000)
li x7, 0xa3922d22e6af527e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
fadd.d f7, f4, f15, dyn # perform operation
fadd.d f7, f4, f15, rdn # perform operation
fadd.d f7, f4, f15, rmm # perform operation
fadd.d f7, f4, f15, rne # perform operation
fadd.d f7, f4, f15, rtz # perform operation
fadd.d f7, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f7, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f7, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f7, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f7, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f7, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff8000000000000)
li x9, 0x313366f086552480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fadd.d f9, f21, f8, dyn # perform operation
fadd.d f9, f21, f8, rdn # perform operation
fadd.d f9, f21, f8, rmm # perform operation
fadd.d f9, f21, f8, rne # perform operation
fadd.d f9, f21, f8, rtz # perform operation
fadd.d f9, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff8000000000000)
li x11, 0xbd9f8d98a4071970 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fadd.d f11, f2, f29, dyn # perform operation
fadd.d f11, f2, f29, rdn # perform operation
fadd.d f11, f2, f29, rmm # perform operation
fadd.d f11, f2, f29, rne # perform operation
fadd.d f11, f2, f29, rtz # perform operation
fadd.d f11, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x4000000000000000)
li x4, 0xe31c62e572476c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
fadd.d f4, f26, f14, dyn # perform operation
fadd.d f4, f26, f14, rdn # perform operation
fadd.d f4, f26, f14, rmm # perform operation
fadd.d f4, f26, f14, rne # perform operation
fadd.d f4, f26, f14, rtz # perform operation
fadd.d f4, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xc000000000000000)
li x17, 0x8b3e1919eda7ddd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
fadd.d f17, f12, f19, dyn # perform operation
fadd.d f17, f12, f19, rdn # perform operation
fadd.d f17, f12, f19, rmm # perform operation
fadd.d f17, f12, f19, rne # perform operation
fadd.d f17, f12, f19, rtz # perform operation
fadd.d f17, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x10000000000000)
li x16, 0xaf6c34cbb570817e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fadd.d f16, f12, f23, dyn # perform operation
fadd.d f16, f12, f23, rdn # perform operation
fadd.d f16, f12, f23, rmm # perform operation
fadd.d f16, f12, f23, rne # perform operation
fadd.d f16, f12, f23, rtz # perform operation
fadd.d f16, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8010000000000000)
li x10, 0x3799506d02071338 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fadd.d f10, f26, f9, dyn # perform operation
fadd.d f10, f26, f9, rdn # perform operation
fadd.d f10, f26, f9, rmm # perform operation
fadd.d f10, f26, f9, rne # perform operation
fadd.d f10, f26, f9, rtz # perform operation
fadd.d f10, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fefffffffffffff)
li x13, 0xde13e827e9647800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
fadd.d f13, f14, f27, dyn # perform operation
fadd.d f13, f14, f27, rdn # perform operation
fadd.d f13, f14, f27, rmm # perform operation
fadd.d f13, f14, f27, rne # perform operation
fadd.d f13, f14, f27, rtz # perform operation
fadd.d f13, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xffefffffffffffff)
li x26, 0x8c6eafd95ed8c2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
fadd.d f26, f15, f4, dyn # perform operation
fadd.d f26, f15, f4, rdn # perform operation
fadd.d f26, f15, f4, rmm # perform operation
fadd.d f26, f15, f4, rne # perform operation
fadd.d f26, f15, f4, rtz # perform operation
fadd.d f26, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfffffffffffff)
li x27, 0x0de555d66a7b96f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fadd.d f27, f15, f12, dyn # perform operation
fadd.d f27, f15, f12, rdn # perform operation
fadd.d f27, f15, f12, rmm # perform operation
fadd.d f27, f15, f12, rne # perform operation
fadd.d f27, f15, f12, rtz # perform operation
fadd.d f27, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x800fffffffffffff)
li x5, 0x361ad5ae72b3e2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
fadd.d f5, f2, f21, dyn # perform operation
fadd.d f5, f2, f21, rdn # perform operation
fadd.d f5, f2, f21, rmm # perform operation
fadd.d f5, f2, f21, rne # perform operation
fadd.d f5, f2, f21, rtz # perform operation
fadd.d f5, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000)
li x29, 0xc5b4014645323bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fadd.d f29, f8, f27, dyn # perform operation
fadd.d f29, f8, f27, rdn # perform operation
fadd.d f29, f8, f27, rmm # perform operation
fadd.d f29, f8, f27, rne # perform operation
fadd.d f29, f8, f27, rtz # perform operation
fadd.d f29, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8008000000000000)
li x14, 0x8bb0a762c248859b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
fadd.d f14, f6, f16, dyn # perform operation
fadd.d f14, f6, f16, rdn # perform operation
fadd.d f14, f6, f16, rmm # perform operation
fadd.d f14, f6, f16, rne # perform operation
fadd.d f14, f6, f16, rtz # perform operation
fadd.d f14, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x1)
li x25, 0x764e90bdf25c5bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fadd.d f25, f23, f27, dyn # perform operation
fadd.d f25, f23, f27, rdn # perform operation
fadd.d f25, f23, f27, rmm # perform operation
fadd.d f25, f23, f27, rne # perform operation
fadd.d f25, f23, f27, rtz # perform operation
fadd.d f25, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000001)
li x18, 0xe8c0bbb117a82528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fadd.d f18, f24, f15, dyn # perform operation
fadd.d f18, f24, f15, rdn # perform operation
fadd.d f18, f24, f15, rmm # perform operation
fadd.d f18, f24, f15, rne # perform operation
fadd.d f18, f24, f15, rtz # perform operation
fadd.d f18, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000000)
li x1, 0x79e6a7706f8bed6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
fadd.d f1, f29, f19, dyn # perform operation
fadd.d f1, f29, f19, rdn # perform operation
fadd.d f1, f29, f19, rmm # perform operation
fadd.d f1, f29, f19, rne # perform operation
fadd.d f1, f29, f19, rtz # perform operation
fadd.d f1, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfff0000000000000)
li x18, 0x8a4f19f0823f0331 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
fadd.d f18, f19, f6, dyn # perform operation
fadd.d f18, f19, f6, rdn # perform operation
fadd.d f18, f19, f6, rmm # perform operation
fadd.d f18, f19, f6, rne # perform operation
fadd.d f18, f19, f6, rtz # perform operation
fadd.d f18, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff8000000000000)
li x11, 0xa3e559f10f8a95d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
fadd.d f11, f19, f5, dyn # perform operation
fadd.d f11, f19, f5, rdn # perform operation
fadd.d f11, f19, f5, rmm # perform operation
fadd.d f11, f19, f5, rne # perform operation
fadd.d f11, f19, f5, rtz # perform operation
fadd.d f11, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fffffffffffffff)
li x22, 0x2063c601b8ea6968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
fadd.d f22, f16, f20, dyn # perform operation
fadd.d f22, f16, f20, rdn # perform operation
fadd.d f22, f16, f20, rmm # perform operation
fadd.d f22, f16, f20, rne # perform operation
fadd.d f22, f16, f20, rtz # perform operation
fadd.d f22, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000001)
li x21, 0xfb0fc3ab22cbaa79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fadd.d f21, f22, f2, dyn # perform operation
fadd.d f21, f22, f2, rdn # perform operation
fadd.d f21, f22, f2, rmm # perform operation
fadd.d f21, f22, f2, rne # perform operation
fadd.d f21, f22, f2, rtz # perform operation
fadd.d f21, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff7ffffffffffff)
li x25, 0xd9875d7c7e227dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fadd.d f25, f20, f13, dyn # perform operation
fadd.d f25, f20, f13, rdn # perform operation
fadd.d f25, f20, f13, rmm # perform operation
fadd.d f25, f20, f13, rne # perform operation
fadd.d f25, f20, f13, rtz # perform operation
fadd.d f25, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x5a392534a57711ad)
li x21, 0x84f43ad77c735759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
fadd.d f21, f4, f8, dyn # perform operation
fadd.d f21, f4, f8, rdn # perform operation
fadd.d f21, f4, f8, rmm # perform operation
fadd.d f21, f4, f8, rne # perform operation
fadd.d f21, f4, f8, rtz # perform operation
fadd.d f21, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xa6e895993737426c)
li x19, 0x114291b8fb5d0942 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
fadd.d f19, f16, f25, dyn # perform operation
fadd.d f19, f16, f25, rdn # perform operation
fadd.d f19, f16, f25, rmm # perform operation
fadd.d f19, f16, f25, rne # perform operation
fadd.d f19, f16, f25, rtz # perform operation
fadd.d f19, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x0)
li x24, 0x513a1229300efdb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
fadd.d f24, f11, f4, dyn # perform operation
fadd.d f24, f11, f4, rdn # perform operation
fadd.d f24, f11, f4, rmm # perform operation
fadd.d f24, f11, f4, rne # perform operation
fadd.d f24, f11, f4, rtz # perform operation
fadd.d f24, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000000)
li x9, 0x9c0bd99e4aea0400 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
fadd.d f9, f15, f19, dyn # perform operation
fadd.d f9, f15, f19, rdn # perform operation
fadd.d f9, f15, f19, rmm # perform operation
fadd.d f9, f15, f19, rne # perform operation
fadd.d f9, f15, f19, rtz # perform operation
fadd.d f9, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff0000000000000)
li x6, 0x553923d687161b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fadd.d f6, f31, f11, dyn # perform operation
fadd.d f6, f31, f11, rdn # perform operation
fadd.d f6, f31, f11, rmm # perform operation
fadd.d f6, f31, f11, rne # perform operation
fadd.d f6, f31, f11, rtz # perform operation
fadd.d f6, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff0000000000000)
li x14, 0x7bd91258f5e202cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fadd.d f14, f5, f23, dyn # perform operation
fadd.d f14, f5, f23, rdn # perform operation
fadd.d f14, f5, f23, rmm # perform operation
fadd.d f14, f5, f23, rne # perform operation
fadd.d f14, f5, f23, rtz # perform operation
fadd.d f14, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff8000000000000)
li x11, 0xb90695cf6ce66266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
fadd.d f11, f28, f14, dyn # perform operation
fadd.d f11, f28, f14, rdn # perform operation
fadd.d f11, f28, f14, rmm # perform operation
fadd.d f11, f28, f14, rne # perform operation
fadd.d f11, f28, f14, rtz # perform operation
fadd.d f11, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff8000000000000)
li x20, 0xd153f514077c06da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fadd.d f20, f22, f29, dyn # perform operation
fadd.d f20, f22, f29, rdn # perform operation
fadd.d f20, f22, f29, rmm # perform operation
fadd.d f20, f22, f29, rne # perform operation
fadd.d f20, f22, f29, rtz # perform operation
fadd.d f20, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x4000000000000000)
li x16, 0x7033260bcad19f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f26, 0(x2) # load 0x7ff7ffffffffffff from memory into f26
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
fadd.d f16, f26, f3, dyn # perform operation
fadd.d f16, f26, f3, rdn # perform operation
fadd.d f16, f26, f3, rmm # perform operation
fadd.d f16, f26, f3, rne # perform operation
fadd.d f16, f26, f3, rtz # perform operation
fadd.d f16, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f16, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f16, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f16, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f16, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f16, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xc000000000000000)
li x29, 0x8955de8c012b381f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fadd.d f29, f15, f20, dyn # perform operation
fadd.d f29, f15, f20, rdn # perform operation
fadd.d f29, f15, f20, rmm # perform operation
fadd.d f29, f15, f20, rne # perform operation
fadd.d f29, f15, f20, rtz # perform operation
fadd.d f29, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x10000000000000)
li x6, 0x1dd57b28dc606756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
fadd.d f6, f11, f9, dyn # perform operation
fadd.d f6, f11, f9, rdn # perform operation
fadd.d f6, f11, f9, rmm # perform operation
fadd.d f6, f11, f9, rne # perform operation
fadd.d f6, f11, f9, rtz # perform operation
fadd.d f6, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8010000000000000)
li x24, 0xa7080e239e3833a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fadd.d f24, f10, f2, dyn # perform operation
fadd.d f24, f10, f2, rdn # perform operation
fadd.d f24, f10, f2, rmm # perform operation
fadd.d f24, f10, f2, rne # perform operation
fadd.d f24, f10, f2, rtz # perform operation
fadd.d f24, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fefffffffffffff)
li x22, 0x60335e831f58ab64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
fadd.d f22, f23, f12, dyn # perform operation
fadd.d f22, f23, f12, rdn # perform operation
fadd.d f22, f23, f12, rmm # perform operation
fadd.d f22, f23, f12, rne # perform operation
fadd.d f22, f23, f12, rtz # perform operation
fadd.d f22, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xffefffffffffffff)
li x2, 0xf54184af45fb2cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
fadd.d f2, f10, f16, dyn # perform operation
fadd.d f2, f10, f16, rdn # perform operation
fadd.d f2, f10, f16, rmm # perform operation
fadd.d f2, f10, f16, rne # perform operation
fadd.d f2, f10, f16, rtz # perform operation
fadd.d f2, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfffffffffffff)
li x11, 0xee9e116d44c8929e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fadd.d f11, f22, f16, dyn # perform operation
fadd.d f11, f22, f16, rdn # perform operation
fadd.d f11, f22, f16, rmm # perform operation
fadd.d f11, f22, f16, rne # perform operation
fadd.d f11, f22, f16, rtz # perform operation
fadd.d f11, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x800fffffffffffff)
li x12, 0xfe3552db41fb0e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
fadd.d f12, f21, f20, dyn # perform operation
fadd.d f12, f21, f20, rdn # perform operation
fadd.d f12, f21, f20, rmm # perform operation
fadd.d f12, f21, f20, rne # perform operation
fadd.d f12, f21, f20, rtz # perform operation
fadd.d f12, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000)
li x30, 0xb8c23cc564e07831 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
fadd.d f30, f8, f20, dyn # perform operation
fadd.d f30, f8, f20, rdn # perform operation
fadd.d f30, f8, f20, rmm # perform operation
fadd.d f30, f8, f20, rne # perform operation
fadd.d f30, f8, f20, rtz # perform operation
fadd.d f30, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8008000000000000)
li x20, 0x807a423fb7354c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fadd.d f20, f29, f8, dyn # perform operation
fadd.d f20, f29, f8, rdn # perform operation
fadd.d f20, f29, f8, rmm # perform operation
fadd.d f20, f29, f8, rne # perform operation
fadd.d f20, f29, f8, rtz # perform operation
fadd.d f20, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x1)
li x12, 0xcafd3c3b8425e62e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
fadd.d f12, f10, f18, dyn # perform operation
fadd.d f12, f10, f18, rdn # perform operation
fadd.d f12, f10, f18, rmm # perform operation
fadd.d f12, f10, f18, rne # perform operation
fadd.d f12, f10, f18, rtz # perform operation
fadd.d f12, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000001)
li x22, 0xdd71bef0ae7703e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
fadd.d f22, f6, f29, dyn # perform operation
fadd.d f22, f6, f29, rdn # perform operation
fadd.d f22, f6, f29, rmm # perform operation
fadd.d f22, f6, f29, rne # perform operation
fadd.d f22, f6, f29, rtz # perform operation
fadd.d f22, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000000)
li x18, 0x206d027786e723c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fadd.d f18, f30, f22, dyn # perform operation
fadd.d f18, f30, f22, rdn # perform operation
fadd.d f18, f30, f22, rmm # perform operation
fadd.d f18, f30, f22, rne # perform operation
fadd.d f18, f30, f22, rtz # perform operation
fadd.d f18, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfff0000000000000)
li x22, 0xb65dd9f243fd3c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
fadd.d f22, f8, f7, dyn # perform operation
fadd.d f22, f8, f7, rdn # perform operation
fadd.d f22, f8, f7, rmm # perform operation
fadd.d f22, f8, f7, rne # perform operation
fadd.d f22, f8, f7, rtz # perform operation
fadd.d f22, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f22, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f22, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f22, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f22, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f22, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff8000000000000)
li x17, 0x7c342372449d5a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
fadd.d f17, f4, f13, dyn # perform operation
fadd.d f17, f4, f13, rdn # perform operation
fadd.d f17, f4, f13, rmm # perform operation
fadd.d f17, f4, f13, rne # perform operation
fadd.d f17, f4, f13, rtz # perform operation
fadd.d f17, f4, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f4, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f4, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f4, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f4, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fffffffffffffff)
li x20, 0xb799a2fa5f2a4af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
fadd.d f20, f8, f7, dyn # perform operation
fadd.d f20, f8, f7, rdn # perform operation
fadd.d f20, f8, f7, rmm # perform operation
fadd.d f20, f8, f7, rne # perform operation
fadd.d f20, f8, f7, rtz # perform operation
fadd.d f20, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000001)
li x27, 0x7f67c587c782d311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
fadd.d f27, f9, f3, dyn # perform operation
fadd.d f27, f9, f3, rdn # perform operation
fadd.d f27, f9, f3, rmm # perform operation
fadd.d f27, f9, f3, rne # perform operation
fadd.d f27, f9, f3, rtz # perform operation
fadd.d f27, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff7ffffffffffff)
li x3, 0xb2c91a7f0cda4e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f16, 0(x2) # load 0x7ff7ffffffffffff from memory into f16
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
fadd.d f3, f16, f6, dyn # perform operation
fadd.d f3, f16, f6, rdn # perform operation
fadd.d f3, f16, f6, rmm # perform operation
fadd.d f3, f16, f6, rne # perform operation
fadd.d f3, f16, f6, rtz # perform operation
fadd.d f3, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x5a392534a57711ad)
li x4, 0x218cc9e184207920 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fadd.d f4, f1, f29, dyn # perform operation
fadd.d f4, f1, f29, rdn # perform operation
fadd.d f4, f1, f29, rmm # perform operation
fadd.d f4, f1, f29, rne # perform operation
fadd.d f4, f1, f29, rtz # perform operation
fadd.d f4, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xa6e895993737426c)
li x3, 0x6b29103effc37c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f14, 0(x2) # load 0x7ff7ffffffffffff from memory into f14
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f4, 0(x2) # load 0xa6e895993737426c from memory into f4
fadd.d f3, f14, f4, dyn # perform operation
fadd.d f3, f14, f4, rdn # perform operation
fadd.d f3, f14, f4, rmm # perform operation
fadd.d f3, f14, f4, rne # perform operation
fadd.d f3, f14, f4, rtz # perform operation
fadd.d f3, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x0)
li x13, 0xf3bb8a3fea603717 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f27, 0(x2) # load 0x0000000000000000 from memory into f27
fadd.d f13, f6, f27, dyn # perform operation
fadd.d f13, f6, f27, rdn # perform operation
fadd.d f13, f6, f27, rmm # perform operation
fadd.d f13, f6, f27, rne # perform operation
fadd.d f13, f6, f27, rtz # perform operation
fadd.d f13, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f13, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f13, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f13, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f13, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f13, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000000)
li x20, 0x642a7bcf489cb620 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fadd.d f20, f9, f1, dyn # perform operation
fadd.d f20, f9, f1, rdn # perform operation
fadd.d f20, f9, f1, rmm # perform operation
fadd.d f20, f9, f1, rne # perform operation
fadd.d f20, f9, f1, rtz # perform operation
fadd.d f20, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff0000000000000)
li x17, 0xde04f01a92c125b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fadd.d f17, f31, f13, dyn # perform operation
fadd.d f17, f31, f13, rdn # perform operation
fadd.d f17, f31, f13, rmm # perform operation
fadd.d f17, f31, f13, rne # perform operation
fadd.d f17, f31, f13, rtz # perform operation
fadd.d f17, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff0000000000000)
li x29, 0x6e24d4939c89a664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fadd.d f29, f2, f20, dyn # perform operation
fadd.d f29, f2, f20, rdn # perform operation
fadd.d f29, f2, f20, rmm # perform operation
fadd.d f29, f2, f20, rne # perform operation
fadd.d f29, f2, f20, rtz # perform operation
fadd.d f29, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff8000000000000)
li x10, 0x38a2fe3314c54ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fadd.d f10, f5, f15, dyn # perform operation
fadd.d f10, f5, f15, rdn # perform operation
fadd.d f10, f5, f15, rmm # perform operation
fadd.d f10, f5, f15, rne # perform operation
fadd.d f10, f5, f15, rtz # perform operation
fadd.d f10, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f10, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f10, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f10, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f10, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f10, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff8000000000000)
li x25, 0x4aae36fa00ec2e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fadd.d f25, f8, f24, dyn # perform operation
fadd.d f25, f8, f24, rdn # perform operation
fadd.d f25, f8, f24, rmm # perform operation
fadd.d f25, f8, f24, rne # perform operation
fadd.d f25, f8, f24, rtz # perform operation
fadd.d f25, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x4000000000000000)
li x17, 0x0c8026d6dc6d86d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fadd.d f17, f12, f16, dyn # perform operation
fadd.d f17, f12, f16, rdn # perform operation
fadd.d f17, f12, f16, rmm # perform operation
fadd.d f17, f12, f16, rne # perform operation
fadd.d f17, f12, f16, rtz # perform operation
fadd.d f17, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xc000000000000000)
li x5, 0x46b4a1d962d7c688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
fadd.d f5, f14, f28, dyn # perform operation
fadd.d f5, f14, f28, rdn # perform operation
fadd.d f5, f14, f28, rmm # perform operation
fadd.d f5, f14, f28, rne # perform operation
fadd.d f5, f14, f28, rtz # perform operation
fadd.d f5, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x10000000000000)
li x15, 0x0b5b022c68de926c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fadd.d f15, f5, f19, dyn # perform operation
fadd.d f15, f5, f19, rdn # perform operation
fadd.d f15, f5, f19, rmm # perform operation
fadd.d f15, f5, f19, rne # perform operation
fadd.d f15, f5, f19, rtz # perform operation
fadd.d f15, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f15, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f15, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f15, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f15, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f15, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8010000000000000)
li x14, 0x6bac6c551fcf44f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
fadd.d f14, f18, f5, dyn # perform operation
fadd.d f14, f18, f5, rdn # perform operation
fadd.d f14, f18, f5, rmm # perform operation
fadd.d f14, f18, f5, rne # perform operation
fadd.d f14, f18, f5, rtz # perform operation
fadd.d f14, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fefffffffffffff)
li x24, 0xbf4fde81bb41f294 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f11, 0(x2) # load 0x7fefffffffffffff from memory into f11
fadd.d f24, f8, f11, dyn # perform operation
fadd.d f24, f8, f11, rdn # perform operation
fadd.d f24, f8, f11, rmm # perform operation
fadd.d f24, f8, f11, rne # perform operation
fadd.d f24, f8, f11, rtz # perform operation
fadd.d f24, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xffefffffffffffff)
li x19, 0x17cb7bf43939517c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
fadd.d f19, f24, f3, dyn # perform operation
fadd.d f19, f24, f3, rdn # perform operation
fadd.d f19, f24, f3, rmm # perform operation
fadd.d f19, f24, f3, rne # perform operation
fadd.d f19, f24, f3, rtz # perform operation
fadd.d f19, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfffffffffffff)
li x21, 0x190e8f16da651f09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
fadd.d f21, f24, f30, dyn # perform operation
fadd.d f21, f24, f30, rdn # perform operation
fadd.d f21, f24, f30, rmm # perform operation
fadd.d f21, f24, f30, rne # perform operation
fadd.d f21, f24, f30, rtz # perform operation
fadd.d f21, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x800fffffffffffff)
li x17, 0x0e94d325333636d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
fadd.d f17, f26, f1, dyn # perform operation
fadd.d f17, f26, f1, rdn # perform operation
fadd.d f17, f26, f1, rmm # perform operation
fadd.d f17, f26, f1, rne # perform operation
fadd.d f17, f26, f1, rtz # perform operation
fadd.d f17, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000)
li x14, 0x98da31b3b27ac8f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fadd.d f14, f29, f9, dyn # perform operation
fadd.d f14, f29, f9, rdn # perform operation
fadd.d f14, f29, f9, rmm # perform operation
fadd.d f14, f29, f9, rne # perform operation
fadd.d f14, f29, f9, rtz # perform operation
fadd.d f14, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f14, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f14, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f14, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f14, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f14, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8008000000000000)
li x8, 0x21c54bf9b87d4760 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
fadd.d f8, f25, f30, dyn # perform operation
fadd.d f8, f25, f30, rdn # perform operation
fadd.d f8, f25, f30, rmm # perform operation
fadd.d f8, f25, f30, rne # perform operation
fadd.d f8, f25, f30, rtz # perform operation
fadd.d f8, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x1)
li x8, 0x7b62625e096a9f31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
fadd.d f8, f22, f11, dyn # perform operation
fadd.d f8, f22, f11, rdn # perform operation
fadd.d f8, f22, f11, rmm # perform operation
fadd.d f8, f22, f11, rne # perform operation
fadd.d f8, f22, f11, rtz # perform operation
fadd.d f8, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f8, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f8, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f8, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f8, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f8, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000001)
li x6, 0xc65356b8eebd24e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
fadd.d f6, f23, f10, dyn # perform operation
fadd.d f6, f23, f10, rdn # perform operation
fadd.d f6, f23, f10, rmm # perform operation
fadd.d f6, f23, f10, rne # perform operation
fadd.d f6, f23, f10, rtz # perform operation
fadd.d f6, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000000)
li x17, 0x92f20b79cb5ffe71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fadd.d f17, f4, f31, dyn # perform operation
fadd.d f17, f4, f31, rdn # perform operation
fadd.d f17, f4, f31, rmm # perform operation
fadd.d f17, f4, f31, rne # perform operation
fadd.d f17, f4, f31, rtz # perform operation
fadd.d f17, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfff0000000000000)
li x6, 0xb0e8ce568999fdfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fadd.d f6, f28, f26, dyn # perform operation
fadd.d f6, f28, f26, rdn # perform operation
fadd.d f6, f28, f26, rmm # perform operation
fadd.d f6, f28, f26, rne # perform operation
fadd.d f6, f28, f26, rtz # perform operation
fadd.d f6, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f6, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f6, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f6, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f6, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f6, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff8000000000000)
li x29, 0x75a38d6fcd405505 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fadd.d f29, f15, f1, dyn # perform operation
fadd.d f29, f15, f1, rdn # perform operation
fadd.d f29, f15, f1, rmm # perform operation
fadd.d f29, f15, f1, rne # perform operation
fadd.d f29, f15, f1, rtz # perform operation
fadd.d f29, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f29, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f29, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f29, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f29, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f29, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fffffffffffffff)
li x19, 0x5b8f3cb388998f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
fadd.d f19, f1, f5, dyn # perform operation
fadd.d f19, f1, f5, rdn # perform operation
fadd.d f19, f1, f5, rmm # perform operation
fadd.d f19, f1, f5, rne # perform operation
fadd.d f19, f1, f5, rtz # perform operation
fadd.d f19, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000001)
li x2, 0xef4ac456b622b81f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fadd.d f2, f1, f11, dyn # perform operation
fadd.d f2, f1, f11, rdn # perform operation
fadd.d f2, f1, f11, rmm # perform operation
fadd.d f2, f1, f11, rne # perform operation
fadd.d f2, f1, f11, rtz # perform operation
fadd.d f2, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f2, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f2, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f2, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f2, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f2, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff7ffffffffffff)
li x24, 0x866ac96ff367d385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fadd.d f24, f8, f28, dyn # perform operation
fadd.d f24, f8, f28, rdn # perform operation
fadd.d f24, f8, f28, rmm # perform operation
fadd.d f24, f8, f28, rne # perform operation
fadd.d f24, f8, f28, rtz # perform operation
fadd.d f24, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f24, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f24, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f24, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f24, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f24, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x5a392534a57711ad)
li x25, 0xbf95f5c0f301ca27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
fadd.d f25, f12, f16, dyn # perform operation
fadd.d f25, f12, f16, rdn # perform operation
fadd.d f25, f12, f16, rmm # perform operation
fadd.d f25, f12, f16, rne # perform operation
fadd.d f25, f12, f16, rtz # perform operation
fadd.d f25, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xa6e895993737426c)
li x25, 0x52007bf8f59f808f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
fadd.d f25, f13, f2, dyn # perform operation
fadd.d f25, f13, f2, rdn # perform operation
fadd.d f25, f13, f2, rmm # perform operation
fadd.d f25, f13, f2, rne # perform operation
fadd.d f25, f13, f2, rtz # perform operation
fadd.d f25, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f25, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f25, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f25, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f25, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f25, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x0)
li x18, 0x842fd594c659f93e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
fadd.d f18, f19, f22, dyn # perform operation
fadd.d f18, f19, f22, rdn # perform operation
fadd.d f18, f19, f22, rmm # perform operation
fadd.d f18, f19, f22, rne # perform operation
fadd.d f18, f19, f22, rtz # perform operation
fadd.d f18, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f18, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f18, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f18, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f18, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f18, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000000)
li x12, 0xa487894c54130735 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fadd.d f12, f9, f8, dyn # perform operation
fadd.d f12, f9, f8, rdn # perform operation
fadd.d f12, f9, f8, rmm # perform operation
fadd.d f12, f9, f8, rne # perform operation
fadd.d f12, f9, f8, rtz # perform operation
fadd.d f12, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff0000000000000)
li x5, 0x83b0abeb2207047d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fadd.d f5, f7, f27, dyn # perform operation
fadd.d f5, f7, f27, rdn # perform operation
fadd.d f5, f7, f27, rmm # perform operation
fadd.d f5, f7, f27, rne # perform operation
fadd.d f5, f7, f27, rtz # perform operation
fadd.d f5, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff0000000000000)
li x20, 0xf449265f5f200672 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f5, 0(x2) # load 0xbff0000000000000 from memory into f5
fadd.d f20, f10, f5, dyn # perform operation
fadd.d f20, f10, f5, rdn # perform operation
fadd.d f20, f10, f5, rmm # perform operation
fadd.d f20, f10, f5, rne # perform operation
fadd.d f20, f10, f5, rtz # perform operation
fadd.d f20, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff8000000000000)
li x27, 0x756b6ff4d012954c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
fadd.d f27, f28, f1, dyn # perform operation
fadd.d f27, f28, f1, rdn # perform operation
fadd.d f27, f28, f1, rmm # perform operation
fadd.d f27, f28, f1, rne # perform operation
fadd.d f27, f28, f1, rtz # perform operation
fadd.d f27, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f27, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f27, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f27, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f27, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f27, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff8000000000000)
li x3, 0xbee14cae350b9e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
fadd.d f3, f9, f11, dyn # perform operation
fadd.d f3, f9, f11, rdn # perform operation
fadd.d f3, f9, f11, rmm # perform operation
fadd.d f3, f9, f11, rne # perform operation
fadd.d f3, f9, f11, rtz # perform operation
fadd.d f3, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x4000000000000000)
li x12, 0x5e81e0545f7592aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
fadd.d f12, f24, f31, dyn # perform operation
fadd.d f12, f24, f31, rdn # perform operation
fadd.d f12, f24, f31, rmm # perform operation
fadd.d f12, f24, f31, rne # perform operation
fadd.d f12, f24, f31, rtz # perform operation
fadd.d f12, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f12, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f12, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f12, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f12, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f12, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xc000000000000000)
li x30, 0x7de57c676f894dba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
fadd.d f30, f7, f9, dyn # perform operation
fadd.d f30, f7, f9, rdn # perform operation
fadd.d f30, f7, f9, rmm # perform operation
fadd.d f30, f7, f9, rne # perform operation
fadd.d f30, f7, f9, rtz # perform operation
fadd.d f30, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f30, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f30, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f30, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f30, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f30, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x10000000000000)
li x21, 0xc828c7bf2deebe68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
fadd.d f21, f26, f8, dyn # perform operation
fadd.d f21, f26, f8, rdn # perform operation
fadd.d f21, f26, f8, rmm # perform operation
fadd.d f21, f26, f8, rne # perform operation
fadd.d f21, f26, f8, rtz # perform operation
fadd.d f21, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f21, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f21, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f21, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f21, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f21, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8010000000000000)
li x19, 0xdb819d686e187d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fadd.d f19, f27, f16, dyn # perform operation
fadd.d f19, f27, f16, rdn # perform operation
fadd.d f19, f27, f16, rmm # perform operation
fadd.d f19, f27, f16, rne # perform operation
fadd.d f19, f27, f16, rtz # perform operation
fadd.d f19, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f19, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f19, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f19, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f19, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f19, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fefffffffffffff)
li x9, 0x795483f234e102ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
fadd.d f9, f24, f31, dyn # perform operation
fadd.d f9, f24, f31, rdn # perform operation
fadd.d f9, f24, f31, rmm # perform operation
fadd.d f9, f24, f31, rne # perform operation
fadd.d f9, f24, f31, rtz # perform operation
fadd.d f9, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xffefffffffffffff)
li x4, 0x29428b089b860811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f12, 0(x2) # load 0xffefffffffffffff from memory into f12
fadd.d f4, f13, f12, dyn # perform operation
fadd.d f4, f13, f12, rdn # perform operation
fadd.d f4, f13, f12, rmm # perform operation
fadd.d f4, f13, f12, rne # perform operation
fadd.d f4, f13, f12, rtz # perform operation
fadd.d f4, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfffffffffffff)
li x1, 0xfe7c930ba6af73f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
fadd.d f1, f30, f19, dyn # perform operation
fadd.d f1, f30, f19, rdn # perform operation
fadd.d f1, f30, f19, rmm # perform operation
fadd.d f1, f30, f19, rne # perform operation
fadd.d f1, f30, f19, rtz # perform operation
fadd.d f1, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x800fffffffffffff)
li x26, 0xeeb66154a148a611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fadd.d f26, f7, f29, dyn # perform operation
fadd.d f26, f7, f29, rdn # perform operation
fadd.d f26, f7, f29, rmm # perform operation
fadd.d f26, f7, f29, rne # perform operation
fadd.d f26, f7, f29, rtz # perform operation
fadd.d f26, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f26, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f26, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f26, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f26, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f26, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000)
li x31, 0xff1328c45b582e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fadd.d f31, f22, f12, dyn # perform operation
fadd.d f31, f22, f12, rdn # perform operation
fadd.d f31, f22, f12, rmm # perform operation
fadd.d f31, f22, f12, rne # perform operation
fadd.d f31, f22, f12, rtz # perform operation
fadd.d f31, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f31, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f31, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f31, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f31, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f31, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8008000000000000)
li x20, 0xf1782dfbf50fbf16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fadd.d f20, f31, f27, dyn # perform operation
fadd.d f20, f31, f27, rdn # perform operation
fadd.d f20, f31, f27, rmm # perform operation
fadd.d f20, f31, f27, rne # perform operation
fadd.d f20, f31, f27, rtz # perform operation
fadd.d f20, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f20, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f20, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f20, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f20, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f20, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x1)
li x11, 0xad328a3d6fa3811d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fadd.d f11, f17, f27, dyn # perform operation
fadd.d f11, f17, f27, rdn # perform operation
fadd.d f11, f17, f27, rmm # perform operation
fadd.d f11, f17, f27, rne # perform operation
fadd.d f11, f17, f27, rtz # perform operation
fadd.d f11, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000001)
li x5, 0x2ff2c2030eec3b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f4, 0(x2) # load 0xa6e895993737426c from memory into f4
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
fadd.d f5, f4, f29, dyn # perform operation
fadd.d f5, f4, f29, rdn # perform operation
fadd.d f5, f4, f29, rmm # perform operation
fadd.d f5, f4, f29, rne # perform operation
fadd.d f5, f4, f29, rtz # perform operation
fadd.d f5, f4, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f5, f4, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f5, f4, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f5, f4, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f5, f4, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f5, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000000)
li x17, 0xb094830278a9a301 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fadd.d f17, f28, f29, dyn # perform operation
fadd.d f17, f28, f29, rdn # perform operation
fadd.d f17, f28, f29, rmm # perform operation
fadd.d f17, f28, f29, rne # perform operation
fadd.d f17, f28, f29, rtz # perform operation
fadd.d f17, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f17, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f17, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f17, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f17, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f17, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfff0000000000000)
li x1, 0x239e7df64b18dd0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
fadd.d f1, f13, f14, dyn # perform operation
fadd.d f1, f13, f14, rdn # perform operation
fadd.d f1, f13, f14, rmm # perform operation
fadd.d f1, f13, f14, rne # perform operation
fadd.d f1, f13, f14, rtz # perform operation
fadd.d f1, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff8000000000000)
li x11, 0xabc7db6508732ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fadd.d f11, f26, f12, dyn # perform operation
fadd.d f11, f26, f12, rdn # perform operation
fadd.d f11, f26, f12, rmm # perform operation
fadd.d f11, f26, f12, rne # perform operation
fadd.d f11, f26, f12, rtz # perform operation
fadd.d f11, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f11, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f11, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f11, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f11, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f11, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fffffffffffffff)
li x28, 0x5ebbd6f3d3828868 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fadd.d f28, f31, f1, dyn # perform operation
fadd.d f28, f31, f1, rdn # perform operation
fadd.d f28, f31, f1, rmm # perform operation
fadd.d f28, f31, f1, rne # perform operation
fadd.d f28, f31, f1, rtz # perform operation
fadd.d f28, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f28, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f28, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f28, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f28, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f28, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000001)
li x4, 0x0fcfae9553fcb1ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fadd.d f4, f15, f6, dyn # perform operation
fadd.d f4, f15, f6, rdn # perform operation
fadd.d f4, f15, f6, rmm # perform operation
fadd.d f4, f15, f6, rne # perform operation
fadd.d f4, f15, f6, rtz # perform operation
fadd.d f4, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f4, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f4, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f4, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f4, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f4, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff7ffffffffffff)
li x9, 0x82c4cfdd31cf7813 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
fadd.d f9, f12, f3, dyn # perform operation
fadd.d f9, f12, f3, rdn # perform operation
fadd.d f9, f12, f3, rmm # perform operation
fadd.d f9, f12, f3, rne # perform operation
fadd.d f9, f12, f3, rtz # perform operation
fadd.d f9, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f9, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f9, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f9, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f9, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f9, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x5a392534a57711ad)
li x1, 0x73572d0fd0a37ada # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
fadd.d f1, f5, f14, dyn # perform operation
fadd.d f1, f5, f14, rdn # perform operation
fadd.d f1, f5, f14, rmm # perform operation
fadd.d f1, f5, f14, rne # perform operation
fadd.d f1, f5, f14, rtz # perform operation
fadd.d f1, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f1, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f1, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f1, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f1, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f1, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xa6e895993737426c)
li x3, 0xcf26e43636b0755d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
fadd.d f3, f12, f26, dyn # perform operation
fadd.d f3, f12, f26, rdn # perform operation
fadd.d f3, f12, f26, rmm # perform operation
fadd.d f3, f12, f26, rne # perform operation
fadd.d f3, f12, f26, rtz # perform operation
fadd.d f3, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.d f3, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.d f3, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.d f3, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.d f3, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.d f3, f12, f26 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x9db8265a2e0b2cce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadbdbf4d5cc964dd # load x3 with value 0xadbdbf4d5cc964dd
sd x3, 0(x2) # store 0xadbdbf4d5cc964dd in memory
fld f6, 0(x2) # load 0xadbdbf4d5cc964dd from memory into f6
li x3, 0xe1d2b9a94858b26b # load x3 with value 0xe1d2b9a94858b26b
sd x3, 0(x2) # store 0xe1d2b9a94858b26b in memory
fld f19, 0(x2) # load 0xe1d2b9a94858b26b from memory into f19
fadd.d f0, f6, f19 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x3cee95aa868c9b3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc1b38315a723235 # load x3 with value 0xfc1b38315a723235
sd x3, 0(x2) # store 0xfc1b38315a723235 in memory
fld f17, 0(x2) # load 0xfc1b38315a723235 from memory into f17
li x3, 0xadd8183f232be772 # load x3 with value 0xadd8183f232be772
sd x3, 0(x2) # store 0xadd8183f232be772 in memory
fld f1, 0(x2) # load 0xadd8183f232be772 from memory into f1
fadd.d f1, f17, f1 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xa9c573a0427fde8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1606e7ef2b9d42a3 # load x3 with value 0x1606e7ef2b9d42a3
sd x3, 0(x2) # store 0x1606e7ef2b9d42a3 in memory
fld f22, 0(x2) # load 0x1606e7ef2b9d42a3 from memory into f22
li x3, 0xf809e9f05e5cb210 # load x3 with value 0xf809e9f05e5cb210
sd x3, 0(x2) # store 0xf809e9f05e5cb210 in memory
fld f14, 0(x2) # load 0xf809e9f05e5cb210 from memory into f14
fadd.d f2, f22, f14 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x4decb2df65a4ec07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a24f7b485d6e32c # load x3 with value 0x5a24f7b485d6e32c
sd x3, 0(x2) # store 0x5a24f7b485d6e32c in memory
fld f19, 0(x2) # load 0x5a24f7b485d6e32c from memory into f19
li x3, 0x8aa6c6658b2e1788 # load x3 with value 0x8aa6c6658b2e1788
sd x3, 0(x2) # store 0x8aa6c6658b2e1788 in memory
fld f31, 0(x2) # load 0x8aa6c6658b2e1788 from memory into f31
fadd.d f3, f19, f31 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x4eed3cee94d3130a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe52d6399d0a79d3d # load x3 with value 0xe52d6399d0a79d3d
sd x3, 0(x2) # store 0xe52d6399d0a79d3d in memory
fld f21, 0(x2) # load 0xe52d6399d0a79d3d from memory into f21
li x3, 0xeebce9dc3627d168 # load x3 with value 0xeebce9dc3627d168
sd x3, 0(x2) # store 0xeebce9dc3627d168 in memory
fld f1, 0(x2) # load 0xeebce9dc3627d168 from memory into f1
fadd.d f4, f21, f1 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xe17ac7f4061c9789 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ade0f22380362c0 # load x3 with value 0x6ade0f22380362c0
sd x3, 0(x2) # store 0x6ade0f22380362c0 in memory
fld f17, 0(x2) # load 0x6ade0f22380362c0 from memory into f17
li x3, 0xda3e720761da0ff5 # load x3 with value 0xda3e720761da0ff5
sd x3, 0(x2) # store 0xda3e720761da0ff5 in memory
fld f18, 0(x2) # load 0xda3e720761da0ff5 from memory into f18
fadd.d f5, f17, f18 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x8b24daaa387c46f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf6ac042e20305f7 # load x3 with value 0xbf6ac042e20305f7
sd x3, 0(x2) # store 0xbf6ac042e20305f7 in memory
fld f4, 0(x2) # load 0xbf6ac042e20305f7 from memory into f4
li x3, 0x2c9ad6539f79057b # load x3 with value 0x2c9ad6539f79057b
sd x3, 0(x2) # store 0x2c9ad6539f79057b in memory
fld f6, 0(x2) # load 0x2c9ad6539f79057b from memory into f6
fadd.d f6, f4, f6 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xf38486b6a13aa05f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2703d41aab03aa0 # load x3 with value 0xd2703d41aab03aa0
sd x3, 0(x2) # store 0xd2703d41aab03aa0 in memory
fld f25, 0(x2) # load 0xd2703d41aab03aa0 from memory into f25
li x3, 0x8a8c08adde85e216 # load x3 with value 0x8a8c08adde85e216
sd x3, 0(x2) # store 0x8a8c08adde85e216 in memory
fld f31, 0(x2) # load 0x8a8c08adde85e216 from memory into f31
fadd.d f7, f25, f31 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x7c34b8a4995a0d40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc41d7981e69dabf # load x3 with value 0xdc41d7981e69dabf
sd x3, 0(x2) # store 0xdc41d7981e69dabf in memory
fld f29, 0(x2) # load 0xdc41d7981e69dabf from memory into f29
li x3, 0x27017bfe460797f9 # load x3 with value 0x27017bfe460797f9
sd x3, 0(x2) # store 0x27017bfe460797f9 in memory
fld f6, 0(x2) # load 0x27017bfe460797f9 from memory into f6
fadd.d f8, f29, f6 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x01d31373eff9af90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7ba69a3d20833f3 # load x3 with value 0xb7ba69a3d20833f3
sd x3, 0(x2) # store 0xb7ba69a3d20833f3 in memory
fld f25, 0(x2) # load 0xb7ba69a3d20833f3 from memory into f25
li x3, 0xc1225e715ee44e3f # load x3 with value 0xc1225e715ee44e3f
sd x3, 0(x2) # store 0xc1225e715ee44e3f in memory
fld f14, 0(x2) # load 0xc1225e715ee44e3f from memory into f14
fadd.d f9, f25, f14 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x7703f14729101ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5abd2d862d5c7b0 # load x3 with value 0xd5abd2d862d5c7b0
sd x3, 0(x2) # store 0xd5abd2d862d5c7b0 in memory
fld f9, 0(x2) # load 0xd5abd2d862d5c7b0 from memory into f9
li x3, 0xba6cf58be4d2a23a # load x3 with value 0xba6cf58be4d2a23a
sd x3, 0(x2) # store 0xba6cf58be4d2a23a in memory
fld f17, 0(x2) # load 0xba6cf58be4d2a23a from memory into f17
fadd.d f10, f9, f17 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x7a028094f78c47c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5009245b14d72c7 # load x3 with value 0xa5009245b14d72c7
sd x3, 0(x2) # store 0xa5009245b14d72c7 in memory
fld f7, 0(x2) # load 0xa5009245b14d72c7 from memory into f7
li x3, 0xbb7b358e6bd70be5 # load x3 with value 0xbb7b358e6bd70be5
sd x3, 0(x2) # store 0xbb7b358e6bd70be5 in memory
fld f3, 0(x2) # load 0xbb7b358e6bd70be5 from memory into f3
fadd.d f11, f7, f3 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x0f0a8b3dab7601e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe2ba905df97454e # load x3 with value 0xbe2ba905df97454e
sd x3, 0(x2) # store 0xbe2ba905df97454e in memory
fld f11, 0(x2) # load 0xbe2ba905df97454e from memory into f11
li x3, 0x5d3ffa5060cb9b5f # load x3 with value 0x5d3ffa5060cb9b5f
sd x3, 0(x2) # store 0x5d3ffa5060cb9b5f in memory
fld f22, 0(x2) # load 0x5d3ffa5060cb9b5f from memory into f22
fadd.d f12, f11, f22 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x6fe924a34d4d513c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85fa1d5ed3a87599 # load x3 with value 0x85fa1d5ed3a87599
sd x3, 0(x2) # store 0x85fa1d5ed3a87599 in memory
fld f17, 0(x2) # load 0x85fa1d5ed3a87599 from memory into f17
li x3, 0xb98a94742405b4ad # load x3 with value 0xb98a94742405b4ad
sd x3, 0(x2) # store 0xb98a94742405b4ad in memory
fld f11, 0(x2) # load 0xb98a94742405b4ad from memory into f11
fadd.d f13, f17, f11 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x114cb23e8ded309e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0c7770025002965 # load x3 with value 0xd0c7770025002965
sd x3, 0(x2) # store 0xd0c7770025002965 in memory
fld f18, 0(x2) # load 0xd0c7770025002965 from memory into f18
li x3, 0x86c580588667451b # load x3 with value 0x86c580588667451b
sd x3, 0(x2) # store 0x86c580588667451b in memory
fld f4, 0(x2) # load 0x86c580588667451b from memory into f4
fadd.d f14, f18, f4 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xbc28a9ed0248b5ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf024bbeeb9cf8fc9 # load x3 with value 0xf024bbeeb9cf8fc9
sd x3, 0(x2) # store 0xf024bbeeb9cf8fc9 in memory
fld f16, 0(x2) # load 0xf024bbeeb9cf8fc9 from memory into f16
li x3, 0xe60e81c699870e9e # load x3 with value 0xe60e81c699870e9e
sd x3, 0(x2) # store 0xe60e81c699870e9e in memory
fld f5, 0(x2) # load 0xe60e81c699870e9e from memory into f5
fadd.d f15, f16, f5 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xe18041125c8ce849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc762ae459ff2cce # load x3 with value 0xdc762ae459ff2cce
sd x3, 0(x2) # store 0xdc762ae459ff2cce in memory
fld f10, 0(x2) # load 0xdc762ae459ff2cce from memory into f10
li x3, 0xb95d068f5f4fdafa # load x3 with value 0xb95d068f5f4fdafa
sd x3, 0(x2) # store 0xb95d068f5f4fdafa in memory
fld f29, 0(x2) # load 0xb95d068f5f4fdafa from memory into f29
fadd.d f16, f10, f29 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xc32be0a4175d69c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6893b3827b02e883 # load x3 with value 0x6893b3827b02e883
sd x3, 0(x2) # store 0x6893b3827b02e883 in memory
fld f6, 0(x2) # load 0x6893b3827b02e883 from memory into f6
li x3, 0xe433ad35541bfb0d # load x3 with value 0xe433ad35541bfb0d
sd x3, 0(x2) # store 0xe433ad35541bfb0d in memory
fld f27, 0(x2) # load 0xe433ad35541bfb0d from memory into f27
fadd.d f17, f6, f27 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x4067fec794db7e7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x118ac0a0604825a9 # load x3 with value 0x118ac0a0604825a9
sd x3, 0(x2) # store 0x118ac0a0604825a9 in memory
fld f11, 0(x2) # load 0x118ac0a0604825a9 from memory into f11
li x3, 0x022e441f7a9bfed7 # load x3 with value 0x022e441f7a9bfed7
sd x3, 0(x2) # store 0x022e441f7a9bfed7 in memory
fld f9, 0(x2) # load 0x022e441f7a9bfed7 from memory into f9
fadd.d f18, f11, f9 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x2f7b0dbdd486efc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe50079ab463a3cf7 # load x3 with value 0xe50079ab463a3cf7
sd x3, 0(x2) # store 0xe50079ab463a3cf7 in memory
fld f23, 0(x2) # load 0xe50079ab463a3cf7 from memory into f23
li x3, 0xf469f9e2523b7a0a # load x3 with value 0xf469f9e2523b7a0a
sd x3, 0(x2) # store 0xf469f9e2523b7a0a in memory
fld f22, 0(x2) # load 0xf469f9e2523b7a0a from memory into f22
fadd.d f19, f23, f22 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x3653d301e2743015 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x335618960da5e95b # load x3 with value 0x335618960da5e95b
sd x3, 0(x2) # store 0x335618960da5e95b in memory
fld f25, 0(x2) # load 0x335618960da5e95b from memory into f25
li x3, 0xcb831546700b151a # load x3 with value 0xcb831546700b151a
sd x3, 0(x2) # store 0xcb831546700b151a in memory
fld f26, 0(x2) # load 0xcb831546700b151a from memory into f26
fadd.d f20, f25, f26 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xb3907a176199a2a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x327cb1413f1afc5a # load x3 with value 0x327cb1413f1afc5a
sd x3, 0(x2) # store 0x327cb1413f1afc5a in memory
fld f31, 0(x2) # load 0x327cb1413f1afc5a from memory into f31
li x3, 0xdf8d9146aba6fd00 # load x3 with value 0xdf8d9146aba6fd00
sd x3, 0(x2) # store 0xdf8d9146aba6fd00 in memory
fld f6, 0(x2) # load 0xdf8d9146aba6fd00 from memory into f6
fadd.d f21, f31, f6 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xf835629f4b0de7cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd45891edec2607dd # load x3 with value 0xd45891edec2607dd
sd x3, 0(x2) # store 0xd45891edec2607dd in memory
fld f11, 0(x2) # load 0xd45891edec2607dd from memory into f11
li x3, 0x9415fc7563525751 # load x3 with value 0x9415fc7563525751
sd x3, 0(x2) # store 0x9415fc7563525751 in memory
fld f25, 0(x2) # load 0x9415fc7563525751 from memory into f25
fadd.d f22, f11, f25 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xe4eee8c215995980 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7e869f23fdd3db3 # load x3 with value 0xa7e869f23fdd3db3
sd x3, 0(x2) # store 0xa7e869f23fdd3db3 in memory
fld f21, 0(x2) # load 0xa7e869f23fdd3db3 from memory into f21
li x3, 0x800d0550e0a5a35b # load x3 with value 0x800d0550e0a5a35b
sd x3, 0(x2) # store 0x800d0550e0a5a35b in memory
fld f14, 0(x2) # load 0x800d0550e0a5a35b from memory into f14
fadd.d f23, f21, f14 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x53f10f1dfd094d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xecdfd9b31962750c # load x3 with value 0xecdfd9b31962750c
sd x3, 0(x2) # store 0xecdfd9b31962750c in memory
fld f14, 0(x2) # load 0xecdfd9b31962750c from memory into f14
li x3, 0x8015de2d1e7ef10a # load x3 with value 0x8015de2d1e7ef10a
sd x3, 0(x2) # store 0x8015de2d1e7ef10a in memory
fld f9, 0(x2) # load 0x8015de2d1e7ef10a from memory into f9
fadd.d f24, f14, f9 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x7073f634bf427dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff3e401ef6926518 # load x3 with value 0xff3e401ef6926518
sd x3, 0(x2) # store 0xff3e401ef6926518 in memory
fld f15, 0(x2) # load 0xff3e401ef6926518 from memory into f15
li x3, 0x9806d929276f5e42 # load x3 with value 0x9806d929276f5e42
sd x3, 0(x2) # store 0x9806d929276f5e42 in memory
fld f18, 0(x2) # load 0x9806d929276f5e42 from memory into f18
fadd.d f25, f15, f18 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x75463ed328f42d78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee4fac024028021a # load x3 with value 0xee4fac024028021a
sd x3, 0(x2) # store 0xee4fac024028021a in memory
fld f31, 0(x2) # load 0xee4fac024028021a from memory into f31
li x3, 0xa4c2a95d40329353 # load x3 with value 0xa4c2a95d40329353
sd x3, 0(x2) # store 0xa4c2a95d40329353 in memory
fld f9, 0(x2) # load 0xa4c2a95d40329353 from memory into f9
fadd.d f26, f31, f9 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x6e62a4be5e03774a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7d049dad079817b # load x3 with value 0xd7d049dad079817b
sd x3, 0(x2) # store 0xd7d049dad079817b in memory
fld f23, 0(x2) # load 0xd7d049dad079817b from memory into f23
li x3, 0x1a115d888b126486 # load x3 with value 0x1a115d888b126486
sd x3, 0(x2) # store 0x1a115d888b126486 in memory
fld f22, 0(x2) # load 0x1a115d888b126486 from memory into f22
fadd.d f27, f23, f22 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x69598f50b7fcc4f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2d470520ee19acb # load x3 with value 0xe2d470520ee19acb
sd x3, 0(x2) # store 0xe2d470520ee19acb in memory
fld f24, 0(x2) # load 0xe2d470520ee19acb from memory into f24
li x3, 0x9a354c8e1b618d0a # load x3 with value 0x9a354c8e1b618d0a
sd x3, 0(x2) # store 0x9a354c8e1b618d0a in memory
fld f4, 0(x2) # load 0x9a354c8e1b618d0a from memory into f4
fadd.d f28, f24, f4 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x3e08dfe1d8a9714a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5c573acb2e31af2 # load x3 with value 0xc5c573acb2e31af2
sd x3, 0(x2) # store 0xc5c573acb2e31af2 in memory
fld f16, 0(x2) # load 0xc5c573acb2e31af2 from memory into f16
li x3, 0xf46b20ca6ade05e8 # load x3 with value 0xf46b20ca6ade05e8
sd x3, 0(x2) # store 0xf46b20ca6ade05e8 in memory
fld f13, 0(x2) # load 0xf46b20ca6ade05e8 from memory into f13
fadd.d f29, f16, f13 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xa6751275d5d38ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4aca47768c36c4b # load x3 with value 0xb4aca47768c36c4b
sd x3, 0(x2) # store 0xb4aca47768c36c4b in memory
fld f29, 0(x2) # load 0xb4aca47768c36c4b from memory into f29
li x3, 0xa0d807338930a83e # load x3 with value 0xa0d807338930a83e
sd x3, 0(x2) # store 0xa0d807338930a83e in memory
fld f21, 0(x2) # load 0xa0d807338930a83e from memory into f21
fadd.d f30, f29, f21 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xa6042b8e454338c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42a235eded013960 # load x3 with value 0x42a235eded013960
sd x3, 0(x2) # store 0x42a235eded013960 in memory
fld f2, 0(x2) # load 0x42a235eded013960 from memory into f2
li x3, 0xd784d8f3849990be # load x3 with value 0xd784d8f3849990be
sd x3, 0(x2) # store 0xd784d8f3849990be in memory
fld f18, 0(x2) # load 0xd784d8f3849990be from memory into f18
fadd.d f31, f2, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x17, 0x6ba4af31fd747b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd11263d9a20a6b3f # load x3 with value 0xd11263d9a20a6b3f
sd x3, 0(x2) # store 0xd11263d9a20a6b3f in memory
fld f0, 0(x2) # load 0xd11263d9a20a6b3f from memory into f0
li x3, 0x41a94e75262ddf42 # load x3 with value 0x41a94e75262ddf42
sd x3, 0(x2) # store 0x41a94e75262ddf42 in memory
fld f1, 0(x2) # load 0x41a94e75262ddf42 from memory into f1
fadd.d f17, f0, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x18, 0x76a58453129a4abc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bdd717aec90f3b1 # load x3 with value 0x1bdd717aec90f3b1
sd x3, 0(x2) # store 0x1bdd717aec90f3b1 in memory
fld f1, 0(x2) # load 0x1bdd717aec90f3b1 from memory into f1
li x3, 0xf94a2f0f006e683b # load x3 with value 0xf94a2f0f006e683b
sd x3, 0(x2) # store 0xf94a2f0f006e683b in memory
fld f20, 0(x2) # load 0xf94a2f0f006e683b from memory into f20
fadd.d f18, f1, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x18, 0x5483e510894f3c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a2b1f11a186458b # load x3 with value 0x2a2b1f11a186458b
sd x3, 0(x2) # store 0x2a2b1f11a186458b in memory
fld f2, 0(x2) # load 0x2a2b1f11a186458b from memory into f2
li x3, 0xc24dd00adf5c9a8d # load x3 with value 0xc24dd00adf5c9a8d
sd x3, 0(x2) # store 0xc24dd00adf5c9a8d in memory
fld f15, 0(x2) # load 0xc24dd00adf5c9a8d from memory into f15
fadd.d f18, f2, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x10, 0x25f3bceeff9183a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x763d504f43eb490e # load x3 with value 0x763d504f43eb490e
sd x3, 0(x2) # store 0x763d504f43eb490e in memory
fld f3, 0(x2) # load 0x763d504f43eb490e from memory into f3
li x3, 0xf570664a9a7d2419 # load x3 with value 0xf570664a9a7d2419
sd x3, 0(x2) # store 0xf570664a9a7d2419 in memory
fld f15, 0(x2) # load 0xf570664a9a7d2419 from memory into f15
fadd.d f10, f3, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x5, 0x1da8457d98816eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b03ffc53541b8cb # load x3 with value 0x0b03ffc53541b8cb
sd x3, 0(x2) # store 0x0b03ffc53541b8cb in memory
fld f4, 0(x2) # load 0x0b03ffc53541b8cb from memory into f4
li x3, 0xd6cd95e0f764f7a8 # load x3 with value 0xd6cd95e0f764f7a8
sd x3, 0(x2) # store 0xd6cd95e0f764f7a8 in memory
fld f14, 0(x2) # load 0xd6cd95e0f764f7a8 from memory into f14
fadd.d f5, f4, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x5, 0x8b64ea769f972f53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbbef5f69cf88f95 # load x3 with value 0xcbbef5f69cf88f95
sd x3, 0(x2) # store 0xcbbef5f69cf88f95 in memory
fld f5, 0(x2) # load 0xcbbef5f69cf88f95 from memory into f5
li x3, 0x56ff624603006124 # load x3 with value 0x56ff624603006124
sd x3, 0(x2) # store 0x56ff624603006124 in memory
fld f7, 0(x2) # load 0x56ff624603006124 from memory into f7
fadd.d f5, f5, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x31, 0xcedf05f8b54751e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4f6b843b4157944 # load x3 with value 0xb4f6b843b4157944
sd x3, 0(x2) # store 0xb4f6b843b4157944 in memory
fld f6, 0(x2) # load 0xb4f6b843b4157944 from memory into f6
li x3, 0xa1b8217d64b96fbf # load x3 with value 0xa1b8217d64b96fbf
sd x3, 0(x2) # store 0xa1b8217d64b96fbf in memory
fld f15, 0(x2) # load 0xa1b8217d64b96fbf from memory into f15
fadd.d f31, f6, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x2, 0x123acbc629c02ad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedfa1454512c7d7a # load x3 with value 0xedfa1454512c7d7a
sd x3, 0(x2) # store 0xedfa1454512c7d7a in memory
fld f7, 0(x2) # load 0xedfa1454512c7d7a from memory into f7
li x3, 0x5967ab4dc0ba63ea # load x3 with value 0x5967ab4dc0ba63ea
sd x3, 0(x2) # store 0x5967ab4dc0ba63ea in memory
fld f8, 0(x2) # load 0x5967ab4dc0ba63ea from memory into f8
fadd.d f2, f7, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x31, 0x59b10781280f4bc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2c01ba0ccab0584 # load x3 with value 0xf2c01ba0ccab0584
sd x3, 0(x2) # store 0xf2c01ba0ccab0584 in memory
fld f8, 0(x2) # load 0xf2c01ba0ccab0584 from memory into f8
li x3, 0x581affa234105ab6 # load x3 with value 0x581affa234105ab6
sd x3, 0(x2) # store 0x581affa234105ab6 in memory
fld f27, 0(x2) # load 0x581affa234105ab6 from memory into f27
fadd.d f31, f8, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x21, 0x0155e5e43f86da2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc275737f7c2c606 # load x3 with value 0xdc275737f7c2c606
sd x3, 0(x2) # store 0xdc275737f7c2c606 in memory
fld f9, 0(x2) # load 0xdc275737f7c2c606 from memory into f9
li x3, 0x3ec990c3818cc9a4 # load x3 with value 0x3ec990c3818cc9a4
sd x3, 0(x2) # store 0x3ec990c3818cc9a4 in memory
fld f12, 0(x2) # load 0x3ec990c3818cc9a4 from memory into f12
fadd.d f21, f9, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x12, 0xc14478054814c692 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86ae7d7a66ea7b2e # load x3 with value 0x86ae7d7a66ea7b2e
sd x3, 0(x2) # store 0x86ae7d7a66ea7b2e in memory
fld f10, 0(x2) # load 0x86ae7d7a66ea7b2e from memory into f10
li x3, 0x553cb933cda6157b # load x3 with value 0x553cb933cda6157b
sd x3, 0(x2) # store 0x553cb933cda6157b in memory
fld f31, 0(x2) # load 0x553cb933cda6157b from memory into f31
fadd.d f12, f10, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x27, 0x45ca5c5894f706c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb46023e73008a464 # load x3 with value 0xb46023e73008a464
sd x3, 0(x2) # store 0xb46023e73008a464 in memory
fld f11, 0(x2) # load 0xb46023e73008a464 from memory into f11
li x3, 0x1e1c28de1eaf5793 # load x3 with value 0x1e1c28de1eaf5793
sd x3, 0(x2) # store 0x1e1c28de1eaf5793 in memory
fld f28, 0(x2) # load 0x1e1c28de1eaf5793 from memory into f28
fadd.d f27, f11, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x18, 0xfa1e955163d84f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfffc46f38c50cea2 # load x3 with value 0xfffc46f38c50cea2
sd x3, 0(x2) # store 0xfffc46f38c50cea2 in memory
fld f12, 0(x2) # load 0xfffc46f38c50cea2 from memory into f12
li x3, 0xaccc95089c15c3d4 # load x3 with value 0xaccc95089c15c3d4
sd x3, 0(x2) # store 0xaccc95089c15c3d4 in memory
fld f5, 0(x2) # load 0xaccc95089c15c3d4 from memory into f5
fadd.d f18, f12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x18, 0xfd46d20f260f1be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8c11031f38db803 # load x3 with value 0xb8c11031f38db803
sd x3, 0(x2) # store 0xb8c11031f38db803 in memory
fld f13, 0(x2) # load 0xb8c11031f38db803 from memory into f13
li x3, 0x647f7e608103d6c1 # load x3 with value 0x647f7e608103d6c1
sd x3, 0(x2) # store 0x647f7e608103d6c1 in memory
fld f7, 0(x2) # load 0x647f7e608103d6c1 from memory into f7
fadd.d f18, f13, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x28, 0x361ad7ea496c0ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e01906de83d562f # load x3 with value 0x7e01906de83d562f
sd x3, 0(x2) # store 0x7e01906de83d562f in memory
fld f14, 0(x2) # load 0x7e01906de83d562f from memory into f14
li x3, 0x3e7653f7d1eca752 # load x3 with value 0x3e7653f7d1eca752
sd x3, 0(x2) # store 0x3e7653f7d1eca752 in memory
fld f19, 0(x2) # load 0x3e7653f7d1eca752 from memory into f19
fadd.d f28, f14, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x12, 0x840f7bf0159ad847 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x032bcb0f54eb76ab # load x3 with value 0x032bcb0f54eb76ab
sd x3, 0(x2) # store 0x032bcb0f54eb76ab in memory
fld f15, 0(x2) # load 0x032bcb0f54eb76ab from memory into f15
li x3, 0xc1322b0ae8265be9 # load x3 with value 0xc1322b0ae8265be9
sd x3, 0(x2) # store 0xc1322b0ae8265be9 in memory
fld f2, 0(x2) # load 0xc1322b0ae8265be9 from memory into f2
fadd.d f12, f15, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x15, 0x32ef12713dc5f33e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e9c495f8ba89ef5 # load x3 with value 0x3e9c495f8ba89ef5
sd x3, 0(x2) # store 0x3e9c495f8ba89ef5 in memory
fld f16, 0(x2) # load 0x3e9c495f8ba89ef5 from memory into f16
li x3, 0x0b94b8aeb44d4be3 # load x3 with value 0x0b94b8aeb44d4be3
sd x3, 0(x2) # store 0x0b94b8aeb44d4be3 in memory
fld f13, 0(x2) # load 0x0b94b8aeb44d4be3 from memory into f13
fadd.d f15, f16, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x5, 0x988109ac052eb09d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25d1312d6da31788 # load x3 with value 0x25d1312d6da31788
sd x3, 0(x2) # store 0x25d1312d6da31788 in memory
fld f17, 0(x2) # load 0x25d1312d6da31788 from memory into f17
li x3, 0xa705170aa88a593d # load x3 with value 0xa705170aa88a593d
sd x3, 0(x2) # store 0xa705170aa88a593d in memory
fld f31, 0(x2) # load 0xa705170aa88a593d from memory into f31
fadd.d f5, f17, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x23, 0x1c4f2fd36512cbdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6310600a89651876 # load x3 with value 0x6310600a89651876
sd x3, 0(x2) # store 0x6310600a89651876 in memory
fld f18, 0(x2) # load 0x6310600a89651876 from memory into f18
li x3, 0x585a09f27da5194b # load x3 with value 0x585a09f27da5194b
sd x3, 0(x2) # store 0x585a09f27da5194b in memory
fld f9, 0(x2) # load 0x585a09f27da5194b from memory into f9
fadd.d f23, f18, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x26, 0xedb6fee7d2116c1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84feb33355a12f4e # load x3 with value 0x84feb33355a12f4e
sd x3, 0(x2) # store 0x84feb33355a12f4e in memory
fld f19, 0(x2) # load 0x84feb33355a12f4e from memory into f19
li x3, 0x88c3af91f1340ec3 # load x3 with value 0x88c3af91f1340ec3
sd x3, 0(x2) # store 0x88c3af91f1340ec3 in memory
fld f10, 0(x2) # load 0x88c3af91f1340ec3 from memory into f10
fadd.d f26, f19, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x10, 0xe11daf12ca6b9761 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d4650155e0863c4 # load x3 with value 0x7d4650155e0863c4
sd x3, 0(x2) # store 0x7d4650155e0863c4 in memory
fld f20, 0(x2) # load 0x7d4650155e0863c4 from memory into f20
li x3, 0x555a5403673f5a42 # load x3 with value 0x555a5403673f5a42
sd x3, 0(x2) # store 0x555a5403673f5a42 in memory
fld f26, 0(x2) # load 0x555a5403673f5a42 from memory into f26
fadd.d f10, f20, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x13, 0xb9a569b1337d8cde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ee01984cba7fdd1 # load x3 with value 0x3ee01984cba7fdd1
sd x3, 0(x2) # store 0x3ee01984cba7fdd1 in memory
fld f21, 0(x2) # load 0x3ee01984cba7fdd1 from memory into f21
li x3, 0xb043297ec77805cf # load x3 with value 0xb043297ec77805cf
sd x3, 0(x2) # store 0xb043297ec77805cf in memory
fld f23, 0(x2) # load 0xb043297ec77805cf from memory into f23
fadd.d f13, f21, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x5, 0xa95223fccbc36432 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ed4bab09baca121 # load x3 with value 0x0ed4bab09baca121
sd x3, 0(x2) # store 0x0ed4bab09baca121 in memory
fld f22, 0(x2) # load 0x0ed4bab09baca121 from memory into f22
li x3, 0x7001e9628039f477 # load x3 with value 0x7001e9628039f477
sd x3, 0(x2) # store 0x7001e9628039f477 in memory
fld f10, 0(x2) # load 0x7001e9628039f477 from memory into f10
fadd.d f5, f22, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x30, 0x6724728470d1a543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb43532989f01af48 # load x3 with value 0xb43532989f01af48
sd x3, 0(x2) # store 0xb43532989f01af48 in memory
fld f23, 0(x2) # load 0xb43532989f01af48 from memory into f23
li x3, 0x90b3b000689eda22 # load x3 with value 0x90b3b000689eda22
sd x3, 0(x2) # store 0x90b3b000689eda22 in memory
fld f3, 0(x2) # load 0x90b3b000689eda22 from memory into f3
fadd.d f30, f23, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x30, 0x2e3f7f3b02923e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a364ebf657a4224 # load x3 with value 0x5a364ebf657a4224
sd x3, 0(x2) # store 0x5a364ebf657a4224 in memory
fld f24, 0(x2) # load 0x5a364ebf657a4224 from memory into f24
li x3, 0xd1936dd5859dbccf # load x3 with value 0xd1936dd5859dbccf
sd x3, 0(x2) # store 0xd1936dd5859dbccf in memory
fld f1, 0(x2) # load 0xd1936dd5859dbccf from memory into f1
fadd.d f30, f24, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x15, 0xdf44430929ea7180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f85c8eb22ccbeb5 # load x3 with value 0x3f85c8eb22ccbeb5
sd x3, 0(x2) # store 0x3f85c8eb22ccbeb5 in memory
fld f25, 0(x2) # load 0x3f85c8eb22ccbeb5 from memory into f25
li x3, 0xf179431f65c42b3b # load x3 with value 0xf179431f65c42b3b
sd x3, 0(x2) # store 0xf179431f65c42b3b in memory
fld f12, 0(x2) # load 0xf179431f65c42b3b from memory into f12
fadd.d f15, f25, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x24, 0x22b5110fee140b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb63bc9181aa306da # load x3 with value 0xb63bc9181aa306da
sd x3, 0(x2) # store 0xb63bc9181aa306da in memory
fld f26, 0(x2) # load 0xb63bc9181aa306da from memory into f26
li x3, 0x6596e3788d970481 # load x3 with value 0x6596e3788d970481
sd x3, 0(x2) # store 0x6596e3788d970481 in memory
fld f9, 0(x2) # load 0x6596e3788d970481 from memory into f9
fadd.d f24, f26, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x23, 0xdf57907ad9ab3aea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x986228d85da232b7 # load x3 with value 0x986228d85da232b7
sd x3, 0(x2) # store 0x986228d85da232b7 in memory
fld f27, 0(x2) # load 0x986228d85da232b7 from memory into f27
li x3, 0xdf8fdffc1180d753 # load x3 with value 0xdf8fdffc1180d753
sd x3, 0(x2) # store 0xdf8fdffc1180d753 in memory
fld f15, 0(x2) # load 0xdf8fdffc1180d753 from memory into f15
fadd.d f23, f27, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x18, 0x578ef5bf956339a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x998513c1b5682e5d # load x3 with value 0x998513c1b5682e5d
sd x3, 0(x2) # store 0x998513c1b5682e5d in memory
fld f28, 0(x2) # load 0x998513c1b5682e5d from memory into f28
li x3, 0x3e591b9d87535c26 # load x3 with value 0x3e591b9d87535c26
sd x3, 0(x2) # store 0x3e591b9d87535c26 in memory
fld f1, 0(x2) # load 0x3e591b9d87535c26 from memory into f1
fadd.d f18, f28, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x31, 0x8af16022554af66a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x909fa16a0928c4a8 # load x3 with value 0x909fa16a0928c4a8
sd x3, 0(x2) # store 0x909fa16a0928c4a8 in memory
fld f29, 0(x2) # load 0x909fa16a0928c4a8 from memory into f29
li x3, 0x379fad5e91a7f2f6 # load x3 with value 0x379fad5e91a7f2f6
sd x3, 0(x2) # store 0x379fad5e91a7f2f6 in memory
fld f15, 0(x2) # load 0x379fad5e91a7f2f6 from memory into f15
fadd.d f31, f29, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x7, 0xf51ebba21587d006 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17dd06b600f8f638 # load x3 with value 0x17dd06b600f8f638
sd x3, 0(x2) # store 0x17dd06b600f8f638 in memory
fld f30, 0(x2) # load 0x17dd06b600f8f638 from memory into f30
li x3, 0xb3a242f455e08173 # load x3 with value 0xb3a242f455e08173
sd x3, 0(x2) # store 0xb3a242f455e08173 in memory
fld f12, 0(x2) # load 0xb3a242f455e08173 from memory into f12
fadd.d f7, f30, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x25, 0x44e232689e79209b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x995ddc7168e2b829 # load x3 with value 0x995ddc7168e2b829
sd x3, 0(x2) # store 0x995ddc7168e2b829 in memory
fld f31, 0(x2) # load 0x995ddc7168e2b829 from memory into f31
li x3, 0xd770dc13a8012bf1 # load x3 with value 0xd770dc13a8012bf1
sd x3, 0(x2) # store 0xd770dc13a8012bf1 in memory
fld f19, 0(x2) # load 0xd770dc13a8012bf1 from memory into f19
fadd.d f25, f31, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x7, 0x958955450dcf9a38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fac8377b407ff9a # load x3 with value 0x0fac8377b407ff9a
sd x3, 0(x2) # store 0x0fac8377b407ff9a in memory
fld f24, 0(x2) # load 0x0fac8377b407ff9a from memory into f24
li x3, 0x2e6c85ee7f37b518 # load x3 with value 0x2e6c85ee7f37b518
sd x3, 0(x2) # store 0x2e6c85ee7f37b518 in memory
fld f0, 0(x2) # load 0x2e6c85ee7f37b518 from memory into f0
fadd.d f7, f24, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x28, 0x90509866fa917282 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3840565d79a16b1d # load x3 with value 0x3840565d79a16b1d
sd x3, 0(x2) # store 0x3840565d79a16b1d in memory
fld f25, 0(x2) # load 0x3840565d79a16b1d from memory into f25
li x3, 0xa10807a7e8409dbb # load x3 with value 0xa10807a7e8409dbb
sd x3, 0(x2) # store 0xa10807a7e8409dbb in memory
fld f1, 0(x2) # load 0xa10807a7e8409dbb from memory into f1
fadd.d f28, f25, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x11, 0x7b743f79d6fd9601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacfb0e3fcfc4b7f7 # load x3 with value 0xacfb0e3fcfc4b7f7
sd x3, 0(x2) # store 0xacfb0e3fcfc4b7f7 in memory
fld f17, 0(x2) # load 0xacfb0e3fcfc4b7f7 from memory into f17
li x3, 0xa0c1e075d53d549f # load x3 with value 0xa0c1e075d53d549f
sd x3, 0(x2) # store 0xa0c1e075d53d549f in memory
fld f2, 0(x2) # load 0xa0c1e075d53d549f from memory into f2
fadd.d f11, f17, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x4, 0x8ef4f40e76a5d224 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc22ac96c9482f7dd # load x3 with value 0xc22ac96c9482f7dd
sd x3, 0(x2) # store 0xc22ac96c9482f7dd in memory
fld f7, 0(x2) # load 0xc22ac96c9482f7dd from memory into f7
li x3, 0xe4ff816042290d06 # load x3 with value 0xe4ff816042290d06
sd x3, 0(x2) # store 0xe4ff816042290d06 in memory
fld f3, 0(x2) # load 0xe4ff816042290d06 from memory into f3
fadd.d f4, f7, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x28, 0x4c06f3f8671e591c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65a425b3b638a67b # load x3 with value 0x65a425b3b638a67b
sd x3, 0(x2) # store 0x65a425b3b638a67b in memory
fld f23, 0(x2) # load 0x65a425b3b638a67b from memory into f23
li x3, 0xb655e1fa54bbec4a # load x3 with value 0xb655e1fa54bbec4a
sd x3, 0(x2) # store 0xb655e1fa54bbec4a in memory
fld f4, 0(x2) # load 0xb655e1fa54bbec4a from memory into f4
fadd.d f28, f23, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x6, 0x3c4158799108228a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e7a82b6b5e0d039 # load x3 with value 0x3e7a82b6b5e0d039
sd x3, 0(x2) # store 0x3e7a82b6b5e0d039 in memory
fld f1, 0(x2) # load 0x3e7a82b6b5e0d039 from memory into f1
li x3, 0xbf49ddee6fc862b9 # load x3 with value 0xbf49ddee6fc862b9
sd x3, 0(x2) # store 0xbf49ddee6fc862b9 in memory
fld f5, 0(x2) # load 0xbf49ddee6fc862b9 from memory into f5
fadd.d f6, f1, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x26, 0x858c064bc0e7aa5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2fcb716f65c0dcf6 # load x3 with value 0x2fcb716f65c0dcf6
sd x3, 0(x2) # store 0x2fcb716f65c0dcf6 in memory
fld f18, 0(x2) # load 0x2fcb716f65c0dcf6 from memory into f18
li x3, 0x41974c9d95457853 # load x3 with value 0x41974c9d95457853
sd x3, 0(x2) # store 0x41974c9d95457853 in memory
fld f6, 0(x2) # load 0x41974c9d95457853 from memory into f6
fadd.d f26, f18, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x19, 0xf2b5dc0f32906442 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0346992d739228e7 # load x3 with value 0x0346992d739228e7
sd x3, 0(x2) # store 0x0346992d739228e7 in memory
fld f1, 0(x2) # load 0x0346992d739228e7 from memory into f1
li x3, 0x89275229ecfb9740 # load x3 with value 0x89275229ecfb9740
sd x3, 0(x2) # store 0x89275229ecfb9740 in memory
fld f7, 0(x2) # load 0x89275229ecfb9740 from memory into f7
fadd.d f19, f1, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x30, 0x81acf33264f773e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73c31aa75d7093ff # load x3 with value 0x73c31aa75d7093ff
sd x3, 0(x2) # store 0x73c31aa75d7093ff in memory
fld f19, 0(x2) # load 0x73c31aa75d7093ff from memory into f19
li x3, 0x82eae5b492252a3b # load x3 with value 0x82eae5b492252a3b
sd x3, 0(x2) # store 0x82eae5b492252a3b in memory
fld f8, 0(x2) # load 0x82eae5b492252a3b from memory into f8
fadd.d f30, f19, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x26, 0xe18664c1c311f83a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5101ccf1722f8150 # load x3 with value 0x5101ccf1722f8150
sd x3, 0(x2) # store 0x5101ccf1722f8150 in memory
fld f10, 0(x2) # load 0x5101ccf1722f8150 from memory into f10
li x3, 0x1a9fe656e57e765d # load x3 with value 0x1a9fe656e57e765d
sd x3, 0(x2) # store 0x1a9fe656e57e765d in memory
fld f9, 0(x2) # load 0x1a9fe656e57e765d from memory into f9
fadd.d f26, f10, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x24, 0x8a744bb29e0ff575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6cd7d35f575a78d # load x3 with value 0xe6cd7d35f575a78d
sd x3, 0(x2) # store 0xe6cd7d35f575a78d in memory
fld f20, 0(x2) # load 0xe6cd7d35f575a78d from memory into f20
li x3, 0x4af6448a6f00fb97 # load x3 with value 0x4af6448a6f00fb97
sd x3, 0(x2) # store 0x4af6448a6f00fb97 in memory
fld f10, 0(x2) # load 0x4af6448a6f00fb97 from memory into f10
fadd.d f24, f20, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x27, 0xf2ac99c8b0125050 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32d4ba47790877a0 # load x3 with value 0x32d4ba47790877a0
sd x3, 0(x2) # store 0x32d4ba47790877a0 in memory
fld f3, 0(x2) # load 0x32d4ba47790877a0 from memory into f3
li x3, 0xfaf285b7093a35bd # load x3 with value 0xfaf285b7093a35bd
sd x3, 0(x2) # store 0xfaf285b7093a35bd in memory
fld f11, 0(x2) # load 0xfaf285b7093a35bd from memory into f11
fadd.d f27, f3, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x4, 0x546d84b9fc5fd754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65ac8d87cfbadf48 # load x3 with value 0x65ac8d87cfbadf48
sd x3, 0(x2) # store 0x65ac8d87cfbadf48 in memory
fld f5, 0(x2) # load 0x65ac8d87cfbadf48 from memory into f5
li x3, 0x7b1bbc69771f8353 # load x3 with value 0x7b1bbc69771f8353
sd x3, 0(x2) # store 0x7b1bbc69771f8353 in memory
fld f12, 0(x2) # load 0x7b1bbc69771f8353 from memory into f12
fadd.d f4, f5, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x18, 0xb321283ce0cb0147 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe70ad7e87cfedda4 # load x3 with value 0xe70ad7e87cfedda4
sd x3, 0(x2) # store 0xe70ad7e87cfedda4 in memory
fld f19, 0(x2) # load 0xe70ad7e87cfedda4 from memory into f19
li x3, 0x9a70350a5aa5869d # load x3 with value 0x9a70350a5aa5869d
sd x3, 0(x2) # store 0x9a70350a5aa5869d in memory
fld f13, 0(x2) # load 0x9a70350a5aa5869d from memory into f13
fadd.d f18, f19, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x19, 0xfcb8769f5e6d7911 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88fe62473e197f4b # load x3 with value 0x88fe62473e197f4b
sd x3, 0(x2) # store 0x88fe62473e197f4b in memory
fld f13, 0(x2) # load 0x88fe62473e197f4b from memory into f13
li x3, 0x473599af269bdee6 # load x3 with value 0x473599af269bdee6
sd x3, 0(x2) # store 0x473599af269bdee6 in memory
fld f14, 0(x2) # load 0x473599af269bdee6 from memory into f14
fadd.d f19, f13, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x5, 0x980bec8a52328ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1aabcb4c8815be8 # load x3 with value 0xe1aabcb4c8815be8
sd x3, 0(x2) # store 0xe1aabcb4c8815be8 in memory
fld f19, 0(x2) # load 0xe1aabcb4c8815be8 from memory into f19
li x3, 0x2a32853dd853ff5e # load x3 with value 0x2a32853dd853ff5e
sd x3, 0(x2) # store 0x2a32853dd853ff5e in memory
fld f15, 0(x2) # load 0x2a32853dd853ff5e from memory into f15
fadd.d f5, f19, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x8, 0xc2633276ffbd1449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a47f3662841e750 # load x3 with value 0x3a47f3662841e750
sd x3, 0(x2) # store 0x3a47f3662841e750 in memory
fld f5, 0(x2) # load 0x3a47f3662841e750 from memory into f5
li x3, 0x9378293005f4f4f1 # load x3 with value 0x9378293005f4f4f1
sd x3, 0(x2) # store 0x9378293005f4f4f1 in memory
fld f16, 0(x2) # load 0x9378293005f4f4f1 from memory into f16
fadd.d f8, f5, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x2, 0x1784aaccd450eab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48be6565119fdc78 # load x3 with value 0x48be6565119fdc78
sd x3, 0(x2) # store 0x48be6565119fdc78 in memory
fld f6, 0(x2) # load 0x48be6565119fdc78 from memory into f6
li x3, 0xf34103af8aa11b32 # load x3 with value 0xf34103af8aa11b32
sd x3, 0(x2) # store 0xf34103af8aa11b32 in memory
fld f17, 0(x2) # load 0xf34103af8aa11b32 from memory into f17
fadd.d f2, f6, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x9, 0xffffbd3f68ff4fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84a74bfff9efeb7a # load x3 with value 0x84a74bfff9efeb7a
sd x3, 0(x2) # store 0x84a74bfff9efeb7a in memory
fld f27, 0(x2) # load 0x84a74bfff9efeb7a from memory into f27
li x3, 0x175924237ff00faf # load x3 with value 0x175924237ff00faf
sd x3, 0(x2) # store 0x175924237ff00faf in memory
fld f18, 0(x2) # load 0x175924237ff00faf from memory into f18
fadd.d f9, f27, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x23, 0x0d5849e2bcfaf1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16d0a4682414fc8f # load x3 with value 0x16d0a4682414fc8f
sd x3, 0(x2) # store 0x16d0a4682414fc8f in memory
fld f8, 0(x2) # load 0x16d0a4682414fc8f from memory into f8
li x3, 0xd7468926325496d2 # load x3 with value 0xd7468926325496d2
sd x3, 0(x2) # store 0xd7468926325496d2 in memory
fld f19, 0(x2) # load 0xd7468926325496d2 from memory into f19
fadd.d f23, f8, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x23, 0x5bf0fafea68c3890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x267f761c4545cb12 # load x3 with value 0x267f761c4545cb12
sd x3, 0(x2) # store 0x267f761c4545cb12 in memory
fld f17, 0(x2) # load 0x267f761c4545cb12 from memory into f17
li x3, 0xc599ae9362c0aae6 # load x3 with value 0xc599ae9362c0aae6
sd x3, 0(x2) # store 0xc599ae9362c0aae6 in memory
fld f20, 0(x2) # load 0xc599ae9362c0aae6 from memory into f20
fadd.d f23, f17, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x28, 0x2282de440881bbe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3b5b95ef1b1eb43 # load x3 with value 0xc3b5b95ef1b1eb43
sd x3, 0(x2) # store 0xc3b5b95ef1b1eb43 in memory
fld f7, 0(x2) # load 0xc3b5b95ef1b1eb43 from memory into f7
li x3, 0x551d91977b9a2751 # load x3 with value 0x551d91977b9a2751
sd x3, 0(x2) # store 0x551d91977b9a2751 in memory
fld f21, 0(x2) # load 0x551d91977b9a2751 from memory into f21
fadd.d f28, f7, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x1, 0x1e9db76752d3676e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25fe244b60f7693c # load x3 with value 0x25fe244b60f7693c
sd x3, 0(x2) # store 0x25fe244b60f7693c in memory
fld f16, 0(x2) # load 0x25fe244b60f7693c from memory into f16
li x3, 0x098cd98b7f6e4ea5 # load x3 with value 0x098cd98b7f6e4ea5
sd x3, 0(x2) # store 0x098cd98b7f6e4ea5 in memory
fld f22, 0(x2) # load 0x098cd98b7f6e4ea5 from memory into f22
fadd.d f1, f16, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x20, 0xcce8b1a904e1ad6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x954fffff60791758 # load x3 with value 0x954fffff60791758
sd x3, 0(x2) # store 0x954fffff60791758 in memory
fld f25, 0(x2) # load 0x954fffff60791758 from memory into f25
li x3, 0x6d4e9337e4e24309 # load x3 with value 0x6d4e9337e4e24309
sd x3, 0(x2) # store 0x6d4e9337e4e24309 in memory
fld f23, 0(x2) # load 0x6d4e9337e4e24309 from memory into f23
fadd.d f20, f25, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x27, 0x6bef0ef4c533b7a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ab6339c5b9959f4 # load x3 with value 0x0ab6339c5b9959f4
sd x3, 0(x2) # store 0x0ab6339c5b9959f4 in memory
fld f21, 0(x2) # load 0x0ab6339c5b9959f4 from memory into f21
li x3, 0x6f81cc9a29fc1db7 # load x3 with value 0x6f81cc9a29fc1db7
sd x3, 0(x2) # store 0x6f81cc9a29fc1db7 in memory
fld f24, 0(x2) # load 0x6f81cc9a29fc1db7 from memory into f24
fadd.d f27, f21, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x29, 0x0fcd3e102df02c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3dcaeeb265a69476 # load x3 with value 0x3dcaeeb265a69476
sd x3, 0(x2) # store 0x3dcaeeb265a69476 in memory
fld f1, 0(x2) # load 0x3dcaeeb265a69476 from memory into f1
li x3, 0x9bb77cbae0a4c0a7 # load x3 with value 0x9bb77cbae0a4c0a7
sd x3, 0(x2) # store 0x9bb77cbae0a4c0a7 in memory
fld f25, 0(x2) # load 0x9bb77cbae0a4c0a7 from memory into f25
fadd.d f29, f1, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x26, 0x36acebfe16e9ad9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a468737521c3a15 # load x3 with value 0x4a468737521c3a15
sd x3, 0(x2) # store 0x4a468737521c3a15 in memory
fld f25, 0(x2) # load 0x4a468737521c3a15 from memory into f25
li x3, 0xe02ff86a2bbbfa1e # load x3 with value 0xe02ff86a2bbbfa1e
sd x3, 0(x2) # store 0xe02ff86a2bbbfa1e in memory
fld f26, 0(x2) # load 0xe02ff86a2bbbfa1e from memory into f26
fadd.d f26, f25, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x22, 0xd783bb87e7546ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a9da543c40a5972 # load x3 with value 0x5a9da543c40a5972
sd x3, 0(x2) # store 0x5a9da543c40a5972 in memory
fld f31, 0(x2) # load 0x5a9da543c40a5972 from memory into f31
li x3, 0x4688c87a5164d3a9 # load x3 with value 0x4688c87a5164d3a9
sd x3, 0(x2) # store 0x4688c87a5164d3a9 in memory
fld f27, 0(x2) # load 0x4688c87a5164d3a9 from memory into f27
fadd.d f22, f31, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x19, 0xb416f0d8e867bad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d504645af33d4d9 # load x3 with value 0x6d504645af33d4d9
sd x3, 0(x2) # store 0x6d504645af33d4d9 in memory
fld f23, 0(x2) # load 0x6d504645af33d4d9 from memory into f23
li x3, 0xb8afc5ecfcca7b7b # load x3 with value 0xb8afc5ecfcca7b7b
sd x3, 0(x2) # store 0xb8afc5ecfcca7b7b in memory
fld f28, 0(x2) # load 0xb8afc5ecfcca7b7b from memory into f28
fadd.d f19, f23, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x24, 0xdadadb73b9d4389c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4ba343bb4ec1d79 # load x3 with value 0xe4ba343bb4ec1d79
sd x3, 0(x2) # store 0xe4ba343bb4ec1d79 in memory
fld f17, 0(x2) # load 0xe4ba343bb4ec1d79 from memory into f17
li x3, 0x7876caa89deaf4d4 # load x3 with value 0x7876caa89deaf4d4
sd x3, 0(x2) # store 0x7876caa89deaf4d4 in memory
fld f29, 0(x2) # load 0x7876caa89deaf4d4 from memory into f29
fadd.d f24, f17, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x28, 0xf2a4e26e645016bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x148a874f79320e4e # load x3 with value 0x148a874f79320e4e
sd x3, 0(x2) # store 0x148a874f79320e4e in memory
fld f26, 0(x2) # load 0x148a874f79320e4e from memory into f26
li x3, 0x89fd72770b2dcfee # load x3 with value 0x89fd72770b2dcfee
sd x3, 0(x2) # store 0x89fd72770b2dcfee in memory
fld f30, 0(x2) # load 0x89fd72770b2dcfee from memory into f30
fadd.d f28, f26, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x7, 0x9b41bd9c90233378 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc904d4dc7a901b0f # load x3 with value 0xc904d4dc7a901b0f
sd x3, 0(x2) # store 0xc904d4dc7a901b0f in memory
fld f10, 0(x2) # load 0xc904d4dc7a901b0f from memory into f10
li x3, 0x1bfd38f077c9a31c # load x3 with value 0x1bfd38f077c9a31c
sd x3, 0(x2) # store 0x1bfd38f077c9a31c in memory
fld f31, 0(x2) # load 0x1bfd38f077c9a31c from memory into f31
fadd.d f7, f10, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
