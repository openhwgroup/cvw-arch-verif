///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fdiv.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.512272
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
fdiv.d f21, f26, f8 # perform first operation
fdiv.d f22, f21, f25 # perform second operation

# Testcase cmp_gpr_hazard raw test
fdiv.d f31, f8, f15 # perform first operation
fdiv.d f19, f11, f31 # perform second operation

# Testcase cmp_gpr_hazard waw test
fdiv.d f2, f29, f30 # perform first operation
fdiv.d f2, f20, f15 # perform second operation

# Testcase cmp_gpr_hazard waw test
fdiv.d f9, f6, f12 # perform first operation
fdiv.d f9, f28, f3 # perform second operation

# Testcase cmp_gpr_hazard war test
fdiv.d f9, f27, f8 # perform first operation
fdiv.d f27, f20, f21 # perform second operation

# Testcase cmp_gpr_hazard war test
fdiv.d f24, f16, f23 # perform first operation
fdiv.d f23, f2, f19 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x2f5f9832dc735ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f6a8affb9dd5109 # load x3 with value 0x5f6a8affb9dd5109
sd x3, 0(x2) # store 0x5f6a8affb9dd5109 in memory
fld f0, 0(x2) # load 0x5f6a8affb9dd5109 from memory into f0
li x3, 0x216c6cb1c5486077 # load x3 with value 0x216c6cb1c5486077
sd x3, 0(x2) # store 0x216c6cb1c5486077 in memory
fld f23, 0(x2) # load 0x216c6cb1c5486077 from memory into f23
fdiv.d f0, f0, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xc5d2acd7c634cce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x853706c834a6c7af # load x3 with value 0x853706c834a6c7af
sd x3, 0(x2) # store 0x853706c834a6c7af in memory
fld f1, 0(x2) # load 0x853706c834a6c7af from memory into f1
li x3, 0x14f2303c0498fe52 # load x3 with value 0x14f2303c0498fe52
sd x3, 0(x2) # store 0x14f2303c0498fe52 in memory
fld f21, 0(x2) # load 0x14f2303c0498fe52 from memory into f21
fdiv.d f1, f1, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xeced08e3353c9b8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x303b9061d539c2c1 # load x3 with value 0x303b9061d539c2c1
sd x3, 0(x2) # store 0x303b9061d539c2c1 in memory
fld f2, 0(x2) # load 0x303b9061d539c2c1 from memory into f2
li x3, 0xe3f5b88047457afd # load x3 with value 0xe3f5b88047457afd
sd x3, 0(x2) # store 0xe3f5b88047457afd in memory
fld f10, 0(x2) # load 0xe3f5b88047457afd from memory into f10
fdiv.d f2, f2, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xd2f990360cbe7a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6dd6197754f2dbf # load x3 with value 0xb6dd6197754f2dbf
sd x3, 0(x2) # store 0xb6dd6197754f2dbf in memory
fld f3, 0(x2) # load 0xb6dd6197754f2dbf from memory into f3
li x3, 0x5e0370a1fde44589 # load x3 with value 0x5e0370a1fde44589
sd x3, 0(x2) # store 0x5e0370a1fde44589 in memory
fld f16, 0(x2) # load 0x5e0370a1fde44589 from memory into f16
fdiv.d f3, f3, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xdc469a6874a3f520 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32dfaf2e077366ff # load x3 with value 0x32dfaf2e077366ff
sd x3, 0(x2) # store 0x32dfaf2e077366ff in memory
fld f4, 0(x2) # load 0x32dfaf2e077366ff from memory into f4
li x3, 0x3c3e14fdec1673dd # load x3 with value 0x3c3e14fdec1673dd
sd x3, 0(x2) # store 0x3c3e14fdec1673dd in memory
fld f12, 0(x2) # load 0x3c3e14fdec1673dd from memory into f12
fdiv.d f4, f4, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x11114b265b44a148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbc7a8906ad499bd # load x3 with value 0xbbc7a8906ad499bd
sd x3, 0(x2) # store 0xbbc7a8906ad499bd in memory
fld f5, 0(x2) # load 0xbbc7a8906ad499bd from memory into f5
li x3, 0x5ae6b47d22ff52a9 # load x3 with value 0x5ae6b47d22ff52a9
sd x3, 0(x2) # store 0x5ae6b47d22ff52a9 in memory
fld f31, 0(x2) # load 0x5ae6b47d22ff52a9 from memory into f31
fdiv.d f5, f5, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x88dbf9dd0a65e390 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe631a8097bddd600 # load x3 with value 0xe631a8097bddd600
sd x3, 0(x2) # store 0xe631a8097bddd600 in memory
fld f6, 0(x2) # load 0xe631a8097bddd600 from memory into f6
li x3, 0xd1ce9e6bd0a41bd6 # load x3 with value 0xd1ce9e6bd0a41bd6
sd x3, 0(x2) # store 0xd1ce9e6bd0a41bd6 in memory
fld f6, 0(x2) # load 0xd1ce9e6bd0a41bd6 from memory into f6
fdiv.d f6, f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x9b887a91ada8cf74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfad149b090880fc4 # load x3 with value 0xfad149b090880fc4
sd x3, 0(x2) # store 0xfad149b090880fc4 in memory
fld f7, 0(x2) # load 0xfad149b090880fc4 from memory into f7
li x3, 0xd22215eb39fb0f94 # load x3 with value 0xd22215eb39fb0f94
sd x3, 0(x2) # store 0xd22215eb39fb0f94 in memory
fld f31, 0(x2) # load 0xd22215eb39fb0f94 from memory into f31
fdiv.d f7, f7, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xa80800a3998725a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8413826875ba9149 # load x3 with value 0x8413826875ba9149
sd x3, 0(x2) # store 0x8413826875ba9149 in memory
fld f8, 0(x2) # load 0x8413826875ba9149 from memory into f8
li x3, 0x1cc61604587b778e # load x3 with value 0x1cc61604587b778e
sd x3, 0(x2) # store 0x1cc61604587b778e in memory
fld f3, 0(x2) # load 0x1cc61604587b778e from memory into f3
fdiv.d f8, f8, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xcf40dfcdc3492ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17f60f105f86ccee # load x3 with value 0x17f60f105f86ccee
sd x3, 0(x2) # store 0x17f60f105f86ccee in memory
fld f9, 0(x2) # load 0x17f60f105f86ccee from memory into f9
li x3, 0x7d7e4322c152197e # load x3 with value 0x7d7e4322c152197e
sd x3, 0(x2) # store 0x7d7e4322c152197e in memory
fld f1, 0(x2) # load 0x7d7e4322c152197e from memory into f1
fdiv.d f9, f9, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x484cf61b44158513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x217785a29cf31700 # load x3 with value 0x217785a29cf31700
sd x3, 0(x2) # store 0x217785a29cf31700 in memory
fld f10, 0(x2) # load 0x217785a29cf31700 from memory into f10
li x3, 0x66ac9cabf1efdc51 # load x3 with value 0x66ac9cabf1efdc51
sd x3, 0(x2) # store 0x66ac9cabf1efdc51 in memory
fld f5, 0(x2) # load 0x66ac9cabf1efdc51 from memory into f5
fdiv.d f10, f10, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xe93a1493a7fec5f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdf2ccfad25e013e # load x3 with value 0xcdf2ccfad25e013e
sd x3, 0(x2) # store 0xcdf2ccfad25e013e in memory
fld f11, 0(x2) # load 0xcdf2ccfad25e013e from memory into f11
li x3, 0xf8f55421bdcae69e # load x3 with value 0xf8f55421bdcae69e
sd x3, 0(x2) # store 0xf8f55421bdcae69e in memory
fld f18, 0(x2) # load 0xf8f55421bdcae69e from memory into f18
fdiv.d f11, f11, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x895ee1e472d2cd23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd638c9c723f85d89 # load x3 with value 0xd638c9c723f85d89
sd x3, 0(x2) # store 0xd638c9c723f85d89 in memory
fld f12, 0(x2) # load 0xd638c9c723f85d89 from memory into f12
li x3, 0xef5a678ae3e30a5b # load x3 with value 0xef5a678ae3e30a5b
sd x3, 0(x2) # store 0xef5a678ae3e30a5b in memory
fld f8, 0(x2) # load 0xef5a678ae3e30a5b from memory into f8
fdiv.d f12, f12, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x163afb9c02232e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9df1fb382c6a1b49 # load x3 with value 0x9df1fb382c6a1b49
sd x3, 0(x2) # store 0x9df1fb382c6a1b49 in memory
fld f13, 0(x2) # load 0x9df1fb382c6a1b49 from memory into f13
li x3, 0x4f716ec68f8e19d5 # load x3 with value 0x4f716ec68f8e19d5
sd x3, 0(x2) # store 0x4f716ec68f8e19d5 in memory
fld f21, 0(x2) # load 0x4f716ec68f8e19d5 from memory into f21
fdiv.d f13, f13, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x3f27feeb3548c9e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35b47b02f8d23c7c # load x3 with value 0x35b47b02f8d23c7c
sd x3, 0(x2) # store 0x35b47b02f8d23c7c in memory
fld f14, 0(x2) # load 0x35b47b02f8d23c7c from memory into f14
li x3, 0xc5cd1283c357cfca # load x3 with value 0xc5cd1283c357cfca
sd x3, 0(x2) # store 0xc5cd1283c357cfca in memory
fld f4, 0(x2) # load 0xc5cd1283c357cfca from memory into f4
fdiv.d f14, f14, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x135d2ba062f02b52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x729464081d0c4023 # load x3 with value 0x729464081d0c4023
sd x3, 0(x2) # store 0x729464081d0c4023 in memory
fld f15, 0(x2) # load 0x729464081d0c4023 from memory into f15
li x3, 0x6a4fe083b82b758a # load x3 with value 0x6a4fe083b82b758a
sd x3, 0(x2) # store 0x6a4fe083b82b758a in memory
fld f12, 0(x2) # load 0x6a4fe083b82b758a from memory into f12
fdiv.d f15, f15, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x88a6552da2d1bb3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93c651acca7fe4a4 # load x3 with value 0x93c651acca7fe4a4
sd x3, 0(x2) # store 0x93c651acca7fe4a4 in memory
fld f16, 0(x2) # load 0x93c651acca7fe4a4 from memory into f16
li x3, 0x469788c8eb4119cb # load x3 with value 0x469788c8eb4119cb
sd x3, 0(x2) # store 0x469788c8eb4119cb in memory
fld f4, 0(x2) # load 0x469788c8eb4119cb from memory into f4
fdiv.d f16, f16, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x6a3d6db05a8000db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x882280686bdbf3ce # load x3 with value 0x882280686bdbf3ce
sd x3, 0(x2) # store 0x882280686bdbf3ce in memory
fld f17, 0(x2) # load 0x882280686bdbf3ce from memory into f17
li x3, 0x7ab2d427d8656aad # load x3 with value 0x7ab2d427d8656aad
sd x3, 0(x2) # store 0x7ab2d427d8656aad in memory
fld f12, 0(x2) # load 0x7ab2d427d8656aad from memory into f12
fdiv.d f17, f17, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xe28b6f49a160ae91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9477093eac0deac8 # load x3 with value 0x9477093eac0deac8
sd x3, 0(x2) # store 0x9477093eac0deac8 in memory
fld f18, 0(x2) # load 0x9477093eac0deac8 from memory into f18
li x3, 0xd29d687df457fa54 # load x3 with value 0xd29d687df457fa54
sd x3, 0(x2) # store 0xd29d687df457fa54 in memory
fld f20, 0(x2) # load 0xd29d687df457fa54 from memory into f20
fdiv.d f18, f18, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xb3e0ee95a9812cbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x582a3d94e42d598c # load x3 with value 0x582a3d94e42d598c
sd x3, 0(x2) # store 0x582a3d94e42d598c in memory
fld f19, 0(x2) # load 0x582a3d94e42d598c from memory into f19
li x3, 0x949837dd24ecbe43 # load x3 with value 0x949837dd24ecbe43
sd x3, 0(x2) # store 0x949837dd24ecbe43 in memory
fld f4, 0(x2) # load 0x949837dd24ecbe43 from memory into f4
fdiv.d f19, f19, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x302ee5a38de38b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1b10789324c1bbc # load x3 with value 0xb1b10789324c1bbc
sd x3, 0(x2) # store 0xb1b10789324c1bbc in memory
fld f20, 0(x2) # load 0xb1b10789324c1bbc from memory into f20
li x3, 0x1053391644566993 # load x3 with value 0x1053391644566993
sd x3, 0(x2) # store 0x1053391644566993 in memory
fld f25, 0(x2) # load 0x1053391644566993 from memory into f25
fdiv.d f20, f20, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xd7411e914215fec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a490dd9ba26ef92 # load x3 with value 0x5a490dd9ba26ef92
sd x3, 0(x2) # store 0x5a490dd9ba26ef92 in memory
fld f21, 0(x2) # load 0x5a490dd9ba26ef92 from memory into f21
li x3, 0xa95cbc7586248b5e # load x3 with value 0xa95cbc7586248b5e
sd x3, 0(x2) # store 0xa95cbc7586248b5e in memory
fld f13, 0(x2) # load 0xa95cbc7586248b5e from memory into f13
fdiv.d f21, f21, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x5848d8fc797f1a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ad614acaf3807a5 # load x3 with value 0x7ad614acaf3807a5
sd x3, 0(x2) # store 0x7ad614acaf3807a5 in memory
fld f22, 0(x2) # load 0x7ad614acaf3807a5 from memory into f22
li x3, 0x337dc99b2051482a # load x3 with value 0x337dc99b2051482a
sd x3, 0(x2) # store 0x337dc99b2051482a in memory
fld f16, 0(x2) # load 0x337dc99b2051482a from memory into f16
fdiv.d f22, f22, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x7c7c0553b0d59b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e9eddd306c564e5 # load x3 with value 0x6e9eddd306c564e5
sd x3, 0(x2) # store 0x6e9eddd306c564e5 in memory
fld f23, 0(x2) # load 0x6e9eddd306c564e5 from memory into f23
li x3, 0xf42147ffa916f000 # load x3 with value 0xf42147ffa916f000
sd x3, 0(x2) # store 0xf42147ffa916f000 in memory
fld f23, 0(x2) # load 0xf42147ffa916f000 from memory into f23
fdiv.d f23, f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x8c048b1684050b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40fa62fb93e68104 # load x3 with value 0x40fa62fb93e68104
sd x3, 0(x2) # store 0x40fa62fb93e68104 in memory
fld f24, 0(x2) # load 0x40fa62fb93e68104 from memory into f24
li x3, 0x2c1ac75551261d1f # load x3 with value 0x2c1ac75551261d1f
sd x3, 0(x2) # store 0x2c1ac75551261d1f in memory
fld f3, 0(x2) # load 0x2c1ac75551261d1f from memory into f3
fdiv.d f24, f24, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x38f8891798db04ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d99d9602a02c427 # load x3 with value 0x4d99d9602a02c427
sd x3, 0(x2) # store 0x4d99d9602a02c427 in memory
fld f25, 0(x2) # load 0x4d99d9602a02c427 from memory into f25
li x3, 0x9789985a5cfb7bcb # load x3 with value 0x9789985a5cfb7bcb
sd x3, 0(x2) # store 0x9789985a5cfb7bcb in memory
fld f22, 0(x2) # load 0x9789985a5cfb7bcb from memory into f22
fdiv.d f25, f25, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x0941b13aac660117 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17a98cd8b1decf9c # load x3 with value 0x17a98cd8b1decf9c
sd x3, 0(x2) # store 0x17a98cd8b1decf9c in memory
fld f26, 0(x2) # load 0x17a98cd8b1decf9c from memory into f26
li x3, 0xf69e5ac07e574edb # load x3 with value 0xf69e5ac07e574edb
sd x3, 0(x2) # store 0xf69e5ac07e574edb in memory
fld f26, 0(x2) # load 0xf69e5ac07e574edb from memory into f26
fdiv.d f26, f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xaf765255b469f2d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70c9b764132aac9d # load x3 with value 0x70c9b764132aac9d
sd x3, 0(x2) # store 0x70c9b764132aac9d in memory
fld f27, 0(x2) # load 0x70c9b764132aac9d from memory into f27
li x3, 0x2717f781ef5fa0ef # load x3 with value 0x2717f781ef5fa0ef
sd x3, 0(x2) # store 0x2717f781ef5fa0ef in memory
fld f27, 0(x2) # load 0x2717f781ef5fa0ef from memory into f27
fdiv.d f27, f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x86ab674049ec616a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4924fb1b366085c # load x3 with value 0xc4924fb1b366085c
sd x3, 0(x2) # store 0xc4924fb1b366085c in memory
fld f28, 0(x2) # load 0xc4924fb1b366085c from memory into f28
li x3, 0x7376a39c4b8ab840 # load x3 with value 0x7376a39c4b8ab840
sd x3, 0(x2) # store 0x7376a39c4b8ab840 in memory
fld f17, 0(x2) # load 0x7376a39c4b8ab840 from memory into f17
fdiv.d f28, f28, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xdced06680b393006 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c7832823cd99935 # load x3 with value 0x2c7832823cd99935
sd x3, 0(x2) # store 0x2c7832823cd99935 in memory
fld f29, 0(x2) # load 0x2c7832823cd99935 from memory into f29
li x3, 0x1d19821cbc63b977 # load x3 with value 0x1d19821cbc63b977
sd x3, 0(x2) # store 0x1d19821cbc63b977 in memory
fld f1, 0(x2) # load 0x1d19821cbc63b977 from memory into f1
fdiv.d f29, f29, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x48b407458bde225d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f1b2ca8775297b0 # load x3 with value 0x9f1b2ca8775297b0
sd x3, 0(x2) # store 0x9f1b2ca8775297b0 in memory
fld f30, 0(x2) # load 0x9f1b2ca8775297b0 from memory into f30
li x3, 0x633f1e7d09b4b987 # load x3 with value 0x633f1e7d09b4b987
sd x3, 0(x2) # store 0x633f1e7d09b4b987 in memory
fld f5, 0(x2) # load 0x633f1e7d09b4b987 from memory into f5
fdiv.d f30, f30, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x27b5b75bcdea5d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94d9d7500c3a501b # load x3 with value 0x94d9d7500c3a501b
sd x3, 0(x2) # store 0x94d9d7500c3a501b in memory
fld f31, 0(x2) # load 0x94d9d7500c3a501b from memory into f31
li x3, 0xf8384a7ebbb9cf31 # load x3 with value 0xf8384a7ebbb9cf31
sd x3, 0(x2) # store 0xf8384a7ebbb9cf31 in memory
fld f27, 0(x2) # load 0xf8384a7ebbb9cf31 from memory into f27
fdiv.d f31, f31, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x5418f4581df913ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca7476f7c9414bb3 # load x3 with value 0xca7476f7c9414bb3
sd x3, 0(x2) # store 0xca7476f7c9414bb3 in memory
fld f6, 0(x2) # load 0xca7476f7c9414bb3 from memory into f6
li x3, 0x60b037c2f67bccc4 # load x3 with value 0x60b037c2f67bccc4
sd x3, 0(x2) # store 0x60b037c2f67bccc4 in memory
fld f0, 0(x2) # load 0x60b037c2f67bccc4 from memory into f0
fdiv.d f0, f6, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xcda4c22276c5fcdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x850d326a2d79df4d # load x3 with value 0x850d326a2d79df4d
sd x3, 0(x2) # store 0x850d326a2d79df4d in memory
fld f8, 0(x2) # load 0x850d326a2d79df4d from memory into f8
li x3, 0x61566d7b9edb4025 # load x3 with value 0x61566d7b9edb4025
sd x3, 0(x2) # store 0x61566d7b9edb4025 in memory
fld f1, 0(x2) # load 0x61566d7b9edb4025 from memory into f1
fdiv.d f1, f8, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x61175e86bb7fb860 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x013cdedff400fc98 # load x3 with value 0x013cdedff400fc98
sd x3, 0(x2) # store 0x013cdedff400fc98 in memory
fld f31, 0(x2) # load 0x013cdedff400fc98 from memory into f31
li x3, 0xe9ae1bd385468421 # load x3 with value 0xe9ae1bd385468421
sd x3, 0(x2) # store 0xe9ae1bd385468421 in memory
fld f2, 0(x2) # load 0xe9ae1bd385468421 from memory into f2
fdiv.d f2, f31, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x5b988708626c6393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fd92aea5339f9dd # load x3 with value 0x9fd92aea5339f9dd
sd x3, 0(x2) # store 0x9fd92aea5339f9dd in memory
fld f9, 0(x2) # load 0x9fd92aea5339f9dd from memory into f9
li x3, 0x84fccd4801de12b3 # load x3 with value 0x84fccd4801de12b3
sd x3, 0(x2) # store 0x84fccd4801de12b3 in memory
fld f3, 0(x2) # load 0x84fccd4801de12b3 from memory into f3
fdiv.d f3, f9, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xedcaef53a869e5db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31b952262e3613dc # load x3 with value 0x31b952262e3613dc
sd x3, 0(x2) # store 0x31b952262e3613dc in memory
fld f30, 0(x2) # load 0x31b952262e3613dc from memory into f30
li x3, 0x8155a7127ff1a4dd # load x3 with value 0x8155a7127ff1a4dd
sd x3, 0(x2) # store 0x8155a7127ff1a4dd in memory
fld f4, 0(x2) # load 0x8155a7127ff1a4dd from memory into f4
fdiv.d f4, f30, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x6c4af6233213ba62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69512cf2be0a746c # load x3 with value 0x69512cf2be0a746c
sd x3, 0(x2) # store 0x69512cf2be0a746c in memory
fld f29, 0(x2) # load 0x69512cf2be0a746c from memory into f29
li x3, 0x74ca75fbf4da5052 # load x3 with value 0x74ca75fbf4da5052
sd x3, 0(x2) # store 0x74ca75fbf4da5052 in memory
fld f5, 0(x2) # load 0x74ca75fbf4da5052 from memory into f5
fdiv.d f5, f29, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xdf7f8db355b95be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90735b3ab134f025 # load x3 with value 0x90735b3ab134f025
sd x3, 0(x2) # store 0x90735b3ab134f025 in memory
fld f27, 0(x2) # load 0x90735b3ab134f025 from memory into f27
li x3, 0x2310a01bca9dc8d0 # load x3 with value 0x2310a01bca9dc8d0
sd x3, 0(x2) # store 0x2310a01bca9dc8d0 in memory
fld f6, 0(x2) # load 0x2310a01bca9dc8d0 from memory into f6
fdiv.d f6, f27, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xe8758e56af55d42d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7a621cdbffa125d # load x3 with value 0xb7a621cdbffa125d
sd x3, 0(x2) # store 0xb7a621cdbffa125d in memory
fld f26, 0(x2) # load 0xb7a621cdbffa125d from memory into f26
li x3, 0x78a25123aee43ed2 # load x3 with value 0x78a25123aee43ed2
sd x3, 0(x2) # store 0x78a25123aee43ed2 in memory
fld f7, 0(x2) # load 0x78a25123aee43ed2 from memory into f7
fdiv.d f7, f26, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xad7418aa8c19526c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ebf7073b6a79071 # load x3 with value 0x7ebf7073b6a79071
sd x3, 0(x2) # store 0x7ebf7073b6a79071 in memory
fld f24, 0(x2) # load 0x7ebf7073b6a79071 from memory into f24
li x3, 0xa9e78fb14b96dfe4 # load x3 with value 0xa9e78fb14b96dfe4
sd x3, 0(x2) # store 0xa9e78fb14b96dfe4 in memory
fld f8, 0(x2) # load 0xa9e78fb14b96dfe4 from memory into f8
fdiv.d f8, f24, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xfa23c4cea835adcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x536e037cb86afced # load x3 with value 0x536e037cb86afced
sd x3, 0(x2) # store 0x536e037cb86afced in memory
fld f1, 0(x2) # load 0x536e037cb86afced from memory into f1
li x3, 0xf7462e8a654b6b40 # load x3 with value 0xf7462e8a654b6b40
sd x3, 0(x2) # store 0xf7462e8a654b6b40 in memory
fld f9, 0(x2) # load 0xf7462e8a654b6b40 from memory into f9
fdiv.d f9, f1, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x67c9e9a35a4b420e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf8fda51863ce9dd # load x3 with value 0xdf8fda51863ce9dd
sd x3, 0(x2) # store 0xdf8fda51863ce9dd in memory
fld f3, 0(x2) # load 0xdf8fda51863ce9dd from memory into f3
li x3, 0x66e7f412eaeb9acb # load x3 with value 0x66e7f412eaeb9acb
sd x3, 0(x2) # store 0x66e7f412eaeb9acb in memory
fld f10, 0(x2) # load 0x66e7f412eaeb9acb from memory into f10
fdiv.d f10, f3, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x689f522664ed86aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90deff5adc9b2c01 # load x3 with value 0x90deff5adc9b2c01
sd x3, 0(x2) # store 0x90deff5adc9b2c01 in memory
fld f11, 0(x2) # load 0x90deff5adc9b2c01 from memory into f11
li x3, 0xc3f80054fc3508ac # load x3 with value 0xc3f80054fc3508ac
sd x3, 0(x2) # store 0xc3f80054fc3508ac in memory
fld f11, 0(x2) # load 0xc3f80054fc3508ac from memory into f11
fdiv.d f11, f11, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x073d978e6b302076 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x042be91cf56ba654 # load x3 with value 0x042be91cf56ba654
sd x3, 0(x2) # store 0x042be91cf56ba654 in memory
fld f29, 0(x2) # load 0x042be91cf56ba654 from memory into f29
li x3, 0xf59b55eae871ff48 # load x3 with value 0xf59b55eae871ff48
sd x3, 0(x2) # store 0xf59b55eae871ff48 in memory
fld f12, 0(x2) # load 0xf59b55eae871ff48 from memory into f12
fdiv.d f12, f29, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xc069c584c4853cae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13973d8df872bfad # load x3 with value 0x13973d8df872bfad
sd x3, 0(x2) # store 0x13973d8df872bfad in memory
fld f2, 0(x2) # load 0x13973d8df872bfad from memory into f2
li x3, 0xc7cdc9ca4abfbb20 # load x3 with value 0xc7cdc9ca4abfbb20
sd x3, 0(x2) # store 0xc7cdc9ca4abfbb20 in memory
fld f13, 0(x2) # load 0xc7cdc9ca4abfbb20 from memory into f13
fdiv.d f13, f2, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xc7223a8e061d1d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29967c982b201268 # load x3 with value 0x29967c982b201268
sd x3, 0(x2) # store 0x29967c982b201268 in memory
fld f14, 0(x2) # load 0x29967c982b201268 from memory into f14
li x3, 0x58bb683527d56a44 # load x3 with value 0x58bb683527d56a44
sd x3, 0(x2) # store 0x58bb683527d56a44 in memory
fld f14, 0(x2) # load 0x58bb683527d56a44 from memory into f14
fdiv.d f14, f14, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x223df1f2f9369a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa14d0e46b75d8275 # load x3 with value 0xa14d0e46b75d8275
sd x3, 0(x2) # store 0xa14d0e46b75d8275 in memory
fld f5, 0(x2) # load 0xa14d0e46b75d8275 from memory into f5
li x3, 0x0ebc8bf03afad5d3 # load x3 with value 0x0ebc8bf03afad5d3
sd x3, 0(x2) # store 0x0ebc8bf03afad5d3 in memory
fld f15, 0(x2) # load 0x0ebc8bf03afad5d3 from memory into f15
fdiv.d f15, f5, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xbb75eb1d386b2138 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13ddbbf1c723d14f # load x3 with value 0x13ddbbf1c723d14f
sd x3, 0(x2) # store 0x13ddbbf1c723d14f in memory
fld f5, 0(x2) # load 0x13ddbbf1c723d14f from memory into f5
li x3, 0x9bb81ab748683127 # load x3 with value 0x9bb81ab748683127
sd x3, 0(x2) # store 0x9bb81ab748683127 in memory
fld f16, 0(x2) # load 0x9bb81ab748683127 from memory into f16
fdiv.d f16, f5, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xc4e63920fd9a5051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fc599256eebb90f # load x3 with value 0x5fc599256eebb90f
sd x3, 0(x2) # store 0x5fc599256eebb90f in memory
fld f16, 0(x2) # load 0x5fc599256eebb90f from memory into f16
li x3, 0xb4d6776cd2cd7afe # load x3 with value 0xb4d6776cd2cd7afe
sd x3, 0(x2) # store 0xb4d6776cd2cd7afe in memory
fld f17, 0(x2) # load 0xb4d6776cd2cd7afe from memory into f17
fdiv.d f17, f16, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xfa4027a5a832bbc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd68cc548cfdd5158 # load x3 with value 0xd68cc548cfdd5158
sd x3, 0(x2) # store 0xd68cc548cfdd5158 in memory
fld f29, 0(x2) # load 0xd68cc548cfdd5158 from memory into f29
li x3, 0x7a9590554e7fe1d3 # load x3 with value 0x7a9590554e7fe1d3
sd x3, 0(x2) # store 0x7a9590554e7fe1d3 in memory
fld f18, 0(x2) # load 0x7a9590554e7fe1d3 from memory into f18
fdiv.d f18, f29, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xd2eaaa0fc65e89c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63551e469d8dc181 # load x3 with value 0x63551e469d8dc181
sd x3, 0(x2) # store 0x63551e469d8dc181 in memory
fld f8, 0(x2) # load 0x63551e469d8dc181 from memory into f8
li x3, 0x404f1c194bb60936 # load x3 with value 0x404f1c194bb60936
sd x3, 0(x2) # store 0x404f1c194bb60936 in memory
fld f19, 0(x2) # load 0x404f1c194bb60936 from memory into f19
fdiv.d f19, f8, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xbb906f676c1b35cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95ea8cb7d759f653 # load x3 with value 0x95ea8cb7d759f653
sd x3, 0(x2) # store 0x95ea8cb7d759f653 in memory
fld f17, 0(x2) # load 0x95ea8cb7d759f653 from memory into f17
li x3, 0x80f4c0152ae2d9fe # load x3 with value 0x80f4c0152ae2d9fe
sd x3, 0(x2) # store 0x80f4c0152ae2d9fe in memory
fld f20, 0(x2) # load 0x80f4c0152ae2d9fe from memory into f20
fdiv.d f20, f17, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xc6483e03c61f908d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc50e933b156142d2 # load x3 with value 0xc50e933b156142d2
sd x3, 0(x2) # store 0xc50e933b156142d2 in memory
fld f29, 0(x2) # load 0xc50e933b156142d2 from memory into f29
li x3, 0x8c79b593cf03ef18 # load x3 with value 0x8c79b593cf03ef18
sd x3, 0(x2) # store 0x8c79b593cf03ef18 in memory
fld f21, 0(x2) # load 0x8c79b593cf03ef18 from memory into f21
fdiv.d f21, f29, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xaee555dddac6d8b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x094fc0786f71c9fa # load x3 with value 0x094fc0786f71c9fa
sd x3, 0(x2) # store 0x094fc0786f71c9fa in memory
fld f1, 0(x2) # load 0x094fc0786f71c9fa from memory into f1
li x3, 0x4ae5ed4c6c644d6b # load x3 with value 0x4ae5ed4c6c644d6b
sd x3, 0(x2) # store 0x4ae5ed4c6c644d6b in memory
fld f22, 0(x2) # load 0x4ae5ed4c6c644d6b from memory into f22
fdiv.d f22, f1, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xf0402be7bd90837d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaab7776f2eddfcbd # load x3 with value 0xaab7776f2eddfcbd
sd x3, 0(x2) # store 0xaab7776f2eddfcbd in memory
fld f10, 0(x2) # load 0xaab7776f2eddfcbd from memory into f10
li x3, 0xf0730f9a1b494303 # load x3 with value 0xf0730f9a1b494303
sd x3, 0(x2) # store 0xf0730f9a1b494303 in memory
fld f23, 0(x2) # load 0xf0730f9a1b494303 from memory into f23
fdiv.d f23, f10, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x922739a205b7a38c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2037449e8f7313e3 # load x3 with value 0x2037449e8f7313e3
sd x3, 0(x2) # store 0x2037449e8f7313e3 in memory
fld f19, 0(x2) # load 0x2037449e8f7313e3 from memory into f19
li x3, 0xeb43eb1b06241d20 # load x3 with value 0xeb43eb1b06241d20
sd x3, 0(x2) # store 0xeb43eb1b06241d20 in memory
fld f24, 0(x2) # load 0xeb43eb1b06241d20 from memory into f24
fdiv.d f24, f19, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x2fe480b773d1e9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde8df56c405d196d # load x3 with value 0xde8df56c405d196d
sd x3, 0(x2) # store 0xde8df56c405d196d in memory
fld f21, 0(x2) # load 0xde8df56c405d196d from memory into f21
li x3, 0xd798351583834d59 # load x3 with value 0xd798351583834d59
sd x3, 0(x2) # store 0xd798351583834d59 in memory
fld f25, 0(x2) # load 0xd798351583834d59 from memory into f25
fdiv.d f25, f21, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0xef182599d6a06125 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6a810d3b42dd924 # load x3 with value 0xd6a810d3b42dd924
sd x3, 0(x2) # store 0xd6a810d3b42dd924 in memory
fld f31, 0(x2) # load 0xd6a810d3b42dd924 from memory into f31
li x3, 0x587a9abcfb38e506 # load x3 with value 0x587a9abcfb38e506
sd x3, 0(x2) # store 0x587a9abcfb38e506 in memory
fld f26, 0(x2) # load 0x587a9abcfb38e506 from memory into f26
fdiv.d f26, f31, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xa562c344c8abb4cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c2ed5165eae8f42 # load x3 with value 0x3c2ed5165eae8f42
sd x3, 0(x2) # store 0x3c2ed5165eae8f42 in memory
fld f12, 0(x2) # load 0x3c2ed5165eae8f42 from memory into f12
li x3, 0x9c6d67c04df0413f # load x3 with value 0x9c6d67c04df0413f
sd x3, 0(x2) # store 0x9c6d67c04df0413f in memory
fld f27, 0(x2) # load 0x9c6d67c04df0413f from memory into f27
fdiv.d f27, f12, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x98801e251597e564 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23bc282a826fd228 # load x3 with value 0x23bc282a826fd228
sd x3, 0(x2) # store 0x23bc282a826fd228 in memory
fld f11, 0(x2) # load 0x23bc282a826fd228 from memory into f11
li x3, 0x30262a61f82a03a6 # load x3 with value 0x30262a61f82a03a6
sd x3, 0(x2) # store 0x30262a61f82a03a6 in memory
fld f28, 0(x2) # load 0x30262a61f82a03a6 from memory into f28
fdiv.d f28, f11, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x21d7d4ce6bd1de19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed17ee18335aa853 # load x3 with value 0xed17ee18335aa853
sd x3, 0(x2) # store 0xed17ee18335aa853 in memory
fld f22, 0(x2) # load 0xed17ee18335aa853 from memory into f22
li x3, 0xa91f84aafa176a9e # load x3 with value 0xa91f84aafa176a9e
sd x3, 0(x2) # store 0xa91f84aafa176a9e in memory
fld f29, 0(x2) # load 0xa91f84aafa176a9e from memory into f29
fdiv.d f29, f22, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xe72696bb4d2fe2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b2ac6a6e3ef4ba8 # load x3 with value 0x2b2ac6a6e3ef4ba8
sd x3, 0(x2) # store 0x2b2ac6a6e3ef4ba8 in memory
fld f26, 0(x2) # load 0x2b2ac6a6e3ef4ba8 from memory into f26
li x3, 0x4a3e2e15c20483ef # load x3 with value 0x4a3e2e15c20483ef
sd x3, 0(x2) # store 0x4a3e2e15c20483ef in memory
fld f30, 0(x2) # load 0x4a3e2e15c20483ef from memory into f30
fdiv.d f30, f26, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xb06e7529c50d999a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64f45ac71a5a06c8 # load x3 with value 0x64f45ac71a5a06c8
sd x3, 0(x2) # store 0x64f45ac71a5a06c8 in memory
fld f11, 0(x2) # load 0x64f45ac71a5a06c8 from memory into f11
li x3, 0x441f96a9590a5a17 # load x3 with value 0x441f96a9590a5a17
sd x3, 0(x2) # store 0x441f96a9590a5a17 in memory
fld f31, 0(x2) # load 0x441f96a9590a5a17 from memory into f31
fdiv.d f31, f11, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x8, 0xa65fdd0a24f8f781 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
li x3, 0xa5e725dcbae8ec64 # load x3 with value 0xa5e725dcbae8ec64
sd x3, 0(x2) # store 0xa5e725dcbae8ec64 in memory
fld f18, 0(x2) # load 0xa5e725dcbae8ec64 from memory into f18
fdiv.d f8, f2, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x22, 0x98b8d1db9dc02200 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
li x3, 0x0822969ec4462317 # load x3 with value 0x0822969ec4462317
sd x3, 0(x2) # store 0x0822969ec4462317 in memory
fld f12, 0(x2) # load 0x0822969ec4462317 from memory into f12
fdiv.d f22, f31, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x22, 0xa1c67983b8732431 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
li x3, 0xbf5aeb97286b933d # load x3 with value 0xbf5aeb97286b933d
sd x3, 0(x2) # store 0xbf5aeb97286b933d in memory
fld f2, 0(x2) # load 0xbf5aeb97286b933d from memory into f2
fdiv.d f22, f24, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x13, 0x6018506fd340265a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0xfaeeda6e10f79d47 # load x3 with value 0xfaeeda6e10f79d47
sd x3, 0(x2) # store 0xfaeeda6e10f79d47 in memory
fld f10, 0(x2) # load 0xfaeeda6e10f79d47 from memory into f10
fdiv.d f13, f26, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x22, 0x40012a4edc1ebd55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
li x3, 0x338a6a5912bfcb30 # load x3 with value 0x338a6a5912bfcb30
sd x3, 0(x2) # store 0x338a6a5912bfcb30 in memory
fld f28, 0(x2) # load 0x338a6a5912bfcb30 from memory into f28
fdiv.d f22, f29, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x10, 0xe594e6d4e2d57be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0xb605d47de2246c74 # load x3 with value 0xb605d47de2246c74
sd x3, 0(x2) # store 0xb605d47de2246c74 in memory
fld f3, 0(x2) # load 0xb605d47de2246c74 from memory into f3
fdiv.d f10, f18, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x7, 0x439bd9abfe2e1517 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
li x3, 0x8a8c7f68cd684b2f # load x3 with value 0x8a8c7f68cd684b2f
sd x3, 0(x2) # store 0x8a8c7f68cd684b2f in memory
fld f28, 0(x2) # load 0x8a8c7f68cd684b2f from memory into f28
fdiv.d f7, f13, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x3, 0x86ca04b1e7cdc4d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0x2ea729f5cac2a629 # load x3 with value 0x2ea729f5cac2a629
sd x3, 0(x2) # store 0x2ea729f5cac2a629 in memory
fld f25, 0(x2) # load 0x2ea729f5cac2a629 from memory into f25
fdiv.d f3, f22, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x29, 0x9d2864716ac01fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
li x3, 0x228bf503f027eb6d # load x3 with value 0x228bf503f027eb6d
sd x3, 0(x2) # store 0x228bf503f027eb6d in memory
fld f5, 0(x2) # load 0x228bf503f027eb6d from memory into f5
fdiv.d f29, f31, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x4, 0x8d8bb93c509d56b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
li x3, 0x7571ba56b3094835 # load x3 with value 0x7571ba56b3094835
sd x3, 0(x2) # store 0x7571ba56b3094835 in memory
fld f21, 0(x2) # load 0x7571ba56b3094835 from memory into f21
fdiv.d f4, f19, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x29, 0x603ee8c12c575022 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
li x3, 0xddbce2bbf8d84ed9 # load x3 with value 0xddbce2bbf8d84ed9
sd x3, 0(x2) # store 0xddbce2bbf8d84ed9 in memory
fld f17, 0(x2) # load 0xddbce2bbf8d84ed9 from memory into f17
fdiv.d f29, f22, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x28, 0x26a57c2974d3eb5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0x099133604ab66bf2 # load x3 with value 0x099133604ab66bf2
sd x3, 0(x2) # store 0x099133604ab66bf2 in memory
fld f13, 0(x2) # load 0x099133604ab66bf2 from memory into f13
fdiv.d f28, f18, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x14, 0x4e4442ca5eda3f02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
li x3, 0x0009016bed5eccbc # load x3 with value 0x0009016bed5eccbc
sd x3, 0(x2) # store 0x0009016bed5eccbc in memory
fld f12, 0(x2) # load 0x0009016bed5eccbc from memory into f12
fdiv.d f14, f13, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x18, 0x44a63af9ee483f71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
li x3, 0x85a7687ba8b3d14c # load x3 with value 0x85a7687ba8b3d14c
sd x3, 0(x2) # store 0x85a7687ba8b3d14c in memory
fld f11, 0(x2) # load 0x85a7687ba8b3d14c from memory into f11
fdiv.d f18, f27, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x6, 0x92825888a1973e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
li x3, 0x61a834cf815b4ebc # load x3 with value 0x61a834cf815b4ebc
sd x3, 0(x2) # store 0x61a834cf815b4ebc in memory
fld f13, 0(x2) # load 0x61a834cf815b4ebc from memory into f13
fdiv.d f6, f23, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x17, 0xb86879c0f66a55bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
li x3, 0x5477653569502b94 # load x3 with value 0x5477653569502b94
sd x3, 0(x2) # store 0x5477653569502b94 in memory
fld f4, 0(x2) # load 0x5477653569502b94 from memory into f4
fdiv.d f17, f9, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x19, 0x450383b136bfad5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
li x3, 0x3083ec4d418286c0 # load x3 with value 0x3083ec4d418286c0
sd x3, 0(x2) # store 0x3083ec4d418286c0 in memory
fld f27, 0(x2) # load 0x3083ec4d418286c0 from memory into f27
fdiv.d f19, f14, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x9, 0xa46901995de46b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f1, 0(x2) # load 0x8000000000000001 from memory into f1
li x3, 0x6900cfaba9f02bc2 # load x3 with value 0x6900cfaba9f02bc2
sd x3, 0(x2) # store 0x6900cfaba9f02bc2 in memory
fld f2, 0(x2) # load 0x6900cfaba9f02bc2 from memory into f2
fdiv.d f9, f1, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x28, 0x3cd2d11e94dd3f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
li x3, 0x0b41284df51a9500 # load x3 with value 0x0b41284df51a9500
sd x3, 0(x2) # store 0x0b41284df51a9500 in memory
fld f15, 0(x2) # load 0x0b41284df51a9500 from memory into f15
fdiv.d f28, f22, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x21, 0xc914a49f19dafc1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
li x3, 0xbd07275514ce8c7c # load x3 with value 0xbd07275514ce8c7c
sd x3, 0(x2) # store 0xbd07275514ce8c7c in memory
fld f16, 0(x2) # load 0xbd07275514ce8c7c from memory into f16
fdiv.d f21, f20, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x20, 0x787f35e8568ca768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0x5c846c1ad0c3fb05 # load x3 with value 0x5c846c1ad0c3fb05
sd x3, 0(x2) # store 0x5c846c1ad0c3fb05 in memory
fld f7, 0(x2) # load 0x5c846c1ad0c3fb05 from memory into f7
fdiv.d f20, f11, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x24, 0xd5f048eeddce6e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
li x3, 0x194f63201effa6a1 # load x3 with value 0x194f63201effa6a1
sd x3, 0(x2) # store 0x194f63201effa6a1 in memory
fld f15, 0(x2) # load 0x194f63201effa6a1 from memory into f15
fdiv.d f24, f7, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x2, 0x6644a2d35c5bc68c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
li x3, 0x725f8098c6e3aa62 # load x3 with value 0x725f8098c6e3aa62
sd x3, 0(x2) # store 0x725f8098c6e3aa62 in memory
fld f8, 0(x2) # load 0x725f8098c6e3aa62 from memory into f8
fdiv.d f2, f27, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x20, 0xd303f91500fa02de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
li x3, 0xaf372e3e6e254508 # load x3 with value 0xaf372e3e6e254508
sd x3, 0(x2) # store 0xaf372e3e6e254508 in memory
fld f3, 0(x2) # load 0xaf372e3e6e254508 from memory into f3
fdiv.d f20, f21, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x19, 0xf914cf51565eaf27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
li x3, 0x0d7c12655bca8097 # load x3 with value 0x0d7c12655bca8097
sd x3, 0(x2) # store 0x0d7c12655bca8097 in memory
fld f28, 0(x2) # load 0x0d7c12655bca8097 from memory into f28
fdiv.d f19, f23, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x23, 0x6b6ee0d6f31e1eae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
li x3, 0xc62d59605a2fd892 # load x3 with value 0xc62d59605a2fd892
sd x3, 0(x2) # store 0xc62d59605a2fd892 in memory
fld f15, 0(x2) # load 0xc62d59605a2fd892 from memory into f15
fdiv.d f23, f16, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x31, 0xf0cd1800717311dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x336e095f82d251c2 # load x3 with value 0x336e095f82d251c2
sd x3, 0(x2) # store 0x336e095f82d251c2 in memory
fld f10, 0(x2) # load 0x336e095f82d251c2 from memory into f10
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fdiv.d f31, f10, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x8, 0x91095e345b079239 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa977c72bd5cb5945 # load x3 with value 0xa977c72bd5cb5945
sd x3, 0(x2) # store 0xa977c72bd5cb5945 in memory
fld f25, 0(x2) # load 0xa977c72bd5cb5945 from memory into f25
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
fdiv.d f8, f25, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x18, 0x345d42d59e3df6ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd8d537f2369230c # load x3 with value 0xfd8d537f2369230c
sd x3, 0(x2) # store 0xfd8d537f2369230c in memory
fld f6, 0(x2) # load 0xfd8d537f2369230c from memory into f6
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fdiv.d f18, f6, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x13, 0x8cf2e1f3cc3adcc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe3aa7ef012939be # load x3 with value 0xbe3aa7ef012939be
sd x3, 0(x2) # store 0xbe3aa7ef012939be in memory
fld f19, 0(x2) # load 0xbe3aa7ef012939be from memory into f19
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fdiv.d f13, f19, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x26, 0xc74ee696f332285a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x280618b78e14168e # load x3 with value 0x280618b78e14168e
sd x3, 0(x2) # store 0x280618b78e14168e in memory
fld f29, 0(x2) # load 0x280618b78e14168e from memory into f29
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fdiv.d f26, f29, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x15, 0x1c7c228587c4d9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbb86453e54e2431 # load x3 with value 0xdbb86453e54e2431
sd x3, 0(x2) # store 0xdbb86453e54e2431 in memory
fld f10, 0(x2) # load 0xdbb86453e54e2431 from memory into f10
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
fdiv.d f15, f10, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x16, 0xb09fce4fbfd8d5c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b3f2a89c9e8d182 # load x3 with value 0x4b3f2a89c9e8d182
sd x3, 0(x2) # store 0x4b3f2a89c9e8d182 in memory
fld f25, 0(x2) # load 0x4b3f2a89c9e8d182 from memory into f25
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fdiv.d f16, f25, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x12, 0x430de1b5be54ee00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77cb2c84974682f7 # load x3 with value 0x77cb2c84974682f7
sd x3, 0(x2) # store 0x77cb2c84974682f7 in memory
fld f13, 0(x2) # load 0x77cb2c84974682f7 from memory into f13
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
fdiv.d f12, f13, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x18, 0x9647e7cc7e8aab4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34f4b2646924316b # load x3 with value 0x34f4b2646924316b
sd x3, 0(x2) # store 0x34f4b2646924316b in memory
fld f6, 0(x2) # load 0x34f4b2646924316b from memory into f6
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
fdiv.d f18, f6, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x19, 0x234ce5a7ec5d2e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc0093386bb97786 # load x3 with value 0xbc0093386bb97786
sd x3, 0(x2) # store 0xbc0093386bb97786 in memory
fld f18, 0(x2) # load 0xbc0093386bb97786 from memory into f18
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fdiv.d f19, f18, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x14, 0x128ff44b8eca6d44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe52b8cfe7dbef592 # load x3 with value 0xe52b8cfe7dbef592
sd x3, 0(x2) # store 0xe52b8cfe7dbef592 in memory
fld f4, 0(x2) # load 0xe52b8cfe7dbef592 from memory into f4
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
fdiv.d f14, f4, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x8, 0x72204908143a8cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc54622059a00418 # load x3 with value 0xcc54622059a00418
sd x3, 0(x2) # store 0xcc54622059a00418 in memory
fld f18, 0(x2) # load 0xcc54622059a00418 from memory into f18
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fdiv.d f8, f18, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x30, 0x557970829f8b7fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1b523f52f1b0119 # load x3 with value 0xc1b523f52f1b0119
sd x3, 0(x2) # store 0xc1b523f52f1b0119 in memory
fld f12, 0(x2) # load 0xc1b523f52f1b0119 from memory into f12
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
fdiv.d f30, f12, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x26, 0xabc2f8c3c52638a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ac4199104e24022 # load x3 with value 0x4ac4199104e24022
sd x3, 0(x2) # store 0x4ac4199104e24022 in memory
fld f9, 0(x2) # load 0x4ac4199104e24022 from memory into f9
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
fdiv.d f26, f9, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x6, 0x64f71ce0ce550863 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67a60e41eb32ae0a # load x3 with value 0x67a60e41eb32ae0a
sd x3, 0(x2) # store 0x67a60e41eb32ae0a in memory
fld f8, 0(x2) # load 0x67a60e41eb32ae0a from memory into f8
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
fdiv.d f6, f8, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x7, 0xed7bce15a9b7fb3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88dc5e6aa795d1c7 # load x3 with value 0x88dc5e6aa795d1c7
sd x3, 0(x2) # store 0x88dc5e6aa795d1c7 in memory
fld f1, 0(x2) # load 0x88dc5e6aa795d1c7 from memory into f1
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
fdiv.d f7, f1, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x10, 0xf6898bcb4958c29b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98540e78587db0db # load x3 with value 0x98540e78587db0db
sd x3, 0(x2) # store 0x98540e78587db0db in memory
fld f8, 0(x2) # load 0x98540e78587db0db from memory into f8
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fdiv.d f10, f8, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x6, 0x5559dcb854e196e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xade62ec611d0ba72 # load x3 with value 0xade62ec611d0ba72
sd x3, 0(x2) # store 0xade62ec611d0ba72 in memory
fld f13, 0(x2) # load 0xade62ec611d0ba72 from memory into f13
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
fdiv.d f6, f13, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x22, 0x73cf25515a4b04a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52a5736155dafa82 # load x3 with value 0x52a5736155dafa82
sd x3, 0(x2) # store 0x52a5736155dafa82 in memory
fld f1, 0(x2) # load 0x52a5736155dafa82 from memory into f1
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
fdiv.d f22, f1, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x15, 0xe7f8e4b26ceef18e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x863bf160050088a8 # load x3 with value 0x863bf160050088a8
sd x3, 0(x2) # store 0x863bf160050088a8 in memory
fld f22, 0(x2) # load 0x863bf160050088a8 from memory into f22
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
fdiv.d f15, f22, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x15, 0xbb05773e5983a6a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x949de7e4043db18e # load x3 with value 0x949de7e4043db18e
sd x3, 0(x2) # store 0x949de7e4043db18e in memory
fld f12, 0(x2) # load 0x949de7e4043db18e from memory into f12
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
fdiv.d f15, f12, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x9, 0xbd500358ec103874 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d58f3b8025ce668 # load x3 with value 0x7d58f3b8025ce668
sd x3, 0(x2) # store 0x7d58f3b8025ce668 in memory
fld f17, 0(x2) # load 0x7d58f3b8025ce668 from memory into f17
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
fdiv.d f9, f17, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x18, 0xfb4c66734e031098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1fef14babbd626bc # load x3 with value 0x1fef14babbd626bc
sd x3, 0(x2) # store 0x1fef14babbd626bc in memory
fld f24, 0(x2) # load 0x1fef14babbd626bc from memory into f24
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
fdiv.d f18, f24, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x25, 0x912d67f2650e440f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1764ac0f132b81e # load x3 with value 0xb1764ac0f132b81e
sd x3, 0(x2) # store 0xb1764ac0f132b81e in memory
fld f29, 0(x2) # load 0xb1764ac0f132b81e from memory into f29
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fdiv.d f25, f29, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x14, 0x7eeace76d8ef53ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x991895934ace5c6f # load x3 with value 0x991895934ace5c6f
sd x3, 0(x2) # store 0x991895934ace5c6f in memory
fld f5, 0(x2) # load 0x991895934ace5c6f from memory into f5
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
fdiv.d f14, f5, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x1, 0xeea8763cad1f45eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x342090c36ce42377 # load x3 with value 0x342090c36ce42377
sd x3, 0(x2) # store 0x342090c36ce42377 in memory
fld f29, 0(x2) # load 0x342090c36ce42377 from memory into f29
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
fdiv.d f1, f29, f18 # perform operation

# Testcase cp_frm
li x11, 0x00185a0d3e3acb48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe00075665bfad38d # load x3 with value 0xe00075665bfad38d
sd x3, 0(x2) # store 0xe00075665bfad38d in memory
fld f31, 0(x2) # load 0xe00075665bfad38d from memory into f31
li x3, 0x3695662b9575071f # load x3 with value 0x3695662b9575071f
sd x3, 0(x2) # store 0x3695662b9575071f in memory
fld f16, 0(x2) # load 0x3695662b9575071f from memory into f16
fdiv.d f11, f31, f16, dyn # perform operation
fdiv.d f11, f31, f16, rdn # perform operation
fdiv.d f11, f31, f16, rmm # perform operation
fdiv.d f11, f31, f16, rne # perform operation
fdiv.d f11, f31, f16, rtz # perform operation
fdiv.d f11, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x15, 0x5c718ecb7999f9dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
fdiv.d f15, f6, f1, dyn # perform operation
fdiv.d f15, f6, f1, rdn # perform operation
fdiv.d f15, f6, f1, rmm # perform operation
fdiv.d f15, f6, f1, rne # perform operation
fdiv.d f15, f6, f1, rtz # perform operation
fdiv.d f15, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000000)
li x17, 0x9f3dbf9332949d25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
fdiv.d f17, f11, f2, dyn # perform operation
fdiv.d f17, f11, f2, rdn # perform operation
fdiv.d f17, f11, f2, rmm # perform operation
fdiv.d f17, f11, f2, rne # perform operation
fdiv.d f17, f11, f2, rtz # perform operation
fdiv.d f17, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff0000000000000)
li x4, 0xfd92355174f8afcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fdiv.d f4, f19, f23, dyn # perform operation
fdiv.d f4, f19, f23, rdn # perform operation
fdiv.d f4, f19, f23, rmm # perform operation
fdiv.d f4, f19, f23, rne # perform operation
fdiv.d f4, f19, f23, rtz # perform operation
fdiv.d f4, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff0000000000000)
li x31, 0x532fdaac1b105cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f14, 0(x2) # load 0x0000000000000000 from memory into f14
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fdiv.d f31, f14, f3, dyn # perform operation
fdiv.d f31, f14, f3, rdn # perform operation
fdiv.d f31, f14, f3, rmm # perform operation
fdiv.d f31, f14, f3, rne # perform operation
fdiv.d f31, f14, f3, rtz # perform operation
fdiv.d f31, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff8000000000000)
li x12, 0x5f6ad1419b1e1bd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
fdiv.d f12, f2, f10, dyn # perform operation
fdiv.d f12, f2, f10, rdn # perform operation
fdiv.d f12, f2, f10, rmm # perform operation
fdiv.d f12, f2, f10, rne # perform operation
fdiv.d f12, f2, f10, rtz # perform operation
fdiv.d f12, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff8000000000000)
li x3, 0x95230b24f524d21d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
fdiv.d f3, f24, f9, dyn # perform operation
fdiv.d f3, f24, f9, rdn # perform operation
fdiv.d f3, f24, f9, rmm # perform operation
fdiv.d f3, f24, f9, rne # perform operation
fdiv.d f3, f24, f9, rtz # perform operation
fdiv.d f3, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000000000000000)
li x11, 0x37529c6a329d2cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
fdiv.d f11, f13, f30, dyn # perform operation
fdiv.d f11, f13, f30, rdn # perform operation
fdiv.d f11, f13, f30, rmm # perform operation
fdiv.d f11, f13, f30, rne # perform operation
fdiv.d f11, f13, f30, rtz # perform operation
fdiv.d f11, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000000000000000)
li x1, 0x02f62c6ff203b186 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fdiv.d f1, f3, f25, dyn # perform operation
fdiv.d f1, f3, f25, rdn # perform operation
fdiv.d f1, f3, f25, rmm # perform operation
fdiv.d f1, f3, f25, rne # perform operation
fdiv.d f1, f3, f25, rtz # perform operation
fdiv.d f1, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x10000000000000)
li x30, 0x772d10dbfd1eb97d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
fdiv.d f30, f8, f5, dyn # perform operation
fdiv.d f30, f8, f5, rdn # perform operation
fdiv.d f30, f8, f5, rmm # perform operation
fdiv.d f30, f8, f5, rne # perform operation
fdiv.d f30, f8, f5, rtz # perform operation
fdiv.d f30, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8010000000000000)
li x2, 0x35b2bafa402b2c35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fdiv.d f2, f5, f21, dyn # perform operation
fdiv.d f2, f5, f21, rdn # perform operation
fdiv.d f2, f5, f21, rmm # perform operation
fdiv.d f2, f5, f21, rne # perform operation
fdiv.d f2, f5, f21, rtz # perform operation
fdiv.d f2, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fefffffffffffff)
li x29, 0x175c069bcfdd0605 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
fdiv.d f29, f13, f24, dyn # perform operation
fdiv.d f29, f13, f24, rdn # perform operation
fdiv.d f29, f13, f24, rmm # perform operation
fdiv.d f29, f13, f24, rne # perform operation
fdiv.d f29, f13, f24, rtz # perform operation
fdiv.d f29, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffefffffffffffff)
li x18, 0x4665248eaa53a1bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f27, 0(x2) # load 0x0000000000000000 from memory into f27
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
fdiv.d f18, f27, f3, dyn # perform operation
fdiv.d f18, f27, f3, rdn # perform operation
fdiv.d f18, f27, f3, rmm # perform operation
fdiv.d f18, f27, f3, rne # perform operation
fdiv.d f18, f27, f3, rtz # perform operation
fdiv.d f18, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfffffffffffff)
li x8, 0x60238012f639de70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fdiv.d f8, f7, f16, dyn # perform operation
fdiv.d f8, f7, f16, rdn # perform operation
fdiv.d f8, f7, f16, rmm # perform operation
fdiv.d f8, f7, f16, rne # perform operation
fdiv.d f8, f7, f16, rtz # perform operation
fdiv.d f8, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800fffffffffffff)
li x1, 0xc919af6fdb9fd8fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
fdiv.d f1, f12, f2, dyn # perform operation
fdiv.d f1, f12, f2, rdn # perform operation
fdiv.d f1, f12, f2, rmm # perform operation
fdiv.d f1, f12, f2, rne # perform operation
fdiv.d f1, f12, f2, rtz # perform operation
fdiv.d f1, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000)
li x23, 0x7fb10b165b4940d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fdiv.d f23, f13, f28, dyn # perform operation
fdiv.d f23, f13, f28, rdn # perform operation
fdiv.d f23, f13, f28, rmm # perform operation
fdiv.d f23, f13, f28, rne # perform operation
fdiv.d f23, f13, f28, rtz # perform operation
fdiv.d f23, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8008000000000000)
li x27, 0xd2fe5cc2b96d4f19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
fdiv.d f27, f21, f11, dyn # perform operation
fdiv.d f27, f21, f11, rdn # perform operation
fdiv.d f27, f21, f11, rmm # perform operation
fdiv.d f27, f21, f11, rne # perform operation
fdiv.d f27, f21, f11, rtz # perform operation
fdiv.d f27, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x28, 0x21be290dc604956d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fdiv.d f28, f24, f13, dyn # perform operation
fdiv.d f28, f24, f13, rdn # perform operation
fdiv.d f28, f24, f13, rmm # perform operation
fdiv.d f28, f24, f13, rne # perform operation
fdiv.d f28, f24, f13, rtz # perform operation
fdiv.d f28, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000001)
li x27, 0xc59e53f0a2086f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
fdiv.d f27, f3, f28, dyn # perform operation
fdiv.d f27, f3, f28, rdn # perform operation
fdiv.d f27, f3, f28, rmm # perform operation
fdiv.d f27, f3, f28, rne # perform operation
fdiv.d f27, f3, f28, rtz # perform operation
fdiv.d f27, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000000)
li x3, 0x6bb801b84d169eb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f13, 0(x2) # load 0x7ff0000000000000 from memory into f13
fdiv.d f3, f2, f13, dyn # perform operation
fdiv.d f3, f2, f13, rdn # perform operation
fdiv.d f3, f2, f13, rmm # perform operation
fdiv.d f3, f2, f13, rne # perform operation
fdiv.d f3, f2, f13, rtz # perform operation
fdiv.d f3, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfff0000000000000)
li x25, 0x87da199f239f78c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
fdiv.d f25, f23, f4, dyn # perform operation
fdiv.d f25, f23, f4, rdn # perform operation
fdiv.d f25, f23, f4, rmm # perform operation
fdiv.d f25, f23, f4, rne # perform operation
fdiv.d f25, f23, f4, rtz # perform operation
fdiv.d f25, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff8000000000000)
li x25, 0xb076e4e16516e762 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
fdiv.d f25, f20, f31, dyn # perform operation
fdiv.d f25, f20, f31, rdn # perform operation
fdiv.d f25, f20, f31, rmm # perform operation
fdiv.d f25, f20, f31, rne # perform operation
fdiv.d f25, f20, f31, rtz # perform operation
fdiv.d f25, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffffffffffff)
li x2, 0x1ff3b8eca717caab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fdiv.d f2, f16, f9, dyn # perform operation
fdiv.d f2, f16, f9, rdn # perform operation
fdiv.d f2, f16, f9, rmm # perform operation
fdiv.d f2, f16, f9, rne # perform operation
fdiv.d f2, f16, f9, rtz # perform operation
fdiv.d f2, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000001)
li x27, 0x8719b725e5f2ba82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
fdiv.d f27, f11, f29, dyn # perform operation
fdiv.d f27, f11, f29, rdn # perform operation
fdiv.d f27, f11, f29, rmm # perform operation
fdiv.d f27, f11, f29, rne # perform operation
fdiv.d f27, f11, f29, rtz # perform operation
fdiv.d f27, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff7ffffffffffff)
li x8, 0x55c35537d5b29967 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
fdiv.d f8, f30, f4, dyn # perform operation
fdiv.d f8, f30, f4, rdn # perform operation
fdiv.d f8, f30, f4, rmm # perform operation
fdiv.d f8, f30, f4, rne # perform operation
fdiv.d f8, f30, f4, rtz # perform operation
fdiv.d f8, f30, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f30, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f30, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f30, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f30, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f30, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x5a392534a57711ad)
li x29, 0x4bb021ace4092d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
fdiv.d f29, f22, f9, dyn # perform operation
fdiv.d f29, f22, f9, rdn # perform operation
fdiv.d f29, f22, f9, rmm # perform operation
fdiv.d f29, f22, f9, rne # perform operation
fdiv.d f29, f22, f9, rtz # perform operation
fdiv.d f29, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xa6e895993737426c)
li x10, 0x564accbcbb542d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
fdiv.d f10, f28, f25, dyn # perform operation
fdiv.d f10, f28, f25, rdn # perform operation
fdiv.d f10, f28, f25, rmm # perform operation
fdiv.d f10, f28, f25, rne # perform operation
fdiv.d f10, f28, f25, rtz # perform operation
fdiv.d f10, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x0)
li x28, 0xe90c2ce019981781 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fdiv.d f28, f22, f13, dyn # perform operation
fdiv.d f28, f22, f13, rdn # perform operation
fdiv.d f28, f22, f13, rmm # perform operation
fdiv.d f28, f22, f13, rne # perform operation
fdiv.d f28, f22, f13, rtz # perform operation
fdiv.d f28, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000000)
li x18, 0xa3c30b21652bc308 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
fdiv.d f18, f11, f25, dyn # perform operation
fdiv.d f18, f11, f25, rdn # perform operation
fdiv.d f18, f11, f25, rmm # perform operation
fdiv.d f18, f11, f25, rne # perform operation
fdiv.d f18, f11, f25, rtz # perform operation
fdiv.d f18, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff0000000000000)
li x1, 0x90a9e76da578db01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
fdiv.d f1, f9, f12, dyn # perform operation
fdiv.d f1, f9, f12, rdn # perform operation
fdiv.d f1, f9, f12, rmm # perform operation
fdiv.d f1, f9, f12, rne # perform operation
fdiv.d f1, f9, f12, rtz # perform operation
fdiv.d f1, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff0000000000000)
li x4, 0xc5c14deee9dbfc33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fdiv.d f4, f24, f23, dyn # perform operation
fdiv.d f4, f24, f23, rdn # perform operation
fdiv.d f4, f24, f23, rmm # perform operation
fdiv.d f4, f24, f23, rne # perform operation
fdiv.d f4, f24, f23, rtz # perform operation
fdiv.d f4, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff8000000000000)
li x16, 0xe2a274673d0ea6d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
fdiv.d f16, f26, f20, dyn # perform operation
fdiv.d f16, f26, f20, rdn # perform operation
fdiv.d f16, f26, f20, rmm # perform operation
fdiv.d f16, f26, f20, rne # perform operation
fdiv.d f16, f26, f20, rtz # perform operation
fdiv.d f16, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff8000000000000)
li x26, 0xc854ce50ef391915 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fdiv.d f26, f19, f21, dyn # perform operation
fdiv.d f26, f19, f21, rdn # perform operation
fdiv.d f26, f19, f21, rmm # perform operation
fdiv.d f26, f19, f21, rne # perform operation
fdiv.d f26, f19, f21, rtz # perform operation
fdiv.d f26, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x4000000000000000)
li x1, 0x06f7aac293623f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
fdiv.d f1, f10, f5, dyn # perform operation
fdiv.d f1, f10, f5, rdn # perform operation
fdiv.d f1, f10, f5, rmm # perform operation
fdiv.d f1, f10, f5, rne # perform operation
fdiv.d f1, f10, f5, rtz # perform operation
fdiv.d f1, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xc000000000000000)
li x17, 0xef20eeef22a13a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
fdiv.d f17, f27, f18, dyn # perform operation
fdiv.d f17, f27, f18, rdn # perform operation
fdiv.d f17, f27, f18, rmm # perform operation
fdiv.d f17, f27, f18, rne # perform operation
fdiv.d f17, f27, f18, rtz # perform operation
fdiv.d f17, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x10000000000000)
li x22, 0xaeb7da83c90de170 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
fdiv.d f22, f6, f10, dyn # perform operation
fdiv.d f22, f6, f10, rdn # perform operation
fdiv.d f22, f6, f10, rmm # perform operation
fdiv.d f22, f6, f10, rne # perform operation
fdiv.d f22, f6, f10, rtz # perform operation
fdiv.d f22, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8010000000000000)
li x11, 0x7712fffcf4013be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fdiv.d f11, f14, f17, dyn # perform operation
fdiv.d f11, f14, f17, rdn # perform operation
fdiv.d f11, f14, f17, rmm # perform operation
fdiv.d f11, f14, f17, rne # perform operation
fdiv.d f11, f14, f17, rtz # perform operation
fdiv.d f11, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fefffffffffffff)
li x2, 0x2709eb852a237d40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fdiv.d f2, f25, f19, dyn # perform operation
fdiv.d f2, f25, f19, rdn # perform operation
fdiv.d f2, f25, f19, rmm # perform operation
fdiv.d f2, f25, f19, rne # perform operation
fdiv.d f2, f25, f19, rtz # perform operation
fdiv.d f2, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xffefffffffffffff)
li x9, 0x14e7c99eb29edea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
fdiv.d f9, f13, f10, dyn # perform operation
fdiv.d f9, f13, f10, rdn # perform operation
fdiv.d f9, f13, f10, rmm # perform operation
fdiv.d f9, f13, f10, rne # perform operation
fdiv.d f9, f13, f10, rtz # perform operation
fdiv.d f9, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfffffffffffff)
li x26, 0xb30365073b5671e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
fdiv.d f26, f28, f14, dyn # perform operation
fdiv.d f26, f28, f14, rdn # perform operation
fdiv.d f26, f28, f14, rmm # perform operation
fdiv.d f26, f28, f14, rne # perform operation
fdiv.d f26, f28, f14, rtz # perform operation
fdiv.d f26, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x800fffffffffffff)
li x15, 0x6294f91cc02e1884 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
fdiv.d f15, f29, f26, dyn # perform operation
fdiv.d f15, f29, f26, rdn # perform operation
fdiv.d f15, f29, f26, rmm # perform operation
fdiv.d f15, f29, f26, rne # perform operation
fdiv.d f15, f29, f26, rtz # perform operation
fdiv.d f15, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000)
li x9, 0x16f8be03c8096feb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
fdiv.d f9, f16, f6, dyn # perform operation
fdiv.d f9, f16, f6, rdn # perform operation
fdiv.d f9, f16, f6, rmm # perform operation
fdiv.d f9, f16, f6, rne # perform operation
fdiv.d f9, f16, f6, rtz # perform operation
fdiv.d f9, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8008000000000000)
li x1, 0xced1c649b6f159b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
fdiv.d f1, f22, f9, dyn # perform operation
fdiv.d f1, f22, f9, rdn # perform operation
fdiv.d f1, f22, f9, rmm # perform operation
fdiv.d f1, f22, f9, rne # perform operation
fdiv.d f1, f22, f9, rtz # perform operation
fdiv.d f1, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x1)
li x13, 0xdecb9f038c8a3d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
fdiv.d f13, f26, f17, dyn # perform operation
fdiv.d f13, f26, f17, rdn # perform operation
fdiv.d f13, f26, f17, rmm # perform operation
fdiv.d f13, f26, f17, rne # perform operation
fdiv.d f13, f26, f17, rtz # perform operation
fdiv.d f13, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000001)
li x24, 0x60943f986b8fbf5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
fdiv.d f24, f13, f28, dyn # perform operation
fdiv.d f24, f13, f28, rdn # perform operation
fdiv.d f24, f13, f28, rmm # perform operation
fdiv.d f24, f13, f28, rne # perform operation
fdiv.d f24, f13, f28, rtz # perform operation
fdiv.d f24, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000000)
li x28, 0x16e5a0c95b4127db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fdiv.d f28, f11, f16, dyn # perform operation
fdiv.d f28, f11, f16, rdn # perform operation
fdiv.d f28, f11, f16, rmm # perform operation
fdiv.d f28, f11, f16, rne # perform operation
fdiv.d f28, f11, f16, rtz # perform operation
fdiv.d f28, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfff0000000000000)
li x11, 0x3a39081577836925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f4, 0(x2) # load 0x8000000000000000 from memory into f4
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fdiv.d f11, f4, f26, dyn # perform operation
fdiv.d f11, f4, f26, rdn # perform operation
fdiv.d f11, f4, f26, rmm # perform operation
fdiv.d f11, f4, f26, rne # perform operation
fdiv.d f11, f4, f26, rtz # perform operation
fdiv.d f11, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff8000000000000)
li x14, 0x48c157b86e4e83f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
fdiv.d f14, f18, f2, dyn # perform operation
fdiv.d f14, f18, f2, rdn # perform operation
fdiv.d f14, f18, f2, rmm # perform operation
fdiv.d f14, f18, f2, rne # perform operation
fdiv.d f14, f18, f2, rtz # perform operation
fdiv.d f14, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fffffffffffffff)
li x23, 0x1f92dbd9b9057ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fdiv.d f23, f21, f9, dyn # perform operation
fdiv.d f23, f21, f9, rdn # perform operation
fdiv.d f23, f21, f9, rmm # perform operation
fdiv.d f23, f21, f9, rne # perform operation
fdiv.d f23, f21, f9, rtz # perform operation
fdiv.d f23, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000001)
li x5, 0x5cefc0b420407658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
fdiv.d f5, f20, f13, dyn # perform operation
fdiv.d f5, f20, f13, rdn # perform operation
fdiv.d f5, f20, f13, rmm # perform operation
fdiv.d f5, f20, f13, rne # perform operation
fdiv.d f5, f20, f13, rtz # perform operation
fdiv.d f5, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff7ffffffffffff)
li x10, 0x9925830c62c2eba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
fdiv.d f10, f8, f20, dyn # perform operation
fdiv.d f10, f8, f20, rdn # perform operation
fdiv.d f10, f8, f20, rmm # perform operation
fdiv.d f10, f8, f20, rne # perform operation
fdiv.d f10, f8, f20, rtz # perform operation
fdiv.d f10, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x5a392534a57711ad)
li x22, 0xefbb18f967b32f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
fdiv.d f22, f25, f20, dyn # perform operation
fdiv.d f22, f25, f20, rdn # perform operation
fdiv.d f22, f25, f20, rmm # perform operation
fdiv.d f22, f25, f20, rne # perform operation
fdiv.d f22, f25, f20, rtz # perform operation
fdiv.d f22, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xa6e895993737426c)
li x30, 0xda54769f478f269e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
fdiv.d f30, f27, f23, dyn # perform operation
fdiv.d f30, f27, f23, rdn # perform operation
fdiv.d f30, f27, f23, rmm # perform operation
fdiv.d f30, f27, f23, rne # perform operation
fdiv.d f30, f27, f23, rtz # perform operation
fdiv.d f30, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x0)
li x6, 0x8f96c305a8d737c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
fdiv.d f6, f4, f8, dyn # perform operation
fdiv.d f6, f4, f8, rdn # perform operation
fdiv.d f6, f4, f8, rmm # perform operation
fdiv.d f6, f4, f8, rne # perform operation
fdiv.d f6, f4, f8, rtz # perform operation
fdiv.d f6, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000000)
li x16, 0xc44c7ad50c717aee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
fdiv.d f16, f22, f11, dyn # perform operation
fdiv.d f16, f22, f11, rdn # perform operation
fdiv.d f16, f22, f11, rmm # perform operation
fdiv.d f16, f22, f11, rne # perform operation
fdiv.d f16, f22, f11, rtz # perform operation
fdiv.d f16, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff0000000000000)
li x28, 0xe452a89fb9d16ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
fdiv.d f28, f22, f7, dyn # perform operation
fdiv.d f28, f22, f7, rdn # perform operation
fdiv.d f28, f22, f7, rmm # perform operation
fdiv.d f28, f22, f7, rne # perform operation
fdiv.d f28, f22, f7, rtz # perform operation
fdiv.d f28, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff0000000000000)
li x7, 0xbf26be420fcfed8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
fdiv.d f7, f27, f22, dyn # perform operation
fdiv.d f7, f27, f22, rdn # perform operation
fdiv.d f7, f27, f22, rmm # perform operation
fdiv.d f7, f27, f22, rne # perform operation
fdiv.d f7, f27, f22, rtz # perform operation
fdiv.d f7, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff8000000000000)
li x28, 0x2144a3ba1c703b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fdiv.d f28, f12, f21, dyn # perform operation
fdiv.d f28, f12, f21, rdn # perform operation
fdiv.d f28, f12, f21, rmm # perform operation
fdiv.d f28, f12, f21, rne # perform operation
fdiv.d f28, f12, f21, rtz # perform operation
fdiv.d f28, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff8000000000000)
li x30, 0x9111006ac9af78e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f15, 0(x2) # load 0x3ff0000000000000 from memory into f15
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
fdiv.d f30, f15, f5, dyn # perform operation
fdiv.d f30, f15, f5, rdn # perform operation
fdiv.d f30, f15, f5, rmm # perform operation
fdiv.d f30, f15, f5, rne # perform operation
fdiv.d f30, f15, f5, rtz # perform operation
fdiv.d f30, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x4000000000000000)
li x27, 0x4bbf8f4ae1502159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
fdiv.d f27, f22, f17, dyn # perform operation
fdiv.d f27, f22, f17, rdn # perform operation
fdiv.d f27, f22, f17, rmm # perform operation
fdiv.d f27, f22, f17, rne # perform operation
fdiv.d f27, f22, f17, rtz # perform operation
fdiv.d f27, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xc000000000000000)
li x26, 0x27f20fea9e26fbca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
fdiv.d f26, f13, f3, dyn # perform operation
fdiv.d f26, f13, f3, rdn # perform operation
fdiv.d f26, f13, f3, rmm # perform operation
fdiv.d f26, f13, f3, rne # perform operation
fdiv.d f26, f13, f3, rtz # perform operation
fdiv.d f26, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x10000000000000)
li x31, 0xbb1e9d6a754b6e88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
fdiv.d f31, f17, f8, dyn # perform operation
fdiv.d f31, f17, f8, rdn # perform operation
fdiv.d f31, f17, f8, rmm # perform operation
fdiv.d f31, f17, f8, rne # perform operation
fdiv.d f31, f17, f8, rtz # perform operation
fdiv.d f31, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8010000000000000)
li x20, 0x255014f8bfce8809 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f9, 0(x2) # load 0x3ff0000000000000 from memory into f9
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
fdiv.d f20, f9, f30, dyn # perform operation
fdiv.d f20, f9, f30, rdn # perform operation
fdiv.d f20, f9, f30, rmm # perform operation
fdiv.d f20, f9, f30, rne # perform operation
fdiv.d f20, f9, f30, rtz # perform operation
fdiv.d f20, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fefffffffffffff)
li x25, 0xd6045fc6b0f4f15d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
fdiv.d f25, f30, f13, dyn # perform operation
fdiv.d f25, f30, f13, rdn # perform operation
fdiv.d f25, f30, f13, rmm # perform operation
fdiv.d f25, f30, f13, rne # perform operation
fdiv.d f25, f30, f13, rtz # perform operation
fdiv.d f25, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xffefffffffffffff)
li x10, 0x98f5901e898b4839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
fdiv.d f10, f11, f15, dyn # perform operation
fdiv.d f10, f11, f15, rdn # perform operation
fdiv.d f10, f11, f15, rmm # perform operation
fdiv.d f10, f11, f15, rne # perform operation
fdiv.d f10, f11, f15, rtz # perform operation
fdiv.d f10, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfffffffffffff)
li x24, 0xabba199510397b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fdiv.d f24, f16, f12, dyn # perform operation
fdiv.d f24, f16, f12, rdn # perform operation
fdiv.d f24, f16, f12, rmm # perform operation
fdiv.d f24, f16, f12, rne # perform operation
fdiv.d f24, f16, f12, rtz # perform operation
fdiv.d f24, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x800fffffffffffff)
li x8, 0xbbb224146339d80b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f9, 0(x2) # load 0x3ff0000000000000 from memory into f9
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
fdiv.d f8, f9, f23, dyn # perform operation
fdiv.d f8, f9, f23, rdn # perform operation
fdiv.d f8, f9, f23, rmm # perform operation
fdiv.d f8, f9, f23, rne # perform operation
fdiv.d f8, f9, f23, rtz # perform operation
fdiv.d f8, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000)
li x22, 0xa5b24a2efb01ded8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fdiv.d f22, f3, f23, dyn # perform operation
fdiv.d f22, f3, f23, rdn # perform operation
fdiv.d f22, f3, f23, rmm # perform operation
fdiv.d f22, f3, f23, rne # perform operation
fdiv.d f22, f3, f23, rtz # perform operation
fdiv.d f22, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8008000000000000)
li x3, 0x6e5448a0e9fcf22a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fdiv.d f3, f6, f28, dyn # perform operation
fdiv.d f3, f6, f28, rdn # perform operation
fdiv.d f3, f6, f28, rmm # perform operation
fdiv.d f3, f6, f28, rne # perform operation
fdiv.d f3, f6, f28, rtz # perform operation
fdiv.d f3, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x1)
li x11, 0xe15c0b3c0c5bff49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
fdiv.d f11, f12, f18, dyn # perform operation
fdiv.d f11, f12, f18, rdn # perform operation
fdiv.d f11, f12, f18, rmm # perform operation
fdiv.d f11, f12, f18, rne # perform operation
fdiv.d f11, f12, f18, rtz # perform operation
fdiv.d f11, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000001)
li x21, 0x4b44bfc3e54041c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
fdiv.d f21, f8, f10, dyn # perform operation
fdiv.d f21, f8, f10, rdn # perform operation
fdiv.d f21, f8, f10, rmm # perform operation
fdiv.d f21, f8, f10, rne # perform operation
fdiv.d f21, f8, f10, rtz # perform operation
fdiv.d f21, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000000)
li x17, 0x45f6fed20486c347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
fdiv.d f17, f29, f26, dyn # perform operation
fdiv.d f17, f29, f26, rdn # perform operation
fdiv.d f17, f29, f26, rmm # perform operation
fdiv.d f17, f29, f26, rne # perform operation
fdiv.d f17, f29, f26, rtz # perform operation
fdiv.d f17, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfff0000000000000)
li x16, 0x0fe3fbdbcdf8fcf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
fdiv.d f16, f24, f11, dyn # perform operation
fdiv.d f16, f24, f11, rdn # perform operation
fdiv.d f16, f24, f11, rmm # perform operation
fdiv.d f16, f24, f11, rne # perform operation
fdiv.d f16, f24, f11, rtz # perform operation
fdiv.d f16, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff8000000000000)
li x31, 0x340923cbaf9d67fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fdiv.d f31, f27, f12, dyn # perform operation
fdiv.d f31, f27, f12, rdn # perform operation
fdiv.d f31, f27, f12, rmm # perform operation
fdiv.d f31, f27, f12, rne # perform operation
fdiv.d f31, f27, f12, rtz # perform operation
fdiv.d f31, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fffffffffffffff)
li x27, 0x7cee2f38ceba2db9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
fdiv.d f27, f12, f23, dyn # perform operation
fdiv.d f27, f12, f23, rdn # perform operation
fdiv.d f27, f12, f23, rmm # perform operation
fdiv.d f27, f12, f23, rne # perform operation
fdiv.d f27, f12, f23, rtz # perform operation
fdiv.d f27, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000001)
li x6, 0x600c0ea003c41d87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fdiv.d f6, f18, f2, dyn # perform operation
fdiv.d f6, f18, f2, rdn # perform operation
fdiv.d f6, f18, f2, rmm # perform operation
fdiv.d f6, f18, f2, rne # perform operation
fdiv.d f6, f18, f2, rtz # perform operation
fdiv.d f6, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x18, 0x0d9373961df327d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fdiv.d f18, f10, f28, dyn # perform operation
fdiv.d f18, f10, f28, rdn # perform operation
fdiv.d f18, f10, f28, rmm # perform operation
fdiv.d f18, f10, f28, rne # perform operation
fdiv.d f18, f10, f28, rtz # perform operation
fdiv.d f18, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x5a392534a57711ad)
li x12, 0x07afb55e61fd29bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
fdiv.d f12, f6, f23, dyn # perform operation
fdiv.d f12, f6, f23, rdn # perform operation
fdiv.d f12, f6, f23, rmm # perform operation
fdiv.d f12, f6, f23, rne # perform operation
fdiv.d f12, f6, f23, rtz # perform operation
fdiv.d f12, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xa6e895993737426c)
li x5, 0x92423b0015d745f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fdiv.d f5, f26, f27, dyn # perform operation
fdiv.d f5, f26, f27, rdn # perform operation
fdiv.d f5, f26, f27, rmm # perform operation
fdiv.d f5, f26, f27, rne # perform operation
fdiv.d f5, f26, f27, rtz # perform operation
fdiv.d f5, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x0)
li x14, 0x8b4272a75ba92b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
fdiv.d f14, f2, f22, dyn # perform operation
fdiv.d f14, f2, f22, rdn # perform operation
fdiv.d f14, f2, f22, rmm # perform operation
fdiv.d f14, f2, f22, rne # perform operation
fdiv.d f14, f2, f22, rtz # perform operation
fdiv.d f14, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000000)
li x26, 0x515ac28969d9e54a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
fdiv.d f26, f27, f13, dyn # perform operation
fdiv.d f26, f27, f13, rdn # perform operation
fdiv.d f26, f27, f13, rmm # perform operation
fdiv.d f26, f27, f13, rne # perform operation
fdiv.d f26, f27, f13, rtz # perform operation
fdiv.d f26, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff0000000000000)
li x21, 0xdbaab6dc46700ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fdiv.d f21, f7, f2, dyn # perform operation
fdiv.d f21, f7, f2, rdn # perform operation
fdiv.d f21, f7, f2, rmm # perform operation
fdiv.d f21, f7, f2, rne # perform operation
fdiv.d f21, f7, f2, rtz # perform operation
fdiv.d f21, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff0000000000000)
li x27, 0xf6764a2db0ddad44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
fdiv.d f27, f13, f24, dyn # perform operation
fdiv.d f27, f13, f24, rdn # perform operation
fdiv.d f27, f13, f24, rmm # perform operation
fdiv.d f27, f13, f24, rne # perform operation
fdiv.d f27, f13, f24, rtz # perform operation
fdiv.d f27, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff8000000000000)
li x19, 0xdc0b8fd36b0e6e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
fdiv.d f19, f10, f22, dyn # perform operation
fdiv.d f19, f10, f22, rdn # perform operation
fdiv.d f19, f10, f22, rmm # perform operation
fdiv.d f19, f10, f22, rne # perform operation
fdiv.d f19, f10, f22, rtz # perform operation
fdiv.d f19, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff8000000000000)
li x15, 0x23326e6350cf250e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
fdiv.d f15, f23, f8, dyn # perform operation
fdiv.d f15, f23, f8, rdn # perform operation
fdiv.d f15, f23, f8, rmm # perform operation
fdiv.d f15, f23, f8, rne # perform operation
fdiv.d f15, f23, f8, rtz # perform operation
fdiv.d f15, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x4000000000000000)
li x9, 0xc434b82c265d67d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fdiv.d f9, f20, f26, dyn # perform operation
fdiv.d f9, f20, f26, rdn # perform operation
fdiv.d f9, f20, f26, rmm # perform operation
fdiv.d f9, f20, f26, rne # perform operation
fdiv.d f9, f20, f26, rtz # perform operation
fdiv.d f9, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xc000000000000000)
li x14, 0x2cd8eca1eddde068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fdiv.d f14, f8, f15, dyn # perform operation
fdiv.d f14, f8, f15, rdn # perform operation
fdiv.d f14, f8, f15, rmm # perform operation
fdiv.d f14, f8, f15, rne # perform operation
fdiv.d f14, f8, f15, rtz # perform operation
fdiv.d f14, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x10000000000000)
li x30, 0xf3f3e38df5009b1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fdiv.d f30, f29, f18, dyn # perform operation
fdiv.d f30, f29, f18, rdn # perform operation
fdiv.d f30, f29, f18, rmm # perform operation
fdiv.d f30, f29, f18, rne # perform operation
fdiv.d f30, f29, f18, rtz # perform operation
fdiv.d f30, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8010000000000000)
li x8, 0xc8107f7e615588ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
fdiv.d f8, f18, f4, dyn # perform operation
fdiv.d f8, f18, f4, rdn # perform operation
fdiv.d f8, f18, f4, rmm # perform operation
fdiv.d f8, f18, f4, rne # perform operation
fdiv.d f8, f18, f4, rtz # perform operation
fdiv.d f8, f18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fefffffffffffff)
li x6, 0x4d8829d708d3365a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fdiv.d f6, f27, f29, dyn # perform operation
fdiv.d f6, f27, f29, rdn # perform operation
fdiv.d f6, f27, f29, rmm # perform operation
fdiv.d f6, f27, f29, rne # perform operation
fdiv.d f6, f27, f29, rtz # perform operation
fdiv.d f6, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xffefffffffffffff)
li x23, 0xd0dc225023061b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fdiv.d f23, f27, f9, dyn # perform operation
fdiv.d f23, f27, f9, rdn # perform operation
fdiv.d f23, f27, f9, rmm # perform operation
fdiv.d f23, f27, f9, rne # perform operation
fdiv.d f23, f27, f9, rtz # perform operation
fdiv.d f23, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfffffffffffff)
li x28, 0xa00ed9bc0de11f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
fdiv.d f28, f3, f31, dyn # perform operation
fdiv.d f28, f3, f31, rdn # perform operation
fdiv.d f28, f3, f31, rmm # perform operation
fdiv.d f28, f3, f31, rne # perform operation
fdiv.d f28, f3, f31, rtz # perform operation
fdiv.d f28, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x800fffffffffffff)
li x11, 0x4e4b0469bd9388f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
fdiv.d f11, f15, f22, dyn # perform operation
fdiv.d f11, f15, f22, rdn # perform operation
fdiv.d f11, f15, f22, rmm # perform operation
fdiv.d f11, f15, f22, rne # perform operation
fdiv.d f11, f15, f22, rtz # perform operation
fdiv.d f11, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000)
li x3, 0x19f470ec03c5a793 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
fdiv.d f3, f31, f22, dyn # perform operation
fdiv.d f3, f31, f22, rdn # perform operation
fdiv.d f3, f31, f22, rmm # perform operation
fdiv.d f3, f31, f22, rne # perform operation
fdiv.d f3, f31, f22, rtz # perform operation
fdiv.d f3, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8008000000000000)
li x14, 0xabf397274311436b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
fdiv.d f14, f25, f21, dyn # perform operation
fdiv.d f14, f25, f21, rdn # perform operation
fdiv.d f14, f25, f21, rmm # perform operation
fdiv.d f14, f25, f21, rne # perform operation
fdiv.d f14, f25, f21, rtz # perform operation
fdiv.d f14, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x1)
li x22, 0x244c005c1ab72429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
fdiv.d f22, f18, f20, dyn # perform operation
fdiv.d f22, f18, f20, rdn # perform operation
fdiv.d f22, f18, f20, rmm # perform operation
fdiv.d f22, f18, f20, rne # perform operation
fdiv.d f22, f18, f20, rtz # perform operation
fdiv.d f22, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000001)
li x15, 0xe590b642bbe81be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
fdiv.d f15, f11, f4, dyn # perform operation
fdiv.d f15, f11, f4, rdn # perform operation
fdiv.d f15, f11, f4, rmm # perform operation
fdiv.d f15, f11, f4, rne # perform operation
fdiv.d f15, f11, f4, rtz # perform operation
fdiv.d f15, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000000)
li x8, 0x68968d76798fda5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f13, 0(x2) # load 0x7ff0000000000000 from memory into f13
fdiv.d f8, f17, f13, dyn # perform operation
fdiv.d f8, f17, f13, rdn # perform operation
fdiv.d f8, f17, f13, rmm # perform operation
fdiv.d f8, f17, f13, rne # perform operation
fdiv.d f8, f17, f13, rtz # perform operation
fdiv.d f8, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfff0000000000000)
li x29, 0x3f468cf53ad96c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
fdiv.d f29, f12, f28, dyn # perform operation
fdiv.d f29, f12, f28, rdn # perform operation
fdiv.d f29, f12, f28, rmm # perform operation
fdiv.d f29, f12, f28, rne # perform operation
fdiv.d f29, f12, f28, rtz # perform operation
fdiv.d f29, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff8000000000000)
li x14, 0x6643848ae1c706ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fdiv.d f14, f11, f6, dyn # perform operation
fdiv.d f14, f11, f6, rdn # perform operation
fdiv.d f14, f11, f6, rmm # perform operation
fdiv.d f14, f11, f6, rne # perform operation
fdiv.d f14, f11, f6, rtz # perform operation
fdiv.d f14, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fffffffffffffff)
li x27, 0x5ae87d4a8a385f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fdiv.d f27, f16, f1, dyn # perform operation
fdiv.d f27, f16, f1, rdn # perform operation
fdiv.d f27, f16, f1, rmm # perform operation
fdiv.d f27, f16, f1, rne # perform operation
fdiv.d f27, f16, f1, rtz # perform operation
fdiv.d f27, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000001)
li x2, 0x1f20cee93e9f1922 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
fdiv.d f2, f6, f27, dyn # perform operation
fdiv.d f2, f6, f27, rdn # perform operation
fdiv.d f2, f6, f27, rmm # perform operation
fdiv.d f2, f6, f27, rne # perform operation
fdiv.d f2, f6, f27, rtz # perform operation
fdiv.d f2, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x30, 0x10d54ff0b4da7abe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f16, 0(x2) # load 0x7ff7ffffffffffff from memory into f16
fdiv.d f30, f26, f16, dyn # perform operation
fdiv.d f30, f26, f16, rdn # perform operation
fdiv.d f30, f26, f16, rmm # perform operation
fdiv.d f30, f26, f16, rne # perform operation
fdiv.d f30, f26, f16, rtz # perform operation
fdiv.d f30, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x5a392534a57711ad)
li x20, 0xd6bff276b2472934 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fdiv.d f20, f12, f17, dyn # perform operation
fdiv.d f20, f12, f17, rdn # perform operation
fdiv.d f20, f12, f17, rmm # perform operation
fdiv.d f20, f12, f17, rne # perform operation
fdiv.d f20, f12, f17, rtz # perform operation
fdiv.d f20, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xa6e895993737426c)
li x1, 0x42359c1bf1e4a228 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
fdiv.d f1, f3, f23, dyn # perform operation
fdiv.d f1, f3, f23, rdn # perform operation
fdiv.d f1, f3, f23, rmm # perform operation
fdiv.d f1, f3, f23, rne # perform operation
fdiv.d f1, f3, f23, rtz # perform operation
fdiv.d f1, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x0)
li x26, 0xb26603d7146cc619 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
fdiv.d f26, f4, f10, dyn # perform operation
fdiv.d f26, f4, f10, rdn # perform operation
fdiv.d f26, f4, f10, rmm # perform operation
fdiv.d f26, f4, f10, rne # perform operation
fdiv.d f26, f4, f10, rtz # perform operation
fdiv.d f26, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000000)
li x22, 0x2feb1bfe418aa070 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fdiv.d f22, f18, f27, dyn # perform operation
fdiv.d f22, f18, f27, rdn # perform operation
fdiv.d f22, f18, f27, rmm # perform operation
fdiv.d f22, f18, f27, rne # perform operation
fdiv.d f22, f18, f27, rtz # perform operation
fdiv.d f22, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff0000000000000)
li x1, 0x844a325e8dd474bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fdiv.d f1, f4, f28, dyn # perform operation
fdiv.d f1, f4, f28, rdn # perform operation
fdiv.d f1, f4, f28, rmm # perform operation
fdiv.d f1, f4, f28, rne # perform operation
fdiv.d f1, f4, f28, rtz # perform operation
fdiv.d f1, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff0000000000000)
li x31, 0x4e6b79a48365f913 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f7, 0(x2) # load 0x3ff8000000000000 from memory into f7
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
fdiv.d f31, f7, f16, dyn # perform operation
fdiv.d f31, f7, f16, rdn # perform operation
fdiv.d f31, f7, f16, rmm # perform operation
fdiv.d f31, f7, f16, rne # perform operation
fdiv.d f31, f7, f16, rtz # perform operation
fdiv.d f31, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff8000000000000)
li x28, 0x34d9e65f0e93de85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fdiv.d f28, f6, f26, dyn # perform operation
fdiv.d f28, f6, f26, rdn # perform operation
fdiv.d f28, f6, f26, rmm # perform operation
fdiv.d f28, f6, f26, rne # perform operation
fdiv.d f28, f6, f26, rtz # perform operation
fdiv.d f28, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff8000000000000)
li x16, 0xc0cea4c93c3d954e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
fdiv.d f16, f13, f18, dyn # perform operation
fdiv.d f16, f13, f18, rdn # perform operation
fdiv.d f16, f13, f18, rmm # perform operation
fdiv.d f16, f13, f18, rne # perform operation
fdiv.d f16, f13, f18, rtz # perform operation
fdiv.d f16, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x4000000000000000)
li x26, 0x389b125750122097 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
fdiv.d f26, f25, f28, dyn # perform operation
fdiv.d f26, f25, f28, rdn # perform operation
fdiv.d f26, f25, f28, rmm # perform operation
fdiv.d f26, f25, f28, rne # perform operation
fdiv.d f26, f25, f28, rtz # perform operation
fdiv.d f26, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xc000000000000000)
li x5, 0x9a60579cc53b9841 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
fdiv.d f5, f16, f4, dyn # perform operation
fdiv.d f5, f16, f4, rdn # perform operation
fdiv.d f5, f16, f4, rmm # perform operation
fdiv.d f5, f16, f4, rne # perform operation
fdiv.d f5, f16, f4, rtz # perform operation
fdiv.d f5, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x10000000000000)
li x26, 0x5987247c8299e026 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fdiv.d f26, f28, f23, dyn # perform operation
fdiv.d f26, f28, f23, rdn # perform operation
fdiv.d f26, f28, f23, rmm # perform operation
fdiv.d f26, f28, f23, rne # perform operation
fdiv.d f26, f28, f23, rtz # perform operation
fdiv.d f26, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8010000000000000)
li x6, 0x6ef14351c16c50f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f14, 0(x2) # load 0x8010000000000000 from memory into f14
fdiv.d f6, f2, f14, dyn # perform operation
fdiv.d f6, f2, f14, rdn # perform operation
fdiv.d f6, f2, f14, rmm # perform operation
fdiv.d f6, f2, f14, rne # perform operation
fdiv.d f6, f2, f14, rtz # perform operation
fdiv.d f6, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fefffffffffffff)
li x11, 0x642761af61a5a8be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
fdiv.d f11, f1, f5, dyn # perform operation
fdiv.d f11, f1, f5, rdn # perform operation
fdiv.d f11, f1, f5, rmm # perform operation
fdiv.d f11, f1, f5, rne # perform operation
fdiv.d f11, f1, f5, rtz # perform operation
fdiv.d f11, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xffefffffffffffff)
li x15, 0x25bf99f509808deb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
fdiv.d f15, f28, f2, dyn # perform operation
fdiv.d f15, f28, f2, rdn # perform operation
fdiv.d f15, f28, f2, rmm # perform operation
fdiv.d f15, f28, f2, rne # perform operation
fdiv.d f15, f28, f2, rtz # perform operation
fdiv.d f15, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfffffffffffff)
li x5, 0x59f5f4e24964edd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
fdiv.d f5, f14, f31, dyn # perform operation
fdiv.d f5, f14, f31, rdn # perform operation
fdiv.d f5, f14, f31, rmm # perform operation
fdiv.d f5, f14, f31, rne # perform operation
fdiv.d f5, f14, f31, rtz # perform operation
fdiv.d f5, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x800fffffffffffff)
li x16, 0x28d7c9c8a87c2894 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f18, 0(x2) # load 0x800fffffffffffff from memory into f18
fdiv.d f16, f2, f18, dyn # perform operation
fdiv.d f16, f2, f18, rdn # perform operation
fdiv.d f16, f2, f18, rmm # perform operation
fdiv.d f16, f2, f18, rne # perform operation
fdiv.d f16, f2, f18, rtz # perform operation
fdiv.d f16, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000)
li x31, 0x6e2fc6318b8a8055 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fdiv.d f31, f19, f12, dyn # perform operation
fdiv.d f31, f19, f12, rdn # perform operation
fdiv.d f31, f19, f12, rmm # perform operation
fdiv.d f31, f19, f12, rne # perform operation
fdiv.d f31, f19, f12, rtz # perform operation
fdiv.d f31, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8008000000000000)
li x25, 0xbdb1b80f64c9d527 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fdiv.d f25, f27, f22, dyn # perform operation
fdiv.d f25, f27, f22, rdn # perform operation
fdiv.d f25, f27, f22, rmm # perform operation
fdiv.d f25, f27, f22, rne # perform operation
fdiv.d f25, f27, f22, rtz # perform operation
fdiv.d f25, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x1)
li x7, 0xc3958bc7a5bf9bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fdiv.d f7, f31, f27, dyn # perform operation
fdiv.d f7, f31, f27, rdn # perform operation
fdiv.d f7, f31, f27, rmm # perform operation
fdiv.d f7, f31, f27, rne # perform operation
fdiv.d f7, f31, f27, rtz # perform operation
fdiv.d f7, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000001)
li x7, 0xda2cf265ef316097 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fdiv.d f7, f27, f25, dyn # perform operation
fdiv.d f7, f27, f25, rdn # perform operation
fdiv.d f7, f27, f25, rmm # perform operation
fdiv.d f7, f27, f25, rne # perform operation
fdiv.d f7, f27, f25, rtz # perform operation
fdiv.d f7, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000000)
li x20, 0x1d9561950b50b6b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
fdiv.d f20, f27, f6, dyn # perform operation
fdiv.d f20, f27, f6, rdn # perform operation
fdiv.d f20, f27, f6, rmm # perform operation
fdiv.d f20, f27, f6, rne # perform operation
fdiv.d f20, f27, f6, rtz # perform operation
fdiv.d f20, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfff0000000000000)
li x7, 0x6c211b404390943b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
fdiv.d f7, f13, f10, dyn # perform operation
fdiv.d f7, f13, f10, rdn # perform operation
fdiv.d f7, f13, f10, rmm # perform operation
fdiv.d f7, f13, f10, rne # perform operation
fdiv.d f7, f13, f10, rtz # perform operation
fdiv.d f7, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff8000000000000)
li x17, 0xd411c7016df1aa5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f27, 0(x2) # load 0x7ff8000000000000 from memory into f27
fdiv.d f17, f11, f27, dyn # perform operation
fdiv.d f17, f11, f27, rdn # perform operation
fdiv.d f17, f11, f27, rmm # perform operation
fdiv.d f17, f11, f27, rne # perform operation
fdiv.d f17, f11, f27, rtz # perform operation
fdiv.d f17, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fffffffffffffff)
li x28, 0xdb32f9c12687e1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fdiv.d f28, f29, f30, dyn # perform operation
fdiv.d f28, f29, f30, rdn # perform operation
fdiv.d f28, f29, f30, rmm # perform operation
fdiv.d f28, f29, f30, rne # perform operation
fdiv.d f28, f29, f30, rtz # perform operation
fdiv.d f28, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000001)
li x6, 0x018ec8612055e376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
fdiv.d f6, f15, f20, dyn # perform operation
fdiv.d f6, f15, f20, rdn # perform operation
fdiv.d f6, f15, f20, rmm # perform operation
fdiv.d f6, f15, f20, rne # perform operation
fdiv.d f6, f15, f20, rtz # perform operation
fdiv.d f6, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x18, 0x5483a9acb149d3d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
fdiv.d f18, f10, f29, dyn # perform operation
fdiv.d f18, f10, f29, rdn # perform operation
fdiv.d f18, f10, f29, rmm # perform operation
fdiv.d f18, f10, f29, rne # perform operation
fdiv.d f18, f10, f29, rtz # perform operation
fdiv.d f18, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x5a392534a57711ad)
li x25, 0x9bd96d6b6e71b8fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f7, 0(x2) # load 0x3ff8000000000000 from memory into f7
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fdiv.d f25, f7, f1, dyn # perform operation
fdiv.d f25, f7, f1, rdn # perform operation
fdiv.d f25, f7, f1, rmm # perform operation
fdiv.d f25, f7, f1, rne # perform operation
fdiv.d f25, f7, f1, rtz # perform operation
fdiv.d f25, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xa6e895993737426c)
li x15, 0x12f2fd026622fc6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
fdiv.d f15, f5, f16, dyn # perform operation
fdiv.d f15, f5, f16, rdn # perform operation
fdiv.d f15, f5, f16, rmm # perform operation
fdiv.d f15, f5, f16, rne # perform operation
fdiv.d f15, f5, f16, rtz # perform operation
fdiv.d f15, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x0)
li x14, 0x711ca1622016eeef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fdiv.d f14, f13, f2, dyn # perform operation
fdiv.d f14, f13, f2, rdn # perform operation
fdiv.d f14, f13, f2, rmm # perform operation
fdiv.d f14, f13, f2, rne # perform operation
fdiv.d f14, f13, f2, rtz # perform operation
fdiv.d f14, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000000)
li x22, 0x652a048afa8df5f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
fdiv.d f22, f6, f11, dyn # perform operation
fdiv.d f22, f6, f11, rdn # perform operation
fdiv.d f22, f6, f11, rmm # perform operation
fdiv.d f22, f6, f11, rne # perform operation
fdiv.d f22, f6, f11, rtz # perform operation
fdiv.d f22, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff0000000000000)
li x30, 0x04bec5a94071d3eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fdiv.d f30, f31, f23, dyn # perform operation
fdiv.d f30, f31, f23, rdn # perform operation
fdiv.d f30, f31, f23, rmm # perform operation
fdiv.d f30, f31, f23, rne # perform operation
fdiv.d f30, f31, f23, rtz # perform operation
fdiv.d f30, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff0000000000000)
li x6, 0x3cda8a1ff46de239 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
fdiv.d f6, f31, f27, dyn # perform operation
fdiv.d f6, f31, f27, rdn # perform operation
fdiv.d f6, f31, f27, rmm # perform operation
fdiv.d f6, f31, f27, rne # perform operation
fdiv.d f6, f31, f27, rtz # perform operation
fdiv.d f6, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff8000000000000)
li x15, 0x1c371c97bde51b8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
fdiv.d f15, f10, f19, dyn # perform operation
fdiv.d f15, f10, f19, rdn # perform operation
fdiv.d f15, f10, f19, rmm # perform operation
fdiv.d f15, f10, f19, rne # perform operation
fdiv.d f15, f10, f19, rtz # perform operation
fdiv.d f15, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff8000000000000)
li x1, 0x509ae7a7fa25b5cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fdiv.d f1, f12, f2, dyn # perform operation
fdiv.d f1, f12, f2, rdn # perform operation
fdiv.d f1, f12, f2, rmm # perform operation
fdiv.d f1, f12, f2, rne # perform operation
fdiv.d f1, f12, f2, rtz # perform operation
fdiv.d f1, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x4000000000000000)
li x10, 0xa098ca3876e75b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
fdiv.d f10, f1, f15, dyn # perform operation
fdiv.d f10, f1, f15, rdn # perform operation
fdiv.d f10, f1, f15, rmm # perform operation
fdiv.d f10, f1, f15, rne # perform operation
fdiv.d f10, f1, f15, rtz # perform operation
fdiv.d f10, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xc000000000000000)
li x23, 0x9c5e89d6799f4179 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
fdiv.d f23, f19, f14, dyn # perform operation
fdiv.d f23, f19, f14, rdn # perform operation
fdiv.d f23, f19, f14, rmm # perform operation
fdiv.d f23, f19, f14, rne # perform operation
fdiv.d f23, f19, f14, rtz # perform operation
fdiv.d f23, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x10000000000000)
li x8, 0x4f89cc114cd082f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
fdiv.d f8, f6, f15, dyn # perform operation
fdiv.d f8, f6, f15, rdn # perform operation
fdiv.d f8, f6, f15, rmm # perform operation
fdiv.d f8, f6, f15, rne # perform operation
fdiv.d f8, f6, f15, rtz # perform operation
fdiv.d f8, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8010000000000000)
li x15, 0x5e29323ab3595448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fdiv.d f15, f25, f17, dyn # perform operation
fdiv.d f15, f25, f17, rdn # perform operation
fdiv.d f15, f25, f17, rmm # perform operation
fdiv.d f15, f25, f17, rne # perform operation
fdiv.d f15, f25, f17, rtz # perform operation
fdiv.d f15, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fefffffffffffff)
li x16, 0x3f6181716d6fac68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
fdiv.d f16, f23, f6, dyn # perform operation
fdiv.d f16, f23, f6, rdn # perform operation
fdiv.d f16, f23, f6, rmm # perform operation
fdiv.d f16, f23, f6, rne # perform operation
fdiv.d f16, f23, f6, rtz # perform operation
fdiv.d f16, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xffefffffffffffff)
li x27, 0xb880eea8b08df032 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
fdiv.d f27, f5, f17, dyn # perform operation
fdiv.d f27, f5, f17, rdn # perform operation
fdiv.d f27, f5, f17, rmm # perform operation
fdiv.d f27, f5, f17, rne # perform operation
fdiv.d f27, f5, f17, rtz # perform operation
fdiv.d f27, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfffffffffffff)
li x10, 0xdd776c2df477cf76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fdiv.d f10, f5, f20, dyn # perform operation
fdiv.d f10, f5, f20, rdn # perform operation
fdiv.d f10, f5, f20, rmm # perform operation
fdiv.d f10, f5, f20, rne # perform operation
fdiv.d f10, f5, f20, rtz # perform operation
fdiv.d f10, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x800fffffffffffff)
li x23, 0x15d8136f0c9ba197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
fdiv.d f23, f8, f25, dyn # perform operation
fdiv.d f23, f8, f25, rdn # perform operation
fdiv.d f23, f8, f25, rmm # perform operation
fdiv.d f23, f8, f25, rne # perform operation
fdiv.d f23, f8, f25, rtz # perform operation
fdiv.d f23, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000)
li x25, 0x551dc22809e5ddd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
fdiv.d f25, f18, f19, dyn # perform operation
fdiv.d f25, f18, f19, rdn # perform operation
fdiv.d f25, f18, f19, rmm # perform operation
fdiv.d f25, f18, f19, rne # perform operation
fdiv.d f25, f18, f19, rtz # perform operation
fdiv.d f25, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8008000000000000)
li x25, 0x598d284aa2550be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
fdiv.d f25, f7, f4, dyn # perform operation
fdiv.d f25, f7, f4, rdn # perform operation
fdiv.d f25, f7, f4, rmm # perform operation
fdiv.d f25, f7, f4, rne # perform operation
fdiv.d f25, f7, f4, rtz # perform operation
fdiv.d f25, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x1)
li x3, 0x361954a2fb7beab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
fdiv.d f3, f25, f7, dyn # perform operation
fdiv.d f3, f25, f7, rdn # perform operation
fdiv.d f3, f25, f7, rmm # perform operation
fdiv.d f3, f25, f7, rne # perform operation
fdiv.d f3, f25, f7, rtz # perform operation
fdiv.d f3, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000001)
li x30, 0x500ba8f1a02cf17c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fdiv.d f30, f24, f27, dyn # perform operation
fdiv.d f30, f24, f27, rdn # perform operation
fdiv.d f30, f24, f27, rmm # perform operation
fdiv.d f30, f24, f27, rne # perform operation
fdiv.d f30, f24, f27, rtz # perform operation
fdiv.d f30, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000000)
li x29, 0x4a960788908f7c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
fdiv.d f29, f21, f15, dyn # perform operation
fdiv.d f29, f21, f15, rdn # perform operation
fdiv.d f29, f21, f15, rmm # perform operation
fdiv.d f29, f21, f15, rne # perform operation
fdiv.d f29, f21, f15, rtz # perform operation
fdiv.d f29, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfff0000000000000)
li x26, 0x09f818f41a096898 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fdiv.d f26, f3, f27, dyn # perform operation
fdiv.d f26, f3, f27, rdn # perform operation
fdiv.d f26, f3, f27, rmm # perform operation
fdiv.d f26, f3, f27, rne # perform operation
fdiv.d f26, f3, f27, rtz # perform operation
fdiv.d f26, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff8000000000000)
li x10, 0xf051cd66aec38a55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f28, 0(x2) # load 0xbff8000000000000 from memory into f28
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fdiv.d f10, f28, f6, dyn # perform operation
fdiv.d f10, f28, f6, rdn # perform operation
fdiv.d f10, f28, f6, rmm # perform operation
fdiv.d f10, f28, f6, rne # perform operation
fdiv.d f10, f28, f6, rtz # perform operation
fdiv.d f10, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fffffffffffffff)
li x26, 0xc597c1f6211abf8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
fdiv.d f26, f19, f2, dyn # perform operation
fdiv.d f26, f19, f2, rdn # perform operation
fdiv.d f26, f19, f2, rmm # perform operation
fdiv.d f26, f19, f2, rne # perform operation
fdiv.d f26, f19, f2, rtz # perform operation
fdiv.d f26, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000001)
li x16, 0xa7d395b8345121b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
fdiv.d f16, f4, f5, dyn # perform operation
fdiv.d f16, f4, f5, rdn # perform operation
fdiv.d f16, f4, f5, rmm # perform operation
fdiv.d f16, f4, f5, rne # perform operation
fdiv.d f16, f4, f5, rtz # perform operation
fdiv.d f16, f4, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f4, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f4, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f4, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f4, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x23, 0x2d6d0aec03ad7043 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fdiv.d f23, f3, f25, dyn # perform operation
fdiv.d f23, f3, f25, rdn # perform operation
fdiv.d f23, f3, f25, rmm # perform operation
fdiv.d f23, f3, f25, rne # perform operation
fdiv.d f23, f3, f25, rtz # perform operation
fdiv.d f23, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x5a392534a57711ad)
li x16, 0x7a5e8552888c6c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
fdiv.d f16, f14, f30, dyn # perform operation
fdiv.d f16, f14, f30, rdn # perform operation
fdiv.d f16, f14, f30, rmm # perform operation
fdiv.d f16, f14, f30, rne # perform operation
fdiv.d f16, f14, f30, rtz # perform operation
fdiv.d f16, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xa6e895993737426c)
li x22, 0x62b92510a53fde4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
fdiv.d f22, f7, f15, dyn # perform operation
fdiv.d f22, f7, f15, rdn # perform operation
fdiv.d f22, f7, f15, rmm # perform operation
fdiv.d f22, f7, f15, rne # perform operation
fdiv.d f22, f7, f15, rtz # perform operation
fdiv.d f22, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x0)
li x21, 0x37222d4e7a02b072 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fdiv.d f21, f31, f24, dyn # perform operation
fdiv.d f21, f31, f24, rdn # perform operation
fdiv.d f21, f31, f24, rmm # perform operation
fdiv.d f21, f31, f24, rne # perform operation
fdiv.d f21, f31, f24, rtz # perform operation
fdiv.d f21, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000000)
li x6, 0xe9a38ae357dbd0d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fdiv.d f6, f23, f27, dyn # perform operation
fdiv.d f6, f23, f27, rdn # perform operation
fdiv.d f6, f23, f27, rmm # perform operation
fdiv.d f6, f23, f27, rne # perform operation
fdiv.d f6, f23, f27, rtz # perform operation
fdiv.d f6, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff0000000000000)
li x19, 0x7645b8944bb004a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
fdiv.d f19, f26, f7, dyn # perform operation
fdiv.d f19, f26, f7, rdn # perform operation
fdiv.d f19, f26, f7, rmm # perform operation
fdiv.d f19, f26, f7, rne # perform operation
fdiv.d f19, f26, f7, rtz # perform operation
fdiv.d f19, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff0000000000000)
li x20, 0x03e35d98d8c629aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
fdiv.d f20, f21, f17, dyn # perform operation
fdiv.d f20, f21, f17, rdn # perform operation
fdiv.d f20, f21, f17, rmm # perform operation
fdiv.d f20, f21, f17, rne # perform operation
fdiv.d f20, f21, f17, rtz # perform operation
fdiv.d f20, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff8000000000000)
li x30, 0x5d091014478f7af0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fdiv.d f30, f24, f26, dyn # perform operation
fdiv.d f30, f24, f26, rdn # perform operation
fdiv.d f30, f24, f26, rmm # perform operation
fdiv.d f30, f24, f26, rne # perform operation
fdiv.d f30, f24, f26, rtz # perform operation
fdiv.d f30, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff8000000000000)
li x3, 0x81add4e8160b658e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fdiv.d f3, f8, f22, dyn # perform operation
fdiv.d f3, f8, f22, rdn # perform operation
fdiv.d f3, f8, f22, rmm # perform operation
fdiv.d f3, f8, f22, rne # perform operation
fdiv.d f3, f8, f22, rtz # perform operation
fdiv.d f3, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x4000000000000000)
li x29, 0x48bef66305e6cc3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
fdiv.d f29, f5, f13, dyn # perform operation
fdiv.d f29, f5, f13, rdn # perform operation
fdiv.d f29, f5, f13, rmm # perform operation
fdiv.d f29, f5, f13, rne # perform operation
fdiv.d f29, f5, f13, rtz # perform operation
fdiv.d f29, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xc000000000000000)
li x15, 0xa3501489dfdca922 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
fdiv.d f15, f20, f9, dyn # perform operation
fdiv.d f15, f20, f9, rdn # perform operation
fdiv.d f15, f20, f9, rmm # perform operation
fdiv.d f15, f20, f9, rne # perform operation
fdiv.d f15, f20, f9, rtz # perform operation
fdiv.d f15, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x10000000000000)
li x16, 0x444e599384f6ccc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fdiv.d f16, f10, f25, dyn # perform operation
fdiv.d f16, f10, f25, rdn # perform operation
fdiv.d f16, f10, f25, rmm # perform operation
fdiv.d f16, f10, f25, rne # perform operation
fdiv.d f16, f10, f25, rtz # perform operation
fdiv.d f16, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8010000000000000)
li x6, 0xb8c7dba1261ddddd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
fdiv.d f6, f13, f11, dyn # perform operation
fdiv.d f6, f13, f11, rdn # perform operation
fdiv.d f6, f13, f11, rmm # perform operation
fdiv.d f6, f13, f11, rne # perform operation
fdiv.d f6, f13, f11, rtz # perform operation
fdiv.d f6, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fefffffffffffff)
li x15, 0x76ea77902b88d7bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
fdiv.d f15, f13, f6, dyn # perform operation
fdiv.d f15, f13, f6, rdn # perform operation
fdiv.d f15, f13, f6, rmm # perform operation
fdiv.d f15, f13, f6, rne # perform operation
fdiv.d f15, f13, f6, rtz # perform operation
fdiv.d f15, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xffefffffffffffff)
li x8, 0x5658441cdc756a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
fdiv.d f8, f2, f4, dyn # perform operation
fdiv.d f8, f2, f4, rdn # perform operation
fdiv.d f8, f2, f4, rmm # perform operation
fdiv.d f8, f2, f4, rne # perform operation
fdiv.d f8, f2, f4, rtz # perform operation
fdiv.d f8, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfffffffffffff)
li x7, 0xc9283c2a38b76e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
fdiv.d f7, f20, f6, dyn # perform operation
fdiv.d f7, f20, f6, rdn # perform operation
fdiv.d f7, f20, f6, rmm # perform operation
fdiv.d f7, f20, f6, rne # perform operation
fdiv.d f7, f20, f6, rtz # perform operation
fdiv.d f7, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x800fffffffffffff)
li x14, 0x3d4c7b684e0597d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fdiv.d f14, f24, f29, dyn # perform operation
fdiv.d f14, f24, f29, rdn # perform operation
fdiv.d f14, f24, f29, rmm # perform operation
fdiv.d f14, f24, f29, rne # perform operation
fdiv.d f14, f24, f29, rtz # perform operation
fdiv.d f14, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000)
li x20, 0xea05883bcb933622 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
fdiv.d f20, f25, f24, dyn # perform operation
fdiv.d f20, f25, f24, rdn # perform operation
fdiv.d f20, f25, f24, rmm # perform operation
fdiv.d f20, f25, f24, rne # perform operation
fdiv.d f20, f25, f24, rtz # perform operation
fdiv.d f20, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8008000000000000)
li x24, 0x4b348b341339bd77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fdiv.d f24, f31, f7, dyn # perform operation
fdiv.d f24, f31, f7, rdn # perform operation
fdiv.d f24, f31, f7, rmm # perform operation
fdiv.d f24, f31, f7, rne # perform operation
fdiv.d f24, f31, f7, rtz # perform operation
fdiv.d f24, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x1)
li x2, 0xc907568f2a2b755b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
fdiv.d f2, f4, f28, dyn # perform operation
fdiv.d f2, f4, f28, rdn # perform operation
fdiv.d f2, f4, f28, rmm # perform operation
fdiv.d f2, f4, f28, rne # perform operation
fdiv.d f2, f4, f28, rtz # perform operation
fdiv.d f2, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000001)
li x5, 0x473893dfe04b21e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fdiv.d f5, f8, f19, dyn # perform operation
fdiv.d f5, f8, f19, rdn # perform operation
fdiv.d f5, f8, f19, rmm # perform operation
fdiv.d f5, f8, f19, rne # perform operation
fdiv.d f5, f8, f19, rtz # perform operation
fdiv.d f5, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000000)
li x11, 0x02f761554ba32972 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
fdiv.d f11, f2, f9, dyn # perform operation
fdiv.d f11, f2, f9, rdn # perform operation
fdiv.d f11, f2, f9, rmm # perform operation
fdiv.d f11, f2, f9, rne # perform operation
fdiv.d f11, f2, f9, rtz # perform operation
fdiv.d f11, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfff0000000000000)
li x30, 0x0ff5ad0872c9ebec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
fdiv.d f30, f18, f8, dyn # perform operation
fdiv.d f30, f18, f8, rdn # perform operation
fdiv.d f30, f18, f8, rmm # perform operation
fdiv.d f30, f18, f8, rne # perform operation
fdiv.d f30, f18, f8, rtz # perform operation
fdiv.d f30, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff8000000000000)
li x10, 0x66c7d9549b088f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
fdiv.d f10, f20, f18, dyn # perform operation
fdiv.d f10, f20, f18, rdn # perform operation
fdiv.d f10, f20, f18, rmm # perform operation
fdiv.d f10, f20, f18, rne # perform operation
fdiv.d f10, f20, f18, rtz # perform operation
fdiv.d f10, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fffffffffffffff)
li x11, 0x7b173763e5282272 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fdiv.d f11, f9, f14, dyn # perform operation
fdiv.d f11, f9, f14, rdn # perform operation
fdiv.d f11, f9, f14, rmm # perform operation
fdiv.d f11, f9, f14, rne # perform operation
fdiv.d f11, f9, f14, rtz # perform operation
fdiv.d f11, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000001)
li x25, 0xd6df4857c21cd195 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
fdiv.d f25, f4, f19, dyn # perform operation
fdiv.d f25, f4, f19, rdn # perform operation
fdiv.d f25, f4, f19, rmm # perform operation
fdiv.d f25, f4, f19, rne # perform operation
fdiv.d f25, f4, f19, rtz # perform operation
fdiv.d f25, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff7ffffffffffff)
li x9, 0x047f4235bb4bc38b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
fdiv.d f9, f24, f5, dyn # perform operation
fdiv.d f9, f24, f5, rdn # perform operation
fdiv.d f9, f24, f5, rmm # perform operation
fdiv.d f9, f24, f5, rne # perform operation
fdiv.d f9, f24, f5, rtz # perform operation
fdiv.d f9, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x5a392534a57711ad)
li x4, 0x69426a1d3fd5c1d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
fdiv.d f4, f21, f2, dyn # perform operation
fdiv.d f4, f21, f2, rdn # perform operation
fdiv.d f4, f21, f2, rmm # perform operation
fdiv.d f4, f21, f2, rne # perform operation
fdiv.d f4, f21, f2, rtz # perform operation
fdiv.d f4, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xa6e895993737426c)
li x7, 0x11d233adfda64429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fdiv.d f7, f1, f28, dyn # perform operation
fdiv.d f7, f1, f28, rdn # perform operation
fdiv.d f7, f1, f28, rmm # perform operation
fdiv.d f7, f1, f28, rne # perform operation
fdiv.d f7, f1, f28, rtz # perform operation
fdiv.d f7, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x0)
li x4, 0x8497c0e272139c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fdiv.d f4, f3, f15, dyn # perform operation
fdiv.d f4, f3, f15, rdn # perform operation
fdiv.d f4, f3, f15, rmm # perform operation
fdiv.d f4, f3, f15, rne # perform operation
fdiv.d f4, f3, f15, rtz # perform operation
fdiv.d f4, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000000)
li x21, 0xaadd3249e25068d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
fdiv.d f21, f13, f5, dyn # perform operation
fdiv.d f21, f13, f5, rdn # perform operation
fdiv.d f21, f13, f5, rmm # perform operation
fdiv.d f21, f13, f5, rne # perform operation
fdiv.d f21, f13, f5, rtz # perform operation
fdiv.d f21, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff0000000000000)
li x23, 0x097dec1d7bc0bdba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fdiv.d f23, f8, f2, dyn # perform operation
fdiv.d f23, f8, f2, rdn # perform operation
fdiv.d f23, f8, f2, rmm # perform operation
fdiv.d f23, f8, f2, rne # perform operation
fdiv.d f23, f8, f2, rtz # perform operation
fdiv.d f23, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff0000000000000)
li x20, 0x7dd7997295f5cf0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
fdiv.d f20, f5, f22, dyn # perform operation
fdiv.d f20, f5, f22, rdn # perform operation
fdiv.d f20, f5, f22, rmm # perform operation
fdiv.d f20, f5, f22, rne # perform operation
fdiv.d f20, f5, f22, rtz # perform operation
fdiv.d f20, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff8000000000000)
li x25, 0x2b38db939f45c687 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
fdiv.d f25, f27, f4, dyn # perform operation
fdiv.d f25, f27, f4, rdn # perform operation
fdiv.d f25, f27, f4, rmm # perform operation
fdiv.d f25, f27, f4, rne # perform operation
fdiv.d f25, f27, f4, rtz # perform operation
fdiv.d f25, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff8000000000000)
li x10, 0x1da54ec06a6b10a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fdiv.d f10, f7, f23, dyn # perform operation
fdiv.d f10, f7, f23, rdn # perform operation
fdiv.d f10, f7, f23, rmm # perform operation
fdiv.d f10, f7, f23, rne # perform operation
fdiv.d f10, f7, f23, rtz # perform operation
fdiv.d f10, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x4000000000000000)
li x30, 0x2669e9baf67871ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
fdiv.d f30, f31, f20, dyn # perform operation
fdiv.d f30, f31, f20, rdn # perform operation
fdiv.d f30, f31, f20, rmm # perform operation
fdiv.d f30, f31, f20, rne # perform operation
fdiv.d f30, f31, f20, rtz # perform operation
fdiv.d f30, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xc000000000000000)
li x2, 0x87f5a09b57435be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
fdiv.d f2, f19, f31, dyn # perform operation
fdiv.d f2, f19, f31, rdn # perform operation
fdiv.d f2, f19, f31, rmm # perform operation
fdiv.d f2, f19, f31, rne # perform operation
fdiv.d f2, f19, f31, rtz # perform operation
fdiv.d f2, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x10000000000000)
li x29, 0xa61de44556763ede # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
fdiv.d f29, f30, f3, dyn # perform operation
fdiv.d f29, f30, f3, rdn # perform operation
fdiv.d f29, f30, f3, rmm # perform operation
fdiv.d f29, f30, f3, rne # perform operation
fdiv.d f29, f30, f3, rtz # perform operation
fdiv.d f29, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8010000000000000)
li x23, 0xa5e1090debbb2f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fdiv.d f23, f22, f21, dyn # perform operation
fdiv.d f23, f22, f21, rdn # perform operation
fdiv.d f23, f22, f21, rmm # perform operation
fdiv.d f23, f22, f21, rne # perform operation
fdiv.d f23, f22, f21, rtz # perform operation
fdiv.d f23, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fefffffffffffff)
li x26, 0x4c4ec051adbe4d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
fdiv.d f26, f6, f9, dyn # perform operation
fdiv.d f26, f6, f9, rdn # perform operation
fdiv.d f26, f6, f9, rmm # perform operation
fdiv.d f26, f6, f9, rne # perform operation
fdiv.d f26, f6, f9, rtz # perform operation
fdiv.d f26, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xffefffffffffffff)
li x11, 0x2687d0d97f26a277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fdiv.d f11, f27, f31, dyn # perform operation
fdiv.d f11, f27, f31, rdn # perform operation
fdiv.d f11, f27, f31, rmm # perform operation
fdiv.d f11, f27, f31, rne # perform operation
fdiv.d f11, f27, f31, rtz # perform operation
fdiv.d f11, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfffffffffffff)
li x31, 0xdc1bb75c124e2ca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fdiv.d f31, f24, f13, dyn # perform operation
fdiv.d f31, f24, f13, rdn # perform operation
fdiv.d f31, f24, f13, rmm # perform operation
fdiv.d f31, f24, f13, rne # perform operation
fdiv.d f31, f24, f13, rtz # perform operation
fdiv.d f31, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x800fffffffffffff)
li x26, 0xeaa26c402928e97e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fdiv.d f26, f19, f17, dyn # perform operation
fdiv.d f26, f19, f17, rdn # perform operation
fdiv.d f26, f19, f17, rmm # perform operation
fdiv.d f26, f19, f17, rne # perform operation
fdiv.d f26, f19, f17, rtz # perform operation
fdiv.d f26, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000)
li x5, 0xb17412a0b7ac21a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
fdiv.d f5, f22, f29, dyn # perform operation
fdiv.d f5, f22, f29, rdn # perform operation
fdiv.d f5, f22, f29, rmm # perform operation
fdiv.d f5, f22, f29, rne # perform operation
fdiv.d f5, f22, f29, rtz # perform operation
fdiv.d f5, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8008000000000000)
li x2, 0x53876a259413ce43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fdiv.d f2, f22, f10, dyn # perform operation
fdiv.d f2, f22, f10, rdn # perform operation
fdiv.d f2, f22, f10, rmm # perform operation
fdiv.d f2, f22, f10, rne # perform operation
fdiv.d f2, f22, f10, rtz # perform operation
fdiv.d f2, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x1)
li x21, 0xdca21ed67e1ace26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
fdiv.d f21, f12, f23, dyn # perform operation
fdiv.d f21, f12, f23, rdn # perform operation
fdiv.d f21, f12, f23, rmm # perform operation
fdiv.d f21, f12, f23, rne # perform operation
fdiv.d f21, f12, f23, rtz # perform operation
fdiv.d f21, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000001)
li x25, 0xcedefd4f0718024e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
fdiv.d f25, f17, f5, dyn # perform operation
fdiv.d f25, f17, f5, rdn # perform operation
fdiv.d f25, f17, f5, rmm # perform operation
fdiv.d f25, f17, f5, rne # perform operation
fdiv.d f25, f17, f5, rtz # perform operation
fdiv.d f25, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000000)
li x28, 0x28ce21bf522c0b11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
fdiv.d f28, f22, f25, dyn # perform operation
fdiv.d f28, f22, f25, rdn # perform operation
fdiv.d f28, f22, f25, rmm # perform operation
fdiv.d f28, f22, f25, rne # perform operation
fdiv.d f28, f22, f25, rtz # perform operation
fdiv.d f28, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfff0000000000000)
li x31, 0xa12dc54058bb8669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fdiv.d f31, f7, f20, dyn # perform operation
fdiv.d f31, f7, f20, rdn # perform operation
fdiv.d f31, f7, f20, rmm # perform operation
fdiv.d f31, f7, f20, rne # perform operation
fdiv.d f31, f7, f20, rtz # perform operation
fdiv.d f31, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff8000000000000)
li x3, 0xfa8527fefde32286 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
fdiv.d f3, f16, f26, dyn # perform operation
fdiv.d f3, f16, f26, rdn # perform operation
fdiv.d f3, f16, f26, rmm # perform operation
fdiv.d f3, f16, f26, rne # perform operation
fdiv.d f3, f16, f26, rtz # perform operation
fdiv.d f3, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fffffffffffffff)
li x17, 0xdbfc36a1c8ed5dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
fdiv.d f17, f3, f21, dyn # perform operation
fdiv.d f17, f3, f21, rdn # perform operation
fdiv.d f17, f3, f21, rmm # perform operation
fdiv.d f17, f3, f21, rne # perform operation
fdiv.d f17, f3, f21, rtz # perform operation
fdiv.d f17, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000001)
li x3, 0xb83a5ab41991ea3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
fdiv.d f3, f11, f5, dyn # perform operation
fdiv.d f3, f11, f5, rdn # perform operation
fdiv.d f3, f11, f5, rmm # perform operation
fdiv.d f3, f11, f5, rne # perform operation
fdiv.d f3, f11, f5, rtz # perform operation
fdiv.d f3, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff7ffffffffffff)
li x16, 0xc69bf0fd7c31d0ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
fdiv.d f16, f2, f29, dyn # perform operation
fdiv.d f16, f2, f29, rdn # perform operation
fdiv.d f16, f2, f29, rmm # perform operation
fdiv.d f16, f2, f29, rne # perform operation
fdiv.d f16, f2, f29, rtz # perform operation
fdiv.d f16, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x5a392534a57711ad)
li x12, 0xd7f4f62acb653f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
fdiv.d f12, f5, f19, dyn # perform operation
fdiv.d f12, f5, f19, rdn # perform operation
fdiv.d f12, f5, f19, rmm # perform operation
fdiv.d f12, f5, f19, rne # perform operation
fdiv.d f12, f5, f19, rtz # perform operation
fdiv.d f12, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xa6e895993737426c)
li x12, 0xb5e4570192949111 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
fdiv.d f12, f13, f1, dyn # perform operation
fdiv.d f12, f13, f1, rdn # perform operation
fdiv.d f12, f13, f1, rmm # perform operation
fdiv.d f12, f13, f1, rne # perform operation
fdiv.d f12, f13, f1, rtz # perform operation
fdiv.d f12, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x0)
li x3, 0xa40a32543b2f0d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fdiv.d f3, f23, f26, dyn # perform operation
fdiv.d f3, f23, f26, rdn # perform operation
fdiv.d f3, f23, f26, rmm # perform operation
fdiv.d f3, f23, f26, rne # perform operation
fdiv.d f3, f23, f26, rtz # perform operation
fdiv.d f3, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000000)
li x21, 0x4cffdac5b4c4c67d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fdiv.d f21, f8, f22, dyn # perform operation
fdiv.d f21, f8, f22, rdn # perform operation
fdiv.d f21, f8, f22, rmm # perform operation
fdiv.d f21, f8, f22, rne # perform operation
fdiv.d f21, f8, f22, rtz # perform operation
fdiv.d f21, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff0000000000000)
li x28, 0xb0893e2981489314 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f2, 0(x2) # load 0x0010000000000000 from memory into f2
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fdiv.d f28, f2, f23, dyn # perform operation
fdiv.d f28, f2, f23, rdn # perform operation
fdiv.d f28, f2, f23, rmm # perform operation
fdiv.d f28, f2, f23, rne # perform operation
fdiv.d f28, f2, f23, rtz # perform operation
fdiv.d f28, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff0000000000000)
li x13, 0xd2dd9bb4d21a812f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
fdiv.d f13, f1, f7, dyn # perform operation
fdiv.d f13, f1, f7, rdn # perform operation
fdiv.d f13, f1, f7, rmm # perform operation
fdiv.d f13, f1, f7, rne # perform operation
fdiv.d f13, f1, f7, rtz # perform operation
fdiv.d f13, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff8000000000000)
li x28, 0x378dce397543f6e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fdiv.d f28, f21, f26, dyn # perform operation
fdiv.d f28, f21, f26, rdn # perform operation
fdiv.d f28, f21, f26, rmm # perform operation
fdiv.d f28, f21, f26, rne # perform operation
fdiv.d f28, f21, f26, rtz # perform operation
fdiv.d f28, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff8000000000000)
li x27, 0x4b5f07226659baaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fdiv.d f27, f6, f22, dyn # perform operation
fdiv.d f27, f6, f22, rdn # perform operation
fdiv.d f27, f6, f22, rmm # perform operation
fdiv.d f27, f6, f22, rne # perform operation
fdiv.d f27, f6, f22, rtz # perform operation
fdiv.d f27, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x4000000000000000)
li x18, 0x2c4781be8a5a3805 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fdiv.d f18, f30, f1, dyn # perform operation
fdiv.d f18, f30, f1, rdn # perform operation
fdiv.d f18, f30, f1, rmm # perform operation
fdiv.d f18, f30, f1, rne # perform operation
fdiv.d f18, f30, f1, rtz # perform operation
fdiv.d f18, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xc000000000000000)
li x27, 0x30e07ba3cb4bbbcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fdiv.d f27, f4, f29, dyn # perform operation
fdiv.d f27, f4, f29, rdn # perform operation
fdiv.d f27, f4, f29, rmm # perform operation
fdiv.d f27, f4, f29, rne # perform operation
fdiv.d f27, f4, f29, rtz # perform operation
fdiv.d f27, f4, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f4, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f4, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f4, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f4, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x10000000000000)
li x30, 0x4092d34470ca12cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fdiv.d f30, f16, f23, dyn # perform operation
fdiv.d f30, f16, f23, rdn # perform operation
fdiv.d f30, f16, f23, rmm # perform operation
fdiv.d f30, f16, f23, rne # perform operation
fdiv.d f30, f16, f23, rtz # perform operation
fdiv.d f30, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8010000000000000)
li x21, 0x39d45b5b75ad6584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fdiv.d f21, f8, f23, dyn # perform operation
fdiv.d f21, f8, f23, rdn # perform operation
fdiv.d f21, f8, f23, rmm # perform operation
fdiv.d f21, f8, f23, rne # perform operation
fdiv.d f21, f8, f23, rtz # perform operation
fdiv.d f21, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fefffffffffffff)
li x5, 0x383c23cee7fb3f7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
fdiv.d f5, f6, f3, dyn # perform operation
fdiv.d f5, f6, f3, rdn # perform operation
fdiv.d f5, f6, f3, rmm # perform operation
fdiv.d f5, f6, f3, rne # perform operation
fdiv.d f5, f6, f3, rtz # perform operation
fdiv.d f5, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xffefffffffffffff)
li x11, 0x3de2b2144ba5108c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fdiv.d f11, f16, f21, dyn # perform operation
fdiv.d f11, f16, f21, rdn # perform operation
fdiv.d f11, f16, f21, rmm # perform operation
fdiv.d f11, f16, f21, rne # perform operation
fdiv.d f11, f16, f21, rtz # perform operation
fdiv.d f11, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfffffffffffff)
li x20, 0x2dc3134ccc06e8c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f4, 0(x2) # load 0x000fffffffffffff from memory into f4
fdiv.d f20, f5, f4, dyn # perform operation
fdiv.d f20, f5, f4, rdn # perform operation
fdiv.d f20, f5, f4, rmm # perform operation
fdiv.d f20, f5, f4, rne # perform operation
fdiv.d f20, f5, f4, rtz # perform operation
fdiv.d f20, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x800fffffffffffff)
li x23, 0xfa491fc8585e595a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
fdiv.d f23, f21, f6, dyn # perform operation
fdiv.d f23, f21, f6, rdn # perform operation
fdiv.d f23, f21, f6, rmm # perform operation
fdiv.d f23, f21, f6, rne # perform operation
fdiv.d f23, f21, f6, rtz # perform operation
fdiv.d f23, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000)
li x12, 0x09149d4cc60c69a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fdiv.d f12, f4, f28, dyn # perform operation
fdiv.d f12, f4, f28, rdn # perform operation
fdiv.d f12, f4, f28, rmm # perform operation
fdiv.d f12, f4, f28, rne # perform operation
fdiv.d f12, f4, f28, rtz # perform operation
fdiv.d f12, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8008000000000000)
li x22, 0xe36a2a6d812bba45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fdiv.d f22, f1, f27, dyn # perform operation
fdiv.d f22, f1, f27, rdn # perform operation
fdiv.d f22, f1, f27, rmm # perform operation
fdiv.d f22, f1, f27, rne # perform operation
fdiv.d f22, f1, f27, rtz # perform operation
fdiv.d f22, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x1)
li x22, 0x63292f8eedd54eb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
fdiv.d f22, f9, f14, dyn # perform operation
fdiv.d f22, f9, f14, rdn # perform operation
fdiv.d f22, f9, f14, rmm # perform operation
fdiv.d f22, f9, f14, rne # perform operation
fdiv.d f22, f9, f14, rtz # perform operation
fdiv.d f22, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000001)
li x29, 0x9d7b26acfd7fd484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
fdiv.d f29, f7, f24, dyn # perform operation
fdiv.d f29, f7, f24, rdn # perform operation
fdiv.d f29, f7, f24, rmm # perform operation
fdiv.d f29, f7, f24, rne # perform operation
fdiv.d f29, f7, f24, rtz # perform operation
fdiv.d f29, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000000)
li x23, 0xa0de74cb99c7ce8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fdiv.d f23, f3, f16, dyn # perform operation
fdiv.d f23, f3, f16, rdn # perform operation
fdiv.d f23, f3, f16, rmm # perform operation
fdiv.d f23, f3, f16, rne # perform operation
fdiv.d f23, f3, f16, rtz # perform operation
fdiv.d f23, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfff0000000000000)
li x8, 0x81c7f03d705ac811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fdiv.d f8, f15, f25, dyn # perform operation
fdiv.d f8, f15, f25, rdn # perform operation
fdiv.d f8, f15, f25, rmm # perform operation
fdiv.d f8, f15, f25, rne # perform operation
fdiv.d f8, f15, f25, rtz # perform operation
fdiv.d f8, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff8000000000000)
li x24, 0x7a627185b64cadd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fdiv.d f24, f25, f15, dyn # perform operation
fdiv.d f24, f25, f15, rdn # perform operation
fdiv.d f24, f25, f15, rmm # perform operation
fdiv.d f24, f25, f15, rne # perform operation
fdiv.d f24, f25, f15, rtz # perform operation
fdiv.d f24, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fffffffffffffff)
li x18, 0xdd8b618049439902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
fdiv.d f18, f21, f25, dyn # perform operation
fdiv.d f18, f21, f25, rdn # perform operation
fdiv.d f18, f21, f25, rmm # perform operation
fdiv.d f18, f21, f25, rne # perform operation
fdiv.d f18, f21, f25, rtz # perform operation
fdiv.d f18, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000001)
li x21, 0xb6d39686c4b7e9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fdiv.d f21, f27, f18, dyn # perform operation
fdiv.d f21, f27, f18, rdn # perform operation
fdiv.d f21, f27, f18, rmm # perform operation
fdiv.d f21, f27, f18, rne # perform operation
fdiv.d f21, f27, f18, rtz # perform operation
fdiv.d f21, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff7ffffffffffff)
li x14, 0x8f766c262e76125d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fdiv.d f14, f30, f13, dyn # perform operation
fdiv.d f14, f30, f13, rdn # perform operation
fdiv.d f14, f30, f13, rmm # perform operation
fdiv.d f14, f30, f13, rne # perform operation
fdiv.d f14, f30, f13, rtz # perform operation
fdiv.d f14, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x5a392534a57711ad)
li x26, 0x0011aaa468c04777 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fdiv.d f26, f30, f24, dyn # perform operation
fdiv.d f26, f30, f24, rdn # perform operation
fdiv.d f26, f30, f24, rmm # perform operation
fdiv.d f26, f30, f24, rne # perform operation
fdiv.d f26, f30, f24, rtz # perform operation
fdiv.d f26, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xa6e895993737426c)
li x19, 0x5a7e5605b27798f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
fdiv.d f19, f18, f11, dyn # perform operation
fdiv.d f19, f18, f11, rdn # perform operation
fdiv.d f19, f18, f11, rmm # perform operation
fdiv.d f19, f18, f11, rne # perform operation
fdiv.d f19, f18, f11, rtz # perform operation
fdiv.d f19, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x0)
li x9, 0xe7e9b1db5e3b190d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
fdiv.d f9, f23, f8, dyn # perform operation
fdiv.d f9, f23, f8, rdn # perform operation
fdiv.d f9, f23, f8, rmm # perform operation
fdiv.d f9, f23, f8, rne # perform operation
fdiv.d f9, f23, f8, rtz # perform operation
fdiv.d f9, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000000)
li x26, 0x7045ace842533b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fdiv.d f26, f9, f27, dyn # perform operation
fdiv.d f26, f9, f27, rdn # perform operation
fdiv.d f26, f9, f27, rmm # perform operation
fdiv.d f26, f9, f27, rne # perform operation
fdiv.d f26, f9, f27, rtz # perform operation
fdiv.d f26, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff0000000000000)
li x4, 0x6284b4d5c46467f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fdiv.d f4, f7, f23, dyn # perform operation
fdiv.d f4, f7, f23, rdn # perform operation
fdiv.d f4, f7, f23, rmm # perform operation
fdiv.d f4, f7, f23, rne # perform operation
fdiv.d f4, f7, f23, rtz # perform operation
fdiv.d f4, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff0000000000000)
li x31, 0xc9cb3668385d176f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
fdiv.d f31, f12, f27, dyn # perform operation
fdiv.d f31, f12, f27, rdn # perform operation
fdiv.d f31, f12, f27, rmm # perform operation
fdiv.d f31, f12, f27, rne # perform operation
fdiv.d f31, f12, f27, rtz # perform operation
fdiv.d f31, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff8000000000000)
li x14, 0x097105d76da4b3d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
fdiv.d f14, f26, f22, dyn # perform operation
fdiv.d f14, f26, f22, rdn # perform operation
fdiv.d f14, f26, f22, rmm # perform operation
fdiv.d f14, f26, f22, rne # perform operation
fdiv.d f14, f26, f22, rtz # perform operation
fdiv.d f14, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff8000000000000)
li x31, 0xc970af1138f88185 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
fdiv.d f31, f21, f30, dyn # perform operation
fdiv.d f31, f21, f30, rdn # perform operation
fdiv.d f31, f21, f30, rmm # perform operation
fdiv.d f31, f21, f30, rne # perform operation
fdiv.d f31, f21, f30, rtz # perform operation
fdiv.d f31, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x4000000000000000)
li x24, 0xe7e0dfeafc16ff11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
fdiv.d f24, f29, f15, dyn # perform operation
fdiv.d f24, f29, f15, rdn # perform operation
fdiv.d f24, f29, f15, rmm # perform operation
fdiv.d f24, f29, f15, rne # perform operation
fdiv.d f24, f29, f15, rtz # perform operation
fdiv.d f24, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xc000000000000000)
li x18, 0x644b0156f8bec58d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
fdiv.d f18, f22, f14, dyn # perform operation
fdiv.d f18, f22, f14, rdn # perform operation
fdiv.d f18, f22, f14, rmm # perform operation
fdiv.d f18, f22, f14, rne # perform operation
fdiv.d f18, f22, f14, rtz # perform operation
fdiv.d f18, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x10000000000000)
li x27, 0x65d450c8d7a14dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
fdiv.d f27, f17, f4, dyn # perform operation
fdiv.d f27, f17, f4, rdn # perform operation
fdiv.d f27, f17, f4, rmm # perform operation
fdiv.d f27, f17, f4, rne # perform operation
fdiv.d f27, f17, f4, rtz # perform operation
fdiv.d f27, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8010000000000000)
li x7, 0x10d34271bc1e5b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fdiv.d f7, f6, f22, dyn # perform operation
fdiv.d f7, f6, f22, rdn # perform operation
fdiv.d f7, f6, f22, rmm # perform operation
fdiv.d f7, f6, f22, rne # perform operation
fdiv.d f7, f6, f22, rtz # perform operation
fdiv.d f7, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fefffffffffffff)
li x15, 0xe982dc7da31fc5cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
fdiv.d f15, f1, f4, dyn # perform operation
fdiv.d f15, f1, f4, rdn # perform operation
fdiv.d f15, f1, f4, rmm # perform operation
fdiv.d f15, f1, f4, rne # perform operation
fdiv.d f15, f1, f4, rtz # perform operation
fdiv.d f15, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xffefffffffffffff)
li x9, 0xf2cf5299eeba9c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f14, 0(x2) # load 0x8010000000000000 from memory into f14
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
fdiv.d f9, f14, f24, dyn # perform operation
fdiv.d f9, f14, f24, rdn # perform operation
fdiv.d f9, f14, f24, rmm # perform operation
fdiv.d f9, f14, f24, rne # perform operation
fdiv.d f9, f14, f24, rtz # perform operation
fdiv.d f9, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfffffffffffff)
li x22, 0x5892280f4e4fc2a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
fdiv.d f22, f19, f5, dyn # perform operation
fdiv.d f22, f19, f5, rdn # perform operation
fdiv.d f22, f19, f5, rmm # perform operation
fdiv.d f22, f19, f5, rne # perform operation
fdiv.d f22, f19, f5, rtz # perform operation
fdiv.d f22, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x800fffffffffffff)
li x23, 0x80160ff88987faf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fdiv.d f23, f25, f29, dyn # perform operation
fdiv.d f23, f25, f29, rdn # perform operation
fdiv.d f23, f25, f29, rmm # perform operation
fdiv.d f23, f25, f29, rne # perform operation
fdiv.d f23, f25, f29, rtz # perform operation
fdiv.d f23, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000)
li x18, 0x847f65c32776da20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
fdiv.d f18, f24, f2, dyn # perform operation
fdiv.d f18, f24, f2, rdn # perform operation
fdiv.d f18, f24, f2, rmm # perform operation
fdiv.d f18, f24, f2, rne # perform operation
fdiv.d f18, f24, f2, rtz # perform operation
fdiv.d f18, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8008000000000000)
li x5, 0xbfa04345c79ccd03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
fdiv.d f5, f30, f20, dyn # perform operation
fdiv.d f5, f30, f20, rdn # perform operation
fdiv.d f5, f30, f20, rmm # perform operation
fdiv.d f5, f30, f20, rne # perform operation
fdiv.d f5, f30, f20, rtz # perform operation
fdiv.d f5, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x1)
li x25, 0xae9cc5ba9c1fdb7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
fdiv.d f25, f3, f18, dyn # perform operation
fdiv.d f25, f3, f18, rdn # perform operation
fdiv.d f25, f3, f18, rmm # perform operation
fdiv.d f25, f3, f18, rne # perform operation
fdiv.d f25, f3, f18, rtz # perform operation
fdiv.d f25, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000001)
li x5, 0x4c5c6d56c48656fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fdiv.d f5, f20, f2, dyn # perform operation
fdiv.d f5, f20, f2, rdn # perform operation
fdiv.d f5, f20, f2, rmm # perform operation
fdiv.d f5, f20, f2, rne # perform operation
fdiv.d f5, f20, f2, rtz # perform operation
fdiv.d f5, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000000)
li x14, 0x90168d4f22fa8b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fdiv.d f14, f3, f20, dyn # perform operation
fdiv.d f14, f3, f20, rdn # perform operation
fdiv.d f14, f3, f20, rmm # perform operation
fdiv.d f14, f3, f20, rne # perform operation
fdiv.d f14, f3, f20, rtz # perform operation
fdiv.d f14, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfff0000000000000)
li x11, 0x52709fe2b84d56d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fdiv.d f11, f17, f20, dyn # perform operation
fdiv.d f11, f17, f20, rdn # perform operation
fdiv.d f11, f17, f20, rmm # perform operation
fdiv.d f11, f17, f20, rne # perform operation
fdiv.d f11, f17, f20, rtz # perform operation
fdiv.d f11, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff8000000000000)
li x4, 0x559daa1921950c54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fdiv.d f4, f12, f21, dyn # perform operation
fdiv.d f4, f12, f21, rdn # perform operation
fdiv.d f4, f12, f21, rmm # perform operation
fdiv.d f4, f12, f21, rne # perform operation
fdiv.d f4, f12, f21, rtz # perform operation
fdiv.d f4, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fffffffffffffff)
li x14, 0x1ab7f9088756f421 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
fdiv.d f14, f20, f27, dyn # perform operation
fdiv.d f14, f20, f27, rdn # perform operation
fdiv.d f14, f20, f27, rmm # perform operation
fdiv.d f14, f20, f27, rne # perform operation
fdiv.d f14, f20, f27, rtz # perform operation
fdiv.d f14, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000001)
li x20, 0x20a31593deaedf9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
fdiv.d f20, f8, f1, dyn # perform operation
fdiv.d f20, f8, f1, rdn # perform operation
fdiv.d f20, f8, f1, rmm # perform operation
fdiv.d f20, f8, f1, rne # perform operation
fdiv.d f20, f8, f1, rtz # perform operation
fdiv.d f20, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff7ffffffffffff)
li x15, 0x665970dc8351429b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
fdiv.d f15, f3, f11, dyn # perform operation
fdiv.d f15, f3, f11, rdn # perform operation
fdiv.d f15, f3, f11, rmm # perform operation
fdiv.d f15, f3, f11, rne # perform operation
fdiv.d f15, f3, f11, rtz # perform operation
fdiv.d f15, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x5a392534a57711ad)
li x12, 0x2e32ebcd916bb56a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
fdiv.d f12, f18, f25, dyn # perform operation
fdiv.d f12, f18, f25, rdn # perform operation
fdiv.d f12, f18, f25, rmm # perform operation
fdiv.d f12, f18, f25, rne # perform operation
fdiv.d f12, f18, f25, rtz # perform operation
fdiv.d f12, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xa6e895993737426c)
li x6, 0x991fab4195509cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
fdiv.d f6, f27, f21, dyn # perform operation
fdiv.d f6, f27, f21, rdn # perform operation
fdiv.d f6, f27, f21, rmm # perform operation
fdiv.d f6, f27, f21, rne # perform operation
fdiv.d f6, f27, f21, rtz # perform operation
fdiv.d f6, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x0)
li x27, 0x6d5119fd8888c44d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fdiv.d f27, f23, f12, dyn # perform operation
fdiv.d f27, f23, f12, rdn # perform operation
fdiv.d f27, f23, f12, rmm # perform operation
fdiv.d f27, f23, f12, rne # perform operation
fdiv.d f27, f23, f12, rtz # perform operation
fdiv.d f27, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000000)
li x2, 0xe2bbb782ea8a340e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fdiv.d f2, f25, f27, dyn # perform operation
fdiv.d f2, f25, f27, rdn # perform operation
fdiv.d f2, f25, f27, rmm # perform operation
fdiv.d f2, f25, f27, rne # perform operation
fdiv.d f2, f25, f27, rtz # perform operation
fdiv.d f2, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff0000000000000)
li x28, 0x1f52333d064c7a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fdiv.d f28, f4, f1, dyn # perform operation
fdiv.d f28, f4, f1, rdn # perform operation
fdiv.d f28, f4, f1, rmm # perform operation
fdiv.d f28, f4, f1, rne # perform operation
fdiv.d f28, f4, f1, rtz # perform operation
fdiv.d f28, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff0000000000000)
li x27, 0x31d9609df983cd4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fdiv.d f27, f25, f3, dyn # perform operation
fdiv.d f27, f25, f3, rdn # perform operation
fdiv.d f27, f25, f3, rmm # perform operation
fdiv.d f27, f25, f3, rne # perform operation
fdiv.d f27, f25, f3, rtz # perform operation
fdiv.d f27, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff8000000000000)
li x21, 0x59ced0948026a4bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fdiv.d f21, f18, f8, dyn # perform operation
fdiv.d f21, f18, f8, rdn # perform operation
fdiv.d f21, f18, f8, rmm # perform operation
fdiv.d f21, f18, f8, rne # perform operation
fdiv.d f21, f18, f8, rtz # perform operation
fdiv.d f21, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff8000000000000)
li x29, 0xb476d7cca62211c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
fdiv.d f29, f22, f8, dyn # perform operation
fdiv.d f29, f22, f8, rdn # perform operation
fdiv.d f29, f22, f8, rmm # perform operation
fdiv.d f29, f22, f8, rne # perform operation
fdiv.d f29, f22, f8, rtz # perform operation
fdiv.d f29, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x4000000000000000)
li x10, 0xc18cb228a7817aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fdiv.d f10, f14, f6, dyn # perform operation
fdiv.d f10, f14, f6, rdn # perform operation
fdiv.d f10, f14, f6, rmm # perform operation
fdiv.d f10, f14, f6, rne # perform operation
fdiv.d f10, f14, f6, rtz # perform operation
fdiv.d f10, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xc000000000000000)
li x7, 0x20fdaef8b8f0194d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
fdiv.d f7, f13, f6, dyn # perform operation
fdiv.d f7, f13, f6, rdn # perform operation
fdiv.d f7, f13, f6, rmm # perform operation
fdiv.d f7, f13, f6, rne # perform operation
fdiv.d f7, f13, f6, rtz # perform operation
fdiv.d f7, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x10000000000000)
li x20, 0xa6c0642dbfa98356 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
fdiv.d f20, f2, f9, dyn # perform operation
fdiv.d f20, f2, f9, rdn # perform operation
fdiv.d f20, f2, f9, rmm # perform operation
fdiv.d f20, f2, f9, rne # perform operation
fdiv.d f20, f2, f9, rtz # perform operation
fdiv.d f20, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8010000000000000)
li x4, 0x2f3f1617a32464f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
fdiv.d f4, f22, f28, dyn # perform operation
fdiv.d f4, f22, f28, rdn # perform operation
fdiv.d f4, f22, f28, rmm # perform operation
fdiv.d f4, f22, f28, rne # perform operation
fdiv.d f4, f22, f28, rtz # perform operation
fdiv.d f4, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fefffffffffffff)
li x18, 0xa21297eee777cb98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
fdiv.d f18, f21, f24, dyn # perform operation
fdiv.d f18, f21, f24, rdn # perform operation
fdiv.d f18, f21, f24, rmm # perform operation
fdiv.d f18, f21, f24, rne # perform operation
fdiv.d f18, f21, f24, rtz # perform operation
fdiv.d f18, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xffefffffffffffff)
li x26, 0xe9499814c86774da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fdiv.d f26, f31, f7, dyn # perform operation
fdiv.d f26, f31, f7, rdn # perform operation
fdiv.d f26, f31, f7, rmm # perform operation
fdiv.d f26, f31, f7, rne # perform operation
fdiv.d f26, f31, f7, rtz # perform operation
fdiv.d f26, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfffffffffffff)
li x3, 0xc914c222ccc1c72b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
fdiv.d f3, f22, f29, dyn # perform operation
fdiv.d f3, f22, f29, rdn # perform operation
fdiv.d f3, f22, f29, rmm # perform operation
fdiv.d f3, f22, f29, rne # perform operation
fdiv.d f3, f22, f29, rtz # perform operation
fdiv.d f3, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x800fffffffffffff)
li x7, 0x3290285c2759550f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
fdiv.d f7, f12, f4, dyn # perform operation
fdiv.d f7, f12, f4, rdn # perform operation
fdiv.d f7, f12, f4, rmm # perform operation
fdiv.d f7, f12, f4, rne # perform operation
fdiv.d f7, f12, f4, rtz # perform operation
fdiv.d f7, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000)
li x7, 0x74778c02064da8a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
fdiv.d f7, f27, f15, dyn # perform operation
fdiv.d f7, f27, f15, rdn # perform operation
fdiv.d f7, f27, f15, rmm # perform operation
fdiv.d f7, f27, f15, rne # perform operation
fdiv.d f7, f27, f15, rtz # perform operation
fdiv.d f7, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8008000000000000)
li x21, 0x209778e3904b41cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
fdiv.d f21, f22, f4, dyn # perform operation
fdiv.d f21, f22, f4, rdn # perform operation
fdiv.d f21, f22, f4, rmm # perform operation
fdiv.d f21, f22, f4, rne # perform operation
fdiv.d f21, f22, f4, rtz # perform operation
fdiv.d f21, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x1)
li x14, 0x49a0d6d002dd6732 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
fdiv.d f14, f30, f28, dyn # perform operation
fdiv.d f14, f30, f28, rdn # perform operation
fdiv.d f14, f30, f28, rmm # perform operation
fdiv.d f14, f30, f28, rne # perform operation
fdiv.d f14, f30, f28, rtz # perform operation
fdiv.d f14, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000001)
li x1, 0xa9c516cbc67928d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
fdiv.d f1, f27, f22, dyn # perform operation
fdiv.d f1, f27, f22, rdn # perform operation
fdiv.d f1, f27, f22, rmm # perform operation
fdiv.d f1, f27, f22, rne # perform operation
fdiv.d f1, f27, f22, rtz # perform operation
fdiv.d f1, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000000)
li x28, 0xc1d2f429c71277fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fdiv.d f28, f8, f20, dyn # perform operation
fdiv.d f28, f8, f20, rdn # perform operation
fdiv.d f28, f8, f20, rmm # perform operation
fdiv.d f28, f8, f20, rne # perform operation
fdiv.d f28, f8, f20, rtz # perform operation
fdiv.d f28, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfff0000000000000)
li x11, 0x4567e5ff41fff117 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
fdiv.d f11, f1, f4, dyn # perform operation
fdiv.d f11, f1, f4, rdn # perform operation
fdiv.d f11, f1, f4, rmm # perform operation
fdiv.d f11, f1, f4, rne # perform operation
fdiv.d f11, f1, f4, rtz # perform operation
fdiv.d f11, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff8000000000000)
li x18, 0xf863fab1896fff8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
fdiv.d f18, f8, f7, dyn # perform operation
fdiv.d f18, f8, f7, rdn # perform operation
fdiv.d f18, f8, f7, rmm # perform operation
fdiv.d f18, f8, f7, rne # perform operation
fdiv.d f18, f8, f7, rtz # perform operation
fdiv.d f18, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fffffffffffffff)
li x8, 0x9d448e8499b298ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
fdiv.d f8, f28, f16, dyn # perform operation
fdiv.d f8, f28, f16, rdn # perform operation
fdiv.d f8, f28, f16, rmm # perform operation
fdiv.d f8, f28, f16, rne # perform operation
fdiv.d f8, f28, f16, rtz # perform operation
fdiv.d f8, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000001)
li x28, 0x6511798822ebd267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fdiv.d f28, f3, f18, dyn # perform operation
fdiv.d f28, f3, f18, rdn # perform operation
fdiv.d f28, f3, f18, rmm # perform operation
fdiv.d f28, f3, f18, rne # perform operation
fdiv.d f28, f3, f18, rtz # perform operation
fdiv.d f28, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x31, 0x897bedd910bfd768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fdiv.d f31, f7, f24, dyn # perform operation
fdiv.d f31, f7, f24, rdn # perform operation
fdiv.d f31, f7, f24, rmm # perform operation
fdiv.d f31, f7, f24, rne # perform operation
fdiv.d f31, f7, f24, rtz # perform operation
fdiv.d f31, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x5a392534a57711ad)
li x9, 0x572295943e4bb25e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
fdiv.d f9, f16, f11, dyn # perform operation
fdiv.d f9, f16, f11, rdn # perform operation
fdiv.d f9, f16, f11, rmm # perform operation
fdiv.d f9, f16, f11, rne # perform operation
fdiv.d f9, f16, f11, rtz # perform operation
fdiv.d f9, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xa6e895993737426c)
li x23, 0xa6ae435dd646615c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fdiv.d f23, f8, f28, dyn # perform operation
fdiv.d f23, f8, f28, rdn # perform operation
fdiv.d f23, f8, f28, rmm # perform operation
fdiv.d f23, f8, f28, rne # perform operation
fdiv.d f23, f8, f28, rtz # perform operation
fdiv.d f23, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x0)
li x8, 0xce4ba85afcf94367 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
fdiv.d f8, f24, f30, dyn # perform operation
fdiv.d f8, f24, f30, rdn # perform operation
fdiv.d f8, f24, f30, rmm # perform operation
fdiv.d f8, f24, f30, rne # perform operation
fdiv.d f8, f24, f30, rtz # perform operation
fdiv.d f8, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000000)
li x11, 0x41a3f03ff44d5a43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fdiv.d f11, f8, f3, dyn # perform operation
fdiv.d f11, f8, f3, rdn # perform operation
fdiv.d f11, f8, f3, rmm # perform operation
fdiv.d f11, f8, f3, rne # perform operation
fdiv.d f11, f8, f3, rtz # perform operation
fdiv.d f11, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff0000000000000)
li x14, 0xccaf8a0525669ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fdiv.d f14, f18, f28, dyn # perform operation
fdiv.d f14, f18, f28, rdn # perform operation
fdiv.d f14, f18, f28, rmm # perform operation
fdiv.d f14, f18, f28, rne # perform operation
fdiv.d f14, f18, f28, rtz # perform operation
fdiv.d f14, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff0000000000000)
li x27, 0x8f41e4cb45142053 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fdiv.d f27, f17, f1, dyn # perform operation
fdiv.d f27, f17, f1, rdn # perform operation
fdiv.d f27, f17, f1, rmm # perform operation
fdiv.d f27, f17, f1, rne # perform operation
fdiv.d f27, f17, f1, rtz # perform operation
fdiv.d f27, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff8000000000000)
li x4, 0x610efa0d6f5fac59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fdiv.d f4, f17, f8, dyn # perform operation
fdiv.d f4, f17, f8, rdn # perform operation
fdiv.d f4, f17, f8, rmm # perform operation
fdiv.d f4, f17, f8, rne # perform operation
fdiv.d f4, f17, f8, rtz # perform operation
fdiv.d f4, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff8000000000000)
li x11, 0x1999cce1499e9860 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
fdiv.d f11, f17, f8, dyn # perform operation
fdiv.d f11, f17, f8, rdn # perform operation
fdiv.d f11, f17, f8, rmm # perform operation
fdiv.d f11, f17, f8, rne # perform operation
fdiv.d f11, f17, f8, rtz # perform operation
fdiv.d f11, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x4000000000000000)
li x18, 0x6fb703d14c26c284 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
fdiv.d f18, f6, f31, dyn # perform operation
fdiv.d f18, f6, f31, rdn # perform operation
fdiv.d f18, f6, f31, rmm # perform operation
fdiv.d f18, f6, f31, rne # perform operation
fdiv.d f18, f6, f31, rtz # perform operation
fdiv.d f18, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xc000000000000000)
li x16, 0xdb715dfa580c2a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
fdiv.d f16, f29, f26, dyn # perform operation
fdiv.d f16, f29, f26, rdn # perform operation
fdiv.d f16, f29, f26, rmm # perform operation
fdiv.d f16, f29, f26, rne # perform operation
fdiv.d f16, f29, f26, rtz # perform operation
fdiv.d f16, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x10000000000000)
li x27, 0x348e77756bcb70c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
fdiv.d f27, f26, f3, dyn # perform operation
fdiv.d f27, f26, f3, rdn # perform operation
fdiv.d f27, f26, f3, rmm # perform operation
fdiv.d f27, f26, f3, rne # perform operation
fdiv.d f27, f26, f3, rtz # perform operation
fdiv.d f27, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8010000000000000)
li x12, 0x2be78b388c82e713 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
fdiv.d f12, f18, f11, dyn # perform operation
fdiv.d f12, f18, f11, rdn # perform operation
fdiv.d f12, f18, f11, rmm # perform operation
fdiv.d f12, f18, f11, rne # perform operation
fdiv.d f12, f18, f11, rtz # perform operation
fdiv.d f12, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fefffffffffffff)
li x24, 0xf2e2dd26654dee76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fdiv.d f24, f20, f28, dyn # perform operation
fdiv.d f24, f20, f28, rdn # perform operation
fdiv.d f24, f20, f28, rmm # perform operation
fdiv.d f24, f20, f28, rne # perform operation
fdiv.d f24, f20, f28, rtz # perform operation
fdiv.d f24, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xffefffffffffffff)
li x6, 0xecac0a94347fecb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f12, 0(x2) # load 0xffefffffffffffff from memory into f12
fdiv.d f6, f29, f12, dyn # perform operation
fdiv.d f6, f29, f12, rdn # perform operation
fdiv.d f6, f29, f12, rmm # perform operation
fdiv.d f6, f29, f12, rne # perform operation
fdiv.d f6, f29, f12, rtz # perform operation
fdiv.d f6, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfffffffffffff)
li x7, 0x3ae7418fad3dbc5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fdiv.d f7, f26, f20, dyn # perform operation
fdiv.d f7, f26, f20, rdn # perform operation
fdiv.d f7, f26, f20, rmm # perform operation
fdiv.d f7, f26, f20, rne # perform operation
fdiv.d f7, f26, f20, rtz # perform operation
fdiv.d f7, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x800fffffffffffff)
li x13, 0x18bf689bba3182dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
fdiv.d f13, f17, f25, dyn # perform operation
fdiv.d f13, f17, f25, rdn # perform operation
fdiv.d f13, f17, f25, rmm # perform operation
fdiv.d f13, f17, f25, rne # perform operation
fdiv.d f13, f17, f25, rtz # perform operation
fdiv.d f13, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000)
li x20, 0x61af438843ec1e01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
fdiv.d f20, f22, f8, dyn # perform operation
fdiv.d f20, f22, f8, rdn # perform operation
fdiv.d f20, f22, f8, rmm # perform operation
fdiv.d f20, f22, f8, rne # perform operation
fdiv.d f20, f22, f8, rtz # perform operation
fdiv.d f20, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8008000000000000)
li x10, 0xcb5045a98a52d232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
fdiv.d f10, f14, f1, dyn # perform operation
fdiv.d f10, f14, f1, rdn # perform operation
fdiv.d f10, f14, f1, rmm # perform operation
fdiv.d f10, f14, f1, rne # perform operation
fdiv.d f10, f14, f1, rtz # perform operation
fdiv.d f10, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x1)
li x14, 0xba7acf3ece625155 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
fdiv.d f14, f6, f25, dyn # perform operation
fdiv.d f14, f6, f25, rdn # perform operation
fdiv.d f14, f6, f25, rmm # perform operation
fdiv.d f14, f6, f25, rne # perform operation
fdiv.d f14, f6, f25, rtz # perform operation
fdiv.d f14, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000001)
li x8, 0xc2129a753d6933b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fdiv.d f8, f24, f19, dyn # perform operation
fdiv.d f8, f24, f19, rdn # perform operation
fdiv.d f8, f24, f19, rmm # perform operation
fdiv.d f8, f24, f19, rne # perform operation
fdiv.d f8, f24, f19, rtz # perform operation
fdiv.d f8, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000000)
li x4, 0x7c3d0c4707a7dc91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
fdiv.d f4, f25, f8, dyn # perform operation
fdiv.d f4, f25, f8, rdn # perform operation
fdiv.d f4, f25, f8, rmm # perform operation
fdiv.d f4, f25, f8, rne # perform operation
fdiv.d f4, f25, f8, rtz # perform operation
fdiv.d f4, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfff0000000000000)
li x30, 0xcf1e9280764279a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
fdiv.d f30, f20, f11, dyn # perform operation
fdiv.d f30, f20, f11, rdn # perform operation
fdiv.d f30, f20, f11, rmm # perform operation
fdiv.d f30, f20, f11, rne # perform operation
fdiv.d f30, f20, f11, rtz # perform operation
fdiv.d f30, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff8000000000000)
li x25, 0x89ba3c660efba43e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fdiv.d f25, f9, f28, dyn # perform operation
fdiv.d f25, f9, f28, rdn # perform operation
fdiv.d f25, f9, f28, rmm # perform operation
fdiv.d f25, f9, f28, rne # perform operation
fdiv.d f25, f9, f28, rtz # perform operation
fdiv.d f25, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fffffffffffffff)
li x11, 0x436c8f68135ef828 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f8, 0(x2) # load 0x7fffffffffffffff from memory into f8
fdiv.d f11, f27, f8, dyn # perform operation
fdiv.d f11, f27, f8, rdn # perform operation
fdiv.d f11, f27, f8, rmm # perform operation
fdiv.d f11, f27, f8, rne # perform operation
fdiv.d f11, f27, f8, rtz # perform operation
fdiv.d f11, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000001)
li x7, 0x5c93f1f52ebaa572 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
fdiv.d f7, f31, f16, dyn # perform operation
fdiv.d f7, f31, f16, rdn # perform operation
fdiv.d f7, f31, f16, rmm # perform operation
fdiv.d f7, f31, f16, rne # perform operation
fdiv.d f7, f31, f16, rtz # perform operation
fdiv.d f7, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x5, 0x8de594bbadcb3427 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
fdiv.d f5, f24, f17, dyn # perform operation
fdiv.d f5, f24, f17, rdn # perform operation
fdiv.d f5, f24, f17, rmm # perform operation
fdiv.d f5, f24, f17, rne # perform operation
fdiv.d f5, f24, f17, rtz # perform operation
fdiv.d f5, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x5a392534a57711ad)
li x17, 0x2d974fddb9e02e3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fdiv.d f17, f3, f29, dyn # perform operation
fdiv.d f17, f3, f29, rdn # perform operation
fdiv.d f17, f3, f29, rmm # perform operation
fdiv.d f17, f3, f29, rne # perform operation
fdiv.d f17, f3, f29, rtz # perform operation
fdiv.d f17, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xa6e895993737426c)
li x2, 0xc64a0c213103e1b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fdiv.d f2, f16, f27, dyn # perform operation
fdiv.d f2, f16, f27, rdn # perform operation
fdiv.d f2, f16, f27, rmm # perform operation
fdiv.d f2, f16, f27, rne # perform operation
fdiv.d f2, f16, f27, rtz # perform operation
fdiv.d f2, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x0)
li x13, 0x8517b26c6e327f2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
fdiv.d f13, f16, f20, dyn # perform operation
fdiv.d f13, f16, f20, rdn # perform operation
fdiv.d f13, f16, f20, rmm # perform operation
fdiv.d f13, f16, f20, rne # perform operation
fdiv.d f13, f16, f20, rtz # perform operation
fdiv.d f13, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000000)
li x31, 0x1bcd7d546369d7b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
fdiv.d f31, f17, f9, dyn # perform operation
fdiv.d f31, f17, f9, rdn # perform operation
fdiv.d f31, f17, f9, rmm # perform operation
fdiv.d f31, f17, f9, rne # perform operation
fdiv.d f31, f17, f9, rtz # perform operation
fdiv.d f31, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff0000000000000)
li x9, 0x97f649635bc9598d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
fdiv.d f9, f27, f25, dyn # perform operation
fdiv.d f9, f27, f25, rdn # perform operation
fdiv.d f9, f27, f25, rmm # perform operation
fdiv.d f9, f27, f25, rne # perform operation
fdiv.d f9, f27, f25, rtz # perform operation
fdiv.d f9, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff0000000000000)
li x21, 0xda1a69465d865eca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fdiv.d f21, f5, f1, dyn # perform operation
fdiv.d f21, f5, f1, rdn # perform operation
fdiv.d f21, f5, f1, rmm # perform operation
fdiv.d f21, f5, f1, rne # perform operation
fdiv.d f21, f5, f1, rtz # perform operation
fdiv.d f21, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff8000000000000)
li x14, 0x3502d7b6d076c9ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
fdiv.d f14, f3, f30, dyn # perform operation
fdiv.d f14, f3, f30, rdn # perform operation
fdiv.d f14, f3, f30, rmm # perform operation
fdiv.d f14, f3, f30, rne # perform operation
fdiv.d f14, f3, f30, rtz # perform operation
fdiv.d f14, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff8000000000000)
li x27, 0x2ea8adbc3dfd9b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
fdiv.d f27, f10, f7, dyn # perform operation
fdiv.d f27, f10, f7, rdn # perform operation
fdiv.d f27, f10, f7, rmm # perform operation
fdiv.d f27, f10, f7, rne # perform operation
fdiv.d f27, f10, f7, rtz # perform operation
fdiv.d f27, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x4000000000000000)
li x25, 0x22746e933889867e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
fdiv.d f25, f21, f23, dyn # perform operation
fdiv.d f25, f21, f23, rdn # perform operation
fdiv.d f25, f21, f23, rmm # perform operation
fdiv.d f25, f21, f23, rne # perform operation
fdiv.d f25, f21, f23, rtz # perform operation
fdiv.d f25, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xc000000000000000)
li x4, 0xb15f4bb8f1ac483a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
fdiv.d f4, f3, f1, dyn # perform operation
fdiv.d f4, f3, f1, rdn # perform operation
fdiv.d f4, f3, f1, rmm # perform operation
fdiv.d f4, f3, f1, rne # perform operation
fdiv.d f4, f3, f1, rtz # perform operation
fdiv.d f4, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x10000000000000)
li x20, 0xd51401201f1eb241 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fdiv.d f20, f22, f28, dyn # perform operation
fdiv.d f20, f22, f28, rdn # perform operation
fdiv.d f20, f22, f28, rmm # perform operation
fdiv.d f20, f22, f28, rne # perform operation
fdiv.d f20, f22, f28, rtz # perform operation
fdiv.d f20, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8010000000000000)
li x13, 0x17bc09856bf89e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
fdiv.d f13, f11, f5, dyn # perform operation
fdiv.d f13, f11, f5, rdn # perform operation
fdiv.d f13, f11, f5, rmm # perform operation
fdiv.d f13, f11, f5, rne # perform operation
fdiv.d f13, f11, f5, rtz # perform operation
fdiv.d f13, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fefffffffffffff)
li x2, 0x2b9e8a9545edc0de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
fdiv.d f2, f17, f16, dyn # perform operation
fdiv.d f2, f17, f16, rdn # perform operation
fdiv.d f2, f17, f16, rmm # perform operation
fdiv.d f2, f17, f16, rne # perform operation
fdiv.d f2, f17, f16, rtz # perform operation
fdiv.d f2, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xffefffffffffffff)
li x5, 0x8d66013b7a027495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
fdiv.d f5, f29, f13, dyn # perform operation
fdiv.d f5, f29, f13, rdn # perform operation
fdiv.d f5, f29, f13, rmm # perform operation
fdiv.d f5, f29, f13, rne # perform operation
fdiv.d f5, f29, f13, rtz # perform operation
fdiv.d f5, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfffffffffffff)
li x21, 0x0f706993efed698c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fdiv.d f21, f1, f16, dyn # perform operation
fdiv.d f21, f1, f16, rdn # perform operation
fdiv.d f21, f1, f16, rmm # perform operation
fdiv.d f21, f1, f16, rne # perform operation
fdiv.d f21, f1, f16, rtz # perform operation
fdiv.d f21, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x800fffffffffffff)
li x20, 0xb0aa7a629330644b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f18, 0(x2) # load 0x000fffffffffffff from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fdiv.d f20, f18, f8, dyn # perform operation
fdiv.d f20, f18, f8, rdn # perform operation
fdiv.d f20, f18, f8, rmm # perform operation
fdiv.d f20, f18, f8, rne # perform operation
fdiv.d f20, f18, f8, rtz # perform operation
fdiv.d f20, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000)
li x19, 0x6b4748ce613bc0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
fdiv.d f19, f2, f8, dyn # perform operation
fdiv.d f19, f2, f8, rdn # perform operation
fdiv.d f19, f2, f8, rmm # perform operation
fdiv.d f19, f2, f8, rne # perform operation
fdiv.d f19, f2, f8, rtz # perform operation
fdiv.d f19, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8008000000000000)
li x3, 0xefd7bcc2f81a3fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
fdiv.d f3, f23, f18, dyn # perform operation
fdiv.d f3, f23, f18, rdn # perform operation
fdiv.d f3, f23, f18, rmm # perform operation
fdiv.d f3, f23, f18, rne # perform operation
fdiv.d f3, f23, f18, rtz # perform operation
fdiv.d f3, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x1)
li x27, 0xddf09e0d09fe9285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
fdiv.d f27, f9, f3, dyn # perform operation
fdiv.d f27, f9, f3, rdn # perform operation
fdiv.d f27, f9, f3, rmm # perform operation
fdiv.d f27, f9, f3, rne # perform operation
fdiv.d f27, f9, f3, rtz # perform operation
fdiv.d f27, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000001)
li x22, 0x41c4e13656982032 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
fdiv.d f22, f28, f4, dyn # perform operation
fdiv.d f22, f28, f4, rdn # perform operation
fdiv.d f22, f28, f4, rmm # perform operation
fdiv.d f22, f28, f4, rne # perform operation
fdiv.d f22, f28, f4, rtz # perform operation
fdiv.d f22, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000000)
li x27, 0xb6545f61603935a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fdiv.d f27, f14, f7, dyn # perform operation
fdiv.d f27, f14, f7, rdn # perform operation
fdiv.d f27, f14, f7, rmm # perform operation
fdiv.d f27, f14, f7, rne # perform operation
fdiv.d f27, f14, f7, rtz # perform operation
fdiv.d f27, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfff0000000000000)
li x29, 0xd5825ec981f5dd28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fdiv.d f29, f25, f20, dyn # perform operation
fdiv.d f29, f25, f20, rdn # perform operation
fdiv.d f29, f25, f20, rmm # perform operation
fdiv.d f29, f25, f20, rne # perform operation
fdiv.d f29, f25, f20, rtz # perform operation
fdiv.d f29, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff8000000000000)
li x30, 0xe71c3caa082759c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
fdiv.d f30, f26, f19, dyn # perform operation
fdiv.d f30, f26, f19, rdn # perform operation
fdiv.d f30, f26, f19, rmm # perform operation
fdiv.d f30, f26, f19, rne # perform operation
fdiv.d f30, f26, f19, rtz # perform operation
fdiv.d f30, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fffffffffffffff)
li x20, 0x49fdbe63fd22bd14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fdiv.d f20, f24, f19, dyn # perform operation
fdiv.d f20, f24, f19, rdn # perform operation
fdiv.d f20, f24, f19, rmm # perform operation
fdiv.d f20, f24, f19, rne # perform operation
fdiv.d f20, f24, f19, rtz # perform operation
fdiv.d f20, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000001)
li x30, 0xdf8059033908d867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
fdiv.d f30, f2, f8, dyn # perform operation
fdiv.d f30, f2, f8, rdn # perform operation
fdiv.d f30, f2, f8, rmm # perform operation
fdiv.d f30, f2, f8, rne # perform operation
fdiv.d f30, f2, f8, rtz # perform operation
fdiv.d f30, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff7ffffffffffff)
li x26, 0x47aad7e5938d0336 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fdiv.d f26, f27, f25, dyn # perform operation
fdiv.d f26, f27, f25, rdn # perform operation
fdiv.d f26, f27, f25, rmm # perform operation
fdiv.d f26, f27, f25, rne # perform operation
fdiv.d f26, f27, f25, rtz # perform operation
fdiv.d f26, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x5a392534a57711ad)
li x12, 0xdb4acbe6c9d47d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fdiv.d f12, f15, f6, dyn # perform operation
fdiv.d f12, f15, f6, rdn # perform operation
fdiv.d f12, f15, f6, rmm # perform operation
fdiv.d f12, f15, f6, rne # perform operation
fdiv.d f12, f15, f6, rtz # perform operation
fdiv.d f12, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xa6e895993737426c)
li x11, 0x6c627d5e0cf3a73c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
fdiv.d f11, f7, f21, dyn # perform operation
fdiv.d f11, f7, f21, rdn # perform operation
fdiv.d f11, f7, f21, rmm # perform operation
fdiv.d f11, f7, f21, rne # perform operation
fdiv.d f11, f7, f21, rtz # perform operation
fdiv.d f11, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x0)
li x4, 0x43bfe861f7208b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fdiv.d f4, f22, f24, dyn # perform operation
fdiv.d f4, f22, f24, rdn # perform operation
fdiv.d f4, f22, f24, rmm # perform operation
fdiv.d f4, f22, f24, rne # perform operation
fdiv.d f4, f22, f24, rtz # perform operation
fdiv.d f4, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000000)
li x11, 0xb3d9605fdd897334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
fdiv.d f11, f20, f19, dyn # perform operation
fdiv.d f11, f20, f19, rdn # perform operation
fdiv.d f11, f20, f19, rmm # perform operation
fdiv.d f11, f20, f19, rne # perform operation
fdiv.d f11, f20, f19, rtz # perform operation
fdiv.d f11, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff0000000000000)
li x10, 0x8c59ecd3dc26876f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fdiv.d f10, f9, f21, dyn # perform operation
fdiv.d f10, f9, f21, rdn # perform operation
fdiv.d f10, f9, f21, rmm # perform operation
fdiv.d f10, f9, f21, rne # perform operation
fdiv.d f10, f9, f21, rtz # perform operation
fdiv.d f10, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff0000000000000)
li x22, 0x5215efe9db8b80d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
fdiv.d f22, f3, f15, dyn # perform operation
fdiv.d f22, f3, f15, rdn # perform operation
fdiv.d f22, f3, f15, rmm # perform operation
fdiv.d f22, f3, f15, rne # perform operation
fdiv.d f22, f3, f15, rtz # perform operation
fdiv.d f22, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff8000000000000)
li x1, 0x82d52e696291bddb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
fdiv.d f1, f15, f20, dyn # perform operation
fdiv.d f1, f15, f20, rdn # perform operation
fdiv.d f1, f15, f20, rmm # perform operation
fdiv.d f1, f15, f20, rne # perform operation
fdiv.d f1, f15, f20, rtz # perform operation
fdiv.d f1, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff8000000000000)
li x16, 0x1f9095f143fc9813 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
fdiv.d f16, f21, f14, dyn # perform operation
fdiv.d f16, f21, f14, rdn # perform operation
fdiv.d f16, f21, f14, rmm # perform operation
fdiv.d f16, f21, f14, rne # perform operation
fdiv.d f16, f21, f14, rtz # perform operation
fdiv.d f16, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x4000000000000000)
li x20, 0xc734bb9bd6bb5c7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fdiv.d f20, f26, f29, dyn # perform operation
fdiv.d f20, f26, f29, rdn # perform operation
fdiv.d f20, f26, f29, rmm # perform operation
fdiv.d f20, f26, f29, rne # perform operation
fdiv.d f20, f26, f29, rtz # perform operation
fdiv.d f20, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xc000000000000000)
li x3, 0xaf16f4add80017a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
fdiv.d f3, f19, f18, dyn # perform operation
fdiv.d f3, f19, f18, rdn # perform operation
fdiv.d f3, f19, f18, rmm # perform operation
fdiv.d f3, f19, f18, rne # perform operation
fdiv.d f3, f19, f18, rtz # perform operation
fdiv.d f3, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x10000000000000)
li x31, 0x949f9c4689b9c776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
fdiv.d f31, f5, f27, dyn # perform operation
fdiv.d f31, f5, f27, rdn # perform operation
fdiv.d f31, f5, f27, rmm # perform operation
fdiv.d f31, f5, f27, rne # perform operation
fdiv.d f31, f5, f27, rtz # perform operation
fdiv.d f31, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8010000000000000)
li x22, 0xce6804c3c26c9f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fdiv.d f22, f8, f12, dyn # perform operation
fdiv.d f22, f8, f12, rdn # perform operation
fdiv.d f22, f8, f12, rmm # perform operation
fdiv.d f22, f8, f12, rne # perform operation
fdiv.d f22, f8, f12, rtz # perform operation
fdiv.d f22, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fefffffffffffff)
li x7, 0xf0f4ace5a38b4f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fdiv.d f7, f14, f18, dyn # perform operation
fdiv.d f7, f14, f18, rdn # perform operation
fdiv.d f7, f14, f18, rmm # perform operation
fdiv.d f7, f14, f18, rne # perform operation
fdiv.d f7, f14, f18, rtz # perform operation
fdiv.d f7, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xffefffffffffffff)
li x11, 0x14b76ea1a2c7f019 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
fdiv.d f11, f3, f10, dyn # perform operation
fdiv.d f11, f3, f10, rdn # perform operation
fdiv.d f11, f3, f10, rmm # perform operation
fdiv.d f11, f3, f10, rne # perform operation
fdiv.d f11, f3, f10, rtz # perform operation
fdiv.d f11, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfffffffffffff)
li x15, 0x3a7e683ff25d7221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
fdiv.d f15, f25, f21, dyn # perform operation
fdiv.d f15, f25, f21, rdn # perform operation
fdiv.d f15, f25, f21, rmm # perform operation
fdiv.d f15, f25, f21, rne # perform operation
fdiv.d f15, f25, f21, rtz # perform operation
fdiv.d f15, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x800fffffffffffff)
li x11, 0x67c97dd4f445d9a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fdiv.d f11, f26, f30, dyn # perform operation
fdiv.d f11, f26, f30, rdn # perform operation
fdiv.d f11, f26, f30, rmm # perform operation
fdiv.d f11, f26, f30, rne # perform operation
fdiv.d f11, f26, f30, rtz # perform operation
fdiv.d f11, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000)
li x27, 0x44319b35f6391063 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
fdiv.d f27, f26, f6, dyn # perform operation
fdiv.d f27, f26, f6, rdn # perform operation
fdiv.d f27, f26, f6, rmm # perform operation
fdiv.d f27, f26, f6, rne # perform operation
fdiv.d f27, f26, f6, rtz # perform operation
fdiv.d f27, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8008000000000000)
li x16, 0x303426fff92dc1fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
fdiv.d f16, f1, f11, dyn # perform operation
fdiv.d f16, f1, f11, rdn # perform operation
fdiv.d f16, f1, f11, rmm # perform operation
fdiv.d f16, f1, f11, rne # perform operation
fdiv.d f16, f1, f11, rtz # perform operation
fdiv.d f16, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x1)
li x9, 0x3f0f525694c70971 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
fdiv.d f9, f15, f18, dyn # perform operation
fdiv.d f9, f15, f18, rdn # perform operation
fdiv.d f9, f15, f18, rmm # perform operation
fdiv.d f9, f15, f18, rne # perform operation
fdiv.d f9, f15, f18, rtz # perform operation
fdiv.d f9, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000001)
li x2, 0x1a891aa17a2314cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fdiv.d f2, f6, f30, dyn # perform operation
fdiv.d f2, f6, f30, rdn # perform operation
fdiv.d f2, f6, f30, rmm # perform operation
fdiv.d f2, f6, f30, rne # perform operation
fdiv.d f2, f6, f30, rtz # perform operation
fdiv.d f2, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000000)
li x26, 0xea70d2a4ae9b0c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
fdiv.d f26, f17, f28, dyn # perform operation
fdiv.d f26, f17, f28, rdn # perform operation
fdiv.d f26, f17, f28, rmm # perform operation
fdiv.d f26, f17, f28, rne # perform operation
fdiv.d f26, f17, f28, rtz # perform operation
fdiv.d f26, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfff0000000000000)
li x4, 0x8370c9022f2a4d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
fdiv.d f4, f15, f23, dyn # perform operation
fdiv.d f4, f15, f23, rdn # perform operation
fdiv.d f4, f15, f23, rmm # perform operation
fdiv.d f4, f15, f23, rne # perform operation
fdiv.d f4, f15, f23, rtz # perform operation
fdiv.d f4, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff8000000000000)
li x15, 0xee0fc98de2c683b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
fdiv.d f15, f6, f30, dyn # perform operation
fdiv.d f15, f6, f30, rdn # perform operation
fdiv.d f15, f6, f30, rmm # perform operation
fdiv.d f15, f6, f30, rne # perform operation
fdiv.d f15, f6, f30, rtz # perform operation
fdiv.d f15, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fffffffffffffff)
li x14, 0xc4e132d3df3bff71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
fdiv.d f14, f26, f31, dyn # perform operation
fdiv.d f14, f26, f31, rdn # perform operation
fdiv.d f14, f26, f31, rmm # perform operation
fdiv.d f14, f26, f31, rne # perform operation
fdiv.d f14, f26, f31, rtz # perform operation
fdiv.d f14, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000001)
li x28, 0xfda53dda335fd45f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
fdiv.d f28, f25, f5, dyn # perform operation
fdiv.d f28, f25, f5, rdn # perform operation
fdiv.d f28, f25, f5, rmm # perform operation
fdiv.d f28, f25, f5, rne # perform operation
fdiv.d f28, f25, f5, rtz # perform operation
fdiv.d f28, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff7ffffffffffff)
li x30, 0x407ba6149d87c541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
fdiv.d f30, f25, f22, dyn # perform operation
fdiv.d f30, f25, f22, rdn # perform operation
fdiv.d f30, f25, f22, rmm # perform operation
fdiv.d f30, f25, f22, rne # perform operation
fdiv.d f30, f25, f22, rtz # perform operation
fdiv.d f30, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x5a392534a57711ad)
li x23, 0x6a96d631b63e57f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
fdiv.d f23, f4, f18, dyn # perform operation
fdiv.d f23, f4, f18, rdn # perform operation
fdiv.d f23, f4, f18, rmm # perform operation
fdiv.d f23, f4, f18, rne # perform operation
fdiv.d f23, f4, f18, rtz # perform operation
fdiv.d f23, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xa6e895993737426c)
li x3, 0x49147df0f396405c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fdiv.d f3, f4, f8, dyn # perform operation
fdiv.d f3, f4, f8, rdn # perform operation
fdiv.d f3, f4, f8, rmm # perform operation
fdiv.d f3, f4, f8, rne # perform operation
fdiv.d f3, f4, f8, rtz # perform operation
fdiv.d f3, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x0)
li x11, 0x0bb6fb2eb38d030e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
fdiv.d f11, f28, f20, dyn # perform operation
fdiv.d f11, f28, f20, rdn # perform operation
fdiv.d f11, f28, f20, rmm # perform operation
fdiv.d f11, f28, f20, rne # perform operation
fdiv.d f11, f28, f20, rtz # perform operation
fdiv.d f11, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000000)
li x24, 0xec6e75a36935c534 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
fdiv.d f24, f4, f6, dyn # perform operation
fdiv.d f24, f4, f6, rdn # perform operation
fdiv.d f24, f4, f6, rmm # perform operation
fdiv.d f24, f4, f6, rne # perform operation
fdiv.d f24, f4, f6, rtz # perform operation
fdiv.d f24, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff0000000000000)
li x13, 0x0cbf986537a4e99b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
fdiv.d f13, f31, f14, dyn # perform operation
fdiv.d f13, f31, f14, rdn # perform operation
fdiv.d f13, f31, f14, rmm # perform operation
fdiv.d f13, f31, f14, rne # perform operation
fdiv.d f13, f31, f14, rtz # perform operation
fdiv.d f13, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff0000000000000)
li x26, 0x0b2065d7b2517af0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fdiv.d f26, f19, f23, dyn # perform operation
fdiv.d f26, f19, f23, rdn # perform operation
fdiv.d f26, f19, f23, rmm # perform operation
fdiv.d f26, f19, f23, rne # perform operation
fdiv.d f26, f19, f23, rtz # perform operation
fdiv.d f26, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff8000000000000)
li x16, 0x6e7e8956fc94a30e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
fdiv.d f16, f10, f19, dyn # perform operation
fdiv.d f16, f10, f19, rdn # perform operation
fdiv.d f16, f10, f19, rmm # perform operation
fdiv.d f16, f10, f19, rne # perform operation
fdiv.d f16, f10, f19, rtz # perform operation
fdiv.d f16, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff8000000000000)
li x16, 0x48db8f18fc2a3ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
fdiv.d f16, f12, f13, dyn # perform operation
fdiv.d f16, f12, f13, rdn # perform operation
fdiv.d f16, f12, f13, rmm # perform operation
fdiv.d f16, f12, f13, rne # perform operation
fdiv.d f16, f12, f13, rtz # perform operation
fdiv.d f16, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x4000000000000000)
li x10, 0x72ceaaed1539877b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fdiv.d f10, f7, f29, dyn # perform operation
fdiv.d f10, f7, f29, rdn # perform operation
fdiv.d f10, f7, f29, rmm # perform operation
fdiv.d f10, f7, f29, rne # perform operation
fdiv.d f10, f7, f29, rtz # perform operation
fdiv.d f10, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xc000000000000000)
li x9, 0x7d20a34434bbddb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
fdiv.d f9, f29, f17, dyn # perform operation
fdiv.d f9, f29, f17, rdn # perform operation
fdiv.d f9, f29, f17, rmm # perform operation
fdiv.d f9, f29, f17, rne # perform operation
fdiv.d f9, f29, f17, rtz # perform operation
fdiv.d f9, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x10000000000000)
li x31, 0xb9fe2069779b8946 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
fdiv.d f31, f1, f26, dyn # perform operation
fdiv.d f31, f1, f26, rdn # perform operation
fdiv.d f31, f1, f26, rmm # perform operation
fdiv.d f31, f1, f26, rne # perform operation
fdiv.d f31, f1, f26, rtz # perform operation
fdiv.d f31, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8010000000000000)
li x4, 0xf1383f62427db1be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
fdiv.d f4, f6, f5, dyn # perform operation
fdiv.d f4, f6, f5, rdn # perform operation
fdiv.d f4, f6, f5, rmm # perform operation
fdiv.d f4, f6, f5, rne # perform operation
fdiv.d f4, f6, f5, rtz # perform operation
fdiv.d f4, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fefffffffffffff)
li x15, 0x7b685239a9c8cd86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fdiv.d f15, f31, f18, dyn # perform operation
fdiv.d f15, f31, f18, rdn # perform operation
fdiv.d f15, f31, f18, rmm # perform operation
fdiv.d f15, f31, f18, rne # perform operation
fdiv.d f15, f31, f18, rtz # perform operation
fdiv.d f15, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xffefffffffffffff)
li x25, 0x7b0ecc27f4ba742f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
fdiv.d f25, f24, f18, dyn # perform operation
fdiv.d f25, f24, f18, rdn # perform operation
fdiv.d f25, f24, f18, rmm # perform operation
fdiv.d f25, f24, f18, rne # perform operation
fdiv.d f25, f24, f18, rtz # perform operation
fdiv.d f25, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfffffffffffff)
li x14, 0x379f8480e937a79a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fdiv.d f14, f28, f20, dyn # perform operation
fdiv.d f14, f28, f20, rdn # perform operation
fdiv.d f14, f28, f20, rmm # perform operation
fdiv.d f14, f28, f20, rne # perform operation
fdiv.d f14, f28, f20, rtz # perform operation
fdiv.d f14, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x800fffffffffffff)
li x18, 0xd5a2cd438b6287aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
fdiv.d f18, f11, f27, dyn # perform operation
fdiv.d f18, f11, f27, rdn # perform operation
fdiv.d f18, f11, f27, rmm # perform operation
fdiv.d f18, f11, f27, rne # perform operation
fdiv.d f18, f11, f27, rtz # perform operation
fdiv.d f18, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000)
li x31, 0xecef73a0744381cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
fdiv.d f31, f5, f3, dyn # perform operation
fdiv.d f31, f5, f3, rdn # perform operation
fdiv.d f31, f5, f3, rmm # perform operation
fdiv.d f31, f5, f3, rne # perform operation
fdiv.d f31, f5, f3, rtz # perform operation
fdiv.d f31, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8008000000000000)
li x15, 0x6d0fa4a9b8790de1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fdiv.d f15, f17, f8, dyn # perform operation
fdiv.d f15, f17, f8, rdn # perform operation
fdiv.d f15, f17, f8, rmm # perform operation
fdiv.d f15, f17, f8, rne # perform operation
fdiv.d f15, f17, f8, rtz # perform operation
fdiv.d f15, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x1)
li x20, 0xceb4f6d37324fc29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
fdiv.d f20, f22, f23, dyn # perform operation
fdiv.d f20, f22, f23, rdn # perform operation
fdiv.d f20, f22, f23, rmm # perform operation
fdiv.d f20, f22, f23, rne # perform operation
fdiv.d f20, f22, f23, rtz # perform operation
fdiv.d f20, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000001)
li x31, 0xd91d46fb4d7ec640 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f1, 0(x2) # load 0x8000000000000001 from memory into f1
fdiv.d f31, f25, f1, dyn # perform operation
fdiv.d f31, f25, f1, rdn # perform operation
fdiv.d f31, f25, f1, rmm # perform operation
fdiv.d f31, f25, f1, rne # perform operation
fdiv.d f31, f25, f1, rtz # perform operation
fdiv.d f31, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000000)
li x6, 0x2cf63b6fab107c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
fdiv.d f6, f5, f10, dyn # perform operation
fdiv.d f6, f5, f10, rdn # perform operation
fdiv.d f6, f5, f10, rmm # perform operation
fdiv.d f6, f5, f10, rne # perform operation
fdiv.d f6, f5, f10, rtz # perform operation
fdiv.d f6, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfff0000000000000)
li x21, 0x5e4f08dcb8ee17b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
fdiv.d f21, f22, f10, dyn # perform operation
fdiv.d f21, f22, f10, rdn # perform operation
fdiv.d f21, f22, f10, rmm # perform operation
fdiv.d f21, f22, f10, rne # perform operation
fdiv.d f21, f22, f10, rtz # perform operation
fdiv.d f21, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff8000000000000)
li x27, 0x076f7bf88757ff03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fdiv.d f27, f5, f15, dyn # perform operation
fdiv.d f27, f5, f15, rdn # perform operation
fdiv.d f27, f5, f15, rmm # perform operation
fdiv.d f27, f5, f15, rne # perform operation
fdiv.d f27, f5, f15, rtz # perform operation
fdiv.d f27, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fffffffffffffff)
li x2, 0x5c4562046fd72501 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
fdiv.d f2, f27, f28, dyn # perform operation
fdiv.d f2, f27, f28, rdn # perform operation
fdiv.d f2, f27, f28, rmm # perform operation
fdiv.d f2, f27, f28, rne # perform operation
fdiv.d f2, f27, f28, rtz # perform operation
fdiv.d f2, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000001)
li x26, 0x55aa5f47413d0313 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
fdiv.d f26, f11, f8, dyn # perform operation
fdiv.d f26, f11, f8, rdn # perform operation
fdiv.d f26, f11, f8, rmm # perform operation
fdiv.d f26, f11, f8, rne # perform operation
fdiv.d f26, f11, f8, rtz # perform operation
fdiv.d f26, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff7ffffffffffff)
li x30, 0xcf72367a610a6a0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
fdiv.d f30, f6, f7, dyn # perform operation
fdiv.d f30, f6, f7, rdn # perform operation
fdiv.d f30, f6, f7, rmm # perform operation
fdiv.d f30, f6, f7, rne # perform operation
fdiv.d f30, f6, f7, rtz # perform operation
fdiv.d f30, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x5a392534a57711ad)
li x16, 0xa112c53178a39538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
fdiv.d f16, f31, f12, dyn # perform operation
fdiv.d f16, f31, f12, rdn # perform operation
fdiv.d f16, f31, f12, rmm # perform operation
fdiv.d f16, f31, f12, rne # perform operation
fdiv.d f16, f31, f12, rtz # perform operation
fdiv.d f16, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xa6e895993737426c)
li x29, 0xf68b0109e42cfbbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
fdiv.d f29, f16, f12, dyn # perform operation
fdiv.d f29, f16, f12, rdn # perform operation
fdiv.d f29, f16, f12, rmm # perform operation
fdiv.d f29, f16, f12, rne # perform operation
fdiv.d f29, f16, f12, rtz # perform operation
fdiv.d f29, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x0)
li x17, 0xb29443a60a0434a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
fdiv.d f17, f18, f29, dyn # perform operation
fdiv.d f17, f18, f29, rdn # perform operation
fdiv.d f17, f18, f29, rmm # perform operation
fdiv.d f17, f18, f29, rne # perform operation
fdiv.d f17, f18, f29, rtz # perform operation
fdiv.d f17, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000000)
li x26, 0x06efe1384f386f52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fdiv.d f26, f11, f3, dyn # perform operation
fdiv.d f26, f11, f3, rdn # perform operation
fdiv.d f26, f11, f3, rmm # perform operation
fdiv.d f26, f11, f3, rne # perform operation
fdiv.d f26, f11, f3, rtz # perform operation
fdiv.d f26, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff0000000000000)
li x13, 0x1e5f801cf21bafc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fdiv.d f13, f12, f23, dyn # perform operation
fdiv.d f13, f12, f23, rdn # perform operation
fdiv.d f13, f12, f23, rmm # perform operation
fdiv.d f13, f12, f23, rne # perform operation
fdiv.d f13, f12, f23, rtz # perform operation
fdiv.d f13, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff0000000000000)
li x22, 0x990b9f5fa7f7cbf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
fdiv.d f22, f12, f9, dyn # perform operation
fdiv.d f22, f12, f9, rdn # perform operation
fdiv.d f22, f12, f9, rmm # perform operation
fdiv.d f22, f12, f9, rne # perform operation
fdiv.d f22, f12, f9, rtz # perform operation
fdiv.d f22, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff8000000000000)
li x9, 0xeee507636517466e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fdiv.d f9, f11, f28, dyn # perform operation
fdiv.d f9, f11, f28, rdn # perform operation
fdiv.d f9, f11, f28, rmm # perform operation
fdiv.d f9, f11, f28, rne # perform operation
fdiv.d f9, f11, f28, rtz # perform operation
fdiv.d f9, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff8000000000000)
li x4, 0x3c383023cd63c89e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
fdiv.d f4, f27, f17, dyn # perform operation
fdiv.d f4, f27, f17, rdn # perform operation
fdiv.d f4, f27, f17, rmm # perform operation
fdiv.d f4, f27, f17, rne # perform operation
fdiv.d f4, f27, f17, rtz # perform operation
fdiv.d f4, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x4000000000000000)
li x9, 0xd87b3d341247c2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
fdiv.d f9, f15, f23, dyn # perform operation
fdiv.d f9, f15, f23, rdn # perform operation
fdiv.d f9, f15, f23, rmm # perform operation
fdiv.d f9, f15, f23, rne # perform operation
fdiv.d f9, f15, f23, rtz # perform operation
fdiv.d f9, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xc000000000000000)
li x6, 0x0eb498d94a1f7b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fdiv.d f6, f16, f29, dyn # perform operation
fdiv.d f6, f16, f29, rdn # perform operation
fdiv.d f6, f16, f29, rmm # perform operation
fdiv.d f6, f16, f29, rne # perform operation
fdiv.d f6, f16, f29, rtz # perform operation
fdiv.d f6, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x10000000000000)
li x25, 0x59042b7f2b571783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fdiv.d f25, f27, f23, dyn # perform operation
fdiv.d f25, f27, f23, rdn # perform operation
fdiv.d f25, f27, f23, rmm # perform operation
fdiv.d f25, f27, f23, rne # perform operation
fdiv.d f25, f27, f23, rtz # perform operation
fdiv.d f25, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8010000000000000)
li x29, 0x0cb2388b862bf638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
fdiv.d f29, f30, f24, dyn # perform operation
fdiv.d f29, f30, f24, rdn # perform operation
fdiv.d f29, f30, f24, rmm # perform operation
fdiv.d f29, f30, f24, rne # perform operation
fdiv.d f29, f30, f24, rtz # perform operation
fdiv.d f29, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fefffffffffffff)
li x15, 0x335dd565d598bd51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
fdiv.d f15, f17, f7, dyn # perform operation
fdiv.d f15, f17, f7, rdn # perform operation
fdiv.d f15, f17, f7, rmm # perform operation
fdiv.d f15, f17, f7, rne # perform operation
fdiv.d f15, f17, f7, rtz # perform operation
fdiv.d f15, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xffefffffffffffff)
li x1, 0x1ab5f0cdc367071d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
fdiv.d f1, f6, f22, dyn # perform operation
fdiv.d f1, f6, f22, rdn # perform operation
fdiv.d f1, f6, f22, rmm # perform operation
fdiv.d f1, f6, f22, rne # perform operation
fdiv.d f1, f6, f22, rtz # perform operation
fdiv.d f1, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfffffffffffff)
li x14, 0xeafbef9b6bc21e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fdiv.d f14, f2, f12, dyn # perform operation
fdiv.d f14, f2, f12, rdn # perform operation
fdiv.d f14, f2, f12, rmm # perform operation
fdiv.d f14, f2, f12, rne # perform operation
fdiv.d f14, f2, f12, rtz # perform operation
fdiv.d f14, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x800fffffffffffff)
li x5, 0x0d6dde919d5e760b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
fdiv.d f5, f31, f9, dyn # perform operation
fdiv.d f5, f31, f9, rdn # perform operation
fdiv.d f5, f31, f9, rmm # perform operation
fdiv.d f5, f31, f9, rne # perform operation
fdiv.d f5, f31, f9, rtz # perform operation
fdiv.d f5, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000)
li x12, 0x680f851c57ac329c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f13, 0(x2) # load 0x8008000000000000 from memory into f13
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fdiv.d f12, f13, f28, dyn # perform operation
fdiv.d f12, f13, f28, rdn # perform operation
fdiv.d f12, f13, f28, rmm # perform operation
fdiv.d f12, f13, f28, rne # perform operation
fdiv.d f12, f13, f28, rtz # perform operation
fdiv.d f12, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8008000000000000)
li x23, 0x787a9d730e971563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fdiv.d f23, f7, f17, dyn # perform operation
fdiv.d f23, f7, f17, rdn # perform operation
fdiv.d f23, f7, f17, rmm # perform operation
fdiv.d f23, f7, f17, rne # perform operation
fdiv.d f23, f7, f17, rtz # perform operation
fdiv.d f23, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x1)
li x22, 0x83ae4a506c4dabbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
fdiv.d f22, f11, f26, dyn # perform operation
fdiv.d f22, f11, f26, rdn # perform operation
fdiv.d f22, f11, f26, rmm # perform operation
fdiv.d f22, f11, f26, rne # perform operation
fdiv.d f22, f11, f26, rtz # perform operation
fdiv.d f22, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000001)
li x6, 0x77f7db0386b6e77a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
fdiv.d f6, f7, f29, dyn # perform operation
fdiv.d f6, f7, f29, rdn # perform operation
fdiv.d f6, f7, f29, rmm # perform operation
fdiv.d f6, f7, f29, rne # perform operation
fdiv.d f6, f7, f29, rtz # perform operation
fdiv.d f6, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000000)
li x14, 0xf251a445c759a805 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
fdiv.d f14, f26, f18, dyn # perform operation
fdiv.d f14, f26, f18, rdn # perform operation
fdiv.d f14, f26, f18, rmm # perform operation
fdiv.d f14, f26, f18, rne # perform operation
fdiv.d f14, f26, f18, rtz # perform operation
fdiv.d f14, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfff0000000000000)
li x30, 0xc28d9ec52a910193 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fdiv.d f30, f8, f5, dyn # perform operation
fdiv.d f30, f8, f5, rdn # perform operation
fdiv.d f30, f8, f5, rmm # perform operation
fdiv.d f30, f8, f5, rne # perform operation
fdiv.d f30, f8, f5, rtz # perform operation
fdiv.d f30, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff8000000000000)
li x3, 0x589ee30f5bd712aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
fdiv.d f3, f18, f30, dyn # perform operation
fdiv.d f3, f18, f30, rdn # perform operation
fdiv.d f3, f18, f30, rmm # perform operation
fdiv.d f3, f18, f30, rne # perform operation
fdiv.d f3, f18, f30, rtz # perform operation
fdiv.d f3, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fffffffffffffff)
li x18, 0xb808392824f63b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fdiv.d f18, f26, f19, dyn # perform operation
fdiv.d f18, f26, f19, rdn # perform operation
fdiv.d f18, f26, f19, rmm # perform operation
fdiv.d f18, f26, f19, rne # perform operation
fdiv.d f18, f26, f19, rtz # perform operation
fdiv.d f18, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000001)
li x22, 0x90795830f7023457 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fdiv.d f22, f23, f14, dyn # perform operation
fdiv.d f22, f23, f14, rdn # perform operation
fdiv.d f22, f23, f14, rmm # perform operation
fdiv.d f22, f23, f14, rne # perform operation
fdiv.d f22, f23, f14, rtz # perform operation
fdiv.d f22, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff7ffffffffffff)
li x3, 0x4451287ac066252e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
fdiv.d f3, f30, f8, dyn # perform operation
fdiv.d f3, f30, f8, rdn # perform operation
fdiv.d f3, f30, f8, rmm # perform operation
fdiv.d f3, f30, f8, rne # perform operation
fdiv.d f3, f30, f8, rtz # perform operation
fdiv.d f3, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x5a392534a57711ad)
li x3, 0x04cfc98ac9171bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
fdiv.d f3, f23, f8, dyn # perform operation
fdiv.d f3, f23, f8, rdn # perform operation
fdiv.d f3, f23, f8, rmm # perform operation
fdiv.d f3, f23, f8, rne # perform operation
fdiv.d f3, f23, f8, rtz # perform operation
fdiv.d f3, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xa6e895993737426c)
li x6, 0xca51f347c8157466 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
fdiv.d f6, f23, f30, dyn # perform operation
fdiv.d f6, f23, f30, rdn # perform operation
fdiv.d f6, f23, f30, rmm # perform operation
fdiv.d f6, f23, f30, rne # perform operation
fdiv.d f6, f23, f30, rtz # perform operation
fdiv.d f6, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x27, 0xddd98f1e428a2d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fdiv.d f27, f15, f24, dyn # perform operation
fdiv.d f27, f15, f24, rdn # perform operation
fdiv.d f27, f15, f24, rmm # perform operation
fdiv.d f27, f15, f24, rne # perform operation
fdiv.d f27, f15, f24, rtz # perform operation
fdiv.d f27, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000000)
li x20, 0x44c63910a9eb3568 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fdiv.d f20, f24, f10, dyn # perform operation
fdiv.d f20, f24, f10, rdn # perform operation
fdiv.d f20, f24, f10, rmm # perform operation
fdiv.d f20, f24, f10, rne # perform operation
fdiv.d f20, f24, f10, rtz # perform operation
fdiv.d f20, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff0000000000000)
li x2, 0xce0f3ae480e80f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fdiv.d f2, f6, f21, dyn # perform operation
fdiv.d f2, f6, f21, rdn # perform operation
fdiv.d f2, f6, f21, rmm # perform operation
fdiv.d f2, f6, f21, rne # perform operation
fdiv.d f2, f6, f21, rtz # perform operation
fdiv.d f2, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff0000000000000)
li x19, 0x32773addf8784651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fdiv.d f19, f17, f18, dyn # perform operation
fdiv.d f19, f17, f18, rdn # perform operation
fdiv.d f19, f17, f18, rmm # perform operation
fdiv.d f19, f17, f18, rne # perform operation
fdiv.d f19, f17, f18, rtz # perform operation
fdiv.d f19, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff8000000000000)
li x6, 0x60c600f018aead48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
fdiv.d f6, f27, f30, dyn # perform operation
fdiv.d f6, f27, f30, rdn # perform operation
fdiv.d f6, f27, f30, rmm # perform operation
fdiv.d f6, f27, f30, rne # perform operation
fdiv.d f6, f27, f30, rtz # perform operation
fdiv.d f6, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff8000000000000)
li x24, 0xb7b5a60115bfb9d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fdiv.d f24, f19, f22, dyn # perform operation
fdiv.d f24, f19, f22, rdn # perform operation
fdiv.d f24, f19, f22, rmm # perform operation
fdiv.d f24, f19, f22, rne # perform operation
fdiv.d f24, f19, f22, rtz # perform operation
fdiv.d f24, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000000000000000)
li x24, 0xbb210bce61650d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
fdiv.d f24, f17, f9, dyn # perform operation
fdiv.d f24, f17, f9, rdn # perform operation
fdiv.d f24, f17, f9, rmm # perform operation
fdiv.d f24, f17, f9, rne # perform operation
fdiv.d f24, f17, f9, rtz # perform operation
fdiv.d f24, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000000000000000)
li x28, 0xf93614769bfe6d5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fdiv.d f28, f17, f13, dyn # perform operation
fdiv.d f28, f17, f13, rdn # perform operation
fdiv.d f28, f17, f13, rmm # perform operation
fdiv.d f28, f17, f13, rne # perform operation
fdiv.d f28, f17, f13, rtz # perform operation
fdiv.d f28, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x10000000000000)
li x17, 0x8c260fc9b753c1f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fdiv.d f17, f21, f22, dyn # perform operation
fdiv.d f17, f21, f22, rdn # perform operation
fdiv.d f17, f21, f22, rmm # perform operation
fdiv.d f17, f21, f22, rne # perform operation
fdiv.d f17, f21, f22, rtz # perform operation
fdiv.d f17, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8010000000000000)
li x9, 0x1585b5fad58c752e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fdiv.d f9, f28, f16, dyn # perform operation
fdiv.d f9, f28, f16, rdn # perform operation
fdiv.d f9, f28, f16, rmm # perform operation
fdiv.d f9, f28, f16, rne # perform operation
fdiv.d f9, f28, f16, rtz # perform operation
fdiv.d f9, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fefffffffffffff)
li x30, 0x925feac07a8afa4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
fdiv.d f30, f23, f31, dyn # perform operation
fdiv.d f30, f23, f31, rdn # perform operation
fdiv.d f30, f23, f31, rmm # perform operation
fdiv.d f30, f23, f31, rne # perform operation
fdiv.d f30, f23, f31, rtz # perform operation
fdiv.d f30, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffefffffffffffff)
li x5, 0x6817441080801135 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
fdiv.d f5, f21, f6, dyn # perform operation
fdiv.d f5, f21, f6, rdn # perform operation
fdiv.d f5, f21, f6, rmm # perform operation
fdiv.d f5, f21, f6, rne # perform operation
fdiv.d f5, f21, f6, rtz # perform operation
fdiv.d f5, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfffffffffffff)
li x28, 0x83a34fe5b6764e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
fdiv.d f28, f12, f11, dyn # perform operation
fdiv.d f28, f12, f11, rdn # perform operation
fdiv.d f28, f12, f11, rmm # perform operation
fdiv.d f28, f12, f11, rne # perform operation
fdiv.d f28, f12, f11, rtz # perform operation
fdiv.d f28, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800fffffffffffff)
li x9, 0x3de5f4374f08088a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fdiv.d f9, f13, f19, dyn # perform operation
fdiv.d f9, f13, f19, rdn # perform operation
fdiv.d f9, f13, f19, rmm # perform operation
fdiv.d f9, f13, f19, rne # perform operation
fdiv.d f9, f13, f19, rtz # perform operation
fdiv.d f9, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000)
li x13, 0x5868404c941c867d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
fdiv.d f13, f26, f5, dyn # perform operation
fdiv.d f13, f26, f5, rdn # perform operation
fdiv.d f13, f26, f5, rmm # perform operation
fdiv.d f13, f26, f5, rne # perform operation
fdiv.d f13, f26, f5, rtz # perform operation
fdiv.d f13, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8008000000000000)
li x4, 0x4dcac84527096737 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fdiv.d f4, f12, f10, dyn # perform operation
fdiv.d f4, f12, f10, rdn # perform operation
fdiv.d f4, f12, f10, rmm # perform operation
fdiv.d f4, f12, f10, rne # perform operation
fdiv.d f4, f12, f10, rtz # perform operation
fdiv.d f4, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x9, 0xaf0057c0607e9867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f30, 0(x2) # load 0x0000000000000001 from memory into f30
fdiv.d f9, f25, f30, dyn # perform operation
fdiv.d f9, f25, f30, rdn # perform operation
fdiv.d f9, f25, f30, rmm # perform operation
fdiv.d f9, f25, f30, rne # perform operation
fdiv.d f9, f25, f30, rtz # perform operation
fdiv.d f9, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000001)
li x24, 0x659befd6285aae3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
fdiv.d f24, f6, f8, dyn # perform operation
fdiv.d f24, f6, f8, rdn # perform operation
fdiv.d f24, f6, f8, rmm # perform operation
fdiv.d f24, f6, f8, rne # perform operation
fdiv.d f24, f6, f8, rtz # perform operation
fdiv.d f24, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000000)
li x12, 0xb169e4465e936dda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fdiv.d f12, f24, f22, dyn # perform operation
fdiv.d f12, f24, f22, rdn # perform operation
fdiv.d f12, f24, f22, rmm # perform operation
fdiv.d f12, f24, f22, rne # perform operation
fdiv.d f12, f24, f22, rtz # perform operation
fdiv.d f12, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfff0000000000000)
li x31, 0x2e04c3f8d8c58ef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
fdiv.d f31, f6, f8, dyn # perform operation
fdiv.d f31, f6, f8, rdn # perform operation
fdiv.d f31, f6, f8, rmm # perform operation
fdiv.d f31, f6, f8, rne # perform operation
fdiv.d f31, f6, f8, rtz # perform operation
fdiv.d f31, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff8000000000000)
li x5, 0x2658e1afd9e7c18b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
fdiv.d f5, f17, f11, dyn # perform operation
fdiv.d f5, f17, f11, rdn # perform operation
fdiv.d f5, f17, f11, rmm # perform operation
fdiv.d f5, f17, f11, rne # perform operation
fdiv.d f5, f17, f11, rtz # perform operation
fdiv.d f5, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffffffffffff)
li x29, 0x90b63bb7fa6cb378 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f30, 0(x2) # load 0x0000000000000001 from memory into f30
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
fdiv.d f29, f30, f20, dyn # perform operation
fdiv.d f29, f30, f20, rdn # perform operation
fdiv.d f29, f30, f20, rmm # perform operation
fdiv.d f29, f30, f20, rne # perform operation
fdiv.d f29, f30, f20, rtz # perform operation
fdiv.d f29, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000001)
li x7, 0x9bb621378cb86abd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
fdiv.d f7, f20, f27, dyn # perform operation
fdiv.d f7, f20, f27, rdn # perform operation
fdiv.d f7, f20, f27, rmm # perform operation
fdiv.d f7, f20, f27, rne # perform operation
fdiv.d f7, f20, f27, rtz # perform operation
fdiv.d f7, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff7ffffffffffff)
li x1, 0xa85e93d4bd06dbd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fdiv.d f1, f2, f25, dyn # perform operation
fdiv.d f1, f2, f25, rdn # perform operation
fdiv.d f1, f2, f25, rmm # perform operation
fdiv.d f1, f2, f25, rne # perform operation
fdiv.d f1, f2, f25, rtz # perform operation
fdiv.d f1, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x5a392534a57711ad)
li x14, 0x337de65b384e3f72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f16, 0(x2) # load 0x0000000000000001 from memory into f16
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fdiv.d f14, f16, f29, dyn # perform operation
fdiv.d f14, f16, f29, rdn # perform operation
fdiv.d f14, f16, f29, rmm # perform operation
fdiv.d f14, f16, f29, rne # perform operation
fdiv.d f14, f16, f29, rtz # perform operation
fdiv.d f14, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xa6e895993737426c)
li x15, 0x1e4ba96e357887d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
fdiv.d f15, f8, f23, dyn # perform operation
fdiv.d f15, f8, f23, rdn # perform operation
fdiv.d f15, f8, f23, rmm # perform operation
fdiv.d f15, f8, f23, rne # perform operation
fdiv.d f15, f8, f23, rtz # perform operation
fdiv.d f15, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x0)
li x20, 0xc5c9d3a070ce3654 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
fdiv.d f20, f30, f22, dyn # perform operation
fdiv.d f20, f30, f22, rdn # perform operation
fdiv.d f20, f30, f22, rmm # perform operation
fdiv.d f20, f30, f22, rne # perform operation
fdiv.d f20, f30, f22, rtz # perform operation
fdiv.d f20, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000000)
li x4, 0x53ad471bbe508700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fdiv.d f4, f13, f12, dyn # perform operation
fdiv.d f4, f13, f12, rdn # perform operation
fdiv.d f4, f13, f12, rmm # perform operation
fdiv.d f4, f13, f12, rne # perform operation
fdiv.d f4, f13, f12, rtz # perform operation
fdiv.d f4, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff0000000000000)
li x5, 0x5e4ef1ca8d5ecec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
fdiv.d f5, f25, f4, dyn # perform operation
fdiv.d f5, f25, f4, rdn # perform operation
fdiv.d f5, f25, f4, rmm # perform operation
fdiv.d f5, f25, f4, rne # perform operation
fdiv.d f5, f25, f4, rtz # perform operation
fdiv.d f5, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff0000000000000)
li x9, 0xc1ffb298c90810b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fdiv.d f9, f5, f14, dyn # perform operation
fdiv.d f9, f5, f14, rdn # perform operation
fdiv.d f9, f5, f14, rmm # perform operation
fdiv.d f9, f5, f14, rne # perform operation
fdiv.d f9, f5, f14, rtz # perform operation
fdiv.d f9, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff8000000000000)
li x5, 0xf972d9d28680d6d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fdiv.d f5, f7, f29, dyn # perform operation
fdiv.d f5, f7, f29, rdn # perform operation
fdiv.d f5, f7, f29, rmm # perform operation
fdiv.d f5, f7, f29, rne # perform operation
fdiv.d f5, f7, f29, rtz # perform operation
fdiv.d f5, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff8000000000000)
li x17, 0x63ec384cf7af48fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
fdiv.d f17, f28, f8, dyn # perform operation
fdiv.d f17, f28, f8, rdn # perform operation
fdiv.d f17, f28, f8, rmm # perform operation
fdiv.d f17, f28, f8, rne # perform operation
fdiv.d f17, f28, f8, rtz # perform operation
fdiv.d f17, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x4000000000000000)
li x16, 0x9feb8a529f94b734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
fdiv.d f16, f5, f3, dyn # perform operation
fdiv.d f16, f5, f3, rdn # perform operation
fdiv.d f16, f5, f3, rmm # perform operation
fdiv.d f16, f5, f3, rne # perform operation
fdiv.d f16, f5, f3, rtz # perform operation
fdiv.d f16, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xc000000000000000)
li x4, 0xa2d53d22abedb75a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
fdiv.d f4, f22, f17, dyn # perform operation
fdiv.d f4, f22, f17, rdn # perform operation
fdiv.d f4, f22, f17, rmm # perform operation
fdiv.d f4, f22, f17, rne # perform operation
fdiv.d f4, f22, f17, rtz # perform operation
fdiv.d f4, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x10000000000000)
li x27, 0x693dde7dc2e96bb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
fdiv.d f27, f28, f4, dyn # perform operation
fdiv.d f27, f28, f4, rdn # perform operation
fdiv.d f27, f28, f4, rmm # perform operation
fdiv.d f27, f28, f4, rne # perform operation
fdiv.d f27, f28, f4, rtz # perform operation
fdiv.d f27, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8010000000000000)
li x24, 0x34e229ceec4a98f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
fdiv.d f24, f2, f7, dyn # perform operation
fdiv.d f24, f2, f7, rdn # perform operation
fdiv.d f24, f2, f7, rmm # perform operation
fdiv.d f24, f2, f7, rne # perform operation
fdiv.d f24, f2, f7, rtz # perform operation
fdiv.d f24, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fefffffffffffff)
li x6, 0x934757b1744de298 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fdiv.d f6, f19, f1, dyn # perform operation
fdiv.d f6, f19, f1, rdn # perform operation
fdiv.d f6, f19, f1, rmm # perform operation
fdiv.d f6, f19, f1, rne # perform operation
fdiv.d f6, f19, f1, rtz # perform operation
fdiv.d f6, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xffefffffffffffff)
li x22, 0x07519bd79c6ba763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fdiv.d f22, f31, f9, dyn # perform operation
fdiv.d f22, f31, f9, rdn # perform operation
fdiv.d f22, f31, f9, rmm # perform operation
fdiv.d f22, f31, f9, rne # perform operation
fdiv.d f22, f31, f9, rtz # perform operation
fdiv.d f22, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfffffffffffff)
li x24, 0x55e5e1870dfec054 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
fdiv.d f24, f29, f7, dyn # perform operation
fdiv.d f24, f29, f7, rdn # perform operation
fdiv.d f24, f29, f7, rmm # perform operation
fdiv.d f24, f29, f7, rne # perform operation
fdiv.d f24, f29, f7, rtz # perform operation
fdiv.d f24, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x800fffffffffffff)
li x18, 0xbb48d39b9dd9eb1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
fdiv.d f18, f13, f4, dyn # perform operation
fdiv.d f18, f13, f4, rdn # perform operation
fdiv.d f18, f13, f4, rmm # perform operation
fdiv.d f18, f13, f4, rne # perform operation
fdiv.d f18, f13, f4, rtz # perform operation
fdiv.d f18, f13, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f13, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f13, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f13, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f13, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000)
li x26, 0x282328a103a749bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fdiv.d f26, f5, f31, dyn # perform operation
fdiv.d f26, f5, f31, rdn # perform operation
fdiv.d f26, f5, f31, rmm # perform operation
fdiv.d f26, f5, f31, rne # perform operation
fdiv.d f26, f5, f31, rtz # perform operation
fdiv.d f26, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8008000000000000)
li x8, 0x351b8fb49273b905 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
fdiv.d f8, f14, f4, dyn # perform operation
fdiv.d f8, f14, f4, rdn # perform operation
fdiv.d f8, f14, f4, rmm # perform operation
fdiv.d f8, f14, f4, rne # perform operation
fdiv.d f8, f14, f4, rtz # perform operation
fdiv.d f8, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x1)
li x5, 0x2906b7f7ec65d66b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
fdiv.d f5, f23, f1, dyn # perform operation
fdiv.d f5, f23, f1, rdn # perform operation
fdiv.d f5, f23, f1, rmm # perform operation
fdiv.d f5, f23, f1, rne # perform operation
fdiv.d f5, f23, f1, rtz # perform operation
fdiv.d f5, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000001)
li x10, 0x1c04b605a86309f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fdiv.d f10, f18, f13, dyn # perform operation
fdiv.d f10, f18, f13, rdn # perform operation
fdiv.d f10, f18, f13, rmm # perform operation
fdiv.d f10, f18, f13, rne # perform operation
fdiv.d f10, f18, f13, rtz # perform operation
fdiv.d f10, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000000)
li x16, 0xd05c5c7cd14c23a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fdiv.d f16, f17, f31, dyn # perform operation
fdiv.d f16, f17, f31, rdn # perform operation
fdiv.d f16, f17, f31, rmm # perform operation
fdiv.d f16, f17, f31, rne # perform operation
fdiv.d f16, f17, f31, rtz # perform operation
fdiv.d f16, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfff0000000000000)
li x30, 0x5cf4149706076068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fdiv.d f30, f10, f3, dyn # perform operation
fdiv.d f30, f10, f3, rdn # perform operation
fdiv.d f30, f10, f3, rmm # perform operation
fdiv.d f30, f10, f3, rne # perform operation
fdiv.d f30, f10, f3, rtz # perform operation
fdiv.d f30, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff8000000000000)
li x20, 0xdb8b7942dc315178 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f1, 0(x2) # load 0x8000000000000001 from memory into f1
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
fdiv.d f20, f1, f5, dyn # perform operation
fdiv.d f20, f1, f5, rdn # perform operation
fdiv.d f20, f1, f5, rmm # perform operation
fdiv.d f20, f1, f5, rne # perform operation
fdiv.d f20, f1, f5, rtz # perform operation
fdiv.d f20, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fffffffffffffff)
li x27, 0x5215f3eac81a3f63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
fdiv.d f27, f23, f3, dyn # perform operation
fdiv.d f27, f23, f3, rdn # perform operation
fdiv.d f27, f23, f3, rmm # perform operation
fdiv.d f27, f23, f3, rne # perform operation
fdiv.d f27, f23, f3, rtz # perform operation
fdiv.d f27, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000001)
li x8, 0xba147dd40505c8a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fdiv.d f8, f29, f14, dyn # perform operation
fdiv.d f8, f29, f14, rdn # perform operation
fdiv.d f8, f29, f14, rmm # perform operation
fdiv.d f8, f29, f14, rne # perform operation
fdiv.d f8, f29, f14, rtz # perform operation
fdiv.d f8, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff7ffffffffffff)
li x3, 0x1d645d50923927ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
fdiv.d f3, f5, f10, dyn # perform operation
fdiv.d f3, f5, f10, rdn # perform operation
fdiv.d f3, f5, f10, rmm # perform operation
fdiv.d f3, f5, f10, rne # perform operation
fdiv.d f3, f5, f10, rtz # perform operation
fdiv.d f3, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x5a392534a57711ad)
li x16, 0x1eacb81a00973d52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
fdiv.d f16, f18, f7, dyn # perform operation
fdiv.d f16, f18, f7, rdn # perform operation
fdiv.d f16, f18, f7, rmm # perform operation
fdiv.d f16, f18, f7, rne # perform operation
fdiv.d f16, f18, f7, rtz # perform operation
fdiv.d f16, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xa6e895993737426c)
li x14, 0xcac7c04c5961b000 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
fdiv.d f14, f28, f16, dyn # perform operation
fdiv.d f14, f28, f16, rdn # perform operation
fdiv.d f14, f28, f16, rmm # perform operation
fdiv.d f14, f28, f16, rne # perform operation
fdiv.d f14, f28, f16, rtz # perform operation
fdiv.d f14, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x0)
li x2, 0x7bd3c993f0afde9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f14, 0(x2) # load 0x0000000000000000 from memory into f14
fdiv.d f2, f25, f14, dyn # perform operation
fdiv.d f2, f25, f14, rdn # perform operation
fdiv.d f2, f25, f14, rmm # perform operation
fdiv.d f2, f25, f14, rne # perform operation
fdiv.d f2, f25, f14, rtz # perform operation
fdiv.d f2, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000000)
li x11, 0x7f8ccea041f0a07d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f4, 0(x2) # load 0x8000000000000000 from memory into f4
fdiv.d f11, f14, f4, dyn # perform operation
fdiv.d f11, f14, f4, rdn # perform operation
fdiv.d f11, f14, f4, rmm # perform operation
fdiv.d f11, f14, f4, rne # perform operation
fdiv.d f11, f14, f4, rtz # perform operation
fdiv.d f11, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff0000000000000)
li x13, 0x564f8398ad22ace1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fdiv.d f13, f9, f23, dyn # perform operation
fdiv.d f13, f9, f23, rdn # perform operation
fdiv.d f13, f9, f23, rmm # perform operation
fdiv.d f13, f9, f23, rne # perform operation
fdiv.d f13, f9, f23, rtz # perform operation
fdiv.d f13, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff0000000000000)
li x26, 0x1e0911356aa36a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fdiv.d f26, f28, f3, dyn # perform operation
fdiv.d f26, f28, f3, rdn # perform operation
fdiv.d f26, f28, f3, rmm # perform operation
fdiv.d f26, f28, f3, rne # perform operation
fdiv.d f26, f28, f3, rtz # perform operation
fdiv.d f26, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff8000000000000)
li x21, 0xe60e913fa5581a67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fdiv.d f21, f29, f8, dyn # perform operation
fdiv.d f21, f29, f8, rdn # perform operation
fdiv.d f21, f29, f8, rmm # perform operation
fdiv.d f21, f29, f8, rne # perform operation
fdiv.d f21, f29, f8, rtz # perform operation
fdiv.d f21, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff8000000000000)
li x21, 0x5039d0381e88360c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
fdiv.d f21, f1, f17, dyn # perform operation
fdiv.d f21, f1, f17, rdn # perform operation
fdiv.d f21, f1, f17, rmm # perform operation
fdiv.d f21, f1, f17, rne # perform operation
fdiv.d f21, f1, f17, rtz # perform operation
fdiv.d f21, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x4000000000000000)
li x21, 0xa35242b09dbf5f03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fdiv.d f21, f3, f25, dyn # perform operation
fdiv.d f21, f3, f25, rdn # perform operation
fdiv.d f21, f3, f25, rmm # perform operation
fdiv.d f21, f3, f25, rne # perform operation
fdiv.d f21, f3, f25, rtz # perform operation
fdiv.d f21, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xc000000000000000)
li x7, 0xbf3067689eb41a06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
fdiv.d f7, f6, f23, dyn # perform operation
fdiv.d f7, f6, f23, rdn # perform operation
fdiv.d f7, f6, f23, rmm # perform operation
fdiv.d f7, f6, f23, rne # perform operation
fdiv.d f7, f6, f23, rtz # perform operation
fdiv.d f7, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x10000000000000)
li x3, 0x76884f49a14152b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
fdiv.d f3, f30, f13, dyn # perform operation
fdiv.d f3, f30, f13, rdn # perform operation
fdiv.d f3, f30, f13, rmm # perform operation
fdiv.d f3, f30, f13, rne # perform operation
fdiv.d f3, f30, f13, rtz # perform operation
fdiv.d f3, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8010000000000000)
li x22, 0x41e422dcfe1a9be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fdiv.d f22, f18, f23, dyn # perform operation
fdiv.d f22, f18, f23, rdn # perform operation
fdiv.d f22, f18, f23, rmm # perform operation
fdiv.d f22, f18, f23, rne # perform operation
fdiv.d f22, f18, f23, rtz # perform operation
fdiv.d f22, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fefffffffffffff)
li x25, 0x043fa208ed8ccd13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
fdiv.d f25, f28, f17, dyn # perform operation
fdiv.d f25, f28, f17, rdn # perform operation
fdiv.d f25, f28, f17, rmm # perform operation
fdiv.d f25, f28, f17, rne # perform operation
fdiv.d f25, f28, f17, rtz # perform operation
fdiv.d f25, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xffefffffffffffff)
li x27, 0x9957b4e94b01d797 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fdiv.d f27, f20, f1, dyn # perform operation
fdiv.d f27, f20, f1, rdn # perform operation
fdiv.d f27, f20, f1, rmm # perform operation
fdiv.d f27, f20, f1, rne # perform operation
fdiv.d f27, f20, f1, rtz # perform operation
fdiv.d f27, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfffffffffffff)
li x22, 0xa84e68f886d7fba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fdiv.d f22, f2, f9, dyn # perform operation
fdiv.d f22, f2, f9, rdn # perform operation
fdiv.d f22, f2, f9, rmm # perform operation
fdiv.d f22, f2, f9, rne # perform operation
fdiv.d f22, f2, f9, rtz # perform operation
fdiv.d f22, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x800fffffffffffff)
li x23, 0xab1352cf0ca05485 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fdiv.d f23, f14, f11, dyn # perform operation
fdiv.d f23, f14, f11, rdn # perform operation
fdiv.d f23, f14, f11, rmm # perform operation
fdiv.d f23, f14, f11, rne # perform operation
fdiv.d f23, f14, f11, rtz # perform operation
fdiv.d f23, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000)
li x20, 0x4f59e9b38783e2da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fdiv.d f20, f19, f31, dyn # perform operation
fdiv.d f20, f19, f31, rdn # perform operation
fdiv.d f20, f19, f31, rmm # perform operation
fdiv.d f20, f19, f31, rne # perform operation
fdiv.d f20, f19, f31, rtz # perform operation
fdiv.d f20, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8008000000000000)
li x8, 0xf483f6a195283873 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
fdiv.d f8, f12, f19, dyn # perform operation
fdiv.d f8, f12, f19, rdn # perform operation
fdiv.d f8, f12, f19, rmm # perform operation
fdiv.d f8, f12, f19, rne # perform operation
fdiv.d f8, f12, f19, rtz # perform operation
fdiv.d f8, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x1)
li x21, 0xdbd5e86d3d2b639b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
fdiv.d f21, f27, f7, dyn # perform operation
fdiv.d f21, f27, f7, rdn # perform operation
fdiv.d f21, f27, f7, rmm # perform operation
fdiv.d f21, f27, f7, rne # perform operation
fdiv.d f21, f27, f7, rtz # perform operation
fdiv.d f21, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000001)
li x12, 0xa557d5013e703483 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
fdiv.d f12, f30, f17, dyn # perform operation
fdiv.d f12, f30, f17, rdn # perform operation
fdiv.d f12, f30, f17, rmm # perform operation
fdiv.d f12, f30, f17, rne # perform operation
fdiv.d f12, f30, f17, rtz # perform operation
fdiv.d f12, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000000)
li x4, 0xdb1ca4a58b07d654 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
fdiv.d f4, f10, f27, dyn # perform operation
fdiv.d f4, f10, f27, rdn # perform operation
fdiv.d f4, f10, f27, rmm # perform operation
fdiv.d f4, f10, f27, rne # perform operation
fdiv.d f4, f10, f27, rtz # perform operation
fdiv.d f4, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfff0000000000000)
li x15, 0xeeda36b785d5d04a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fdiv.d f15, f12, f22, dyn # perform operation
fdiv.d f15, f12, f22, rdn # perform operation
fdiv.d f15, f12, f22, rmm # perform operation
fdiv.d f15, f12, f22, rne # perform operation
fdiv.d f15, f12, f22, rtz # perform operation
fdiv.d f15, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff8000000000000)
li x1, 0x6a5801633b949d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fdiv.d f1, f6, f4, dyn # perform operation
fdiv.d f1, f6, f4, rdn # perform operation
fdiv.d f1, f6, f4, rmm # perform operation
fdiv.d f1, f6, f4, rne # perform operation
fdiv.d f1, f6, f4, rtz # perform operation
fdiv.d f1, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fffffffffffffff)
li x12, 0x3eff741cc477106b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fdiv.d f12, f22, f15, dyn # perform operation
fdiv.d f12, f22, f15, rdn # perform operation
fdiv.d f12, f22, f15, rmm # perform operation
fdiv.d f12, f22, f15, rne # perform operation
fdiv.d f12, f22, f15, rtz # perform operation
fdiv.d f12, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000001)
li x31, 0x733336216df4b8d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
fdiv.d f31, f18, f25, dyn # perform operation
fdiv.d f31, f18, f25, rdn # perform operation
fdiv.d f31, f18, f25, rmm # perform operation
fdiv.d f31, f18, f25, rne # perform operation
fdiv.d f31, f18, f25, rtz # perform operation
fdiv.d f31, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x27, 0xde7562e5cf6d84a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fdiv.d f27, f18, f2, dyn # perform operation
fdiv.d f27, f18, f2, rdn # perform operation
fdiv.d f27, f18, f2, rmm # perform operation
fdiv.d f27, f18, f2, rne # perform operation
fdiv.d f27, f18, f2, rtz # perform operation
fdiv.d f27, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x5a392534a57711ad)
li x7, 0x9eda47a3b95c715d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fdiv.d f7, f27, f26, dyn # perform operation
fdiv.d f7, f27, f26, rdn # perform operation
fdiv.d f7, f27, f26, rmm # perform operation
fdiv.d f7, f27, f26, rne # perform operation
fdiv.d f7, f27, f26, rtz # perform operation
fdiv.d f7, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xa6e895993737426c)
li x11, 0xd08c32d1224acf48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
fdiv.d f11, f25, f18, dyn # perform operation
fdiv.d f11, f25, f18, rdn # perform operation
fdiv.d f11, f25, f18, rmm # perform operation
fdiv.d f11, f25, f18, rne # perform operation
fdiv.d f11, f25, f18, rtz # perform operation
fdiv.d f11, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x0)
li x13, 0x1563d7423432ff17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
fdiv.d f13, f3, f20, dyn # perform operation
fdiv.d f13, f3, f20, rdn # perform operation
fdiv.d f13, f3, f20, rmm # perform operation
fdiv.d f13, f3, f20, rne # perform operation
fdiv.d f13, f3, f20, rtz # perform operation
fdiv.d f13, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000000)
li x5, 0xb168324012e331a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
fdiv.d f5, f3, f2, dyn # perform operation
fdiv.d f5, f3, f2, rdn # perform operation
fdiv.d f5, f3, f2, rmm # perform operation
fdiv.d f5, f3, f2, rne # perform operation
fdiv.d f5, f3, f2, rtz # perform operation
fdiv.d f5, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff0000000000000)
li x17, 0x939c04d9770c7479 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
fdiv.d f17, f25, f24, dyn # perform operation
fdiv.d f17, f25, f24, rdn # perform operation
fdiv.d f17, f25, f24, rmm # perform operation
fdiv.d f17, f25, f24, rne # perform operation
fdiv.d f17, f25, f24, rtz # perform operation
fdiv.d f17, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff0000000000000)
li x11, 0x13d9c604479a9e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fdiv.d f11, f14, f20, dyn # perform operation
fdiv.d f11, f14, f20, rdn # perform operation
fdiv.d f11, f14, f20, rmm # perform operation
fdiv.d f11, f14, f20, rne # perform operation
fdiv.d f11, f14, f20, rtz # perform operation
fdiv.d f11, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff8000000000000)
li x20, 0xdb15b38d57188201 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
fdiv.d f20, f5, f25, dyn # perform operation
fdiv.d f20, f5, f25, rdn # perform operation
fdiv.d f20, f5, f25, rmm # perform operation
fdiv.d f20, f5, f25, rne # perform operation
fdiv.d f20, f5, f25, rtz # perform operation
fdiv.d f20, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff8000000000000)
li x15, 0x9ef6a4b149cc892f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
fdiv.d f15, f13, f8, dyn # perform operation
fdiv.d f15, f13, f8, rdn # perform operation
fdiv.d f15, f13, f8, rmm # perform operation
fdiv.d f15, f13, f8, rne # perform operation
fdiv.d f15, f13, f8, rtz # perform operation
fdiv.d f15, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x4000000000000000)
li x23, 0xfd4d0111a59cda11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fdiv.d f23, f14, f21, dyn # perform operation
fdiv.d f23, f14, f21, rdn # perform operation
fdiv.d f23, f14, f21, rmm # perform operation
fdiv.d f23, f14, f21, rne # perform operation
fdiv.d f23, f14, f21, rtz # perform operation
fdiv.d f23, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xc000000000000000)
li x24, 0xcf0618c2beb93e08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fdiv.d f24, f20, f15, dyn # perform operation
fdiv.d f24, f20, f15, rdn # perform operation
fdiv.d f24, f20, f15, rmm # perform operation
fdiv.d f24, f20, f15, rne # perform operation
fdiv.d f24, f20, f15, rtz # perform operation
fdiv.d f24, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x10000000000000)
li x2, 0xeb7030b819b1d64a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fdiv.d f2, f5, f19, dyn # perform operation
fdiv.d f2, f5, f19, rdn # perform operation
fdiv.d f2, f5, f19, rmm # perform operation
fdiv.d f2, f5, f19, rne # perform operation
fdiv.d f2, f5, f19, rtz # perform operation
fdiv.d f2, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8010000000000000)
li x30, 0x08669f7e1b4045a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f18, 0(x2) # load 0xfff0000000000000 from memory into f18
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
fdiv.d f30, f18, f19, dyn # perform operation
fdiv.d f30, f18, f19, rdn # perform operation
fdiv.d f30, f18, f19, rmm # perform operation
fdiv.d f30, f18, f19, rne # perform operation
fdiv.d f30, f18, f19, rtz # perform operation
fdiv.d f30, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fefffffffffffff)
li x13, 0x896e2a9c51dee4cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fdiv.d f13, f9, f18, dyn # perform operation
fdiv.d f13, f9, f18, rdn # perform operation
fdiv.d f13, f9, f18, rmm # perform operation
fdiv.d f13, f9, f18, rne # perform operation
fdiv.d f13, f9, f18, rtz # perform operation
fdiv.d f13, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xffefffffffffffff)
li x24, 0x08313bd75713f298 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
fdiv.d f24, f11, f17, dyn # perform operation
fdiv.d f24, f11, f17, rdn # perform operation
fdiv.d f24, f11, f17, rmm # perform operation
fdiv.d f24, f11, f17, rne # perform operation
fdiv.d f24, f11, f17, rtz # perform operation
fdiv.d f24, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfffffffffffff)
li x22, 0xf12a0f1af1b20724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fdiv.d f22, f23, f12, dyn # perform operation
fdiv.d f22, f23, f12, rdn # perform operation
fdiv.d f22, f23, f12, rmm # perform operation
fdiv.d f22, f23, f12, rne # perform operation
fdiv.d f22, f23, f12, rtz # perform operation
fdiv.d f22, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x800fffffffffffff)
li x31, 0x79f8f382bc8d2bbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fdiv.d f31, f15, f30, dyn # perform operation
fdiv.d f31, f15, f30, rdn # perform operation
fdiv.d f31, f15, f30, rmm # perform operation
fdiv.d f31, f15, f30, rne # perform operation
fdiv.d f31, f15, f30, rtz # perform operation
fdiv.d f31, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000)
li x12, 0x27f07aecf760f0b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fdiv.d f12, f2, f7, dyn # perform operation
fdiv.d f12, f2, f7, rdn # perform operation
fdiv.d f12, f2, f7, rmm # perform operation
fdiv.d f12, f2, f7, rne # perform operation
fdiv.d f12, f2, f7, rtz # perform operation
fdiv.d f12, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8008000000000000)
li x26, 0x98fc08b904fb004b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f1, 0(x2) # load 0xfff0000000000000 from memory into f1
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
fdiv.d f26, f1, f20, dyn # perform operation
fdiv.d f26, f1, f20, rdn # perform operation
fdiv.d f26, f1, f20, rmm # perform operation
fdiv.d f26, f1, f20, rne # perform operation
fdiv.d f26, f1, f20, rtz # perform operation
fdiv.d f26, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x1)
li x10, 0xff9ebb626967bf68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fdiv.d f10, f22, f12, dyn # perform operation
fdiv.d f10, f22, f12, rdn # perform operation
fdiv.d f10, f22, f12, rmm # perform operation
fdiv.d f10, f22, f12, rne # perform operation
fdiv.d f10, f22, f12, rtz # perform operation
fdiv.d f10, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000001)
li x5, 0xb81d74805f5940b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
fdiv.d f5, f26, f28, dyn # perform operation
fdiv.d f5, f26, f28, rdn # perform operation
fdiv.d f5, f26, f28, rmm # perform operation
fdiv.d f5, f26, f28, rne # perform operation
fdiv.d f5, f26, f28, rtz # perform operation
fdiv.d f5, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000000)
li x1, 0x1e0f1067ce94ffde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fdiv.d f1, f31, f3, dyn # perform operation
fdiv.d f1, f31, f3, rdn # perform operation
fdiv.d f1, f31, f3, rmm # perform operation
fdiv.d f1, f31, f3, rne # perform operation
fdiv.d f1, f31, f3, rtz # perform operation
fdiv.d f1, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfff0000000000000)
li x13, 0xa7a0974c9d1d850a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fdiv.d f13, f28, f27, dyn # perform operation
fdiv.d f13, f28, f27, rdn # perform operation
fdiv.d f13, f28, f27, rmm # perform operation
fdiv.d f13, f28, f27, rne # perform operation
fdiv.d f13, f28, f27, rtz # perform operation
fdiv.d f13, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff8000000000000)
li x12, 0x597124c72dc26743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fdiv.d f12, f9, f10, dyn # perform operation
fdiv.d f12, f9, f10, rdn # perform operation
fdiv.d f12, f9, f10, rmm # perform operation
fdiv.d f12, f9, f10, rne # perform operation
fdiv.d f12, f9, f10, rtz # perform operation
fdiv.d f12, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fffffffffffffff)
li x17, 0xb27a7fab11d82c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fdiv.d f17, f13, f9, dyn # perform operation
fdiv.d f17, f13, f9, rdn # perform operation
fdiv.d f17, f13, f9, rmm # perform operation
fdiv.d f17, f13, f9, rne # perform operation
fdiv.d f17, f13, f9, rtz # perform operation
fdiv.d f17, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000001)
li x31, 0xaf04a06e24b4cbb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
fdiv.d f31, f6, f26, dyn # perform operation
fdiv.d f31, f6, f26, rdn # perform operation
fdiv.d f31, f6, f26, rmm # perform operation
fdiv.d f31, f6, f26, rne # perform operation
fdiv.d f31, f6, f26, rtz # perform operation
fdiv.d f31, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x7, 0xb4ea7b8491d18d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
fdiv.d f7, f16, f18, dyn # perform operation
fdiv.d f7, f16, f18, rdn # perform operation
fdiv.d f7, f16, f18, rmm # perform operation
fdiv.d f7, f16, f18, rne # perform operation
fdiv.d f7, f16, f18, rtz # perform operation
fdiv.d f7, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x5a392534a57711ad)
li x27, 0x88f01f77f1a63da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
fdiv.d f27, f28, f20, dyn # perform operation
fdiv.d f27, f28, f20, rdn # perform operation
fdiv.d f27, f28, f20, rmm # perform operation
fdiv.d f27, f28, f20, rne # perform operation
fdiv.d f27, f28, f20, rtz # perform operation
fdiv.d f27, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xa6e895993737426c)
li x11, 0x3ef6388547855a9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
fdiv.d f11, f7, f18, dyn # perform operation
fdiv.d f11, f7, f18, rdn # perform operation
fdiv.d f11, f7, f18, rmm # perform operation
fdiv.d f11, f7, f18, rne # perform operation
fdiv.d f11, f7, f18, rtz # perform operation
fdiv.d f11, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x0)
li x19, 0xe12717214e02068c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
fdiv.d f19, f23, f21, dyn # perform operation
fdiv.d f19, f23, f21, rdn # perform operation
fdiv.d f19, f23, f21, rmm # perform operation
fdiv.d f19, f23, f21, rne # perform operation
fdiv.d f19, f23, f21, rtz # perform operation
fdiv.d f19, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000000)
li x8, 0x5555434b6fe1ee0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fdiv.d f8, f2, f10, dyn # perform operation
fdiv.d f8, f2, f10, rdn # perform operation
fdiv.d f8, f2, f10, rmm # perform operation
fdiv.d f8, f2, f10, rne # perform operation
fdiv.d f8, f2, f10, rtz # perform operation
fdiv.d f8, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff0000000000000)
li x19, 0x1a79f0dea46cd79d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
fdiv.d f19, f9, f26, dyn # perform operation
fdiv.d f19, f9, f26, rdn # perform operation
fdiv.d f19, f9, f26, rmm # perform operation
fdiv.d f19, f9, f26, rne # perform operation
fdiv.d f19, f9, f26, rtz # perform operation
fdiv.d f19, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff0000000000000)
li x5, 0x73c8ac82eda0ce53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fdiv.d f5, f20, f18, dyn # perform operation
fdiv.d f5, f20, f18, rdn # perform operation
fdiv.d f5, f20, f18, rmm # perform operation
fdiv.d f5, f20, f18, rne # perform operation
fdiv.d f5, f20, f18, rtz # perform operation
fdiv.d f5, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff8000000000000)
li x29, 0x101e40e264dd78f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
fdiv.d f29, f21, f12, dyn # perform operation
fdiv.d f29, f21, f12, rdn # perform operation
fdiv.d f29, f21, f12, rmm # perform operation
fdiv.d f29, f21, f12, rne # perform operation
fdiv.d f29, f21, f12, rtz # perform operation
fdiv.d f29, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff8000000000000)
li x16, 0x863fa94b1afc475b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
fdiv.d f16, f22, f19, dyn # perform operation
fdiv.d f16, f22, f19, rdn # perform operation
fdiv.d f16, f22, f19, rmm # perform operation
fdiv.d f16, f22, f19, rne # perform operation
fdiv.d f16, f22, f19, rtz # perform operation
fdiv.d f16, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x4000000000000000)
li x3, 0xa34ead49bcb4d533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fdiv.d f3, f22, f25, dyn # perform operation
fdiv.d f3, f22, f25, rdn # perform operation
fdiv.d f3, f22, f25, rmm # perform operation
fdiv.d f3, f22, f25, rne # perform operation
fdiv.d f3, f22, f25, rtz # perform operation
fdiv.d f3, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xc000000000000000)
li x11, 0x995ab1b1d382dc4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
fdiv.d f11, f9, f10, dyn # perform operation
fdiv.d f11, f9, f10, rdn # perform operation
fdiv.d f11, f9, f10, rmm # perform operation
fdiv.d f11, f9, f10, rne # perform operation
fdiv.d f11, f9, f10, rtz # perform operation
fdiv.d f11, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x10000000000000)
li x21, 0x51c1e0219d83ecb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
fdiv.d f21, f19, f30, dyn # perform operation
fdiv.d f21, f19, f30, rdn # perform operation
fdiv.d f21, f19, f30, rmm # perform operation
fdiv.d f21, f19, f30, rne # perform operation
fdiv.d f21, f19, f30, rtz # perform operation
fdiv.d f21, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8010000000000000)
li x7, 0x906b0e5274256d3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
fdiv.d f7, f16, f6, dyn # perform operation
fdiv.d f7, f16, f6, rdn # perform operation
fdiv.d f7, f16, f6, rmm # perform operation
fdiv.d f7, f16, f6, rne # perform operation
fdiv.d f7, f16, f6, rtz # perform operation
fdiv.d f7, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fefffffffffffff)
li x13, 0xb3402f7ca951653b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fdiv.d f13, f14, f29, dyn # perform operation
fdiv.d f13, f14, f29, rdn # perform operation
fdiv.d f13, f14, f29, rmm # perform operation
fdiv.d f13, f14, f29, rne # perform operation
fdiv.d f13, f14, f29, rtz # perform operation
fdiv.d f13, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xffefffffffffffff)
li x10, 0x62a783342c2296ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
fdiv.d f10, f31, f13, dyn # perform operation
fdiv.d f10, f31, f13, rdn # perform operation
fdiv.d f10, f31, f13, rmm # perform operation
fdiv.d f10, f31, f13, rne # perform operation
fdiv.d f10, f31, f13, rtz # perform operation
fdiv.d f10, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfffffffffffff)
li x11, 0xbbe9d73105ad4425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fdiv.d f11, f7, f9, dyn # perform operation
fdiv.d f11, f7, f9, rdn # perform operation
fdiv.d f11, f7, f9, rmm # perform operation
fdiv.d f11, f7, f9, rne # perform operation
fdiv.d f11, f7, f9, rtz # perform operation
fdiv.d f11, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x800fffffffffffff)
li x6, 0x1fd014867087abf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
fdiv.d f6, f10, f20, dyn # perform operation
fdiv.d f6, f10, f20, rdn # perform operation
fdiv.d f6, f10, f20, rmm # perform operation
fdiv.d f6, f10, f20, rne # perform operation
fdiv.d f6, f10, f20, rtz # perform operation
fdiv.d f6, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f6, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f6, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f6, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f6, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f6, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000)
li x29, 0xf05cd4a06548e44d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fdiv.d f29, f12, f9, dyn # perform operation
fdiv.d f29, f12, f9, rdn # perform operation
fdiv.d f29, f12, f9, rmm # perform operation
fdiv.d f29, f12, f9, rne # perform operation
fdiv.d f29, f12, f9, rtz # perform operation
fdiv.d f29, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8008000000000000)
li x5, 0x201d2aebb31bdc07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
fdiv.d f5, f14, f31, dyn # perform operation
fdiv.d f5, f14, f31, rdn # perform operation
fdiv.d f5, f14, f31, rmm # perform operation
fdiv.d f5, f14, f31, rne # perform operation
fdiv.d f5, f14, f31, rtz # perform operation
fdiv.d f5, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x1)
li x31, 0x514e6c049402c45a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
fdiv.d f31, f3, f4, dyn # perform operation
fdiv.d f31, f3, f4, rdn # perform operation
fdiv.d f31, f3, f4, rmm # perform operation
fdiv.d f31, f3, f4, rne # perform operation
fdiv.d f31, f3, f4, rtz # perform operation
fdiv.d f31, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000001)
li x7, 0xdeb702d4af028b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
fdiv.d f7, f28, f29, dyn # perform operation
fdiv.d f7, f28, f29, rdn # perform operation
fdiv.d f7, f28, f29, rmm # perform operation
fdiv.d f7, f28, f29, rne # perform operation
fdiv.d f7, f28, f29, rtz # perform operation
fdiv.d f7, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000000)
li x31, 0x06c6c031e688a885 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
fdiv.d f31, f29, f6, dyn # perform operation
fdiv.d f31, f29, f6, rdn # perform operation
fdiv.d f31, f29, f6, rmm # perform operation
fdiv.d f31, f29, f6, rne # perform operation
fdiv.d f31, f29, f6, rtz # perform operation
fdiv.d f31, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfff0000000000000)
li x29, 0x4eff27f84410fe2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fdiv.d f29, f6, f22, dyn # perform operation
fdiv.d f29, f6, f22, rdn # perform operation
fdiv.d f29, f6, f22, rmm # perform operation
fdiv.d f29, f6, f22, rne # perform operation
fdiv.d f29, f6, f22, rtz # perform operation
fdiv.d f29, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff8000000000000)
li x22, 0x0d25c3a831373b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
fdiv.d f22, f7, f24, dyn # perform operation
fdiv.d f22, f7, f24, rdn # perform operation
fdiv.d f22, f7, f24, rmm # perform operation
fdiv.d f22, f7, f24, rne # perform operation
fdiv.d f22, f7, f24, rtz # perform operation
fdiv.d f22, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fffffffffffffff)
li x16, 0x9344c6766e50b93a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f18, 0(x2) # load 0x7fffffffffffffff from memory into f18
fdiv.d f16, f13, f18, dyn # perform operation
fdiv.d f16, f13, f18, rdn # perform operation
fdiv.d f16, f13, f18, rmm # perform operation
fdiv.d f16, f13, f18, rne # perform operation
fdiv.d f16, f13, f18, rtz # perform operation
fdiv.d f16, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000001)
li x10, 0xfd30e52c74b6fe67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
fdiv.d f10, f5, f22, dyn # perform operation
fdiv.d f10, f5, f22, rdn # perform operation
fdiv.d f10, f5, f22, rmm # perform operation
fdiv.d f10, f5, f22, rne # perform operation
fdiv.d f10, f5, f22, rtz # perform operation
fdiv.d f10, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x13, 0x1b232b3df61e59e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fdiv.d f13, f18, f28, dyn # perform operation
fdiv.d f13, f18, f28, rdn # perform operation
fdiv.d f13, f18, f28, rmm # perform operation
fdiv.d f13, f18, f28, rne # perform operation
fdiv.d f13, f18, f28, rtz # perform operation
fdiv.d f13, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x5a392534a57711ad)
li x13, 0xd1627731f1906f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fdiv.d f13, f24, f10, dyn # perform operation
fdiv.d f13, f24, f10, rdn # perform operation
fdiv.d f13, f24, f10, rmm # perform operation
fdiv.d f13, f24, f10, rne # perform operation
fdiv.d f13, f24, f10, rtz # perform operation
fdiv.d f13, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xa6e895993737426c)
li x18, 0x2c1ee0ef15e5e077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f25, 0(x2) # load 0x7ff8000000000000 from memory into f25
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
fdiv.d f18, f25, f22, dyn # perform operation
fdiv.d f18, f25, f22, rdn # perform operation
fdiv.d f18, f25, f22, rmm # perform operation
fdiv.d f18, f25, f22, rne # perform operation
fdiv.d f18, f25, f22, rtz # perform operation
fdiv.d f18, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x0)
li x31, 0xd8a4af94603b14bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
fdiv.d f31, f28, f21, dyn # perform operation
fdiv.d f31, f28, f21, rdn # perform operation
fdiv.d f31, f28, f21, rmm # perform operation
fdiv.d f31, f28, f21, rne # perform operation
fdiv.d f31, f28, f21, rtz # perform operation
fdiv.d f31, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000000)
li x28, 0x69c4ea435f653add # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f4, 0(x2) # load 0x8000000000000000 from memory into f4
fdiv.d f28, f15, f4, dyn # perform operation
fdiv.d f28, f15, f4, rdn # perform operation
fdiv.d f28, f15, f4, rmm # perform operation
fdiv.d f28, f15, f4, rne # perform operation
fdiv.d f28, f15, f4, rtz # perform operation
fdiv.d f28, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff0000000000000)
li x30, 0x0f6320847072eedf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f15, 0(x2) # load 0x3ff0000000000000 from memory into f15
fdiv.d f30, f13, f15, dyn # perform operation
fdiv.d f30, f13, f15, rdn # perform operation
fdiv.d f30, f13, f15, rmm # perform operation
fdiv.d f30, f13, f15, rne # perform operation
fdiv.d f30, f13, f15, rtz # perform operation
fdiv.d f30, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff0000000000000)
li x1, 0x91085dc275069359 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fdiv.d f1, f5, f18, dyn # perform operation
fdiv.d f1, f5, f18, rdn # perform operation
fdiv.d f1, f5, f18, rmm # perform operation
fdiv.d f1, f5, f18, rne # perform operation
fdiv.d f1, f5, f18, rtz # perform operation
fdiv.d f1, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff8000000000000)
li x8, 0x96999668ee9efe36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
fdiv.d f8, f25, f31, dyn # perform operation
fdiv.d f8, f25, f31, rdn # perform operation
fdiv.d f8, f25, f31, rmm # perform operation
fdiv.d f8, f25, f31, rne # perform operation
fdiv.d f8, f25, f31, rtz # perform operation
fdiv.d f8, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff8000000000000)
li x25, 0xac7fae1d2b532d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fdiv.d f25, f13, f3, dyn # perform operation
fdiv.d f25, f13, f3, rdn # perform operation
fdiv.d f25, f13, f3, rmm # perform operation
fdiv.d f25, f13, f3, rne # perform operation
fdiv.d f25, f13, f3, rtz # perform operation
fdiv.d f25, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x4000000000000000)
li x29, 0x6d53dbd4bcdd9f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
fdiv.d f29, f9, f11, dyn # perform operation
fdiv.d f29, f9, f11, rdn # perform operation
fdiv.d f29, f9, f11, rmm # perform operation
fdiv.d f29, f9, f11, rne # perform operation
fdiv.d f29, f9, f11, rtz # perform operation
fdiv.d f29, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xc000000000000000)
li x18, 0xe18877058a91fd98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
fdiv.d f18, f4, f22, dyn # perform operation
fdiv.d f18, f4, f22, rdn # perform operation
fdiv.d f18, f4, f22, rmm # perform operation
fdiv.d f18, f4, f22, rne # perform operation
fdiv.d f18, f4, f22, rtz # perform operation
fdiv.d f18, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x10000000000000)
li x24, 0x11f13d75f40ebbbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fdiv.d f24, f20, f28, dyn # perform operation
fdiv.d f24, f20, f28, rdn # perform operation
fdiv.d f24, f20, f28, rmm # perform operation
fdiv.d f24, f20, f28, rne # perform operation
fdiv.d f24, f20, f28, rtz # perform operation
fdiv.d f24, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8010000000000000)
li x1, 0xb5245a4c69225372 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
fdiv.d f1, f25, f31, dyn # perform operation
fdiv.d f1, f25, f31, rdn # perform operation
fdiv.d f1, f25, f31, rmm # perform operation
fdiv.d f1, f25, f31, rne # perform operation
fdiv.d f1, f25, f31, rtz # perform operation
fdiv.d f1, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fefffffffffffff)
li x16, 0xf0119f1214d500f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
fdiv.d f16, f6, f12, dyn # perform operation
fdiv.d f16, f6, f12, rdn # perform operation
fdiv.d f16, f6, f12, rmm # perform operation
fdiv.d f16, f6, f12, rne # perform operation
fdiv.d f16, f6, f12, rtz # perform operation
fdiv.d f16, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xffefffffffffffff)
li x22, 0x4d069f54df5ab43c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
fdiv.d f22, f17, f6, dyn # perform operation
fdiv.d f22, f17, f6, rdn # perform operation
fdiv.d f22, f17, f6, rmm # perform operation
fdiv.d f22, f17, f6, rne # perform operation
fdiv.d f22, f17, f6, rtz # perform operation
fdiv.d f22, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfffffffffffff)
li x13, 0xc08484f3ae784043 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fdiv.d f13, f12, f16, dyn # perform operation
fdiv.d f13, f12, f16, rdn # perform operation
fdiv.d f13, f12, f16, rmm # perform operation
fdiv.d f13, f12, f16, rne # perform operation
fdiv.d f13, f12, f16, rtz # perform operation
fdiv.d f13, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x800fffffffffffff)
li x4, 0x66247170bfd0d5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
fdiv.d f4, f25, f27, dyn # perform operation
fdiv.d f4, f25, f27, rdn # perform operation
fdiv.d f4, f25, f27, rmm # perform operation
fdiv.d f4, f25, f27, rne # perform operation
fdiv.d f4, f25, f27, rtz # perform operation
fdiv.d f4, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000)
li x28, 0xdd509eecb3b1f785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fdiv.d f28, f9, f7, dyn # perform operation
fdiv.d f28, f9, f7, rdn # perform operation
fdiv.d f28, f9, f7, rmm # perform operation
fdiv.d f28, f9, f7, rne # perform operation
fdiv.d f28, f9, f7, rtz # perform operation
fdiv.d f28, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8008000000000000)
li x17, 0x3b56e6856dd485d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
fdiv.d f17, f30, f16, dyn # perform operation
fdiv.d f17, f30, f16, rdn # perform operation
fdiv.d f17, f30, f16, rmm # perform operation
fdiv.d f17, f30, f16, rne # perform operation
fdiv.d f17, f30, f16, rtz # perform operation
fdiv.d f17, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x1)
li x10, 0xa4f18dbb29fac55e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
fdiv.d f10, f21, f31, dyn # perform operation
fdiv.d f10, f21, f31, rdn # perform operation
fdiv.d f10, f21, f31, rmm # perform operation
fdiv.d f10, f21, f31, rne # perform operation
fdiv.d f10, f21, f31, rtz # perform operation
fdiv.d f10, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000001)
li x18, 0xf5f00decc8efc12b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
fdiv.d f18, f29, f8, dyn # perform operation
fdiv.d f18, f29, f8, rdn # perform operation
fdiv.d f18, f29, f8, rmm # perform operation
fdiv.d f18, f29, f8, rne # perform operation
fdiv.d f18, f29, f8, rtz # perform operation
fdiv.d f18, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000000)
li x5, 0xfe5b308f2d177283 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fdiv.d f5, f13, f21, dyn # perform operation
fdiv.d f5, f13, f21, rdn # perform operation
fdiv.d f5, f13, f21, rmm # perform operation
fdiv.d f5, f13, f21, rne # perform operation
fdiv.d f5, f13, f21, rtz # perform operation
fdiv.d f5, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfff0000000000000)
li x22, 0x200d8601fdf20bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
fdiv.d f22, f30, f4, dyn # perform operation
fdiv.d f22, f30, f4, rdn # perform operation
fdiv.d f22, f30, f4, rmm # perform operation
fdiv.d f22, f30, f4, rne # perform operation
fdiv.d f22, f30, f4, rtz # perform operation
fdiv.d f22, f30, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f30, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f30, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f30, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f30, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f30, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff8000000000000)
li x14, 0x90e21f1a95f8a42d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
fdiv.d f14, f27, f13, dyn # perform operation
fdiv.d f14, f27, f13, rdn # perform operation
fdiv.d f14, f27, f13, rmm # perform operation
fdiv.d f14, f27, f13, rne # perform operation
fdiv.d f14, f27, f13, rtz # perform operation
fdiv.d f14, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fffffffffffffff)
li x5, 0x5cdc42288ef393fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
fdiv.d f5, f24, f23, dyn # perform operation
fdiv.d f5, f24, f23, rdn # perform operation
fdiv.d f5, f24, f23, rmm # perform operation
fdiv.d f5, f24, f23, rne # perform operation
fdiv.d f5, f24, f23, rtz # perform operation
fdiv.d f5, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000001)
li x22, 0xabebc7f0d855d03a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
fdiv.d f22, f2, f27, dyn # perform operation
fdiv.d f22, f2, f27, rdn # perform operation
fdiv.d f22, f2, f27, rmm # perform operation
fdiv.d f22, f2, f27, rne # perform operation
fdiv.d f22, f2, f27, rtz # perform operation
fdiv.d f22, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff7ffffffffffff)
li x9, 0xffcf465219472054 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fdiv.d f9, f21, f25, dyn # perform operation
fdiv.d f9, f21, f25, rdn # perform operation
fdiv.d f9, f21, f25, rmm # perform operation
fdiv.d f9, f21, f25, rne # perform operation
fdiv.d f9, f21, f25, rtz # perform operation
fdiv.d f9, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x5a392534a57711ad)
li x3, 0x4029681cd4ad0d14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fdiv.d f3, f2, f10, dyn # perform operation
fdiv.d f3, f2, f10, rdn # perform operation
fdiv.d f3, f2, f10, rmm # perform operation
fdiv.d f3, f2, f10, rne # perform operation
fdiv.d f3, f2, f10, rtz # perform operation
fdiv.d f3, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xa6e895993737426c)
li x8, 0xb42f3889748c4de6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fdiv.d f8, f29, f27, dyn # perform operation
fdiv.d f8, f29, f27, rdn # perform operation
fdiv.d f8, f29, f27, rmm # perform operation
fdiv.d f8, f29, f27, rne # perform operation
fdiv.d f8, f29, f27, rtz # perform operation
fdiv.d f8, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x0)
li x26, 0x7262e75dcf9e25ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fdiv.d f26, f2, f13, dyn # perform operation
fdiv.d f26, f2, f13, rdn # perform operation
fdiv.d f26, f2, f13, rmm # perform operation
fdiv.d f26, f2, f13, rne # perform operation
fdiv.d f26, f2, f13, rtz # perform operation
fdiv.d f26, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000000)
li x5, 0xc4ae499da5eb444c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
fdiv.d f5, f23, f13, dyn # perform operation
fdiv.d f5, f23, f13, rdn # perform operation
fdiv.d f5, f23, f13, rmm # perform operation
fdiv.d f5, f23, f13, rne # perform operation
fdiv.d f5, f23, f13, rtz # perform operation
fdiv.d f5, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff0000000000000)
li x26, 0x76d7559e3e028319 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fdiv.d f26, f8, f23, dyn # perform operation
fdiv.d f26, f8, f23, rdn # perform operation
fdiv.d f26, f8, f23, rmm # perform operation
fdiv.d f26, f8, f23, rne # perform operation
fdiv.d f26, f8, f23, rtz # perform operation
fdiv.d f26, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff0000000000000)
li x8, 0xe302896cbafc0acc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fdiv.d f8, f21, f28, dyn # perform operation
fdiv.d f8, f21, f28, rdn # perform operation
fdiv.d f8, f21, f28, rmm # perform operation
fdiv.d f8, f21, f28, rne # perform operation
fdiv.d f8, f21, f28, rtz # perform operation
fdiv.d f8, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff8000000000000)
li x20, 0x43560d6d0bb9e09e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
fdiv.d f20, f26, f24, dyn # perform operation
fdiv.d f20, f26, f24, rdn # perform operation
fdiv.d f20, f26, f24, rmm # perform operation
fdiv.d f20, f26, f24, rne # perform operation
fdiv.d f20, f26, f24, rtz # perform operation
fdiv.d f20, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff8000000000000)
li x19, 0x0ae1f63bc4423280 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
fdiv.d f19, f10, f16, dyn # perform operation
fdiv.d f19, f10, f16, rdn # perform operation
fdiv.d f19, f10, f16, rmm # perform operation
fdiv.d f19, f10, f16, rne # perform operation
fdiv.d f19, f10, f16, rtz # perform operation
fdiv.d f19, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x4000000000000000)
li x17, 0x41f702ada91d1161 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f7, 0(x2) # load 0x4000000000000000 from memory into f7
fdiv.d f17, f6, f7, dyn # perform operation
fdiv.d f17, f6, f7, rdn # perform operation
fdiv.d f17, f6, f7, rmm # perform operation
fdiv.d f17, f6, f7, rne # perform operation
fdiv.d f17, f6, f7, rtz # perform operation
fdiv.d f17, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xc000000000000000)
li x28, 0xda7133aa68fb3288 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
fdiv.d f28, f1, f12, dyn # perform operation
fdiv.d f28, f1, f12, rdn # perform operation
fdiv.d f28, f1, f12, rmm # perform operation
fdiv.d f28, f1, f12, rne # perform operation
fdiv.d f28, f1, f12, rtz # perform operation
fdiv.d f28, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x10000000000000)
li x15, 0xfc00961acc90f9aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fdiv.d f15, f9, f25, dyn # perform operation
fdiv.d f15, f9, f25, rdn # perform operation
fdiv.d f15, f9, f25, rmm # perform operation
fdiv.d f15, f9, f25, rne # perform operation
fdiv.d f15, f9, f25, rtz # perform operation
fdiv.d f15, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8010000000000000)
li x2, 0xae8dcde4760b5c4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fdiv.d f2, f11, f10, dyn # perform operation
fdiv.d f2, f11, f10, rdn # perform operation
fdiv.d f2, f11, f10, rmm # perform operation
fdiv.d f2, f11, f10, rne # perform operation
fdiv.d f2, f11, f10, rtz # perform operation
fdiv.d f2, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fefffffffffffff)
li x31, 0x3fdd8bbee3bbc700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fdiv.d f31, f26, f8, dyn # perform operation
fdiv.d f31, f26, f8, rdn # perform operation
fdiv.d f31, f26, f8, rmm # perform operation
fdiv.d f31, f26, f8, rne # perform operation
fdiv.d f31, f26, f8, rtz # perform operation
fdiv.d f31, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xffefffffffffffff)
li x13, 0xa58b5d979a4680ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f12, 0(x2) # load 0xffefffffffffffff from memory into f12
fdiv.d f13, f26, f12, dyn # perform operation
fdiv.d f13, f26, f12, rdn # perform operation
fdiv.d f13, f26, f12, rmm # perform operation
fdiv.d f13, f26, f12, rne # perform operation
fdiv.d f13, f26, f12, rtz # perform operation
fdiv.d f13, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfffffffffffff)
li x27, 0x846d982046798d37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
fdiv.d f27, f5, f24, dyn # perform operation
fdiv.d f27, f5, f24, rdn # perform operation
fdiv.d f27, f5, f24, rmm # perform operation
fdiv.d f27, f5, f24, rne # perform operation
fdiv.d f27, f5, f24, rtz # perform operation
fdiv.d f27, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x800fffffffffffff)
li x29, 0xb21c2d9b59d8115d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
fdiv.d f29, f17, f3, dyn # perform operation
fdiv.d f29, f17, f3, rdn # perform operation
fdiv.d f29, f17, f3, rmm # perform operation
fdiv.d f29, f17, f3, rne # perform operation
fdiv.d f29, f17, f3, rtz # perform operation
fdiv.d f29, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000)
li x11, 0xb88077928407c970 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fdiv.d f11, f31, f12, dyn # perform operation
fdiv.d f11, f31, f12, rdn # perform operation
fdiv.d f11, f31, f12, rmm # perform operation
fdiv.d f11, f31, f12, rne # perform operation
fdiv.d f11, f31, f12, rtz # perform operation
fdiv.d f11, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8008000000000000)
li x4, 0x3b448b8d37a5fea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fdiv.d f4, f21, f17, dyn # perform operation
fdiv.d f4, f21, f17, rdn # perform operation
fdiv.d f4, f21, f17, rmm # perform operation
fdiv.d f4, f21, f17, rne # perform operation
fdiv.d f4, f21, f17, rtz # perform operation
fdiv.d f4, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x1)
li x22, 0xf64c543ad738d903 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fdiv.d f22, f21, f27, dyn # perform operation
fdiv.d f22, f21, f27, rdn # perform operation
fdiv.d f22, f21, f27, rmm # perform operation
fdiv.d f22, f21, f27, rne # perform operation
fdiv.d f22, f21, f27, rtz # perform operation
fdiv.d f22, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000001)
li x10, 0x3adfc4bc766f05ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f21, 0(x2) # load 0x8000000000000001 from memory into f21
fdiv.d f10, f16, f21, dyn # perform operation
fdiv.d f10, f16, f21, rdn # perform operation
fdiv.d f10, f16, f21, rmm # perform operation
fdiv.d f10, f16, f21, rne # perform operation
fdiv.d f10, f16, f21, rtz # perform operation
fdiv.d f10, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000000)
li x15, 0xccc14b9f8d056fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
fdiv.d f15, f1, f17, dyn # perform operation
fdiv.d f15, f1, f17, rdn # perform operation
fdiv.d f15, f1, f17, rmm # perform operation
fdiv.d f15, f1, f17, rne # perform operation
fdiv.d f15, f1, f17, rtz # perform operation
fdiv.d f15, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfff0000000000000)
li x17, 0x3283437974f37314 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
fdiv.d f17, f19, f10, dyn # perform operation
fdiv.d f17, f19, f10, rdn # perform operation
fdiv.d f17, f19, f10, rmm # perform operation
fdiv.d f17, f19, f10, rne # perform operation
fdiv.d f17, f19, f10, rtz # perform operation
fdiv.d f17, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff8000000000000)
li x27, 0xb71e0ad7ad4725dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fdiv.d f27, f6, f10, dyn # perform operation
fdiv.d f27, f6, f10, rdn # perform operation
fdiv.d f27, f6, f10, rmm # perform operation
fdiv.d f27, f6, f10, rne # perform operation
fdiv.d f27, f6, f10, rtz # perform operation
fdiv.d f27, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fffffffffffffff)
li x27, 0xb77be45e0ee95908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fdiv.d f27, f8, f29, dyn # perform operation
fdiv.d f27, f8, f29, rdn # perform operation
fdiv.d f27, f8, f29, rmm # perform operation
fdiv.d f27, f8, f29, rne # perform operation
fdiv.d f27, f8, f29, rtz # perform operation
fdiv.d f27, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000001)
li x7, 0xdbdf1d41587a495e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fdiv.d f7, f31, f6, dyn # perform operation
fdiv.d f7, f31, f6, rdn # perform operation
fdiv.d f7, f31, f6, rmm # perform operation
fdiv.d f7, f31, f6, rne # perform operation
fdiv.d f7, f31, f6, rtz # perform operation
fdiv.d f7, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff7ffffffffffff)
li x19, 0xee4c2b2c22fc25e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fdiv.d f19, f27, f25, dyn # perform operation
fdiv.d f19, f27, f25, rdn # perform operation
fdiv.d f19, f27, f25, rmm # perform operation
fdiv.d f19, f27, f25, rne # perform operation
fdiv.d f19, f27, f25, rtz # perform operation
fdiv.d f19, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x5a392534a57711ad)
li x25, 0xbb188afbf6af74f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fdiv.d f25, f15, f6, dyn # perform operation
fdiv.d f25, f15, f6, rdn # perform operation
fdiv.d f25, f15, f6, rmm # perform operation
fdiv.d f25, f15, f6, rne # perform operation
fdiv.d f25, f15, f6, rtz # perform operation
fdiv.d f25, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xa6e895993737426c)
li x20, 0x663cd0a5c35a2c4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fdiv.d f20, f6, f27, dyn # perform operation
fdiv.d f20, f6, f27, rdn # perform operation
fdiv.d f20, f6, f27, rmm # perform operation
fdiv.d f20, f6, f27, rne # perform operation
fdiv.d f20, f6, f27, rtz # perform operation
fdiv.d f20, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x0)
li x2, 0x2ae8e1599a2e6827 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
fdiv.d f2, f6, f8, dyn # perform operation
fdiv.d f2, f6, f8, rdn # perform operation
fdiv.d f2, f6, f8, rmm # perform operation
fdiv.d f2, f6, f8, rne # perform operation
fdiv.d f2, f6, f8, rtz # perform operation
fdiv.d f2, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000000)
li x28, 0x32062269300e083e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fdiv.d f28, f23, f10, dyn # perform operation
fdiv.d f28, f23, f10, rdn # perform operation
fdiv.d f28, f23, f10, rmm # perform operation
fdiv.d f28, f23, f10, rne # perform operation
fdiv.d f28, f23, f10, rtz # perform operation
fdiv.d f28, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f28, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f28, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f28, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f28, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f28, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff0000000000000)
li x29, 0x138526d57547106d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fdiv.d f29, f23, f11, dyn # perform operation
fdiv.d f29, f23, f11, rdn # perform operation
fdiv.d f29, f23, f11, rmm # perform operation
fdiv.d f29, f23, f11, rne # perform operation
fdiv.d f29, f23, f11, rtz # perform operation
fdiv.d f29, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff0000000000000)
li x23, 0x2c4b52ddd205bf5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
fdiv.d f23, f30, f29, dyn # perform operation
fdiv.d f23, f30, f29, rdn # perform operation
fdiv.d f23, f30, f29, rmm # perform operation
fdiv.d f23, f30, f29, rne # perform operation
fdiv.d f23, f30, f29, rtz # perform operation
fdiv.d f23, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff8000000000000)
li x12, 0x02c8e6fcf6a94839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
fdiv.d f12, f11, f5, dyn # perform operation
fdiv.d f12, f11, f5, rdn # perform operation
fdiv.d f12, f11, f5, rmm # perform operation
fdiv.d f12, f11, f5, rne # perform operation
fdiv.d f12, f11, f5, rtz # perform operation
fdiv.d f12, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f12, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f12, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f12, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f12, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f12, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff8000000000000)
li x10, 0x2f7af691be37ef32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
fdiv.d f10, f28, f5, dyn # perform operation
fdiv.d f10, f28, f5, rdn # perform operation
fdiv.d f10, f28, f5, rmm # perform operation
fdiv.d f10, f28, f5, rne # perform operation
fdiv.d f10, f28, f5, rtz # perform operation
fdiv.d f10, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f10, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f10, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f10, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f10, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f10, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x4000000000000000)
li x22, 0x9eb450f4cb816cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
fdiv.d f22, f15, f27, dyn # perform operation
fdiv.d f22, f15, f27, rdn # perform operation
fdiv.d f22, f15, f27, rmm # perform operation
fdiv.d f22, f15, f27, rne # perform operation
fdiv.d f22, f15, f27, rtz # perform operation
fdiv.d f22, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xc000000000000000)
li x27, 0x7fdcd961c04decc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fdiv.d f27, f2, f20, dyn # perform operation
fdiv.d f27, f2, f20, rdn # perform operation
fdiv.d f27, f2, f20, rmm # perform operation
fdiv.d f27, f2, f20, rne # perform operation
fdiv.d f27, f2, f20, rtz # perform operation
fdiv.d f27, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x10000000000000)
li x16, 0xdf22f150d2e0400a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
fdiv.d f16, f8, f6, dyn # perform operation
fdiv.d f16, f8, f6, rdn # perform operation
fdiv.d f16, f8, f6, rmm # perform operation
fdiv.d f16, f8, f6, rne # perform operation
fdiv.d f16, f8, f6, rtz # perform operation
fdiv.d f16, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8010000000000000)
li x11, 0xa7fa879a77013ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fdiv.d f11, f7, f17, dyn # perform operation
fdiv.d f11, f7, f17, rdn # perform operation
fdiv.d f11, f7, f17, rmm # perform operation
fdiv.d f11, f7, f17, rne # perform operation
fdiv.d f11, f7, f17, rtz # perform operation
fdiv.d f11, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fefffffffffffff)
li x7, 0x20b9076b3bb504a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
fdiv.d f7, f1, f17, dyn # perform operation
fdiv.d f7, f1, f17, rdn # perform operation
fdiv.d f7, f1, f17, rmm # perform operation
fdiv.d f7, f1, f17, rne # perform operation
fdiv.d f7, f1, f17, rtz # perform operation
fdiv.d f7, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xffefffffffffffff)
li x21, 0x7c5e6edf14040d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
fdiv.d f21, f3, f16, dyn # perform operation
fdiv.d f21, f3, f16, rdn # perform operation
fdiv.d f21, f3, f16, rmm # perform operation
fdiv.d f21, f3, f16, rne # perform operation
fdiv.d f21, f3, f16, rtz # perform operation
fdiv.d f21, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfffffffffffff)
li x24, 0x4521816226e5a94e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
fdiv.d f24, f22, f3, dyn # perform operation
fdiv.d f24, f22, f3, rdn # perform operation
fdiv.d f24, f22, f3, rmm # perform operation
fdiv.d f24, f22, f3, rne # perform operation
fdiv.d f24, f22, f3, rtz # perform operation
fdiv.d f24, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x800fffffffffffff)
li x18, 0x43520cca2278c36e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fdiv.d f18, f12, f24, dyn # perform operation
fdiv.d f18, f12, f24, rdn # perform operation
fdiv.d f18, f12, f24, rmm # perform operation
fdiv.d f18, f12, f24, rne # perform operation
fdiv.d f18, f12, f24, rtz # perform operation
fdiv.d f18, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000)
li x23, 0x585b935b3f62c18a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
fdiv.d f23, f28, f3, dyn # perform operation
fdiv.d f23, f28, f3, rdn # perform operation
fdiv.d f23, f28, f3, rmm # perform operation
fdiv.d f23, f28, f3, rne # perform operation
fdiv.d f23, f28, f3, rtz # perform operation
fdiv.d f23, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8008000000000000)
li x7, 0x65dcfdea19432b55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
fdiv.d f7, f30, f1, dyn # perform operation
fdiv.d f7, f30, f1, rdn # perform operation
fdiv.d f7, f30, f1, rmm # perform operation
fdiv.d f7, f30, f1, rne # perform operation
fdiv.d f7, f30, f1, rtz # perform operation
fdiv.d f7, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f7, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f7, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f7, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f7, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f7, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x1)
li x25, 0x2bbef07760feded2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
fdiv.d f25, f11, f10, dyn # perform operation
fdiv.d f25, f11, f10, rdn # perform operation
fdiv.d f25, f11, f10, rmm # perform operation
fdiv.d f25, f11, f10, rne # perform operation
fdiv.d f25, f11, f10, rtz # perform operation
fdiv.d f25, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f25, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f25, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f25, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f25, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f25, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000001)
li x31, 0x8c9cf7043a443207 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fdiv.d f31, f4, f25, dyn # perform operation
fdiv.d f31, f4, f25, rdn # perform operation
fdiv.d f31, f4, f25, rmm # perform operation
fdiv.d f31, f4, f25, rne # perform operation
fdiv.d f31, f4, f25, rtz # perform operation
fdiv.d f31, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f31, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f31, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f31, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f31, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f31, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000000)
li x16, 0xefc04bc1b672b455 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fdiv.d f16, f27, f3, dyn # perform operation
fdiv.d f16, f27, f3, rdn # perform operation
fdiv.d f16, f27, f3, rmm # perform operation
fdiv.d f16, f27, f3, rne # perform operation
fdiv.d f16, f27, f3, rtz # perform operation
fdiv.d f16, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfff0000000000000)
li x14, 0x1372c1dc63470c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f1, 0(x2) # load 0xfff0000000000000 from memory into f1
fdiv.d f14, f15, f1, dyn # perform operation
fdiv.d f14, f15, f1, rdn # perform operation
fdiv.d f14, f15, f1, rmm # perform operation
fdiv.d f14, f15, f1, rne # perform operation
fdiv.d f14, f15, f1, rtz # perform operation
fdiv.d f14, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff8000000000000)
li x29, 0x7f80667e18759576 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
fdiv.d f29, f1, f13, dyn # perform operation
fdiv.d f29, f1, f13, rdn # perform operation
fdiv.d f29, f1, f13, rmm # perform operation
fdiv.d f29, f1, f13, rne # perform operation
fdiv.d f29, f1, f13, rtz # perform operation
fdiv.d f29, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fffffffffffffff)
li x18, 0x5eefe47ec4df0931 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fdiv.d f18, f8, f19, dyn # perform operation
fdiv.d f18, f8, f19, rdn # perform operation
fdiv.d f18, f8, f19, rmm # perform operation
fdiv.d f18, f8, f19, rne # perform operation
fdiv.d f18, f8, f19, rtz # perform operation
fdiv.d f18, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000001)
li x26, 0xa1fe7c2f1952c71b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
fdiv.d f26, f4, f7, dyn # perform operation
fdiv.d f26, f4, f7, rdn # perform operation
fdiv.d f26, f4, f7, rmm # perform operation
fdiv.d f26, f4, f7, rne # perform operation
fdiv.d f26, f4, f7, rtz # perform operation
fdiv.d f26, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff7ffffffffffff)
li x4, 0x7c6b68505806cbdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
fdiv.d f4, f22, f11, dyn # perform operation
fdiv.d f4, f22, f11, rdn # perform operation
fdiv.d f4, f22, f11, rmm # perform operation
fdiv.d f4, f22, f11, rne # perform operation
fdiv.d f4, f22, f11, rtz # perform operation
fdiv.d f4, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x5a392534a57711ad)
li x11, 0xbe1d59b9a120a6ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fdiv.d f11, f6, f17, dyn # perform operation
fdiv.d f11, f6, f17, rdn # perform operation
fdiv.d f11, f6, f17, rmm # perform operation
fdiv.d f11, f6, f17, rne # perform operation
fdiv.d f11, f6, f17, rtz # perform operation
fdiv.d f11, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xa6e895993737426c)
li x5, 0xd4efec7cb9b7df4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
fdiv.d f5, f29, f12, dyn # perform operation
fdiv.d f5, f29, f12, rdn # perform operation
fdiv.d f5, f29, f12, rmm # perform operation
fdiv.d f5, f29, f12, rne # perform operation
fdiv.d f5, f29, f12, rtz # perform operation
fdiv.d f5, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x0)
li x19, 0xa63a6b909bb6a643 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fdiv.d f19, f7, f26, dyn # perform operation
fdiv.d f19, f7, f26, rdn # perform operation
fdiv.d f19, f7, f26, rmm # perform operation
fdiv.d f19, f7, f26, rne # perform operation
fdiv.d f19, f7, f26, rtz # perform operation
fdiv.d f19, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000000)
li x24, 0x62871bf018b85adb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fdiv.d f24, f9, f22, dyn # perform operation
fdiv.d f24, f9, f22, rdn # perform operation
fdiv.d f24, f9, f22, rmm # perform operation
fdiv.d f24, f9, f22, rne # perform operation
fdiv.d f24, f9, f22, rtz # perform operation
fdiv.d f24, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff0000000000000)
li x27, 0x8d9f34d7e1e3a575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
fdiv.d f27, f5, f30, dyn # perform operation
fdiv.d f27, f5, f30, rdn # perform operation
fdiv.d f27, f5, f30, rmm # perform operation
fdiv.d f27, f5, f30, rne # perform operation
fdiv.d f27, f5, f30, rtz # perform operation
fdiv.d f27, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff0000000000000)
li x1, 0x4d3e158c6913488b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
fdiv.d f1, f26, f19, dyn # perform operation
fdiv.d f1, f26, f19, rdn # perform operation
fdiv.d f1, f26, f19, rmm # perform operation
fdiv.d f1, f26, f19, rne # perform operation
fdiv.d f1, f26, f19, rtz # perform operation
fdiv.d f1, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f1, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f1, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f1, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f1, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f1, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff8000000000000)
li x23, 0xdd30ac87e4fc9203 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f9, 0(x2) # load 0x3ff8000000000000 from memory into f9
fdiv.d f23, f20, f9, dyn # perform operation
fdiv.d f23, f20, f9, rdn # perform operation
fdiv.d f23, f20, f9, rmm # perform operation
fdiv.d f23, f20, f9, rne # perform operation
fdiv.d f23, f20, f9, rtz # perform operation
fdiv.d f23, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff8000000000000)
li x8, 0xc77641ab2c50ed7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
fdiv.d f8, f6, f19, dyn # perform operation
fdiv.d f8, f6, f19, rdn # perform operation
fdiv.d f8, f6, f19, rmm # perform operation
fdiv.d f8, f6, f19, rne # perform operation
fdiv.d f8, f6, f19, rtz # perform operation
fdiv.d f8, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x4000000000000000)
li x4, 0x4bbcf45c33c6f6e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
fdiv.d f4, f30, f31, dyn # perform operation
fdiv.d f4, f30, f31, rdn # perform operation
fdiv.d f4, f30, f31, rmm # perform operation
fdiv.d f4, f30, f31, rne # perform operation
fdiv.d f4, f30, f31, rtz # perform operation
fdiv.d f4, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xc000000000000000)
li x17, 0x9b1d26c972808e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
fdiv.d f17, f30, f18, dyn # perform operation
fdiv.d f17, f30, f18, rdn # perform operation
fdiv.d f17, f30, f18, rmm # perform operation
fdiv.d f17, f30, f18, rne # perform operation
fdiv.d f17, f30, f18, rtz # perform operation
fdiv.d f17, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f17, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f17, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f17, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f17, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f17, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x10000000000000)
li x11, 0x2b1edfd67eac4b5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fdiv.d f11, f19, f22, dyn # perform operation
fdiv.d f11, f19, f22, rdn # perform operation
fdiv.d f11, f19, f22, rmm # perform operation
fdiv.d f11, f19, f22, rne # perform operation
fdiv.d f11, f19, f22, rtz # perform operation
fdiv.d f11, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8010000000000000)
li x18, 0x7dfe37f111d84a78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fdiv.d f18, f29, f2, dyn # perform operation
fdiv.d f18, f29, f2, rdn # perform operation
fdiv.d f18, f29, f2, rmm # perform operation
fdiv.d f18, f29, f2, rne # perform operation
fdiv.d f18, f29, f2, rtz # perform operation
fdiv.d f18, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fefffffffffffff)
li x29, 0x254979f5c557507a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
fdiv.d f29, f17, f26, dyn # perform operation
fdiv.d f29, f17, f26, rdn # perform operation
fdiv.d f29, f17, f26, rmm # perform operation
fdiv.d f29, f17, f26, rne # perform operation
fdiv.d f29, f17, f26, rtz # perform operation
fdiv.d f29, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xffefffffffffffff)
li x5, 0xc8bc66322e7fc65d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fdiv.d f5, f10, f19, dyn # perform operation
fdiv.d f5, f10, f19, rdn # perform operation
fdiv.d f5, f10, f19, rmm # perform operation
fdiv.d f5, f10, f19, rne # perform operation
fdiv.d f5, f10, f19, rtz # perform operation
fdiv.d f5, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f5, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f5, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f5, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f5, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f5, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfffffffffffff)
li x30, 0x8916535ebb0accbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
fdiv.d f30, f29, f17, dyn # perform operation
fdiv.d f30, f29, f17, rdn # perform operation
fdiv.d f30, f29, f17, rmm # perform operation
fdiv.d f30, f29, f17, rne # perform operation
fdiv.d f30, f29, f17, rtz # perform operation
fdiv.d f30, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x800fffffffffffff)
li x29, 0x1d500212c00ed59f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
fdiv.d f29, f17, f22, dyn # perform operation
fdiv.d f29, f17, f22, rdn # perform operation
fdiv.d f29, f17, f22, rmm # perform operation
fdiv.d f29, f17, f22, rne # perform operation
fdiv.d f29, f17, f22, rtz # perform operation
fdiv.d f29, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000)
li x29, 0x674457bf00e7ce28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fdiv.d f29, f12, f27, dyn # perform operation
fdiv.d f29, f12, f27, rdn # perform operation
fdiv.d f29, f12, f27, rmm # perform operation
fdiv.d f29, f12, f27, rne # perform operation
fdiv.d f29, f12, f27, rtz # perform operation
fdiv.d f29, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8008000000000000)
li x13, 0xdcda54f3d39dd15e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
fdiv.d f13, f6, f1, dyn # perform operation
fdiv.d f13, f6, f1, rdn # perform operation
fdiv.d f13, f6, f1, rmm # perform operation
fdiv.d f13, f6, f1, rne # perform operation
fdiv.d f13, f6, f1, rtz # perform operation
fdiv.d f13, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x1)
li x8, 0x85ecb7e0d85b643f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
fdiv.d f8, f5, f23, dyn # perform operation
fdiv.d f8, f5, f23, rdn # perform operation
fdiv.d f8, f5, f23, rmm # perform operation
fdiv.d f8, f5, f23, rne # perform operation
fdiv.d f8, f5, f23, rtz # perform operation
fdiv.d f8, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000001)
li x24, 0xda2b71b0fe64ccc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fdiv.d f24, f22, f2, dyn # perform operation
fdiv.d f24, f22, f2, rdn # perform operation
fdiv.d f24, f22, f2, rmm # perform operation
fdiv.d f24, f22, f2, rne # perform operation
fdiv.d f24, f22, f2, rtz # perform operation
fdiv.d f24, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f24, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f24, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f24, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f24, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f24, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000000)
li x4, 0x3bec43ceb8386108 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
fdiv.d f4, f7, f26, dyn # perform operation
fdiv.d f4, f7, f26, rdn # perform operation
fdiv.d f4, f7, f26, rmm # perform operation
fdiv.d f4, f7, f26, rne # perform operation
fdiv.d f4, f7, f26, rtz # perform operation
fdiv.d f4, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f4, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f4, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f4, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f4, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f4, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfff0000000000000)
li x22, 0x8f9dd734121293c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fdiv.d f22, f25, f3, dyn # perform operation
fdiv.d f22, f25, f3, rdn # perform operation
fdiv.d f22, f25, f3, rmm # perform operation
fdiv.d f22, f25, f3, rne # perform operation
fdiv.d f22, f25, f3, rtz # perform operation
fdiv.d f22, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff8000000000000)
li x2, 0xa6e080a39ef75548 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
fdiv.d f2, f18, f13, dyn # perform operation
fdiv.d f2, f18, f13, rdn # perform operation
fdiv.d f2, f18, f13, rmm # perform operation
fdiv.d f2, f18, f13, rne # perform operation
fdiv.d f2, f18, f13, rtz # perform operation
fdiv.d f2, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f2, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f2, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f2, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f2, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f2, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fffffffffffffff)
li x18, 0x5fda010ca59ad7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fdiv.d f18, f6, f19, dyn # perform operation
fdiv.d f18, f6, f19, rdn # perform operation
fdiv.d f18, f6, f19, rmm # perform operation
fdiv.d f18, f6, f19, rne # perform operation
fdiv.d f18, f6, f19, rtz # perform operation
fdiv.d f18, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000001)
li x8, 0x5e038b3671debad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fdiv.d f8, f7, f11, dyn # perform operation
fdiv.d f8, f7, f11, rdn # perform operation
fdiv.d f8, f7, f11, rmm # perform operation
fdiv.d f8, f7, f11, rne # perform operation
fdiv.d f8, f7, f11, rtz # perform operation
fdiv.d f8, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f8, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f8, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f8, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f8, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f8, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff7ffffffffffff)
li x30, 0x048996c9a6acde27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fdiv.d f30, f29, f1, dyn # perform operation
fdiv.d f30, f29, f1, rdn # perform operation
fdiv.d f30, f29, f1, rmm # perform operation
fdiv.d f30, f29, f1, rne # perform operation
fdiv.d f30, f29, f1, rtz # perform operation
fdiv.d f30, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x5a392534a57711ad)
li x23, 0xc2368e57dc8107e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
fdiv.d f23, f9, f18, dyn # perform operation
fdiv.d f23, f9, f18, rdn # perform operation
fdiv.d f23, f9, f18, rmm # perform operation
fdiv.d f23, f9, f18, rne # perform operation
fdiv.d f23, f9, f18, rtz # perform operation
fdiv.d f23, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xa6e895993737426c)
li x27, 0x48df5955d0d6f841 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
fdiv.d f27, f25, f19, dyn # perform operation
fdiv.d f27, f25, f19, rdn # perform operation
fdiv.d f27, f25, f19, rmm # perform operation
fdiv.d f27, f25, f19, rne # perform operation
fdiv.d f27, f25, f19, rtz # perform operation
fdiv.d f27, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x0)
li x19, 0x0971d18b25311654 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fdiv.d f19, f1, f25, dyn # perform operation
fdiv.d f19, f1, f25, rdn # perform operation
fdiv.d f19, f1, f25, rmm # perform operation
fdiv.d f19, f1, f25, rne # perform operation
fdiv.d f19, f1, f25, rtz # perform operation
fdiv.d f19, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000000)
li x26, 0x9d2a771391269b12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
fdiv.d f26, f20, f14, dyn # perform operation
fdiv.d f26, f20, f14, rdn # perform operation
fdiv.d f26, f20, f14, rmm # perform operation
fdiv.d f26, f20, f14, rne # perform operation
fdiv.d f26, f20, f14, rtz # perform operation
fdiv.d f26, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f26, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f26, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f26, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f26, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f26, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff0000000000000)
li x23, 0x55c34d171e08f658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
fdiv.d f23, f7, f12, dyn # perform operation
fdiv.d f23, f7, f12, rdn # perform operation
fdiv.d f23, f7, f12, rmm # perform operation
fdiv.d f23, f7, f12, rne # perform operation
fdiv.d f23, f7, f12, rtz # perform operation
fdiv.d f23, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f23, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f23, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f23, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f23, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f23, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff0000000000000)
li x13, 0x18ba4aa59304b908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
fdiv.d f13, f21, f29, dyn # perform operation
fdiv.d f13, f21, f29, rdn # perform operation
fdiv.d f13, f21, f29, rmm # perform operation
fdiv.d f13, f21, f29, rne # perform operation
fdiv.d f13, f21, f29, rtz # perform operation
fdiv.d f13, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f13, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f13, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f13, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f13, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f13, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff8000000000000)
li x14, 0xa4c620004613fb68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
fdiv.d f14, f20, f3, dyn # perform operation
fdiv.d f14, f20, f3, rdn # perform operation
fdiv.d f14, f20, f3, rmm # perform operation
fdiv.d f14, f20, f3, rne # perform operation
fdiv.d f14, f20, f3, rtz # perform operation
fdiv.d f14, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff8000000000000)
li x27, 0x03369ac10eba5555 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
fdiv.d f27, f14, f20, dyn # perform operation
fdiv.d f27, f14, f20, rdn # perform operation
fdiv.d f27, f14, f20, rmm # perform operation
fdiv.d f27, f14, f20, rne # perform operation
fdiv.d f27, f14, f20, rtz # perform operation
fdiv.d f27, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f27, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f27, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f27, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f27, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f27, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x4000000000000000)
li x11, 0x95f4fd6d491f627e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fdiv.d f11, f5, f25, dyn # perform operation
fdiv.d f11, f5, f25, rdn # perform operation
fdiv.d f11, f5, f25, rmm # perform operation
fdiv.d f11, f5, f25, rne # perform operation
fdiv.d f11, f5, f25, rtz # perform operation
fdiv.d f11, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f11, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f11, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f11, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f11, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f11, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xc000000000000000)
li x3, 0xe3e828e18ea4afeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
fdiv.d f3, f8, f28, dyn # perform operation
fdiv.d f3, f8, f28, rdn # perform operation
fdiv.d f3, f8, f28, rmm # perform operation
fdiv.d f3, f8, f28, rne # perform operation
fdiv.d f3, f8, f28, rtz # perform operation
fdiv.d f3, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x10000000000000)
li x20, 0xb9d443ceced814d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
fdiv.d f20, f23, f3, dyn # perform operation
fdiv.d f20, f23, f3, rdn # perform operation
fdiv.d f20, f23, f3, rmm # perform operation
fdiv.d f20, f23, f3, rne # perform operation
fdiv.d f20, f23, f3, rtz # perform operation
fdiv.d f20, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8010000000000000)
li x30, 0xf404e546e1e2de51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fdiv.d f30, f13, f23, dyn # perform operation
fdiv.d f30, f13, f23, rdn # perform operation
fdiv.d f30, f13, f23, rmm # perform operation
fdiv.d f30, f13, f23, rne # perform operation
fdiv.d f30, f13, f23, rtz # perform operation
fdiv.d f30, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fefffffffffffff)
li x18, 0x25bb13c23a2fcc7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fdiv.d f18, f10, f29, dyn # perform operation
fdiv.d f18, f10, f29, rdn # perform operation
fdiv.d f18, f10, f29, rmm # perform operation
fdiv.d f18, f10, f29, rne # perform operation
fdiv.d f18, f10, f29, rtz # perform operation
fdiv.d f18, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xffefffffffffffff)
li x30, 0x6053959b6404e277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
fdiv.d f30, f29, f20, dyn # perform operation
fdiv.d f30, f29, f20, rdn # perform operation
fdiv.d f30, f29, f20, rmm # perform operation
fdiv.d f30, f29, f20, rne # perform operation
fdiv.d f30, f29, f20, rtz # perform operation
fdiv.d f30, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f30, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f30, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f30, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f30, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f30, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfffffffffffff)
li x15, 0xd2c7ed39272cfd19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
fdiv.d f15, f17, f10, dyn # perform operation
fdiv.d f15, f17, f10, rdn # perform operation
fdiv.d f15, f17, f10, rmm # perform operation
fdiv.d f15, f17, f10, rne # perform operation
fdiv.d f15, f17, f10, rtz # perform operation
fdiv.d f15, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f15, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f15, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f15, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f15, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f15, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x800fffffffffffff)
li x16, 0xb2c04bd721eed0c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
fdiv.d f16, f18, f31, dyn # perform operation
fdiv.d f16, f18, f31, rdn # perform operation
fdiv.d f16, f18, f31, rmm # perform operation
fdiv.d f16, f18, f31, rne # perform operation
fdiv.d f16, f18, f31, rtz # perform operation
fdiv.d f16, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f16, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f16, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f16, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f16, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f16, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000)
li x29, 0x7c227caf009962f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
fdiv.d f29, f26, f8, dyn # perform operation
fdiv.d f29, f26, f8, rdn # perform operation
fdiv.d f29, f26, f8, rmm # perform operation
fdiv.d f29, f26, f8, rne # perform operation
fdiv.d f29, f26, f8, rtz # perform operation
fdiv.d f29, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f29, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f29, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f29, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f29, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f29, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8008000000000000)
li x14, 0xb62122bb9246e415 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
fdiv.d f14, f21, f3, dyn # perform operation
fdiv.d f14, f21, f3, rdn # perform operation
fdiv.d f14, f21, f3, rmm # perform operation
fdiv.d f14, f21, f3, rne # perform operation
fdiv.d f14, f21, f3, rtz # perform operation
fdiv.d f14, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x1)
li x20, 0x35c598633ea6ea87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
fdiv.d f20, f26, f1, dyn # perform operation
fdiv.d f20, f26, f1, rdn # perform operation
fdiv.d f20, f26, f1, rmm # perform operation
fdiv.d f20, f26, f1, rne # perform operation
fdiv.d f20, f26, f1, rtz # perform operation
fdiv.d f20, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f20, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f20, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f20, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f20, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f20, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000001)
li x3, 0x3cd0a21b8f011bc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fdiv.d f3, f6, f19, dyn # perform operation
fdiv.d f3, f6, f19, rdn # perform operation
fdiv.d f3, f6, f19, rmm # perform operation
fdiv.d f3, f6, f19, rne # perform operation
fdiv.d f3, f6, f19, rtz # perform operation
fdiv.d f3, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f3, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f3, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f3, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f3, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f3, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000000)
li x18, 0xb91898cf0c645951 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fdiv.d f18, f13, f16, dyn # perform operation
fdiv.d f18, f13, f16, rdn # perform operation
fdiv.d f18, f13, f16, rmm # perform operation
fdiv.d f18, f13, f16, rne # perform operation
fdiv.d f18, f13, f16, rtz # perform operation
fdiv.d f18, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfff0000000000000)
li x22, 0x0414a3e86f82a56a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
fdiv.d f22, f15, f8, dyn # perform operation
fdiv.d f22, f15, f8, rdn # perform operation
fdiv.d f22, f15, f8, rmm # perform operation
fdiv.d f22, f15, f8, rne # perform operation
fdiv.d f22, f15, f8, rtz # perform operation
fdiv.d f22, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff8000000000000)
li x14, 0x89bb40ba4aa7c6ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fdiv.d f14, f13, f6, dyn # perform operation
fdiv.d f14, f13, f6, rdn # perform operation
fdiv.d f14, f13, f6, rmm # perform operation
fdiv.d f14, f13, f6, rne # perform operation
fdiv.d f14, f13, f6, rtz # perform operation
fdiv.d f14, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f14, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f14, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f14, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f14, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f14, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fffffffffffffff)
li x18, 0x24af570c3af69681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
fdiv.d f18, f21, f3, dyn # perform operation
fdiv.d f18, f21, f3, rdn # perform operation
fdiv.d f18, f21, f3, rmm # perform operation
fdiv.d f18, f21, f3, rne # perform operation
fdiv.d f18, f21, f3, rtz # perform operation
fdiv.d f18, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f18, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f18, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f18, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f18, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f18, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000001)
li x21, 0x19e9dcd1c750c541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fdiv.d f21, f16, f31, dyn # perform operation
fdiv.d f21, f16, f31, rdn # perform operation
fdiv.d f21, f16, f31, rmm # perform operation
fdiv.d f21, f16, f31, rne # perform operation
fdiv.d f21, f16, f31, rtz # perform operation
fdiv.d f21, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f21, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f21, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f21, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f21, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f21, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff7ffffffffffff)
li x9, 0xdee11b2e740eb398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fdiv.d f9, f23, f1, dyn # perform operation
fdiv.d f9, f23, f1, rdn # perform operation
fdiv.d f9, f23, f1, rmm # perform operation
fdiv.d f9, f23, f1, rne # perform operation
fdiv.d f9, f23, f1, rtz # perform operation
fdiv.d f9, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f9, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f9, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f9, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f9, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f9, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x5a392534a57711ad)
li x22, 0x4d5d4904327e2e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
fdiv.d f22, f10, f16, dyn # perform operation
fdiv.d f22, f10, f16, rdn # perform operation
fdiv.d f22, f10, f16, rmm # perform operation
fdiv.d f22, f10, f16, rne # perform operation
fdiv.d f22, f10, f16, rtz # perform operation
fdiv.d f22, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f22, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f22, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f22, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f22, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f22, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xa6e895993737426c)
li x19, 0x198ab2d4f4fbee0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
fdiv.d f19, f24, f29, dyn # perform operation
fdiv.d f19, f24, f29, rdn # perform operation
fdiv.d f19, f24, f29, rmm # perform operation
fdiv.d f19, f24, f29, rne # perform operation
fdiv.d f19, f24, f29, rtz # perform operation
fdiv.d f19, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.d f19, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.d f19, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.d f19, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.d f19, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.d f19, f24, f29 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x2da895d7f93ed391 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d30db8f50bb722f # load x3 with value 0x4d30db8f50bb722f
sd x3, 0(x2) # store 0x4d30db8f50bb722f in memory
fld f26, 0(x2) # load 0x4d30db8f50bb722f from memory into f26
li x3, 0x0a0d25300dbfc13f # load x3 with value 0x0a0d25300dbfc13f
sd x3, 0(x2) # store 0x0a0d25300dbfc13f in memory
fld f22, 0(x2) # load 0x0a0d25300dbfc13f from memory into f22
fdiv.d f0, f26, f22 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x45bc7dfc0c6ec0b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e02a96465c1b0b6 # load x3 with value 0x9e02a96465c1b0b6
sd x3, 0(x2) # store 0x9e02a96465c1b0b6 in memory
fld f16, 0(x2) # load 0x9e02a96465c1b0b6 from memory into f16
li x3, 0x5eb6888daae9bc9b # load x3 with value 0x5eb6888daae9bc9b
sd x3, 0(x2) # store 0x5eb6888daae9bc9b in memory
fld f8, 0(x2) # load 0x5eb6888daae9bc9b from memory into f8
fdiv.d f1, f16, f8 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xb8406368f16d0858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc6e43aa9f1c8ffc # load x3 with value 0xfc6e43aa9f1c8ffc
sd x3, 0(x2) # store 0xfc6e43aa9f1c8ffc in memory
fld f8, 0(x2) # load 0xfc6e43aa9f1c8ffc from memory into f8
li x3, 0xe16fa9d1087be63a # load x3 with value 0xe16fa9d1087be63a
sd x3, 0(x2) # store 0xe16fa9d1087be63a in memory
fld f25, 0(x2) # load 0xe16fa9d1087be63a from memory into f25
fdiv.d f2, f8, f25 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x1966441a6cf3b480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ad79d4debf36b10 # load x3 with value 0x4ad79d4debf36b10
sd x3, 0(x2) # store 0x4ad79d4debf36b10 in memory
fld f13, 0(x2) # load 0x4ad79d4debf36b10 from memory into f13
li x3, 0x85915ccd8e0dde54 # load x3 with value 0x85915ccd8e0dde54
sd x3, 0(x2) # store 0x85915ccd8e0dde54 in memory
fld f3, 0(x2) # load 0x85915ccd8e0dde54 from memory into f3
fdiv.d f3, f13, f3 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x05da04ee2a34619c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbea52b2425e14bbf # load x3 with value 0xbea52b2425e14bbf
sd x3, 0(x2) # store 0xbea52b2425e14bbf in memory
fld f11, 0(x2) # load 0xbea52b2425e14bbf from memory into f11
li x3, 0x87dc36d05c20a2f1 # load x3 with value 0x87dc36d05c20a2f1
sd x3, 0(x2) # store 0x87dc36d05c20a2f1 in memory
fld f27, 0(x2) # load 0x87dc36d05c20a2f1 from memory into f27
fdiv.d f4, f11, f27 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xf8f59dc99e1aea0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc383d6a663ac1a49 # load x3 with value 0xc383d6a663ac1a49
sd x3, 0(x2) # store 0xc383d6a663ac1a49 in memory
fld f29, 0(x2) # load 0xc383d6a663ac1a49 from memory into f29
li x3, 0x10fb71f8fb367e9c # load x3 with value 0x10fb71f8fb367e9c
sd x3, 0(x2) # store 0x10fb71f8fb367e9c in memory
fld f28, 0(x2) # load 0x10fb71f8fb367e9c from memory into f28
fdiv.d f5, f29, f28 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x3da9374ff73cb109 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3797e93523b0685 # load x3 with value 0xa3797e93523b0685
sd x3, 0(x2) # store 0xa3797e93523b0685 in memory
fld f4, 0(x2) # load 0xa3797e93523b0685 from memory into f4
li x3, 0x6e4e0cef0f48a809 # load x3 with value 0x6e4e0cef0f48a809
sd x3, 0(x2) # store 0x6e4e0cef0f48a809 in memory
fld f14, 0(x2) # load 0x6e4e0cef0f48a809 from memory into f14
fdiv.d f6, f4, f14 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x1acacfaf5304fb4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6357a263d8cb17f9 # load x3 with value 0x6357a263d8cb17f9
sd x3, 0(x2) # store 0x6357a263d8cb17f9 in memory
fld f19, 0(x2) # load 0x6357a263d8cb17f9 from memory into f19
li x3, 0x0b393d9ed6169980 # load x3 with value 0x0b393d9ed6169980
sd x3, 0(x2) # store 0x0b393d9ed6169980 in memory
fld f12, 0(x2) # load 0x0b393d9ed6169980 from memory into f12
fdiv.d f7, f19, f12 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xe2504e044d2c5e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9beb3917cb0ec1d5 # load x3 with value 0x9beb3917cb0ec1d5
sd x3, 0(x2) # store 0x9beb3917cb0ec1d5 in memory
fld f31, 0(x2) # load 0x9beb3917cb0ec1d5 from memory into f31
li x3, 0xce51c46272bbb4e5 # load x3 with value 0xce51c46272bbb4e5
sd x3, 0(x2) # store 0xce51c46272bbb4e5 in memory
fld f30, 0(x2) # load 0xce51c46272bbb4e5 from memory into f30
fdiv.d f8, f31, f30 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xbf44fdd686ca42ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e5e238720de7d19 # load x3 with value 0x8e5e238720de7d19
sd x3, 0(x2) # store 0x8e5e238720de7d19 in memory
fld f7, 0(x2) # load 0x8e5e238720de7d19 from memory into f7
li x3, 0x38b84918060e6b36 # load x3 with value 0x38b84918060e6b36
sd x3, 0(x2) # store 0x38b84918060e6b36 in memory
fld f9, 0(x2) # load 0x38b84918060e6b36 from memory into f9
fdiv.d f9, f7, f9 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xcc4ef7ba4890641d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53862881108913eb # load x3 with value 0x53862881108913eb
sd x3, 0(x2) # store 0x53862881108913eb in memory
fld f15, 0(x2) # load 0x53862881108913eb from memory into f15
li x3, 0xc3bd0ab68515d6e2 # load x3 with value 0xc3bd0ab68515d6e2
sd x3, 0(x2) # store 0xc3bd0ab68515d6e2 in memory
fld f30, 0(x2) # load 0xc3bd0ab68515d6e2 from memory into f30
fdiv.d f10, f15, f30 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xccd14116aa098d7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0cfb1e5cb1324ac2 # load x3 with value 0x0cfb1e5cb1324ac2
sd x3, 0(x2) # store 0x0cfb1e5cb1324ac2 in memory
fld f2, 0(x2) # load 0x0cfb1e5cb1324ac2 from memory into f2
li x3, 0x886f0fe43e9fde75 # load x3 with value 0x886f0fe43e9fde75
sd x3, 0(x2) # store 0x886f0fe43e9fde75 in memory
fld f8, 0(x2) # load 0x886f0fe43e9fde75 from memory into f8
fdiv.d f11, f2, f8 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x9adfe823778628d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3cfc1ed6b5a6867 # load x3 with value 0xb3cfc1ed6b5a6867
sd x3, 0(x2) # store 0xb3cfc1ed6b5a6867 in memory
fld f12, 0(x2) # load 0xb3cfc1ed6b5a6867 from memory into f12
li x3, 0x5a5f09cdfd78aecf # load x3 with value 0x5a5f09cdfd78aecf
sd x3, 0(x2) # store 0x5a5f09cdfd78aecf in memory
fld f7, 0(x2) # load 0x5a5f09cdfd78aecf from memory into f7
fdiv.d f12, f12, f7 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x8785bc9bb90a05cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c0bdfaa044ceff9 # load x3 with value 0x0c0bdfaa044ceff9
sd x3, 0(x2) # store 0x0c0bdfaa044ceff9 in memory
fld f19, 0(x2) # load 0x0c0bdfaa044ceff9 from memory into f19
li x3, 0x70990b14ef05ceb6 # load x3 with value 0x70990b14ef05ceb6
sd x3, 0(x2) # store 0x70990b14ef05ceb6 in memory
fld f1, 0(x2) # load 0x70990b14ef05ceb6 from memory into f1
fdiv.d f13, f19, f1 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xbd660f634e882a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa333af3f781c8410 # load x3 with value 0xa333af3f781c8410
sd x3, 0(x2) # store 0xa333af3f781c8410 in memory
fld f14, 0(x2) # load 0xa333af3f781c8410 from memory into f14
li x3, 0x9ad29302b0b29571 # load x3 with value 0x9ad29302b0b29571
sd x3, 0(x2) # store 0x9ad29302b0b29571 in memory
fld f23, 0(x2) # load 0x9ad29302b0b29571 from memory into f23
fdiv.d f14, f14, f23 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xe8d0afca9cf09f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a7a3db25dc35dcc # load x3 with value 0x2a7a3db25dc35dcc
sd x3, 0(x2) # store 0x2a7a3db25dc35dcc in memory
fld f24, 0(x2) # load 0x2a7a3db25dc35dcc from memory into f24
li x3, 0x35e33181e460f99f # load x3 with value 0x35e33181e460f99f
sd x3, 0(x2) # store 0x35e33181e460f99f in memory
fld f29, 0(x2) # load 0x35e33181e460f99f from memory into f29
fdiv.d f15, f24, f29 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x75c509a966cba753 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24331cb80f600399 # load x3 with value 0x24331cb80f600399
sd x3, 0(x2) # store 0x24331cb80f600399 in memory
fld f12, 0(x2) # load 0x24331cb80f600399 from memory into f12
li x3, 0x50db8ffae73dd633 # load x3 with value 0x50db8ffae73dd633
sd x3, 0(x2) # store 0x50db8ffae73dd633 in memory
fld f8, 0(x2) # load 0x50db8ffae73dd633 from memory into f8
fdiv.d f16, f12, f8 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xd207a2b89aa5ab5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57b292e65b4e9fa1 # load x3 with value 0x57b292e65b4e9fa1
sd x3, 0(x2) # store 0x57b292e65b4e9fa1 in memory
fld f2, 0(x2) # load 0x57b292e65b4e9fa1 from memory into f2
li x3, 0xad889c54be1e5428 # load x3 with value 0xad889c54be1e5428
sd x3, 0(x2) # store 0xad889c54be1e5428 in memory
fld f3, 0(x2) # load 0xad889c54be1e5428 from memory into f3
fdiv.d f17, f2, f3 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xe8dac522c8b6af8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6f07a029432bca9 # load x3 with value 0xd6f07a029432bca9
sd x3, 0(x2) # store 0xd6f07a029432bca9 in memory
fld f8, 0(x2) # load 0xd6f07a029432bca9 from memory into f8
li x3, 0xce1a297cf0eda76b # load x3 with value 0xce1a297cf0eda76b
sd x3, 0(x2) # store 0xce1a297cf0eda76b in memory
fld f25, 0(x2) # load 0xce1a297cf0eda76b from memory into f25
fdiv.d f18, f8, f25 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x249aacb4a2249c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe77f44e55acd6698 # load x3 with value 0xe77f44e55acd6698
sd x3, 0(x2) # store 0xe77f44e55acd6698 in memory
fld f17, 0(x2) # load 0xe77f44e55acd6698 from memory into f17
li x3, 0x46051b6ff4eabbd8 # load x3 with value 0x46051b6ff4eabbd8
sd x3, 0(x2) # store 0x46051b6ff4eabbd8 in memory
fld f7, 0(x2) # load 0x46051b6ff4eabbd8 from memory into f7
fdiv.d f19, f17, f7 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x7a2dd66a16831010 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55c783a426fc2b6d # load x3 with value 0x55c783a426fc2b6d
sd x3, 0(x2) # store 0x55c783a426fc2b6d in memory
fld f26, 0(x2) # load 0x55c783a426fc2b6d from memory into f26
li x3, 0x7cec84b90b0adee1 # load x3 with value 0x7cec84b90b0adee1
sd x3, 0(x2) # store 0x7cec84b90b0adee1 in memory
fld f25, 0(x2) # load 0x7cec84b90b0adee1 from memory into f25
fdiv.d f20, f26, f25 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x84b6052ea906ee22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b0e5c4b771b2a69 # load x3 with value 0x3b0e5c4b771b2a69
sd x3, 0(x2) # store 0x3b0e5c4b771b2a69 in memory
fld f14, 0(x2) # load 0x3b0e5c4b771b2a69 from memory into f14
li x3, 0xab8a09b972dafb8d # load x3 with value 0xab8a09b972dafb8d
sd x3, 0(x2) # store 0xab8a09b972dafb8d in memory
fld f12, 0(x2) # load 0xab8a09b972dafb8d from memory into f12
fdiv.d f21, f14, f12 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x7a6a3c622264e1aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd97684b230d4760f # load x3 with value 0xd97684b230d4760f
sd x3, 0(x2) # store 0xd97684b230d4760f in memory
fld f23, 0(x2) # load 0xd97684b230d4760f from memory into f23
li x3, 0x5ac6402a47043159 # load x3 with value 0x5ac6402a47043159
sd x3, 0(x2) # store 0x5ac6402a47043159 in memory
fld f29, 0(x2) # load 0x5ac6402a47043159 from memory into f29
fdiv.d f22, f23, f29 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x42d81fe78ad10785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17e83b78f73fdcb1 # load x3 with value 0x17e83b78f73fdcb1
sd x3, 0(x2) # store 0x17e83b78f73fdcb1 in memory
fld f4, 0(x2) # load 0x17e83b78f73fdcb1 from memory into f4
li x3, 0xf5be1ca0f44e645f # load x3 with value 0xf5be1ca0f44e645f
sd x3, 0(x2) # store 0xf5be1ca0f44e645f in memory
fld f30, 0(x2) # load 0xf5be1ca0f44e645f from memory into f30
fdiv.d f23, f4, f30 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x5707b4c7f0527197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb638a21d8a30e2f8 # load x3 with value 0xb638a21d8a30e2f8
sd x3, 0(x2) # store 0xb638a21d8a30e2f8 in memory
fld f14, 0(x2) # load 0xb638a21d8a30e2f8 from memory into f14
li x3, 0x5ba0df6f59019fb4 # load x3 with value 0x5ba0df6f59019fb4
sd x3, 0(x2) # store 0x5ba0df6f59019fb4 in memory
fld f28, 0(x2) # load 0x5ba0df6f59019fb4 from memory into f28
fdiv.d f24, f14, f28 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xd2b3077b93d1e232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5df88c1bdab56fa3 # load x3 with value 0x5df88c1bdab56fa3
sd x3, 0(x2) # store 0x5df88c1bdab56fa3 in memory
fld f13, 0(x2) # load 0x5df88c1bdab56fa3 from memory into f13
li x3, 0x0c090695fdde7d39 # load x3 with value 0x0c090695fdde7d39
sd x3, 0(x2) # store 0x0c090695fdde7d39 in memory
fld f12, 0(x2) # load 0x0c090695fdde7d39 from memory into f12
fdiv.d f25, f13, f12 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x982ce8aa65bc7145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d061058dd9838a8 # load x3 with value 0x3d061058dd9838a8
sd x3, 0(x2) # store 0x3d061058dd9838a8 in memory
fld f3, 0(x2) # load 0x3d061058dd9838a8 from memory into f3
li x3, 0xb825d5dd498503a1 # load x3 with value 0xb825d5dd498503a1
sd x3, 0(x2) # store 0xb825d5dd498503a1 in memory
fld f26, 0(x2) # load 0xb825d5dd498503a1 from memory into f26
fdiv.d f26, f3, f26 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x45b0543f8ef4a96d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x276c35cca538c694 # load x3 with value 0x276c35cca538c694
sd x3, 0(x2) # store 0x276c35cca538c694 in memory
fld f30, 0(x2) # load 0x276c35cca538c694 from memory into f30
li x3, 0x980ca0e86a77e54d # load x3 with value 0x980ca0e86a77e54d
sd x3, 0(x2) # store 0x980ca0e86a77e54d in memory
fld f5, 0(x2) # load 0x980ca0e86a77e54d from memory into f5
fdiv.d f27, f30, f5 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x47a1cba006d2c0f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75c521009c9d3dbe # load x3 with value 0x75c521009c9d3dbe
sd x3, 0(x2) # store 0x75c521009c9d3dbe in memory
fld f25, 0(x2) # load 0x75c521009c9d3dbe from memory into f25
li x3, 0x0092a439ccfa499f # load x3 with value 0x0092a439ccfa499f
sd x3, 0(x2) # store 0x0092a439ccfa499f in memory
fld f18, 0(x2) # load 0x0092a439ccfa499f from memory into f18
fdiv.d f28, f25, f18 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xb7f9724e6a0cefc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x504f81485a8131c2 # load x3 with value 0x504f81485a8131c2
sd x3, 0(x2) # store 0x504f81485a8131c2 in memory
fld f11, 0(x2) # load 0x504f81485a8131c2 from memory into f11
li x3, 0x3e69b09f9854af0c # load x3 with value 0x3e69b09f9854af0c
sd x3, 0(x2) # store 0x3e69b09f9854af0c in memory
fld f4, 0(x2) # load 0x3e69b09f9854af0c from memory into f4
fdiv.d f29, f11, f4 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x6f2cc1efc1a08789 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41fceb399c3d06f8 # load x3 with value 0x41fceb399c3d06f8
sd x3, 0(x2) # store 0x41fceb399c3d06f8 in memory
fld f12, 0(x2) # load 0x41fceb399c3d06f8 from memory into f12
li x3, 0x3eefed8bcfc0aec0 # load x3 with value 0x3eefed8bcfc0aec0
sd x3, 0(x2) # store 0x3eefed8bcfc0aec0 in memory
fld f13, 0(x2) # load 0x3eefed8bcfc0aec0 from memory into f13
fdiv.d f30, f12, f13 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x7a9fc8cf2b8bfdf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33e0cacf47227bf7 # load x3 with value 0x33e0cacf47227bf7
sd x3, 0(x2) # store 0x33e0cacf47227bf7 in memory
fld f1, 0(x2) # load 0x33e0cacf47227bf7 from memory into f1
li x3, 0x00de3d737c0a64e7 # load x3 with value 0x00de3d737c0a64e7
sd x3, 0(x2) # store 0x00de3d737c0a64e7 in memory
fld f9, 0(x2) # load 0x00de3d737c0a64e7 from memory into f9
fdiv.d f31, f1, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x12, 0x9086871a095f787f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0390e5cc5b7ab4cf # load x3 with value 0x0390e5cc5b7ab4cf
sd x3, 0(x2) # store 0x0390e5cc5b7ab4cf in memory
fld f0, 0(x2) # load 0x0390e5cc5b7ab4cf from memory into f0
li x3, 0x7676ca458362ea98 # load x3 with value 0x7676ca458362ea98
sd x3, 0(x2) # store 0x7676ca458362ea98 in memory
fld f3, 0(x2) # load 0x7676ca458362ea98 from memory into f3
fdiv.d f12, f0, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x26, 0x68118bade6c91c14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x108fa085abc52c7f # load x3 with value 0x108fa085abc52c7f
sd x3, 0(x2) # store 0x108fa085abc52c7f in memory
fld f1, 0(x2) # load 0x108fa085abc52c7f from memory into f1
li x3, 0x66a2aa974b561d7a # load x3 with value 0x66a2aa974b561d7a
sd x3, 0(x2) # store 0x66a2aa974b561d7a in memory
fld f16, 0(x2) # load 0x66a2aa974b561d7a from memory into f16
fdiv.d f26, f1, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x2, 0x1b319803bfb931fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb6717947495fe5a # load x3 with value 0xdb6717947495fe5a
sd x3, 0(x2) # store 0xdb6717947495fe5a in memory
fld f2, 0(x2) # load 0xdb6717947495fe5a from memory into f2
li x3, 0xf84bca77d5901566 # load x3 with value 0xf84bca77d5901566
sd x3, 0(x2) # store 0xf84bca77d5901566 in memory
fld f21, 0(x2) # load 0xf84bca77d5901566 from memory into f21
fdiv.d f2, f2, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x25, 0xede2985dab8b64c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe41fabf418538417 # load x3 with value 0xe41fabf418538417
sd x3, 0(x2) # store 0xe41fabf418538417 in memory
fld f3, 0(x2) # load 0xe41fabf418538417 from memory into f3
li x3, 0x79943abc926457ab # load x3 with value 0x79943abc926457ab
sd x3, 0(x2) # store 0x79943abc926457ab in memory
fld f10, 0(x2) # load 0x79943abc926457ab from memory into f10
fdiv.d f25, f3, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x21, 0x1fdfa077bc7a7c41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31946103bee46862 # load x3 with value 0x31946103bee46862
sd x3, 0(x2) # store 0x31946103bee46862 in memory
fld f4, 0(x2) # load 0x31946103bee46862 from memory into f4
li x3, 0x7d300279293e02f4 # load x3 with value 0x7d300279293e02f4
sd x3, 0(x2) # store 0x7d300279293e02f4 in memory
fld f12, 0(x2) # load 0x7d300279293e02f4 from memory into f12
fdiv.d f21, f4, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x27, 0x51f4f3e7cc564c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8734f3b6fdd13462 # load x3 with value 0x8734f3b6fdd13462
sd x3, 0(x2) # store 0x8734f3b6fdd13462 in memory
fld f5, 0(x2) # load 0x8734f3b6fdd13462 from memory into f5
li x3, 0xbb12971bd8655f2b # load x3 with value 0xbb12971bd8655f2b
sd x3, 0(x2) # store 0xbb12971bd8655f2b in memory
fld f7, 0(x2) # load 0xbb12971bd8655f2b from memory into f7
fdiv.d f27, f5, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x27, 0x88f9c107d5e69be7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21bb5f5bce8b06f1 # load x3 with value 0x21bb5f5bce8b06f1
sd x3, 0(x2) # store 0x21bb5f5bce8b06f1 in memory
fld f6, 0(x2) # load 0x21bb5f5bce8b06f1 from memory into f6
li x3, 0xfae6ccbebac5dadb # load x3 with value 0xfae6ccbebac5dadb
sd x3, 0(x2) # store 0xfae6ccbebac5dadb in memory
fld f21, 0(x2) # load 0xfae6ccbebac5dadb from memory into f21
fdiv.d f27, f6, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x19, 0x1556797da8eabce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1666182ed4f43f93 # load x3 with value 0x1666182ed4f43f93
sd x3, 0(x2) # store 0x1666182ed4f43f93 in memory
fld f7, 0(x2) # load 0x1666182ed4f43f93 from memory into f7
li x3, 0x271c8926c228f270 # load x3 with value 0x271c8926c228f270
sd x3, 0(x2) # store 0x271c8926c228f270 in memory
fld f28, 0(x2) # load 0x271c8926c228f270 from memory into f28
fdiv.d f19, f7, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x28, 0xe249fb969e578570 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab18aad0af9cfad1 # load x3 with value 0xab18aad0af9cfad1
sd x3, 0(x2) # store 0xab18aad0af9cfad1 in memory
fld f8, 0(x2) # load 0xab18aad0af9cfad1 from memory into f8
li x3, 0xc628a36d3220921a # load x3 with value 0xc628a36d3220921a
sd x3, 0(x2) # store 0xc628a36d3220921a in memory
fld f31, 0(x2) # load 0xc628a36d3220921a from memory into f31
fdiv.d f28, f8, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x13, 0xd45c16f1cf1b7a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95a5d443e511ea37 # load x3 with value 0x95a5d443e511ea37
sd x3, 0(x2) # store 0x95a5d443e511ea37 in memory
fld f9, 0(x2) # load 0x95a5d443e511ea37 from memory into f9
li x3, 0x546dd63fd7776db4 # load x3 with value 0x546dd63fd7776db4
sd x3, 0(x2) # store 0x546dd63fd7776db4 in memory
fld f27, 0(x2) # load 0x546dd63fd7776db4 from memory into f27
fdiv.d f13, f9, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x27, 0x5bfe45907e14e85c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdafa5e7e8a12c83d # load x3 with value 0xdafa5e7e8a12c83d
sd x3, 0(x2) # store 0xdafa5e7e8a12c83d in memory
fld f10, 0(x2) # load 0xdafa5e7e8a12c83d from memory into f10
li x3, 0xdafbe2f7bcbc7455 # load x3 with value 0xdafbe2f7bcbc7455
sd x3, 0(x2) # store 0xdafbe2f7bcbc7455 in memory
fld f7, 0(x2) # load 0xdafbe2f7bcbc7455 from memory into f7
fdiv.d f27, f10, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x16, 0x9b5dcb01afcb3171 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5268e8148da8139f # load x3 with value 0x5268e8148da8139f
sd x3, 0(x2) # store 0x5268e8148da8139f in memory
fld f11, 0(x2) # load 0x5268e8148da8139f from memory into f11
li x3, 0x68b2af49e4540f9c # load x3 with value 0x68b2af49e4540f9c
sd x3, 0(x2) # store 0x68b2af49e4540f9c in memory
fld f22, 0(x2) # load 0x68b2af49e4540f9c from memory into f22
fdiv.d f16, f11, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x20, 0x320ddbdc15d97a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a43f7812cad1d70 # load x3 with value 0x7a43f7812cad1d70
sd x3, 0(x2) # store 0x7a43f7812cad1d70 in memory
fld f12, 0(x2) # load 0x7a43f7812cad1d70 from memory into f12
li x3, 0x7d3ecf2d27755ffa # load x3 with value 0x7d3ecf2d27755ffa
sd x3, 0(x2) # store 0x7d3ecf2d27755ffa in memory
fld f14, 0(x2) # load 0x7d3ecf2d27755ffa from memory into f14
fdiv.d f20, f12, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x14, 0x418898fd3157629c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3364a0327ea04ae3 # load x3 with value 0x3364a0327ea04ae3
sd x3, 0(x2) # store 0x3364a0327ea04ae3 in memory
fld f13, 0(x2) # load 0x3364a0327ea04ae3 from memory into f13
li x3, 0x7e6677833613d512 # load x3 with value 0x7e6677833613d512
sd x3, 0(x2) # store 0x7e6677833613d512 in memory
fld f4, 0(x2) # load 0x7e6677833613d512 from memory into f4
fdiv.d f14, f13, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x10, 0xe3444e0426e27994 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbc5cf4be11c7994 # load x3 with value 0xdbc5cf4be11c7994
sd x3, 0(x2) # store 0xdbc5cf4be11c7994 in memory
fld f14, 0(x2) # load 0xdbc5cf4be11c7994 from memory into f14
li x3, 0x6f5bb8fb61223a47 # load x3 with value 0x6f5bb8fb61223a47
sd x3, 0(x2) # store 0x6f5bb8fb61223a47 in memory
fld f19, 0(x2) # load 0x6f5bb8fb61223a47 from memory into f19
fdiv.d f10, f14, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x28, 0xe7e331148b182b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe761f3f3c4d0c49c # load x3 with value 0xe761f3f3c4d0c49c
sd x3, 0(x2) # store 0xe761f3f3c4d0c49c in memory
fld f15, 0(x2) # load 0xe761f3f3c4d0c49c from memory into f15
li x3, 0x621993b4cb90bd1a # load x3 with value 0x621993b4cb90bd1a
sd x3, 0(x2) # store 0x621993b4cb90bd1a in memory
fld f29, 0(x2) # load 0x621993b4cb90bd1a from memory into f29
fdiv.d f28, f15, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x10, 0x346a2fb48fadd707 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84775fa74a9a8e9a # load x3 with value 0x84775fa74a9a8e9a
sd x3, 0(x2) # store 0x84775fa74a9a8e9a in memory
fld f16, 0(x2) # load 0x84775fa74a9a8e9a from memory into f16
li x3, 0xde000f5ec8b1d146 # load x3 with value 0xde000f5ec8b1d146
sd x3, 0(x2) # store 0xde000f5ec8b1d146 in memory
fld f12, 0(x2) # load 0xde000f5ec8b1d146 from memory into f12
fdiv.d f10, f16, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x15, 0xb6eb5ab0ffd0603f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b5c3cfc8054bd05 # load x3 with value 0x1b5c3cfc8054bd05
sd x3, 0(x2) # store 0x1b5c3cfc8054bd05 in memory
fld f17, 0(x2) # load 0x1b5c3cfc8054bd05 from memory into f17
li x3, 0x9809f09c8aacbfd0 # load x3 with value 0x9809f09c8aacbfd0
sd x3, 0(x2) # store 0x9809f09c8aacbfd0 in memory
fld f2, 0(x2) # load 0x9809f09c8aacbfd0 from memory into f2
fdiv.d f15, f17, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x20, 0xba9fd37fa04c4de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcbc52b5515df76b # load x3 with value 0xdcbc52b5515df76b
sd x3, 0(x2) # store 0xdcbc52b5515df76b in memory
fld f18, 0(x2) # load 0xdcbc52b5515df76b from memory into f18
li x3, 0x9c42f1db503ca91f # load x3 with value 0x9c42f1db503ca91f
sd x3, 0(x2) # store 0x9c42f1db503ca91f in memory
fld f8, 0(x2) # load 0x9c42f1db503ca91f from memory into f8
fdiv.d f20, f18, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x1, 0x1493b457be56d352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfafb5e2fd78e5120 # load x3 with value 0xfafb5e2fd78e5120
sd x3, 0(x2) # store 0xfafb5e2fd78e5120 in memory
fld f19, 0(x2) # load 0xfafb5e2fd78e5120 from memory into f19
li x3, 0xbc5fc1b09163b510 # load x3 with value 0xbc5fc1b09163b510
sd x3, 0(x2) # store 0xbc5fc1b09163b510 in memory
fld f26, 0(x2) # load 0xbc5fc1b09163b510 from memory into f26
fdiv.d f1, f19, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x16, 0xb67d3c38c7f70649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x405d5d39e46ee602 # load x3 with value 0x405d5d39e46ee602
sd x3, 0(x2) # store 0x405d5d39e46ee602 in memory
fld f20, 0(x2) # load 0x405d5d39e46ee602 from memory into f20
li x3, 0xf2d506157d21f9ae # load x3 with value 0xf2d506157d21f9ae
sd x3, 0(x2) # store 0xf2d506157d21f9ae in memory
fld f2, 0(x2) # load 0xf2d506157d21f9ae from memory into f2
fdiv.d f16, f20, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x26, 0xe1b5e6d73c6673d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a38cc1a436b392e # load x3 with value 0x9a38cc1a436b392e
sd x3, 0(x2) # store 0x9a38cc1a436b392e in memory
fld f21, 0(x2) # load 0x9a38cc1a436b392e from memory into f21
li x3, 0x604cb1ea4a13a598 # load x3 with value 0x604cb1ea4a13a598
sd x3, 0(x2) # store 0x604cb1ea4a13a598 in memory
fld f3, 0(x2) # load 0x604cb1ea4a13a598 from memory into f3
fdiv.d f26, f21, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x24, 0x9df11458dfb7b153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26dacd0f5d828a59 # load x3 with value 0x26dacd0f5d828a59
sd x3, 0(x2) # store 0x26dacd0f5d828a59 in memory
fld f22, 0(x2) # load 0x26dacd0f5d828a59 from memory into f22
li x3, 0xac0b1703653fedda # load x3 with value 0xac0b1703653fedda
sd x3, 0(x2) # store 0xac0b1703653fedda in memory
fld f7, 0(x2) # load 0xac0b1703653fedda from memory into f7
fdiv.d f24, f22, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x10, 0x66e58ef0f04dcc1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5698174f7ea02ee5 # load x3 with value 0x5698174f7ea02ee5
sd x3, 0(x2) # store 0x5698174f7ea02ee5 in memory
fld f23, 0(x2) # load 0x5698174f7ea02ee5 from memory into f23
li x3, 0xea87edcbc145aff2 # load x3 with value 0xea87edcbc145aff2
sd x3, 0(x2) # store 0xea87edcbc145aff2 in memory
fld f19, 0(x2) # load 0xea87edcbc145aff2 from memory into f19
fdiv.d f10, f23, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x1, 0xe4f6a0c4accc7145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2632163fd3caddc # load x3 with value 0xa2632163fd3caddc
sd x3, 0(x2) # store 0xa2632163fd3caddc in memory
fld f24, 0(x2) # load 0xa2632163fd3caddc from memory into f24
li x3, 0x51ae02febd097373 # load x3 with value 0x51ae02febd097373
sd x3, 0(x2) # store 0x51ae02febd097373 in memory
fld f17, 0(x2) # load 0x51ae02febd097373 from memory into f17
fdiv.d f1, f24, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x24, 0x5dfe3a12bae612a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcad1f50fca18a1fa # load x3 with value 0xcad1f50fca18a1fa
sd x3, 0(x2) # store 0xcad1f50fca18a1fa in memory
fld f25, 0(x2) # load 0xcad1f50fca18a1fa from memory into f25
li x3, 0xca5fcd8cf5ea1d3f # load x3 with value 0xca5fcd8cf5ea1d3f
sd x3, 0(x2) # store 0xca5fcd8cf5ea1d3f in memory
fld f23, 0(x2) # load 0xca5fcd8cf5ea1d3f from memory into f23
fdiv.d f24, f25, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x23, 0xd1b2a49ed3c051d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ed2e18264f8102a # load x3 with value 0x4ed2e18264f8102a
sd x3, 0(x2) # store 0x4ed2e18264f8102a in memory
fld f26, 0(x2) # load 0x4ed2e18264f8102a from memory into f26
li x3, 0x5d8816d48ca03381 # load x3 with value 0x5d8816d48ca03381
sd x3, 0(x2) # store 0x5d8816d48ca03381 in memory
fld f20, 0(x2) # load 0x5d8816d48ca03381 from memory into f20
fdiv.d f23, f26, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x27, 0x39d3974bb30527c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x691164f72b4e6898 # load x3 with value 0x691164f72b4e6898
sd x3, 0(x2) # store 0x691164f72b4e6898 in memory
fld f27, 0(x2) # load 0x691164f72b4e6898 from memory into f27
li x3, 0x6785427453e774f3 # load x3 with value 0x6785427453e774f3
sd x3, 0(x2) # store 0x6785427453e774f3 in memory
fld f18, 0(x2) # load 0x6785427453e774f3 from memory into f18
fdiv.d f27, f27, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x22, 0xae1269b256c08b3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70d2a1f33aea407f # load x3 with value 0x70d2a1f33aea407f
sd x3, 0(x2) # store 0x70d2a1f33aea407f in memory
fld f28, 0(x2) # load 0x70d2a1f33aea407f from memory into f28
li x3, 0xe14bcc0ef3156c92 # load x3 with value 0xe14bcc0ef3156c92
sd x3, 0(x2) # store 0xe14bcc0ef3156c92 in memory
fld f10, 0(x2) # load 0xe14bcc0ef3156c92 from memory into f10
fdiv.d f22, f28, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x11, 0x47bda2f41b3351e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5570b91b6b9f3e18 # load x3 with value 0x5570b91b6b9f3e18
sd x3, 0(x2) # store 0x5570b91b6b9f3e18 in memory
fld f29, 0(x2) # load 0x5570b91b6b9f3e18 from memory into f29
li x3, 0x3c7b811531be4f30 # load x3 with value 0x3c7b811531be4f30
sd x3, 0(x2) # store 0x3c7b811531be4f30 in memory
fld f4, 0(x2) # load 0x3c7b811531be4f30 from memory into f4
fdiv.d f11, f29, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x25, 0xaa3b09ae7cdb7704 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb26b4136bcde6fa7 # load x3 with value 0xb26b4136bcde6fa7
sd x3, 0(x2) # store 0xb26b4136bcde6fa7 in memory
fld f30, 0(x2) # load 0xb26b4136bcde6fa7 from memory into f30
li x3, 0xc8fced186b3d76b9 # load x3 with value 0xc8fced186b3d76b9
sd x3, 0(x2) # store 0xc8fced186b3d76b9 in memory
fld f26, 0(x2) # load 0xc8fced186b3d76b9 from memory into f26
fdiv.d f25, f30, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x16, 0xceb5eee9273b5087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8e62cff38effa69 # load x3 with value 0xe8e62cff38effa69
sd x3, 0(x2) # store 0xe8e62cff38effa69 in memory
fld f31, 0(x2) # load 0xe8e62cff38effa69 from memory into f31
li x3, 0x25fc6a4645b86765 # load x3 with value 0x25fc6a4645b86765
sd x3, 0(x2) # store 0x25fc6a4645b86765 in memory
fld f4, 0(x2) # load 0x25fc6a4645b86765 from memory into f4
fdiv.d f16, f31, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x30, 0xde3fab7f2870396c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19fa9b6a0c5a5ea5 # load x3 with value 0x19fa9b6a0c5a5ea5
sd x3, 0(x2) # store 0x19fa9b6a0c5a5ea5 in memory
fld f23, 0(x2) # load 0x19fa9b6a0c5a5ea5 from memory into f23
li x3, 0x5e5c4b3e83cebde6 # load x3 with value 0x5e5c4b3e83cebde6
sd x3, 0(x2) # store 0x5e5c4b3e83cebde6 in memory
fld f0, 0(x2) # load 0x5e5c4b3e83cebde6 from memory into f0
fdiv.d f30, f23, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x3, 0xe33b74bc29b26ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc16b0cb7d121a765 # load x3 with value 0xc16b0cb7d121a765
sd x3, 0(x2) # store 0xc16b0cb7d121a765 in memory
fld f22, 0(x2) # load 0xc16b0cb7d121a765 from memory into f22
li x3, 0x6f5d2f32ea178c44 # load x3 with value 0x6f5d2f32ea178c44
sd x3, 0(x2) # store 0x6f5d2f32ea178c44 in memory
fld f1, 0(x2) # load 0x6f5d2f32ea178c44 from memory into f1
fdiv.d f3, f22, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x30, 0x8c135c91ecbfae0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12fb24b5f2b59baa # load x3 with value 0x12fb24b5f2b59baa
sd x3, 0(x2) # store 0x12fb24b5f2b59baa in memory
fld f5, 0(x2) # load 0x12fb24b5f2b59baa from memory into f5
li x3, 0x1bb50a03d52aa760 # load x3 with value 0x1bb50a03d52aa760
sd x3, 0(x2) # store 0x1bb50a03d52aa760 in memory
fld f2, 0(x2) # load 0x1bb50a03d52aa760 from memory into f2
fdiv.d f30, f5, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x19, 0x8896364d7e0fc644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00af55a1dbe2b83c # load x3 with value 0x00af55a1dbe2b83c
sd x3, 0(x2) # store 0x00af55a1dbe2b83c in memory
fld f13, 0(x2) # load 0x00af55a1dbe2b83c from memory into f13
li x3, 0x921993ad6974e488 # load x3 with value 0x921993ad6974e488
sd x3, 0(x2) # store 0x921993ad6974e488 in memory
fld f3, 0(x2) # load 0x921993ad6974e488 from memory into f3
fdiv.d f19, f13, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x30, 0xb64346ddd6aa3b4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8ed3f8ec24b3c0c # load x3 with value 0xd8ed3f8ec24b3c0c
sd x3, 0(x2) # store 0xd8ed3f8ec24b3c0c in memory
fld f16, 0(x2) # load 0xd8ed3f8ec24b3c0c from memory into f16
li x3, 0x3ab2a26aa2edf6dc # load x3 with value 0x3ab2a26aa2edf6dc
sd x3, 0(x2) # store 0x3ab2a26aa2edf6dc in memory
fld f4, 0(x2) # load 0x3ab2a26aa2edf6dc from memory into f4
fdiv.d f30, f16, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x24, 0xbe11df91ac7df595 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34bf2e64622e4cf9 # load x3 with value 0x34bf2e64622e4cf9
sd x3, 0(x2) # store 0x34bf2e64622e4cf9 in memory
fld f14, 0(x2) # load 0x34bf2e64622e4cf9 from memory into f14
li x3, 0xb506d91a0bae8bb9 # load x3 with value 0xb506d91a0bae8bb9
sd x3, 0(x2) # store 0xb506d91a0bae8bb9 in memory
fld f5, 0(x2) # load 0xb506d91a0bae8bb9 from memory into f5
fdiv.d f24, f14, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x27, 0xa04e93f336d9b52f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8439431c185bf48d # load x3 with value 0x8439431c185bf48d
sd x3, 0(x2) # store 0x8439431c185bf48d in memory
fld f17, 0(x2) # load 0x8439431c185bf48d from memory into f17
li x3, 0x4a2bb9df89226b24 # load x3 with value 0x4a2bb9df89226b24
sd x3, 0(x2) # store 0x4a2bb9df89226b24 in memory
fld f6, 0(x2) # load 0x4a2bb9df89226b24 from memory into f6
fdiv.d f27, f17, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x24, 0xf2ee52988e435b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39fe532466bf020b # load x3 with value 0x39fe532466bf020b
sd x3, 0(x2) # store 0x39fe532466bf020b in memory
fld f10, 0(x2) # load 0x39fe532466bf020b from memory into f10
li x3, 0x604df31c5317377e # load x3 with value 0x604df31c5317377e
sd x3, 0(x2) # store 0x604df31c5317377e in memory
fld f7, 0(x2) # load 0x604df31c5317377e from memory into f7
fdiv.d f24, f10, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x7, 0x60bf5ccc9a062e05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80f56412819ab1c9 # load x3 with value 0x80f56412819ab1c9
sd x3, 0(x2) # store 0x80f56412819ab1c9 in memory
fld f3, 0(x2) # load 0x80f56412819ab1c9 from memory into f3
li x3, 0xa917daa9e85a751d # load x3 with value 0xa917daa9e85a751d
sd x3, 0(x2) # store 0xa917daa9e85a751d in memory
fld f8, 0(x2) # load 0xa917daa9e85a751d from memory into f8
fdiv.d f7, f3, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x24, 0xa81e9040718371c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9f3f7de2cef27cc # load x3 with value 0xf9f3f7de2cef27cc
sd x3, 0(x2) # store 0xf9f3f7de2cef27cc in memory
fld f27, 0(x2) # load 0xf9f3f7de2cef27cc from memory into f27
li x3, 0x459853a4868cc6f4 # load x3 with value 0x459853a4868cc6f4
sd x3, 0(x2) # store 0x459853a4868cc6f4 in memory
fld f9, 0(x2) # load 0x459853a4868cc6f4 from memory into f9
fdiv.d f24, f27, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x9, 0x4c7d84b92b534014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9a0aaca90a66785 # load x3 with value 0xa9a0aaca90a66785
sd x3, 0(x2) # store 0xa9a0aaca90a66785 in memory
fld f26, 0(x2) # load 0xa9a0aaca90a66785 from memory into f26
li x3, 0xbed23429ea459fe3 # load x3 with value 0xbed23429ea459fe3
sd x3, 0(x2) # store 0xbed23429ea459fe3 in memory
fld f10, 0(x2) # load 0xbed23429ea459fe3 from memory into f10
fdiv.d f9, f26, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x31, 0x00211b3580c49750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x413315e472b5189f # load x3 with value 0x413315e472b5189f
sd x3, 0(x2) # store 0x413315e472b5189f in memory
fld f3, 0(x2) # load 0x413315e472b5189f from memory into f3
li x3, 0xba33e92ee96dd953 # load x3 with value 0xba33e92ee96dd953
sd x3, 0(x2) # store 0xba33e92ee96dd953 in memory
fld f11, 0(x2) # load 0xba33e92ee96dd953 from memory into f11
fdiv.d f31, f3, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x15, 0x79b06fe1f5ae4398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c78fca6a12bd059 # load x3 with value 0x1c78fca6a12bd059
sd x3, 0(x2) # store 0x1c78fca6a12bd059 in memory
fld f11, 0(x2) # load 0x1c78fca6a12bd059 from memory into f11
li x3, 0x7286f0fe88d10e52 # load x3 with value 0x7286f0fe88d10e52
sd x3, 0(x2) # store 0x7286f0fe88d10e52 in memory
fld f12, 0(x2) # load 0x7286f0fe88d10e52 from memory into f12
fdiv.d f15, f11, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x9, 0xc400eb4201749642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7648a9c0291a05b4 # load x3 with value 0x7648a9c0291a05b4
sd x3, 0(x2) # store 0x7648a9c0291a05b4 in memory
fld f12, 0(x2) # load 0x7648a9c0291a05b4 from memory into f12
li x3, 0x8a8ec538f6f0b573 # load x3 with value 0x8a8ec538f6f0b573
sd x3, 0(x2) # store 0x8a8ec538f6f0b573 in memory
fld f13, 0(x2) # load 0x8a8ec538f6f0b573 from memory into f13
fdiv.d f9, f12, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x28, 0xdef721933d76d17d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4619d72c842c27ed # load x3 with value 0x4619d72c842c27ed
sd x3, 0(x2) # store 0x4619d72c842c27ed in memory
fld f16, 0(x2) # load 0x4619d72c842c27ed from memory into f16
li x3, 0x7b9a8dc52efdf736 # load x3 with value 0x7b9a8dc52efdf736
sd x3, 0(x2) # store 0x7b9a8dc52efdf736 in memory
fld f14, 0(x2) # load 0x7b9a8dc52efdf736 from memory into f14
fdiv.d f28, f16, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x31, 0xda3550be259eb6f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9dd21a8951765777 # load x3 with value 0x9dd21a8951765777
sd x3, 0(x2) # store 0x9dd21a8951765777 in memory
fld f28, 0(x2) # load 0x9dd21a8951765777 from memory into f28
li x3, 0x101a991e27f21335 # load x3 with value 0x101a991e27f21335
sd x3, 0(x2) # store 0x101a991e27f21335 in memory
fld f15, 0(x2) # load 0x101a991e27f21335 from memory into f15
fdiv.d f31, f28, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x13, 0xccc54b6a14bfd69d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7226c5f4d57cc1af # load x3 with value 0x7226c5f4d57cc1af
sd x3, 0(x2) # store 0x7226c5f4d57cc1af in memory
fld f23, 0(x2) # load 0x7226c5f4d57cc1af from memory into f23
li x3, 0x2eaf3304621f6444 # load x3 with value 0x2eaf3304621f6444
sd x3, 0(x2) # store 0x2eaf3304621f6444 in memory
fld f16, 0(x2) # load 0x2eaf3304621f6444 from memory into f16
fdiv.d f13, f23, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x29, 0x3130a6b311d578b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x036b4ef3b97f096c # load x3 with value 0x036b4ef3b97f096c
sd x3, 0(x2) # store 0x036b4ef3b97f096c in memory
fld f12, 0(x2) # load 0x036b4ef3b97f096c from memory into f12
li x3, 0x74666eb16c84d0ef # load x3 with value 0x74666eb16c84d0ef
sd x3, 0(x2) # store 0x74666eb16c84d0ef in memory
fld f17, 0(x2) # load 0x74666eb16c84d0ef from memory into f17
fdiv.d f29, f12, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x20, 0x1b1b581b39400099 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79e9a87996a5266f # load x3 with value 0x79e9a87996a5266f
sd x3, 0(x2) # store 0x79e9a87996a5266f in memory
fld f11, 0(x2) # load 0x79e9a87996a5266f from memory into f11
li x3, 0x10dbd58011daa7fe # load x3 with value 0x10dbd58011daa7fe
sd x3, 0(x2) # store 0x10dbd58011daa7fe in memory
fld f18, 0(x2) # load 0x10dbd58011daa7fe from memory into f18
fdiv.d f20, f11, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x23, 0x2588e6f938f65333 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c3fbbf21c099d3a # load x3 with value 0x0c3fbbf21c099d3a
sd x3, 0(x2) # store 0x0c3fbbf21c099d3a in memory
fld f14, 0(x2) # load 0x0c3fbbf21c099d3a from memory into f14
li x3, 0xc4411bf403414cc9 # load x3 with value 0xc4411bf403414cc9
sd x3, 0(x2) # store 0xc4411bf403414cc9 in memory
fld f19, 0(x2) # load 0xc4411bf403414cc9 from memory into f19
fdiv.d f23, f14, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x3, 0x808d7053797713eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee2455996e8fa648 # load x3 with value 0xee2455996e8fa648
sd x3, 0(x2) # store 0xee2455996e8fa648 in memory
fld f31, 0(x2) # load 0xee2455996e8fa648 from memory into f31
li x3, 0xb016464fecaca27a # load x3 with value 0xb016464fecaca27a
sd x3, 0(x2) # store 0xb016464fecaca27a in memory
fld f20, 0(x2) # load 0xb016464fecaca27a from memory into f20
fdiv.d f3, f31, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x21, 0x986c0a4eb3eb88fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e828b09e817580d # load x3 with value 0x8e828b09e817580d
sd x3, 0(x2) # store 0x8e828b09e817580d in memory
fld f6, 0(x2) # load 0x8e828b09e817580d from memory into f6
li x3, 0x49b5ee0315991afd # load x3 with value 0x49b5ee0315991afd
sd x3, 0(x2) # store 0x49b5ee0315991afd in memory
fld f21, 0(x2) # load 0x49b5ee0315991afd from memory into f21
fdiv.d f21, f6, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x11, 0x0ca703106a9cd7c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x812196e651983cff # load x3 with value 0x812196e651983cff
sd x3, 0(x2) # store 0x812196e651983cff in memory
fld f8, 0(x2) # load 0x812196e651983cff from memory into f8
li x3, 0x6784676add40a4da # load x3 with value 0x6784676add40a4da
sd x3, 0(x2) # store 0x6784676add40a4da in memory
fld f22, 0(x2) # load 0x6784676add40a4da from memory into f22
fdiv.d f11, f8, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x15, 0x8e9e48781ef43e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffec093f8712622e # load x3 with value 0xffec093f8712622e
sd x3, 0(x2) # store 0xffec093f8712622e in memory
fld f26, 0(x2) # load 0xffec093f8712622e from memory into f26
li x3, 0x4a53425633b69b3e # load x3 with value 0x4a53425633b69b3e
sd x3, 0(x2) # store 0x4a53425633b69b3e in memory
fld f23, 0(x2) # load 0x4a53425633b69b3e from memory into f23
fdiv.d f15, f26, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x9, 0x46b64a2a7c95fe18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf18b31fef19ac472 # load x3 with value 0xf18b31fef19ac472
sd x3, 0(x2) # store 0xf18b31fef19ac472 in memory
fld f31, 0(x2) # load 0xf18b31fef19ac472 from memory into f31
li x3, 0x8d331e53e2a50146 # load x3 with value 0x8d331e53e2a50146
sd x3, 0(x2) # store 0x8d331e53e2a50146 in memory
fld f24, 0(x2) # load 0x8d331e53e2a50146 from memory into f24
fdiv.d f9, f31, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x15, 0x0d61b9ee0d3f554f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1db1a5dfee6fb3c7 # load x3 with value 0x1db1a5dfee6fb3c7
sd x3, 0(x2) # store 0x1db1a5dfee6fb3c7 in memory
fld f22, 0(x2) # load 0x1db1a5dfee6fb3c7 from memory into f22
li x3, 0x0cc1427250a0ae7b # load x3 with value 0x0cc1427250a0ae7b
sd x3, 0(x2) # store 0x0cc1427250a0ae7b in memory
fld f25, 0(x2) # load 0x0cc1427250a0ae7b from memory into f25
fdiv.d f15, f22, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x23, 0x57048d4b0cabb554 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeaf22f6e408c87a7 # load x3 with value 0xeaf22f6e408c87a7
sd x3, 0(x2) # store 0xeaf22f6e408c87a7 in memory
fld f14, 0(x2) # load 0xeaf22f6e408c87a7 from memory into f14
li x3, 0x9255945812d73d67 # load x3 with value 0x9255945812d73d67
sd x3, 0(x2) # store 0x9255945812d73d67 in memory
fld f26, 0(x2) # load 0x9255945812d73d67 from memory into f26
fdiv.d f23, f14, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x8, 0xfeecdc7799e5702f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d838cba99f4384d # load x3 with value 0x4d838cba99f4384d
sd x3, 0(x2) # store 0x4d838cba99f4384d in memory
fld f18, 0(x2) # load 0x4d838cba99f4384d from memory into f18
li x3, 0xcd0b8aace6ddb741 # load x3 with value 0xcd0b8aace6ddb741
sd x3, 0(x2) # store 0xcd0b8aace6ddb741 in memory
fld f27, 0(x2) # load 0xcd0b8aace6ddb741 from memory into f27
fdiv.d f8, f18, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x6, 0x41a99359ebee73f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb89c5403695732ed # load x3 with value 0xb89c5403695732ed
sd x3, 0(x2) # store 0xb89c5403695732ed in memory
fld f3, 0(x2) # load 0xb89c5403695732ed from memory into f3
li x3, 0x8af9477f4cf0be6a # load x3 with value 0x8af9477f4cf0be6a
sd x3, 0(x2) # store 0x8af9477f4cf0be6a in memory
fld f28, 0(x2) # load 0x8af9477f4cf0be6a from memory into f28
fdiv.d f6, f3, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x11, 0xc70f3e3bea304af0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd420604cc4e02cf # load x3 with value 0xcd420604cc4e02cf
sd x3, 0(x2) # store 0xcd420604cc4e02cf in memory
fld f27, 0(x2) # load 0xcd420604cc4e02cf from memory into f27
li x3, 0xbb856f42ad38fe29 # load x3 with value 0xbb856f42ad38fe29
sd x3, 0(x2) # store 0xbb856f42ad38fe29 in memory
fld f29, 0(x2) # load 0xbb856f42ad38fe29 from memory into f29
fdiv.d f11, f27, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x25, 0xb9d68cf73f9f8440 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b4e8a96a0bd3db4 # load x3 with value 0x4b4e8a96a0bd3db4
sd x3, 0(x2) # store 0x4b4e8a96a0bd3db4 in memory
fld f12, 0(x2) # load 0x4b4e8a96a0bd3db4 from memory into f12
li x3, 0xdd9a91f5dd259733 # load x3 with value 0xdd9a91f5dd259733
sd x3, 0(x2) # store 0xdd9a91f5dd259733 in memory
fld f30, 0(x2) # load 0xdd9a91f5dd259733 from memory into f30
fdiv.d f25, f12, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x1, 0x24f85d31d6045a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44484bb54e54e363 # load x3 with value 0x44484bb54e54e363
sd x3, 0(x2) # store 0x44484bb54e54e363 in memory
fld f11, 0(x2) # load 0x44484bb54e54e363 from memory into f11
li x3, 0xd39f3398a8877760 # load x3 with value 0xd39f3398a8877760
sd x3, 0(x2) # store 0xd39f3398a8877760 in memory
fld f31, 0(x2) # load 0xd39f3398a8877760 from memory into f31
fdiv.d f1, f11, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
