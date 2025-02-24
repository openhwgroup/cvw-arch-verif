///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fsqrt.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.843679
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
fsqrt.s f8, f14 # perform first operation
fsqrt.s f18, f8 # perform second operation

# Testcase cmp_gpr_hazard raw test
fsqrt.s f28, f15 # perform first operation
fsqrt.s f15, f1 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.s f22, f28 # perform first operation
fsqrt.s f22, f4 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.s f10, f7 # perform first operation
fsqrt.s f10, f19 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.s f29, f25 # perform first operation
fsqrt.s f25, f16 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.s f22, f27 # perform first operation
fsqrt.s f28, f2 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xbf83794a8dc11245 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3dfa01d1c34b529c # load x3 with value 0x3dfa01d1c34b529c
sw x3, 0(x2) # store 0x3dfa01d1c34b529c in memory
flw f0, 0(x2) # load 0x3dfa01d1c34b529c from memory into f0
fsqrt.s f0, f0 # perform operation
fsqrt.s f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x913ca7467167ba3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e9f216077b39f2c # load x3 with value 0x7e9f216077b39f2c
sw x3, 0(x2) # store 0x7e9f216077b39f2c in memory
flw f1, 0(x2) # load 0x7e9f216077b39f2c from memory into f1
fsqrt.s f1, f1 # perform operation
fsqrt.s f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xe97eeac8aeb01558 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d00b92885e49e7c # load x3 with value 0x2d00b92885e49e7c
sw x3, 0(x2) # store 0x2d00b92885e49e7c in memory
flw f2, 0(x2) # load 0x2d00b92885e49e7c from memory into f2
fsqrt.s f2, f2 # perform operation
fsqrt.s f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xccda55a1889a317e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x985f7cd084cbcc36 # load x3 with value 0x985f7cd084cbcc36
sw x3, 0(x2) # store 0x985f7cd084cbcc36 in memory
flw f3, 0(x2) # load 0x985f7cd084cbcc36 from memory into f3
fsqrt.s f3, f3 # perform operation
fsqrt.s f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x44c0d767b6335be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c871d0283432994 # load x3 with value 0x8c871d0283432994
sw x3, 0(x2) # store 0x8c871d0283432994 in memory
flw f4, 0(x2) # load 0x8c871d0283432994 from memory into f4
fsqrt.s f4, f4 # perform operation
fsqrt.s f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xbff5fc44411122d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f7151c075359138 # load x3 with value 0x4f7151c075359138
sw x3, 0(x2) # store 0x4f7151c075359138 in memory
flw f5, 0(x2) # load 0x4f7151c075359138 from memory into f5
fsqrt.s f5, f5 # perform operation
fsqrt.s f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xdc80093857997c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27966dbfc08d3151 # load x3 with value 0x27966dbfc08d3151
sw x3, 0(x2) # store 0x27966dbfc08d3151 in memory
flw f6, 0(x2) # load 0x27966dbfc08d3151 from memory into f6
fsqrt.s f6, f6 # perform operation
fsqrt.s f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x36ceb498cb33813d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1746178070f41d2d # load x3 with value 0x1746178070f41d2d
sw x3, 0(x2) # store 0x1746178070f41d2d in memory
flw f7, 0(x2) # load 0x1746178070f41d2d from memory into f7
fsqrt.s f7, f7 # perform operation
fsqrt.s f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x865e90460ba6ff01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36a73c7cf6702caf # load x3 with value 0x36a73c7cf6702caf
sw x3, 0(x2) # store 0x36a73c7cf6702caf in memory
flw f8, 0(x2) # load 0x36a73c7cf6702caf from memory into f8
fsqrt.s f8, f8 # perform operation
fsqrt.s f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x4db3b025318b8e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fa47d5ad9b7ae3a # load x3 with value 0x7fa47d5ad9b7ae3a
sw x3, 0(x2) # store 0x7fa47d5ad9b7ae3a in memory
flw f9, 0(x2) # load 0x7fa47d5ad9b7ae3a from memory into f9
fsqrt.s f9, f9 # perform operation
fsqrt.s f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x63eb171924b5d503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90f6e9f6a1452aa0 # load x3 with value 0x90f6e9f6a1452aa0
sw x3, 0(x2) # store 0x90f6e9f6a1452aa0 in memory
flw f10, 0(x2) # load 0x90f6e9f6a1452aa0 from memory into f10
fsqrt.s f10, f10 # perform operation
fsqrt.s f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x91ef12f8f6cb9915 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d9fc7bda76f7254 # load x3 with value 0x9d9fc7bda76f7254
sw x3, 0(x2) # store 0x9d9fc7bda76f7254 in memory
flw f11, 0(x2) # load 0x9d9fc7bda76f7254 from memory into f11
fsqrt.s f11, f11 # perform operation
fsqrt.s f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xda2cc237c1c199f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59dc0a357dc2e622 # load x3 with value 0x59dc0a357dc2e622
sw x3, 0(x2) # store 0x59dc0a357dc2e622 in memory
flw f12, 0(x2) # load 0x59dc0a357dc2e622 from memory into f12
fsqrt.s f12, f12 # perform operation
fsqrt.s f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x2f5be4fb0d577930 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbacf28cd92c9462 # load x3 with value 0xdbacf28cd92c9462
sw x3, 0(x2) # store 0xdbacf28cd92c9462 in memory
flw f13, 0(x2) # load 0xdbacf28cd92c9462 from memory into f13
fsqrt.s f13, f13 # perform operation
fsqrt.s f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xb6f257fa2dd72536 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1378572e96ec24ba # load x3 with value 0x1378572e96ec24ba
sw x3, 0(x2) # store 0x1378572e96ec24ba in memory
flw f14, 0(x2) # load 0x1378572e96ec24ba from memory into f14
fsqrt.s f14, f14 # perform operation
fsqrt.s f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x0755661ddf0f694c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb472f9af5137d561 # load x3 with value 0xb472f9af5137d561
sw x3, 0(x2) # store 0xb472f9af5137d561 in memory
flw f15, 0(x2) # load 0xb472f9af5137d561 from memory into f15
fsqrt.s f15, f15 # perform operation
fsqrt.s f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xa7d308458c6c9895 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4e74be4d907b033 # load x3 with value 0xa4e74be4d907b033
sw x3, 0(x2) # store 0xa4e74be4d907b033 in memory
flw f16, 0(x2) # load 0xa4e74be4d907b033 from memory into f16
fsqrt.s f16, f16 # perform operation
fsqrt.s f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x1034d25f7197f8f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3e067ff1ff32085 # load x3 with value 0xe3e067ff1ff32085
sw x3, 0(x2) # store 0xe3e067ff1ff32085 in memory
flw f17, 0(x2) # load 0xe3e067ff1ff32085 from memory into f17
fsqrt.s f17, f17 # perform operation
fsqrt.s f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x6a8b12357b475d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c0d169807f7e0aa # load x3 with value 0x5c0d169807f7e0aa
sw x3, 0(x2) # store 0x5c0d169807f7e0aa in memory
flw f18, 0(x2) # load 0x5c0d169807f7e0aa from memory into f18
fsqrt.s f18, f18 # perform operation
fsqrt.s f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x96b6da56d421cd22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fdfc930f0d9f30d # load x3 with value 0x8fdfc930f0d9f30d
sw x3, 0(x2) # store 0x8fdfc930f0d9f30d in memory
flw f19, 0(x2) # load 0x8fdfc930f0d9f30d from memory into f19
fsqrt.s f19, f19 # perform operation
fsqrt.s f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xbba86c4bfd670e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd60a5528faf9d77b # load x3 with value 0xd60a5528faf9d77b
sw x3, 0(x2) # store 0xd60a5528faf9d77b in memory
flw f20, 0(x2) # load 0xd60a5528faf9d77b from memory into f20
fsqrt.s f20, f20 # perform operation
fsqrt.s f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x8ecddf7168bb11ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99f3a9d10f06c7b4 # load x3 with value 0x99f3a9d10f06c7b4
sw x3, 0(x2) # store 0x99f3a9d10f06c7b4 in memory
flw f21, 0(x2) # load 0x99f3a9d10f06c7b4 from memory into f21
fsqrt.s f21, f21 # perform operation
fsqrt.s f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x3b28c87bdd4022f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84553cf0d152529 # load x3 with value 0x84553cf0d152529
sw x3, 0(x2) # store 0x84553cf0d152529 in memory
flw f22, 0(x2) # load 0x84553cf0d152529 from memory into f22
fsqrt.s f22, f22 # perform operation
fsqrt.s f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xcae9968443110f9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69e275d65ba1fd9e # load x3 with value 0x69e275d65ba1fd9e
sw x3, 0(x2) # store 0x69e275d65ba1fd9e in memory
flw f23, 0(x2) # load 0x69e275d65ba1fd9e from memory into f23
fsqrt.s f23, f23 # perform operation
fsqrt.s f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x8a8e2fa6ae861a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d8b73e1f9776898 # load x3 with value 0x1d8b73e1f9776898
sw x3, 0(x2) # store 0x1d8b73e1f9776898 in memory
flw f24, 0(x2) # load 0x1d8b73e1f9776898 from memory into f24
fsqrt.s f24, f24 # perform operation
fsqrt.s f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xd17d972fa038e95b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4a5a20dd1e890bf # load x3 with value 0xc4a5a20dd1e890bf
sw x3, 0(x2) # store 0xc4a5a20dd1e890bf in memory
flw f25, 0(x2) # load 0xc4a5a20dd1e890bf from memory into f25
fsqrt.s f25, f25 # perform operation
fsqrt.s f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xe279cc9dde5259ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf160660b915f62ed # load x3 with value 0xf160660b915f62ed
sw x3, 0(x2) # store 0xf160660b915f62ed in memory
flw f26, 0(x2) # load 0xf160660b915f62ed from memory into f26
fsqrt.s f26, f26 # perform operation
fsqrt.s f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x371008f335063bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84dcc57beda238de # load x3 with value 0x84dcc57beda238de
sw x3, 0(x2) # store 0x84dcc57beda238de in memory
flw f27, 0(x2) # load 0x84dcc57beda238de from memory into f27
fsqrt.s f27, f27 # perform operation
fsqrt.s f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x17bd397824a63506 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x527aa2592201135b # load x3 with value 0x527aa2592201135b
sw x3, 0(x2) # store 0x527aa2592201135b in memory
flw f28, 0(x2) # load 0x527aa2592201135b from memory into f28
fsqrt.s f28, f28 # perform operation
fsqrt.s f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x65d6c7b74b977a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe07b82854eafe83b # load x3 with value 0xe07b82854eafe83b
sw x3, 0(x2) # store 0xe07b82854eafe83b in memory
flw f29, 0(x2) # load 0xe07b82854eafe83b from memory into f29
fsqrt.s f29, f29 # perform operation
fsqrt.s f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xa17088eda02453dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89ee9f7ffd1c4e3b # load x3 with value 0x89ee9f7ffd1c4e3b
sw x3, 0(x2) # store 0x89ee9f7ffd1c4e3b in memory
flw f30, 0(x2) # load 0x89ee9f7ffd1c4e3b from memory into f30
fsqrt.s f30, f30 # perform operation
fsqrt.s f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xf0b13df601f59e05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0afa46ea5f5e526 # load x3 with value 0xb0afa46ea5f5e526
sw x3, 0(x2) # store 0xb0afa46ea5f5e526 in memory
flw f31, 0(x2) # load 0xb0afa46ea5f5e526 from memory into f31
fsqrt.s f31, f31 # perform operation
fsqrt.s f31, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x16, 0xeb4415cfaa222ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fsqrt.s f16, f11 # perform operation
fsqrt.s f16, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x3, 0xcd252627e81f0ad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fsqrt.s f3, f13 # perform operation
fsqrt.s f3, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x30, 0x98edecaf4e98a233 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fsqrt.s f30, f21 # perform operation
fsqrt.s f30, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x2, 0xb15c95928badbc3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fsqrt.s f2, f22 # perform operation
fsqrt.s f2, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x22, 0xf9749cbe2059fbd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fsqrt.s f22, f21 # perform operation
fsqrt.s f22, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x27, 0xddabcc6bc397d67b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fsqrt.s f27, f11 # perform operation
fsqrt.s f27, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x11, 0x9c3994c3b6cd515e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fsqrt.s f11, f9 # perform operation
fsqrt.s f11, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x8, 0xeee2c3b976b38e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fsqrt.s f8, f23 # perform operation
fsqrt.s f8, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x1, 0xd6191a4822b6337e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fsqrt.s f1, f28 # perform operation
fsqrt.s f1, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x22, 0xac6e9ab8133f90b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fsqrt.s f22, f5 # perform operation
fsqrt.s f22, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x17, 0xf4b3a9fedb8c3b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fsqrt.s f17, f26 # perform operation
fsqrt.s f17, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x22, 0x8f23b5318fc4034b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fsqrt.s f22, f31 # perform operation
fsqrt.s f22, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x31, 0xe1c0df974d7fa3e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fsqrt.s f31, f22 # perform operation
fsqrt.s f31, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x2, 0x62dd354141b70f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fsqrt.s f2, f20 # perform operation
fsqrt.s f2, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x27, 0x6e52b6d356ae2128 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
fsqrt.s f27, f10 # perform operation
fsqrt.s f27, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x14, 0xffbe57afd5a6c5d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fsqrt.s f14, f30 # perform operation
fsqrt.s f14, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x1, 0xee9d54b2c1a91929 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fsqrt.s f1, f3 # perform operation
fsqrt.s f1, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x14, 0x8befb79b4ace0009 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
fsqrt.s f14, f4 # perform operation
fsqrt.s f14, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x18, 0x45fc4c461fbc550f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fsqrt.s f18, f7 # perform operation
fsqrt.s f18, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x30, 0x40bc765695375c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fsqrt.s f30, f27 # perform operation
fsqrt.s f30, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x1, 0x1053d7fa2740e746 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fsqrt.s f1, f15 # perform operation
fsqrt.s f1, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x12, 0x72367833523e3cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fsqrt.s f12, f17 # perform operation
fsqrt.s f12, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x23, 0x9e0f62d636ff4d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fsqrt.s f23, f20 # perform operation
fsqrt.s f23, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x7, 0xd022dfcf5e227425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fsqrt.s f7, f26 # perform operation
fsqrt.s f7, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x29, 0xb45e56f8748d929b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fsqrt.s f29, f7 # perform operation
fsqrt.s f29, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x15, 0xfd7f456b2dcdaaa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fsqrt.s f15, f11 # perform operation
fsqrt.s f15, f11 # perform operation

# Testcase cp_frm
li x17, 0x77dc46b8ecd94c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa106e1e01f31ef3 # load x3 with value 0xfa106e1e01f31ef3
sw x3, 0(x2) # store 0xfa106e1e01f31ef3 in memory
flw f26, 0(x2) # load 0xfa106e1e01f31ef3 from memory into f26
fsqrt.s f17, f26 # perform operation
fsqrt.s f17, f26, dyn # perform operation
fsqrt.s f17, f26, rdn # perform operation
fsqrt.s f17, f26, rmm # perform operation
fsqrt.s f17, f26, rne # perform operation
fsqrt.s f17, f26, rtz # perform operation
fsqrt.s f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsqrt.s f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsqrt.s f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsqrt.s f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsqrt.s f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsqrt.s f17, f26 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x54c601b179e170e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba27da986dffb345 # load x3 with value 0xba27da986dffb345
sw x3, 0(x2) # store 0xba27da986dffb345 in memory
flw f23, 0(x2) # load 0xba27da986dffb345 from memory into f23
fsqrt.s f0, f23 # perform operation
fsqrt.s f0, f23 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xdd998a4de1c62921 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fdebbd5931d8e6a # load x3 with value 0x7fdebbd5931d8e6a
sw x3, 0(x2) # store 0x7fdebbd5931d8e6a in memory
flw f26, 0(x2) # load 0x7fdebbd5931d8e6a from memory into f26
fsqrt.s f1, f26 # perform operation
fsqrt.s f1, f26 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xd5e16f3310319744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14cc4764eb68e24c # load x3 with value 0x14cc4764eb68e24c
sw x3, 0(x2) # store 0x14cc4764eb68e24c in memory
flw f19, 0(x2) # load 0x14cc4764eb68e24c from memory into f19
fsqrt.s f2, f19 # perform operation
fsqrt.s f2, f19 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xd2a6b8b4a373e2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72c64ffbdcbaaf5a # load x3 with value 0x72c64ffbdcbaaf5a
sw x3, 0(x2) # store 0x72c64ffbdcbaaf5a in memory
flw f18, 0(x2) # load 0x72c64ffbdcbaaf5a from memory into f18
fsqrt.s f3, f18 # perform operation
fsqrt.s f3, f18 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x8cb1bff9b21ac8ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbcef2668a5e931b # load x3 with value 0xfbcef2668a5e931b
sw x3, 0(x2) # store 0xfbcef2668a5e931b in memory
flw f29, 0(x2) # load 0xfbcef2668a5e931b from memory into f29
fsqrt.s f4, f29 # perform operation
fsqrt.s f4, f29 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x9abf6913a812a81a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5a91493580a0a28 # load x3 with value 0xd5a91493580a0a28
sw x3, 0(x2) # store 0xd5a91493580a0a28 in memory
flw f7, 0(x2) # load 0xd5a91493580a0a28 from memory into f7
fsqrt.s f5, f7 # perform operation
fsqrt.s f5, f7 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xfb0c7ee1104d06ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65173fc5c3c70ad9 # load x3 with value 0x65173fc5c3c70ad9
sw x3, 0(x2) # store 0x65173fc5c3c70ad9 in memory
flw f22, 0(x2) # load 0x65173fc5c3c70ad9 from memory into f22
fsqrt.s f6, f22 # perform operation
fsqrt.s f6, f22 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x791ba635d229810b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35803bcb420e1e48 # load x3 with value 0x35803bcb420e1e48
sw x3, 0(x2) # store 0x35803bcb420e1e48 in memory
flw f1, 0(x2) # load 0x35803bcb420e1e48 from memory into f1
fsqrt.s f7, f1 # perform operation
fsqrt.s f7, f1 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x7bf99c39f6a480f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1ad5eedf1ae023c # load x3 with value 0xd1ad5eedf1ae023c
sw x3, 0(x2) # store 0xd1ad5eedf1ae023c in memory
flw f25, 0(x2) # load 0xd1ad5eedf1ae023c from memory into f25
fsqrt.s f8, f25 # perform operation
fsqrt.s f8, f25 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x751af882f07f0c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x566e50d250fea974 # load x3 with value 0x566e50d250fea974
sw x3, 0(x2) # store 0x566e50d250fea974 in memory
flw f25, 0(x2) # load 0x566e50d250fea974 from memory into f25
fsqrt.s f9, f25 # perform operation
fsqrt.s f9, f25 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x589fffd0f786aec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x872cdc8fe2a67f86 # load x3 with value 0x872cdc8fe2a67f86
sw x3, 0(x2) # store 0x872cdc8fe2a67f86 in memory
flw f9, 0(x2) # load 0x872cdc8fe2a67f86 from memory into f9
fsqrt.s f10, f9 # perform operation
fsqrt.s f10, f9 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x530a78fbeae1beb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6436938ee7f47e73 # load x3 with value 0x6436938ee7f47e73
sw x3, 0(x2) # store 0x6436938ee7f47e73 in memory
flw f24, 0(x2) # load 0x6436938ee7f47e73 from memory into f24
fsqrt.s f11, f24 # perform operation
fsqrt.s f11, f24 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xc1a772baccf8a864 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8927a16497492a42 # load x3 with value 0x8927a16497492a42
sw x3, 0(x2) # store 0x8927a16497492a42 in memory
flw f16, 0(x2) # load 0x8927a16497492a42 from memory into f16
fsqrt.s f12, f16 # perform operation
fsqrt.s f12, f16 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x1aa7aa008cb85fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x881c59cc7f5806f9 # load x3 with value 0x881c59cc7f5806f9
sw x3, 0(x2) # store 0x881c59cc7f5806f9 in memory
flw f13, 0(x2) # load 0x881c59cc7f5806f9 from memory into f13
fsqrt.s f13, f13 # perform operation
fsqrt.s f13, f13 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x274ca88562279f31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5ff6dcd3cae0c83 # load x3 with value 0xd5ff6dcd3cae0c83
sw x3, 0(x2) # store 0xd5ff6dcd3cae0c83 in memory
flw f22, 0(x2) # load 0xd5ff6dcd3cae0c83 from memory into f22
fsqrt.s f14, f22 # perform operation
fsqrt.s f14, f22 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x2f23f1a9bff4bbe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a1ed5b20f8234dd # load x3 with value 0x5a1ed5b20f8234dd
sw x3, 0(x2) # store 0x5a1ed5b20f8234dd in memory
flw f8, 0(x2) # load 0x5a1ed5b20f8234dd from memory into f8
fsqrt.s f15, f8 # perform operation
fsqrt.s f15, f8 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x5ccb1ab26757be6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f6b68d5084ef03d # load x3 with value 0x4f6b68d5084ef03d
sw x3, 0(x2) # store 0x4f6b68d5084ef03d in memory
flw f15, 0(x2) # load 0x4f6b68d5084ef03d from memory into f15
fsqrt.s f16, f15 # perform operation
fsqrt.s f16, f15 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x8c45e634ad0aefed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ba527264ba1241d # load x3 with value 0x4ba527264ba1241d
sw x3, 0(x2) # store 0x4ba527264ba1241d in memory
flw f12, 0(x2) # load 0x4ba527264ba1241d from memory into f12
fsqrt.s f17, f12 # perform operation
fsqrt.s f17, f12 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xae4f86aef603c08e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x146c15ba9a4ab54b # load x3 with value 0x146c15ba9a4ab54b
sw x3, 0(x2) # store 0x146c15ba9a4ab54b in memory
flw f30, 0(x2) # load 0x146c15ba9a4ab54b from memory into f30
fsqrt.s f18, f30 # perform operation
fsqrt.s f18, f30 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x3d0ba63875c7470f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51c5da35920e2fdb # load x3 with value 0x51c5da35920e2fdb
sw x3, 0(x2) # store 0x51c5da35920e2fdb in memory
flw f31, 0(x2) # load 0x51c5da35920e2fdb from memory into f31
fsqrt.s f19, f31 # perform operation
fsqrt.s f19, f31 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xebb013d2f6f65fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x823b37bd71a827ca # load x3 with value 0x823b37bd71a827ca
sw x3, 0(x2) # store 0x823b37bd71a827ca in memory
flw f27, 0(x2) # load 0x823b37bd71a827ca from memory into f27
fsqrt.s f20, f27 # perform operation
fsqrt.s f20, f27 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x6c827837e7d3f098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaae250eed04dc28b # load x3 with value 0xaae250eed04dc28b
sw x3, 0(x2) # store 0xaae250eed04dc28b in memory
flw f25, 0(x2) # load 0xaae250eed04dc28b from memory into f25
fsqrt.s f21, f25 # perform operation
fsqrt.s f21, f25 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xdfc4715b80e29617 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42e0618866d9580e # load x3 with value 0x42e0618866d9580e
sw x3, 0(x2) # store 0x42e0618866d9580e in memory
flw f14, 0(x2) # load 0x42e0618866d9580e from memory into f14
fsqrt.s f22, f14 # perform operation
fsqrt.s f22, f14 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xc699d9b328b6f229 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2dc5cabb0309c686 # load x3 with value 0x2dc5cabb0309c686
sw x3, 0(x2) # store 0x2dc5cabb0309c686 in memory
flw f3, 0(x2) # load 0x2dc5cabb0309c686 from memory into f3
fsqrt.s f23, f3 # perform operation
fsqrt.s f23, f3 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xe84ec285cbe50eda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e625f51423c92c2 # load x3 with value 0x1e625f51423c92c2
sw x3, 0(x2) # store 0x1e625f51423c92c2 in memory
flw f8, 0(x2) # load 0x1e625f51423c92c2 from memory into f8
fsqrt.s f24, f8 # perform operation
fsqrt.s f24, f8 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x1c4d0a0ae3885984 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c5a0fe26c2f2ecc # load x3 with value 0x6c5a0fe26c2f2ecc
sw x3, 0(x2) # store 0x6c5a0fe26c2f2ecc in memory
flw f19, 0(x2) # load 0x6c5a0fe26c2f2ecc from memory into f19
fsqrt.s f25, f19 # perform operation
fsqrt.s f25, f19 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xc24758fef826c318 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1cb3f8b30305a5e # load x3 with value 0xe1cb3f8b30305a5e
sw x3, 0(x2) # store 0xe1cb3f8b30305a5e in memory
flw f27, 0(x2) # load 0xe1cb3f8b30305a5e from memory into f27
fsqrt.s f26, f27 # perform operation
fsqrt.s f26, f27 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x6b3a00d2d9459622 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e5a5d7dc0fbe5d # load x3 with value 0x8e5a5d7dc0fbe5d
sw x3, 0(x2) # store 0x8e5a5d7dc0fbe5d in memory
flw f25, 0(x2) # load 0x8e5a5d7dc0fbe5d from memory into f25
fsqrt.s f27, f25 # perform operation
fsqrt.s f27, f25 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xc9ddeddf6184003f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17e7a87c1402f97 # load x3 with value 0x17e7a87c1402f97
sw x3, 0(x2) # store 0x17e7a87c1402f97 in memory
flw f30, 0(x2) # load 0x17e7a87c1402f97 from memory into f30
fsqrt.s f28, f30 # perform operation
fsqrt.s f28, f30 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x98820925cbe1c677 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc45cb17a356da25c # load x3 with value 0xc45cb17a356da25c
sw x3, 0(x2) # store 0xc45cb17a356da25c in memory
flw f3, 0(x2) # load 0xc45cb17a356da25c from memory into f3
fsqrt.s f29, f3 # perform operation
fsqrt.s f29, f3 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xc8c48ee5e7b45dcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc25f7a4bdc30c1c7 # load x3 with value 0xc25f7a4bdc30c1c7
sw x3, 0(x2) # store 0xc25f7a4bdc30c1c7 in memory
flw f31, 0(x2) # load 0xc25f7a4bdc30c1c7 from memory into f31
fsqrt.s f30, f31 # perform operation
fsqrt.s f30, f31 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xe7c4f414c060a73a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca6a40a9bb93fcc # load x3 with value 0xca6a40a9bb93fcc
sw x3, 0(x2) # store 0xca6a40a9bb93fcc in memory
flw f1, 0(x2) # load 0xca6a40a9bb93fcc from memory into f1
fsqrt.s f31, f1 # perform operation
fsqrt.s f31, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x25, 0xb130dd6e53bb1ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x190857633847d46c # load x3 with value 0x190857633847d46c
sw x3, 0(x2) # store 0x190857633847d46c in memory
flw f0, 0(x2) # load 0x190857633847d46c from memory into f0
fsqrt.s f25, f0 # perform operation
fsqrt.s f25, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x15, 0x26bafa7194caaac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x243a6b9cc425d374 # load x3 with value 0x243a6b9cc425d374
sw x3, 0(x2) # store 0x243a6b9cc425d374 in memory
flw f1, 0(x2) # load 0x243a6b9cc425d374 from memory into f1
fsqrt.s f15, f1 # perform operation
fsqrt.s f15, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x7, 0x080d700245712854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa154fa59bd335a15 # load x3 with value 0xa154fa59bd335a15
sw x3, 0(x2) # store 0xa154fa59bd335a15 in memory
flw f2, 0(x2) # load 0xa154fa59bd335a15 from memory into f2
fsqrt.s f7, f2 # perform operation
fsqrt.s f7, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x4, 0xda4dbb25fb5ef0be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7af0b30092774e1 # load x3 with value 0xf7af0b30092774e1
sw x3, 0(x2) # store 0xf7af0b30092774e1 in memory
flw f3, 0(x2) # load 0xf7af0b30092774e1 from memory into f3
fsqrt.s f4, f3 # perform operation
fsqrt.s f4, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x30, 0x4880665c54bbe8e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda79440c3b1deff9 # load x3 with value 0xda79440c3b1deff9
sw x3, 0(x2) # store 0xda79440c3b1deff9 in memory
flw f4, 0(x2) # load 0xda79440c3b1deff9 from memory into f4
fsqrt.s f30, f4 # perform operation
fsqrt.s f30, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x8, 0xd0a88631a8aec4bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa54f555f55704882 # load x3 with value 0xa54f555f55704882
sw x3, 0(x2) # store 0xa54f555f55704882 in memory
flw f5, 0(x2) # load 0xa54f555f55704882 from memory into f5
fsqrt.s f8, f5 # perform operation
fsqrt.s f8, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x24, 0x4f82cc6e834802f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a0b8383e415c5bb # load x3 with value 0x3a0b8383e415c5bb
sw x3, 0(x2) # store 0x3a0b8383e415c5bb in memory
flw f6, 0(x2) # load 0x3a0b8383e415c5bb from memory into f6
fsqrt.s f24, f6 # perform operation
fsqrt.s f24, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x27, 0x203ab83616507fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x849c6eceae30b8a0 # load x3 with value 0x849c6eceae30b8a0
sw x3, 0(x2) # store 0x849c6eceae30b8a0 in memory
flw f7, 0(x2) # load 0x849c6eceae30b8a0 from memory into f7
fsqrt.s f27, f7 # perform operation
fsqrt.s f27, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x3, 0xb9f2942538df87c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc70a8bdf00f52dfc # load x3 with value 0xc70a8bdf00f52dfc
sw x3, 0(x2) # store 0xc70a8bdf00f52dfc in memory
flw f8, 0(x2) # load 0xc70a8bdf00f52dfc from memory into f8
fsqrt.s f3, f8 # perform operation
fsqrt.s f3, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x8, 0x382e235c735c3b3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73477ac14d6f9bf7 # load x3 with value 0x73477ac14d6f9bf7
sw x3, 0(x2) # store 0x73477ac14d6f9bf7 in memory
flw f9, 0(x2) # load 0x73477ac14d6f9bf7 from memory into f9
fsqrt.s f8, f9 # perform operation
fsqrt.s f8, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x7, 0x531692e5d192ec6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b21ac64011553e8 # load x3 with value 0x5b21ac64011553e8
sw x3, 0(x2) # store 0x5b21ac64011553e8 in memory
flw f10, 0(x2) # load 0x5b21ac64011553e8 from memory into f10
fsqrt.s f7, f10 # perform operation
fsqrt.s f7, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x27, 0xfcb357b41f0ea282 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47edde8e47f6d307 # load x3 with value 0x47edde8e47f6d307
sw x3, 0(x2) # store 0x47edde8e47f6d307 in memory
flw f11, 0(x2) # load 0x47edde8e47f6d307 from memory into f11
fsqrt.s f27, f11 # perform operation
fsqrt.s f27, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x25, 0xc53e5b34374e76e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9031aa455ec2609 # load x3 with value 0xb9031aa455ec2609
sw x3, 0(x2) # store 0xb9031aa455ec2609 in memory
flw f12, 0(x2) # load 0xb9031aa455ec2609 from memory into f12
fsqrt.s f25, f12 # perform operation
fsqrt.s f25, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x20, 0xca472748429ed51b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf84d31e755d0f9de # load x3 with value 0xf84d31e755d0f9de
sw x3, 0(x2) # store 0xf84d31e755d0f9de in memory
flw f13, 0(x2) # load 0xf84d31e755d0f9de from memory into f13
fsqrt.s f20, f13 # perform operation
fsqrt.s f20, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x28, 0x5a60b5fd3b37ddc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b912ff1646a1ba7 # load x3 with value 0x1b912ff1646a1ba7
sw x3, 0(x2) # store 0x1b912ff1646a1ba7 in memory
flw f14, 0(x2) # load 0x1b912ff1646a1ba7 from memory into f14
fsqrt.s f28, f14 # perform operation
fsqrt.s f28, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x2, 0xbcb1955687559621 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x810b1de1d9860ea9 # load x3 with value 0x810b1de1d9860ea9
sw x3, 0(x2) # store 0x810b1de1d9860ea9 in memory
flw f15, 0(x2) # load 0x810b1de1d9860ea9 from memory into f15
fsqrt.s f2, f15 # perform operation
fsqrt.s f2, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x31, 0x5411c87cde073a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0be2c9a812a37a1 # load x3 with value 0xf0be2c9a812a37a1
sw x3, 0(x2) # store 0xf0be2c9a812a37a1 in memory
flw f16, 0(x2) # load 0xf0be2c9a812a37a1 from memory into f16
fsqrt.s f31, f16 # perform operation
fsqrt.s f31, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x6, 0x33051d37e498341d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde12c302f93d49ff # load x3 with value 0xde12c302f93d49ff
sw x3, 0(x2) # store 0xde12c302f93d49ff in memory
flw f17, 0(x2) # load 0xde12c302f93d49ff from memory into f17
fsqrt.s f6, f17 # perform operation
fsqrt.s f6, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x28, 0x4b87c9f2824f5b1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4846d9f798522e7b # load x3 with value 0x4846d9f798522e7b
sw x3, 0(x2) # store 0x4846d9f798522e7b in memory
flw f18, 0(x2) # load 0x4846d9f798522e7b from memory into f18
fsqrt.s f28, f18 # perform operation
fsqrt.s f28, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x19, 0x7d7db3d7bc899b91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd94f8bd3dbd742fd # load x3 with value 0xd94f8bd3dbd742fd
sw x3, 0(x2) # store 0xd94f8bd3dbd742fd in memory
flw f19, 0(x2) # load 0xd94f8bd3dbd742fd from memory into f19
fsqrt.s f19, f19 # perform operation
fsqrt.s f19, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x1, 0x06d67362a3401739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb5e6f0e435cff # load x3 with value 0xcb5e6f0e435cff
sw x3, 0(x2) # store 0xcb5e6f0e435cff in memory
flw f20, 0(x2) # load 0xcb5e6f0e435cff from memory into f20
fsqrt.s f1, f20 # perform operation
fsqrt.s f1, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x18, 0x238825076e5a6ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50cb383889533b77 # load x3 with value 0x50cb383889533b77
sw x3, 0(x2) # store 0x50cb383889533b77 in memory
flw f21, 0(x2) # load 0x50cb383889533b77 from memory into f21
fsqrt.s f18, f21 # perform operation
fsqrt.s f18, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x26, 0xede214009d7d1f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd665c994ee792578 # load x3 with value 0xd665c994ee792578
sw x3, 0(x2) # store 0xd665c994ee792578 in memory
flw f22, 0(x2) # load 0xd665c994ee792578 from memory into f22
fsqrt.s f26, f22 # perform operation
fsqrt.s f26, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x20, 0x434a048f52bec752 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x956a796c714baf27 # load x3 with value 0x956a796c714baf27
sw x3, 0(x2) # store 0x956a796c714baf27 in memory
flw f23, 0(x2) # load 0x956a796c714baf27 from memory into f23
fsqrt.s f20, f23 # perform operation
fsqrt.s f20, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x9, 0xa38740fca08aff2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59c13f236924560e # load x3 with value 0x59c13f236924560e
sw x3, 0(x2) # store 0x59c13f236924560e in memory
flw f24, 0(x2) # load 0x59c13f236924560e from memory into f24
fsqrt.s f9, f24 # perform operation
fsqrt.s f9, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x17, 0xefd4029eb8952e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe52a389ff5ff2409 # load x3 with value 0xe52a389ff5ff2409
sw x3, 0(x2) # store 0xe52a389ff5ff2409 in memory
flw f25, 0(x2) # load 0xe52a389ff5ff2409 from memory into f25
fsqrt.s f17, f25 # perform operation
fsqrt.s f17, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x29, 0xd14e0996ca158567 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7441d950b36a52ca # load x3 with value 0x7441d950b36a52ca
sw x3, 0(x2) # store 0x7441d950b36a52ca in memory
flw f26, 0(x2) # load 0x7441d950b36a52ca from memory into f26
fsqrt.s f29, f26 # perform operation
fsqrt.s f29, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x1, 0x28955c949678abdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4465fcf4fc1fc975 # load x3 with value 0x4465fcf4fc1fc975
sw x3, 0(x2) # store 0x4465fcf4fc1fc975 in memory
flw f27, 0(x2) # load 0x4465fcf4fc1fc975 from memory into f27
fsqrt.s f1, f27 # perform operation
fsqrt.s f1, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x27, 0x333e592e43f565e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0bcd084635fd45b # load x3 with value 0xc0bcd084635fd45b
sw x3, 0(x2) # store 0xc0bcd084635fd45b in memory
flw f28, 0(x2) # load 0xc0bcd084635fd45b from memory into f28
fsqrt.s f27, f28 # perform operation
fsqrt.s f27, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x1, 0xba39b8e48968f4df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0cadc01ed8ad56a # load x3 with value 0xa0cadc01ed8ad56a
sw x3, 0(x2) # store 0xa0cadc01ed8ad56a in memory
flw f29, 0(x2) # load 0xa0cadc01ed8ad56a from memory into f29
fsqrt.s f1, f29 # perform operation
fsqrt.s f1, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x17, 0xc0515731e9b931bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5579484b1f3a65e # load x3 with value 0xe5579484b1f3a65e
sw x3, 0(x2) # store 0xe5579484b1f3a65e in memory
flw f30, 0(x2) # load 0xe5579484b1f3a65e from memory into f30
fsqrt.s f17, f30 # perform operation
fsqrt.s f17, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x28, 0xbe49864e1d3acf4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d1663ebde76cf39 # load x3 with value 0x5d1663ebde76cf39
sw x3, 0(x2) # store 0x5d1663ebde76cf39 in memory
flw f31, 0(x2) # load 0x5d1663ebde76cf39 from memory into f31
fsqrt.s f28, f31 # perform operation
fsqrt.s f28, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
