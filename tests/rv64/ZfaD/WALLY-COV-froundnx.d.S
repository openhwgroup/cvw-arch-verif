///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfaD//WALLY-COV-froundnx.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.994106
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
froundnx.d f16, f12 # perform first operation
froundnx.d f20, f16 # perform second operation

# Testcase cmp_gpr_hazard raw test
froundnx.d f19, f16 # perform first operation
froundnx.d f27, f15 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.d f23, f12 # perform first operation
froundnx.d f23, f4 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.d f12, f2 # perform first operation
froundnx.d f12, f21 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.d f4, f7 # perform first operation
froundnx.d f7, f5 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.d f11, f8 # perform first operation
froundnx.d f15, f10 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x44c584df0efed52c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee684b987303a3b8 # load x3 with value 0xee684b987303a3b8
sd x3, 0(x2) # store 0xee684b987303a3b8 in memory
fld f0, 0(x2) # load 0xee684b987303a3b8 from memory into f0
froundnx.d f0, f0 # perform operation
froundnx.d f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xfbeb3c156435b436 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93b8f0ccf1e60adc # load x3 with value 0x93b8f0ccf1e60adc
sd x3, 0(x2) # store 0x93b8f0ccf1e60adc in memory
fld f1, 0(x2) # load 0x93b8f0ccf1e60adc from memory into f1
froundnx.d f1, f1 # perform operation
froundnx.d f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xcc718577bb0c757b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe2f0098d49dd71f # load x3 with value 0xfe2f0098d49dd71f
sd x3, 0(x2) # store 0xfe2f0098d49dd71f in memory
fld f2, 0(x2) # load 0xfe2f0098d49dd71f from memory into f2
froundnx.d f2, f2 # perform operation
froundnx.d f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x1ac339e360e4bbda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf347f8b914833e8 # load x3 with value 0xaf347f8b914833e8
sd x3, 0(x2) # store 0xaf347f8b914833e8 in memory
fld f3, 0(x2) # load 0xaf347f8b914833e8 from memory into f3
froundnx.d f3, f3 # perform operation
froundnx.d f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xac656c647e50940c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28b7102517984b2d # load x3 with value 0x28b7102517984b2d
sd x3, 0(x2) # store 0x28b7102517984b2d in memory
fld f4, 0(x2) # load 0x28b7102517984b2d from memory into f4
froundnx.d f4, f4 # perform operation
froundnx.d f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x1fd3df15a3367daf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x288ad84391fa94d2 # load x3 with value 0x288ad84391fa94d2
sd x3, 0(x2) # store 0x288ad84391fa94d2 in memory
fld f5, 0(x2) # load 0x288ad84391fa94d2 from memory into f5
froundnx.d f5, f5 # perform operation
froundnx.d f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x01a2b6ea3c50a99e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd7d1aa1c8754f97 # load x3 with value 0xdd7d1aa1c8754f97
sd x3, 0(x2) # store 0xdd7d1aa1c8754f97 in memory
fld f6, 0(x2) # load 0xdd7d1aa1c8754f97 from memory into f6
froundnx.d f6, f6 # perform operation
froundnx.d f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x903b77b053f52af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba651c71a39b9ed4 # load x3 with value 0xba651c71a39b9ed4
sd x3, 0(x2) # store 0xba651c71a39b9ed4 in memory
fld f7, 0(x2) # load 0xba651c71a39b9ed4 from memory into f7
froundnx.d f7, f7 # perform operation
froundnx.d f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xcbdee8997773305e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbad0e150ae2bc18 # load x3 with value 0xcbad0e150ae2bc18
sd x3, 0(x2) # store 0xcbad0e150ae2bc18 in memory
fld f8, 0(x2) # load 0xcbad0e150ae2bc18 from memory into f8
froundnx.d f8, f8 # perform operation
froundnx.d f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xd89227e01c423e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa5a9aa1553cf16a # load x3 with value 0xaa5a9aa1553cf16a
sd x3, 0(x2) # store 0xaa5a9aa1553cf16a in memory
fld f9, 0(x2) # load 0xaa5a9aa1553cf16a from memory into f9
froundnx.d f9, f9 # perform operation
froundnx.d f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x56120c435cefa9bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8d982c95a9fea20 # load x3 with value 0xe8d982c95a9fea20
sd x3, 0(x2) # store 0xe8d982c95a9fea20 in memory
fld f10, 0(x2) # load 0xe8d982c95a9fea20 from memory into f10
froundnx.d f10, f10 # perform operation
froundnx.d f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xb87a50e67c8fa4df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbbaa51f5c1efc17 # load x3 with value 0xdbbaa51f5c1efc17
sd x3, 0(x2) # store 0xdbbaa51f5c1efc17 in memory
fld f11, 0(x2) # load 0xdbbaa51f5c1efc17 from memory into f11
froundnx.d f11, f11 # perform operation
froundnx.d f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x32efe106bba10002 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96cee4857a49ae0a # load x3 with value 0x96cee4857a49ae0a
sd x3, 0(x2) # store 0x96cee4857a49ae0a in memory
fld f12, 0(x2) # load 0x96cee4857a49ae0a from memory into f12
froundnx.d f12, f12 # perform operation
froundnx.d f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x00757375f3969bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab8a44766c816740 # load x3 with value 0xab8a44766c816740
sd x3, 0(x2) # store 0xab8a44766c816740 in memory
fld f13, 0(x2) # load 0xab8a44766c816740 from memory into f13
froundnx.d f13, f13 # perform operation
froundnx.d f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x3ebea077eae88a60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe27b17a3aa974393 # load x3 with value 0xe27b17a3aa974393
sd x3, 0(x2) # store 0xe27b17a3aa974393 in memory
fld f14, 0(x2) # load 0xe27b17a3aa974393 from memory into f14
froundnx.d f14, f14 # perform operation
froundnx.d f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x01aee8fbe7663473 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9237c359deb7f659 # load x3 with value 0x9237c359deb7f659
sd x3, 0(x2) # store 0x9237c359deb7f659 in memory
fld f15, 0(x2) # load 0x9237c359deb7f659 from memory into f15
froundnx.d f15, f15 # perform operation
froundnx.d f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xd1e3dc07505b5304 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x934cbc57195951b8 # load x3 with value 0x934cbc57195951b8
sd x3, 0(x2) # store 0x934cbc57195951b8 in memory
fld f16, 0(x2) # load 0x934cbc57195951b8 from memory into f16
froundnx.d f16, f16 # perform operation
froundnx.d f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xa290a6e7e6442c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe63c44847cad39f7 # load x3 with value 0xe63c44847cad39f7
sd x3, 0(x2) # store 0xe63c44847cad39f7 in memory
fld f17, 0(x2) # load 0xe63c44847cad39f7 from memory into f17
froundnx.d f17, f17 # perform operation
froundnx.d f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x1ed596f95b27da2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7808452ba1c2c8b # load x3 with value 0xa7808452ba1c2c8b
sd x3, 0(x2) # store 0xa7808452ba1c2c8b in memory
fld f18, 0(x2) # load 0xa7808452ba1c2c8b from memory into f18
froundnx.d f18, f18 # perform operation
froundnx.d f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x9f3c737920f80513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x611b8d6320d0a31d # load x3 with value 0x611b8d6320d0a31d
sd x3, 0(x2) # store 0x611b8d6320d0a31d in memory
fld f19, 0(x2) # load 0x611b8d6320d0a31d from memory into f19
froundnx.d f19, f19 # perform operation
froundnx.d f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x71cc386c85d9299b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee8f7142233d3287 # load x3 with value 0xee8f7142233d3287
sd x3, 0(x2) # store 0xee8f7142233d3287 in memory
fld f20, 0(x2) # load 0xee8f7142233d3287 from memory into f20
froundnx.d f20, f20 # perform operation
froundnx.d f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x771e8f763b827e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d749302d6d9f911 # load x3 with value 0x9d749302d6d9f911
sd x3, 0(x2) # store 0x9d749302d6d9f911 in memory
fld f21, 0(x2) # load 0x9d749302d6d9f911 from memory into f21
froundnx.d f21, f21 # perform operation
froundnx.d f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xbf43e26226f70d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9314ad56a1556326 # load x3 with value 0x9314ad56a1556326
sd x3, 0(x2) # store 0x9314ad56a1556326 in memory
fld f22, 0(x2) # load 0x9314ad56a1556326 from memory into f22
froundnx.d f22, f22 # perform operation
froundnx.d f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x67167bc56c3ba22a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e4e8b470410c0e8 # load x3 with value 0x8e4e8b470410c0e8
sd x3, 0(x2) # store 0x8e4e8b470410c0e8 in memory
fld f23, 0(x2) # load 0x8e4e8b470410c0e8 from memory into f23
froundnx.d f23, f23 # perform operation
froundnx.d f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x150d4819dd58b7e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd1dcf69abe6b238 # load x3 with value 0xcd1dcf69abe6b238
sd x3, 0(x2) # store 0xcd1dcf69abe6b238 in memory
fld f24, 0(x2) # load 0xcd1dcf69abe6b238 from memory into f24
froundnx.d f24, f24 # perform operation
froundnx.d f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x40d5b38c054452b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff9aa242929dfae7 # load x3 with value 0xff9aa242929dfae7
sd x3, 0(x2) # store 0xff9aa242929dfae7 in memory
fld f25, 0(x2) # load 0xff9aa242929dfae7 from memory into f25
froundnx.d f25, f25 # perform operation
froundnx.d f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x2e0675a740684b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc634ab6ad2ec3470 # load x3 with value 0xc634ab6ad2ec3470
sd x3, 0(x2) # store 0xc634ab6ad2ec3470 in memory
fld f26, 0(x2) # load 0xc634ab6ad2ec3470 from memory into f26
froundnx.d f26, f26 # perform operation
froundnx.d f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x87bd6dfd23b1e6d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e8cbefce3de8162 # load x3 with value 0x1e8cbefce3de8162
sd x3, 0(x2) # store 0x1e8cbefce3de8162 in memory
fld f27, 0(x2) # load 0x1e8cbefce3de8162 from memory into f27
froundnx.d f27, f27 # perform operation
froundnx.d f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x509ec69bd26605ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf37ed9e9d0067b18 # load x3 with value 0xf37ed9e9d0067b18
sd x3, 0(x2) # store 0xf37ed9e9d0067b18 in memory
fld f28, 0(x2) # load 0xf37ed9e9d0067b18 from memory into f28
froundnx.d f28, f28 # perform operation
froundnx.d f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xb4b8fe7947de0f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7420487eb735812f # load x3 with value 0x7420487eb735812f
sd x3, 0(x2) # store 0x7420487eb735812f in memory
fld f29, 0(x2) # load 0x7420487eb735812f from memory into f29
froundnx.d f29, f29 # perform operation
froundnx.d f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xfd4e1fe96e81bf8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18b463306d51aa2e # load x3 with value 0x18b463306d51aa2e
sd x3, 0(x2) # store 0x18b463306d51aa2e in memory
fld f30, 0(x2) # load 0x18b463306d51aa2e from memory into f30
froundnx.d f30, f30 # perform operation
froundnx.d f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x9bb3c94fc6eca877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebb1d0aaa8cbf205 # load x3 with value 0xebb1d0aaa8cbf205
sd x3, 0(x2) # store 0xebb1d0aaa8cbf205 in memory
fld f31, 0(x2) # load 0xebb1d0aaa8cbf205 from memory into f31
froundnx.d f31, f31 # perform operation
froundnx.d f31, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x65487ded80e9f3db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d325760222ceb33 # load x3 with value 0x7d325760222ceb33
sd x3, 0(x2) # store 0x7d325760222ceb33 in memory
fld f5, 0(x2) # load 0x7d325760222ceb33 from memory into f5
froundnx.d f0, f5 # perform operation
froundnx.d f0, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xd2f59e7d7a8c88d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7fb75339466e657 # load x3 with value 0xe7fb75339466e657
sd x3, 0(x2) # store 0xe7fb75339466e657 in memory
fld f5, 0(x2) # load 0xe7fb75339466e657 from memory into f5
froundnx.d f1, f5 # perform operation
froundnx.d f1, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xa5e6400f41ec133d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0996ff356215ec2e # load x3 with value 0x0996ff356215ec2e
sd x3, 0(x2) # store 0x0996ff356215ec2e in memory
fld f6, 0(x2) # load 0x0996ff356215ec2e from memory into f6
froundnx.d f2, f6 # perform operation
froundnx.d f2, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x662ad2b659423fde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75a44b8f7a645fe3 # load x3 with value 0x75a44b8f7a645fe3
sd x3, 0(x2) # store 0x75a44b8f7a645fe3 in memory
fld f25, 0(x2) # load 0x75a44b8f7a645fe3 from memory into f25
froundnx.d f3, f25 # perform operation
froundnx.d f3, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xec2cc19e1d742ef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9286f711882d9699 # load x3 with value 0x9286f711882d9699
sd x3, 0(x2) # store 0x9286f711882d9699 in memory
fld f28, 0(x2) # load 0x9286f711882d9699 from memory into f28
froundnx.d f4, f28 # perform operation
froundnx.d f4, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xc24055e6db5fbaec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf29a083602a79ef2 # load x3 with value 0xf29a083602a79ef2
sd x3, 0(x2) # store 0xf29a083602a79ef2 in memory
fld f12, 0(x2) # load 0xf29a083602a79ef2 from memory into f12
froundnx.d f5, f12 # perform operation
froundnx.d f5, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x821fd09219723006 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c139a04e854ce6d # load x3 with value 0x5c139a04e854ce6d
sd x3, 0(x2) # store 0x5c139a04e854ce6d in memory
fld f18, 0(x2) # load 0x5c139a04e854ce6d from memory into f18
froundnx.d f6, f18 # perform operation
froundnx.d f6, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xde6d041a75008295 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71f9ee51d06a688f # load x3 with value 0x71f9ee51d06a688f
sd x3, 0(x2) # store 0x71f9ee51d06a688f in memory
fld f30, 0(x2) # load 0x71f9ee51d06a688f from memory into f30
froundnx.d f7, f30 # perform operation
froundnx.d f7, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x338a2a4636fd26fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf613e6edd3840915 # load x3 with value 0xf613e6edd3840915
sd x3, 0(x2) # store 0xf613e6edd3840915 in memory
fld f22, 0(x2) # load 0xf613e6edd3840915 from memory into f22
froundnx.d f8, f22 # perform operation
froundnx.d f8, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xef3ae44e7fba6fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x517c98c29c9b22cc # load x3 with value 0x517c98c29c9b22cc
sd x3, 0(x2) # store 0x517c98c29c9b22cc in memory
fld f15, 0(x2) # load 0x517c98c29c9b22cc from memory into f15
froundnx.d f9, f15 # perform operation
froundnx.d f9, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xa0a5c0faf35c70f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91656e1685816879 # load x3 with value 0x91656e1685816879
sd x3, 0(x2) # store 0x91656e1685816879 in memory
fld f4, 0(x2) # load 0x91656e1685816879 from memory into f4
froundnx.d f10, f4 # perform operation
froundnx.d f10, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x28e72ea9c2f37d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ea781ce4767789e # load x3 with value 0x8ea781ce4767789e
sd x3, 0(x2) # store 0x8ea781ce4767789e in memory
fld f15, 0(x2) # load 0x8ea781ce4767789e from memory into f15
froundnx.d f11, f15 # perform operation
froundnx.d f11, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x554af77a72310558 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf829833f71959e14 # load x3 with value 0xf829833f71959e14
sd x3, 0(x2) # store 0xf829833f71959e14 in memory
fld f14, 0(x2) # load 0xf829833f71959e14 from memory into f14
froundnx.d f12, f14 # perform operation
froundnx.d f12, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xa3ce915e443eb8a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9970e30a2bbaa379 # load x3 with value 0x9970e30a2bbaa379
sd x3, 0(x2) # store 0x9970e30a2bbaa379 in memory
fld f28, 0(x2) # load 0x9970e30a2bbaa379 from memory into f28
froundnx.d f13, f28 # perform operation
froundnx.d f13, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x7e5fa8c115ef8024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefb959a0f059874e # load x3 with value 0xefb959a0f059874e
sd x3, 0(x2) # store 0xefb959a0f059874e in memory
fld f31, 0(x2) # load 0xefb959a0f059874e from memory into f31
froundnx.d f14, f31 # perform operation
froundnx.d f14, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x6d33f4fac49b03dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08472d606767f738 # load x3 with value 0x08472d606767f738
sd x3, 0(x2) # store 0x08472d606767f738 in memory
fld f2, 0(x2) # load 0x08472d606767f738 from memory into f2
froundnx.d f15, f2 # perform operation
froundnx.d f15, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xcac8850be8406728 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd551accf975d416 # load x3 with value 0xcd551accf975d416
sd x3, 0(x2) # store 0xcd551accf975d416 in memory
fld f13, 0(x2) # load 0xcd551accf975d416 from memory into f13
froundnx.d f16, f13 # perform operation
froundnx.d f16, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xf4cfeb78d97f9ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb600c53ff8dd04d0 # load x3 with value 0xb600c53ff8dd04d0
sd x3, 0(x2) # store 0xb600c53ff8dd04d0 in memory
fld f12, 0(x2) # load 0xb600c53ff8dd04d0 from memory into f12
froundnx.d f17, f12 # perform operation
froundnx.d f17, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xff62aca0b6d2023e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x046c97729553f78a # load x3 with value 0x046c97729553f78a
sd x3, 0(x2) # store 0x046c97729553f78a in memory
fld f13, 0(x2) # load 0x046c97729553f78a from memory into f13
froundnx.d f18, f13 # perform operation
froundnx.d f18, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x7ee7f83fd0ffb8d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c59e458fb6b8402 # load x3 with value 0x6c59e458fb6b8402
sd x3, 0(x2) # store 0x6c59e458fb6b8402 in memory
fld f18, 0(x2) # load 0x6c59e458fb6b8402 from memory into f18
froundnx.d f19, f18 # perform operation
froundnx.d f19, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x962db217dd31a3c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c19df7f1a22d91a # load x3 with value 0x9c19df7f1a22d91a
sd x3, 0(x2) # store 0x9c19df7f1a22d91a in memory
fld f2, 0(x2) # load 0x9c19df7f1a22d91a from memory into f2
froundnx.d f20, f2 # perform operation
froundnx.d f20, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xa55a80a2f8df2d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x196bd56bcff8bdb7 # load x3 with value 0x196bd56bcff8bdb7
sd x3, 0(x2) # store 0x196bd56bcff8bdb7 in memory
fld f31, 0(x2) # load 0x196bd56bcff8bdb7 from memory into f31
froundnx.d f21, f31 # perform operation
froundnx.d f21, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xc565ac7793578ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x135c3c5926b2b191 # load x3 with value 0x135c3c5926b2b191
sd x3, 0(x2) # store 0x135c3c5926b2b191 in memory
fld f21, 0(x2) # load 0x135c3c5926b2b191 from memory into f21
froundnx.d f22, f21 # perform operation
froundnx.d f22, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xbcd3f2b68813ce22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d50a88523b0c2ff # load x3 with value 0x3d50a88523b0c2ff
sd x3, 0(x2) # store 0x3d50a88523b0c2ff in memory
fld f4, 0(x2) # load 0x3d50a88523b0c2ff from memory into f4
froundnx.d f23, f4 # perform operation
froundnx.d f23, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xbdea7181d15baed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4defdd4f57807e1d # load x3 with value 0x4defdd4f57807e1d
sd x3, 0(x2) # store 0x4defdd4f57807e1d in memory
fld f7, 0(x2) # load 0x4defdd4f57807e1d from memory into f7
froundnx.d f24, f7 # perform operation
froundnx.d f24, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x2d125d1e4ce7c8eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7224052e8dd71236 # load x3 with value 0x7224052e8dd71236
sd x3, 0(x2) # store 0x7224052e8dd71236 in memory
fld f21, 0(x2) # load 0x7224052e8dd71236 from memory into f21
froundnx.d f25, f21 # perform operation
froundnx.d f25, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x19e84e442a362665 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56a26bd0e8b70ce6 # load x3 with value 0x56a26bd0e8b70ce6
sd x3, 0(x2) # store 0x56a26bd0e8b70ce6 in memory
fld f1, 0(x2) # load 0x56a26bd0e8b70ce6 from memory into f1
froundnx.d f26, f1 # perform operation
froundnx.d f26, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xdbdd16d7ae35768c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5c2fc1cf78a7fdf # load x3 with value 0xa5c2fc1cf78a7fdf
sd x3, 0(x2) # store 0xa5c2fc1cf78a7fdf in memory
fld f23, 0(x2) # load 0xa5c2fc1cf78a7fdf from memory into f23
froundnx.d f27, f23 # perform operation
froundnx.d f27, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x16ac8a272a29403c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5636e064d1c2cbfc # load x3 with value 0x5636e064d1c2cbfc
sd x3, 0(x2) # store 0x5636e064d1c2cbfc in memory
fld f12, 0(x2) # load 0x5636e064d1c2cbfc from memory into f12
froundnx.d f28, f12 # perform operation
froundnx.d f28, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x8f8667f0213a9e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ece6fe92b13c0dc # load x3 with value 0x8ece6fe92b13c0dc
sd x3, 0(x2) # store 0x8ece6fe92b13c0dc in memory
fld f26, 0(x2) # load 0x8ece6fe92b13c0dc from memory into f26
froundnx.d f29, f26 # perform operation
froundnx.d f29, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xe58e3e57f0a6538f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa612afca0e68ddd0 # load x3 with value 0xa612afca0e68ddd0
sd x3, 0(x2) # store 0xa612afca0e68ddd0 in memory
fld f7, 0(x2) # load 0xa612afca0e68ddd0 from memory into f7
froundnx.d f30, f7 # perform operation
froundnx.d f30, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x206d5ab52da3ffb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4200c73b6da2f9ed # load x3 with value 0x4200c73b6da2f9ed
sd x3, 0(x2) # store 0x4200c73b6da2f9ed in memory
fld f9, 0(x2) # load 0x4200c73b6da2f9ed from memory into f9
froundnx.d f31, f9 # perform operation
froundnx.d f31, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x27, 0xae97824c8098b210 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
froundnx.d f27, f15 # perform operation
froundnx.d f27, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x16, 0x935ed4ce2c769fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
froundnx.d f16, f5 # perform operation
froundnx.d f16, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x28, 0xe54b2acc3f2eac00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
froundnx.d f28, f12 # perform operation
froundnx.d f28, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x18, 0x80e06b1b4b1ce853 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
froundnx.d f18, f31 # perform operation
froundnx.d f18, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x9, 0xf2a134d885a496c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
froundnx.d f9, f20 # perform operation
froundnx.d f9, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x14, 0x8bf9ea3120dc432a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
froundnx.d f14, f20 # perform operation
froundnx.d f14, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x11, 0xf90a9678e28930af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
froundnx.d f11, f22 # perform operation
froundnx.d f11, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x21, 0x9580953546eaacbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
froundnx.d f21, f25 # perform operation
froundnx.d f21, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x19, 0xf11f645e27cfe13b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
froundnx.d f19, f6 # perform operation
froundnx.d f19, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x11, 0x5b2d879d08f80bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
froundnx.d f11, f26 # perform operation
froundnx.d f11, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x20, 0x4a25ab630efa6a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
froundnx.d f20, f13 # perform operation
froundnx.d f20, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x17, 0x4c47e5a900c0e318 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
froundnx.d f17, f15 # perform operation
froundnx.d f17, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x23, 0xc76a41afe5512572 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
froundnx.d f23, f6 # perform operation
froundnx.d f23, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x4, 0x10aae22a5c5d358f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
froundnx.d f4, f1 # perform operation
froundnx.d f4, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x20, 0x146af4a97fed960c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
froundnx.d f20, f4 # perform operation
froundnx.d f20, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x9, 0x414bf00e2273e8b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
froundnx.d f9, f2 # perform operation
froundnx.d f9, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x5, 0xc44846a672261010 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
froundnx.d f5, f15 # perform operation
froundnx.d f5, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x21, 0x25229d4ad0ea4f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
froundnx.d f21, f15 # perform operation
froundnx.d f21, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x19, 0xa459fd2b4c527212 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
froundnx.d f19, f30 # perform operation
froundnx.d f19, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x16, 0xba1f638f9c873008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
froundnx.d f16, f12 # perform operation
froundnx.d f16, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x6, 0xacf68358d7920b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
froundnx.d f6, f23 # perform operation
froundnx.d f6, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x8, 0x0bbe6b90b97c8050 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
froundnx.d f8, f25 # perform operation
froundnx.d f8, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x30, 0xf40a7ff6edec733e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
froundnx.d f30, f8 # perform operation
froundnx.d f30, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x21, 0x7ddcacefd3b662bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
froundnx.d f21, f31 # perform operation
froundnx.d f21, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x28, 0xae1e4ef2b0579d30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
froundnx.d f28, f10 # perform operation
froundnx.d f28, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x24, 0xa2f3b4c3b950b16b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
froundnx.d f24, f1 # perform operation
froundnx.d f24, f1 # perform operation

# Testcase cp_frm
li x4, 0x6b04926a83284efd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63ef0840bb7e68b6 # load x3 with value 0x63ef0840bb7e68b6
sd x3, 0(x2) # store 0x63ef0840bb7e68b6 in memory
fld f3, 0(x2) # load 0x63ef0840bb7e68b6 from memory into f3
froundnx.d f4, f3 # perform operation
froundnx.d f4, f3, dyn # perform operation
froundnx.d f4, f3, rdn # perform operation
froundnx.d f4, f3, rmm # perform operation
froundnx.d f4, f3, rne # perform operation
froundnx.d f4, f3, rtz # perform operation
froundnx.d f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
froundnx.d f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
froundnx.d f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
froundnx.d f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
froundnx.d f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
froundnx.d f4, f3 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x5ceb7eea9d697325 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f0446739791f452 # load x3 with value 0x5f0446739791f452
sd x3, 0(x2) # store 0x5f0446739791f452 in memory
fld f25, 0(x2) # load 0x5f0446739791f452 from memory into f25
froundnx.d f0, f25 # perform operation
froundnx.d f0, f25 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x454421227e424e41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd5b255849122606 # load x3 with value 0xfd5b255849122606
sd x3, 0(x2) # store 0xfd5b255849122606 in memory
fld f13, 0(x2) # load 0xfd5b255849122606 from memory into f13
froundnx.d f1, f13 # perform operation
froundnx.d f1, f13 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x3ba7db1ec3d61a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x157d30c8302409c7 # load x3 with value 0x157d30c8302409c7
sd x3, 0(x2) # store 0x157d30c8302409c7 in memory
fld f20, 0(x2) # load 0x157d30c8302409c7 from memory into f20
froundnx.d f2, f20 # perform operation
froundnx.d f2, f20 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x882efe13b11b0de9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8a62be2c468d08e # load x3 with value 0xc8a62be2c468d08e
sd x3, 0(x2) # store 0xc8a62be2c468d08e in memory
fld f3, 0(x2) # load 0xc8a62be2c468d08e from memory into f3
froundnx.d f3, f3 # perform operation
froundnx.d f3, f3 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xebfa572686e9d907 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x757d29e6666c81a2 # load x3 with value 0x757d29e6666c81a2
sd x3, 0(x2) # store 0x757d29e6666c81a2 in memory
fld f29, 0(x2) # load 0x757d29e6666c81a2 from memory into f29
froundnx.d f4, f29 # perform operation
froundnx.d f4, f29 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xe74a9db1f1ba5f72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x165254b478fe1992 # load x3 with value 0x165254b478fe1992
sd x3, 0(x2) # store 0x165254b478fe1992 in memory
fld f21, 0(x2) # load 0x165254b478fe1992 from memory into f21
froundnx.d f5, f21 # perform operation
froundnx.d f5, f21 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x74b1d4c754ceaf11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13c5a6eda42338a2 # load x3 with value 0x13c5a6eda42338a2
sd x3, 0(x2) # store 0x13c5a6eda42338a2 in memory
fld f1, 0(x2) # load 0x13c5a6eda42338a2 from memory into f1
froundnx.d f6, f1 # perform operation
froundnx.d f6, f1 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xe678012a79810710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x026fcdebb52c3e45 # load x3 with value 0x026fcdebb52c3e45
sd x3, 0(x2) # store 0x026fcdebb52c3e45 in memory
fld f15, 0(x2) # load 0x026fcdebb52c3e45 from memory into f15
froundnx.d f7, f15 # perform operation
froundnx.d f7, f15 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x477ddb35388780db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20600988691528fa # load x3 with value 0x20600988691528fa
sd x3, 0(x2) # store 0x20600988691528fa in memory
fld f2, 0(x2) # load 0x20600988691528fa from memory into f2
froundnx.d f8, f2 # perform operation
froundnx.d f8, f2 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x202b1fbc72d590a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50bbd048daf4d5f8 # load x3 with value 0x50bbd048daf4d5f8
sd x3, 0(x2) # store 0x50bbd048daf4d5f8 in memory
fld f18, 0(x2) # load 0x50bbd048daf4d5f8 from memory into f18
froundnx.d f9, f18 # perform operation
froundnx.d f9, f18 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x30f162844754debf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x381e58a78f552183 # load x3 with value 0x381e58a78f552183
sd x3, 0(x2) # store 0x381e58a78f552183 in memory
fld f2, 0(x2) # load 0x381e58a78f552183 from memory into f2
froundnx.d f10, f2 # perform operation
froundnx.d f10, f2 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x7e5fc57b010d7939 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x293545b04cbca2c2 # load x3 with value 0x293545b04cbca2c2
sd x3, 0(x2) # store 0x293545b04cbca2c2 in memory
fld f11, 0(x2) # load 0x293545b04cbca2c2 from memory into f11
froundnx.d f11, f11 # perform operation
froundnx.d f11, f11 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xa365c2dc2042ed00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x536c4471e63c6846 # load x3 with value 0x536c4471e63c6846
sd x3, 0(x2) # store 0x536c4471e63c6846 in memory
fld f1, 0(x2) # load 0x536c4471e63c6846 from memory into f1
froundnx.d f12, f1 # perform operation
froundnx.d f12, f1 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x6f0ce69b16b9e8f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9742941604927a87 # load x3 with value 0x9742941604927a87
sd x3, 0(x2) # store 0x9742941604927a87 in memory
fld f21, 0(x2) # load 0x9742941604927a87 from memory into f21
froundnx.d f13, f21 # perform operation
froundnx.d f13, f21 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x60f770026642831e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacd0b3987ae71388 # load x3 with value 0xacd0b3987ae71388
sd x3, 0(x2) # store 0xacd0b3987ae71388 in memory
fld f25, 0(x2) # load 0xacd0b3987ae71388 from memory into f25
froundnx.d f14, f25 # perform operation
froundnx.d f14, f25 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xec1839c2011702bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9bf4e8f312020a4a # load x3 with value 0x9bf4e8f312020a4a
sd x3, 0(x2) # store 0x9bf4e8f312020a4a in memory
fld f6, 0(x2) # load 0x9bf4e8f312020a4a from memory into f6
froundnx.d f15, f6 # perform operation
froundnx.d f15, f6 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x1064a4095410d751 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b182b61446ce222 # load x3 with value 0x5b182b61446ce222
sd x3, 0(x2) # store 0x5b182b61446ce222 in memory
fld f7, 0(x2) # load 0x5b182b61446ce222 from memory into f7
froundnx.d f16, f7 # perform operation
froundnx.d f16, f7 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x070a1ac78a50679f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf57652e983432f97 # load x3 with value 0xf57652e983432f97
sd x3, 0(x2) # store 0xf57652e983432f97 in memory
fld f20, 0(x2) # load 0xf57652e983432f97 from memory into f20
froundnx.d f17, f20 # perform operation
froundnx.d f17, f20 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x8fa17ad157bc88a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e1fffc17c7ed9c5 # load x3 with value 0x2e1fffc17c7ed9c5
sd x3, 0(x2) # store 0x2e1fffc17c7ed9c5 in memory
fld f4, 0(x2) # load 0x2e1fffc17c7ed9c5 from memory into f4
froundnx.d f18, f4 # perform operation
froundnx.d f18, f4 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x57c4a8b29baa623d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21b8c8d3b2544f7c # load x3 with value 0x21b8c8d3b2544f7c
sd x3, 0(x2) # store 0x21b8c8d3b2544f7c in memory
fld f9, 0(x2) # load 0x21b8c8d3b2544f7c from memory into f9
froundnx.d f19, f9 # perform operation
froundnx.d f19, f9 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x1fd4884db6c2fbcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc85dd6387cdf5d0d # load x3 with value 0xc85dd6387cdf5d0d
sd x3, 0(x2) # store 0xc85dd6387cdf5d0d in memory
fld f26, 0(x2) # load 0xc85dd6387cdf5d0d from memory into f26
froundnx.d f20, f26 # perform operation
froundnx.d f20, f26 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x95ca313ef2b6c4e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80251470e4a39f0f # load x3 with value 0x80251470e4a39f0f
sd x3, 0(x2) # store 0x80251470e4a39f0f in memory
fld f7, 0(x2) # load 0x80251470e4a39f0f from memory into f7
froundnx.d f21, f7 # perform operation
froundnx.d f21, f7 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x3b20442aed2c5183 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd588805050867177 # load x3 with value 0xd588805050867177
sd x3, 0(x2) # store 0xd588805050867177 in memory
fld f1, 0(x2) # load 0xd588805050867177 from memory into f1
froundnx.d f22, f1 # perform operation
froundnx.d f22, f1 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x4792d84d969bcdc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e77eabe4cef0b04 # load x3 with value 0x5e77eabe4cef0b04
sd x3, 0(x2) # store 0x5e77eabe4cef0b04 in memory
fld f5, 0(x2) # load 0x5e77eabe4cef0b04 from memory into f5
froundnx.d f23, f5 # perform operation
froundnx.d f23, f5 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x803321c9ff8d9511 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb07b7f296e18f5be # load x3 with value 0xb07b7f296e18f5be
sd x3, 0(x2) # store 0xb07b7f296e18f5be in memory
fld f30, 0(x2) # load 0xb07b7f296e18f5be from memory into f30
froundnx.d f24, f30 # perform operation
froundnx.d f24, f30 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x78f517e060267b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd372e356fd67e62a # load x3 with value 0xd372e356fd67e62a
sd x3, 0(x2) # store 0xd372e356fd67e62a in memory
fld f6, 0(x2) # load 0xd372e356fd67e62a from memory into f6
froundnx.d f25, f6 # perform operation
froundnx.d f25, f6 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x0dfb503f411e07e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f6709cc52c6c030 # load x3 with value 0x4f6709cc52c6c030
sd x3, 0(x2) # store 0x4f6709cc52c6c030 in memory
fld f23, 0(x2) # load 0x4f6709cc52c6c030 from memory into f23
froundnx.d f26, f23 # perform operation
froundnx.d f26, f23 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xb426f1143186259e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f9ecb0eb76ad975 # load x3 with value 0x0f9ecb0eb76ad975
sd x3, 0(x2) # store 0x0f9ecb0eb76ad975 in memory
fld f19, 0(x2) # load 0x0f9ecb0eb76ad975 from memory into f19
froundnx.d f27, f19 # perform operation
froundnx.d f27, f19 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x69b2c38d87db5a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0406158685b81358 # load x3 with value 0x0406158685b81358
sd x3, 0(x2) # store 0x0406158685b81358 in memory
fld f7, 0(x2) # load 0x0406158685b81358 from memory into f7
froundnx.d f28, f7 # perform operation
froundnx.d f28, f7 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x61d227a38b88439d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a3b73992e6233a2 # load x3 with value 0x6a3b73992e6233a2
sd x3, 0(x2) # store 0x6a3b73992e6233a2 in memory
fld f27, 0(x2) # load 0x6a3b73992e6233a2 from memory into f27
froundnx.d f29, f27 # perform operation
froundnx.d f29, f27 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xfa5baf13dce8690f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2830bd77765317a2 # load x3 with value 0x2830bd77765317a2
sd x3, 0(x2) # store 0x2830bd77765317a2 in memory
fld f23, 0(x2) # load 0x2830bd77765317a2 from memory into f23
froundnx.d f30, f23 # perform operation
froundnx.d f30, f23 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x506b7e0a95a06350 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6b0b4401ce53629 # load x3 with value 0xd6b0b4401ce53629
sd x3, 0(x2) # store 0xd6b0b4401ce53629 in memory
fld f22, 0(x2) # load 0xd6b0b4401ce53629 from memory into f22
froundnx.d f31, f22 # perform operation
froundnx.d f31, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x27, 0x4d56b58bf8f5ab02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9d5a016eaab66d3 # load x3 with value 0xc9d5a016eaab66d3
sd x3, 0(x2) # store 0xc9d5a016eaab66d3 in memory
fld f0, 0(x2) # load 0xc9d5a016eaab66d3 from memory into f0
froundnx.d f27, f0 # perform operation
froundnx.d f27, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x24, 0x55440f40166f472e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7e9f4d616bfbc65 # load x3 with value 0xa7e9f4d616bfbc65
sd x3, 0(x2) # store 0xa7e9f4d616bfbc65 in memory
fld f1, 0(x2) # load 0xa7e9f4d616bfbc65 from memory into f1
froundnx.d f24, f1 # perform operation
froundnx.d f24, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x12, 0x8f3f7304a3360158 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3745810c34a6ff53 # load x3 with value 0x3745810c34a6ff53
sd x3, 0(x2) # store 0x3745810c34a6ff53 in memory
fld f2, 0(x2) # load 0x3745810c34a6ff53 from memory into f2
froundnx.d f12, f2 # perform operation
froundnx.d f12, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x18, 0x175d60883bb21f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3db429fb5d4bdb02 # load x3 with value 0x3db429fb5d4bdb02
sd x3, 0(x2) # store 0x3db429fb5d4bdb02 in memory
fld f3, 0(x2) # load 0x3db429fb5d4bdb02 from memory into f3
froundnx.d f18, f3 # perform operation
froundnx.d f18, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x24, 0x1b0546e2dc8ed965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67a6aa2bc061dbfd # load x3 with value 0x67a6aa2bc061dbfd
sd x3, 0(x2) # store 0x67a6aa2bc061dbfd in memory
fld f4, 0(x2) # load 0x67a6aa2bc061dbfd from memory into f4
froundnx.d f24, f4 # perform operation
froundnx.d f24, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x10, 0xf3647d9413e379ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b82c4224c38f82f # load x3 with value 0x6b82c4224c38f82f
sd x3, 0(x2) # store 0x6b82c4224c38f82f in memory
fld f5, 0(x2) # load 0x6b82c4224c38f82f from memory into f5
froundnx.d f10, f5 # perform operation
froundnx.d f10, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x12, 0xc5cbdbee2d2198a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28d1f5594c92b505 # load x3 with value 0x28d1f5594c92b505
sd x3, 0(x2) # store 0x28d1f5594c92b505 in memory
fld f6, 0(x2) # load 0x28d1f5594c92b505 from memory into f6
froundnx.d f12, f6 # perform operation
froundnx.d f12, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x20, 0x2c9bd587e8848cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf65083525e5d9f4 # load x3 with value 0xcf65083525e5d9f4
sd x3, 0(x2) # store 0xcf65083525e5d9f4 in memory
fld f7, 0(x2) # load 0xcf65083525e5d9f4 from memory into f7
froundnx.d f20, f7 # perform operation
froundnx.d f20, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x13, 0x1adbb9fe295cf7ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9626eaca30dc1dc0 # load x3 with value 0x9626eaca30dc1dc0
sd x3, 0(x2) # store 0x9626eaca30dc1dc0 in memory
fld f8, 0(x2) # load 0x9626eaca30dc1dc0 from memory into f8
froundnx.d f13, f8 # perform operation
froundnx.d f13, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x1, 0x34444a9ad0846324 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa28dec1a7c5ad5ce # load x3 with value 0xa28dec1a7c5ad5ce
sd x3, 0(x2) # store 0xa28dec1a7c5ad5ce in memory
fld f9, 0(x2) # load 0xa28dec1a7c5ad5ce from memory into f9
froundnx.d f1, f9 # perform operation
froundnx.d f1, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x26, 0x0e68e360af220bca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba0d0d77fc1b7296 # load x3 with value 0xba0d0d77fc1b7296
sd x3, 0(x2) # store 0xba0d0d77fc1b7296 in memory
fld f10, 0(x2) # load 0xba0d0d77fc1b7296 from memory into f10
froundnx.d f26, f10 # perform operation
froundnx.d f26, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x14, 0x4d43c68387caa276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82a446f1ec0a88be # load x3 with value 0x82a446f1ec0a88be
sd x3, 0(x2) # store 0x82a446f1ec0a88be in memory
fld f11, 0(x2) # load 0x82a446f1ec0a88be from memory into f11
froundnx.d f14, f11 # perform operation
froundnx.d f14, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x4, 0x75f0553fff73bbd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b919dfe3d714870 # load x3 with value 0x1b919dfe3d714870
sd x3, 0(x2) # store 0x1b919dfe3d714870 in memory
fld f12, 0(x2) # load 0x1b919dfe3d714870 from memory into f12
froundnx.d f4, f12 # perform operation
froundnx.d f4, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x1, 0x904b8e488f07bc3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9d428cc9d85883c # load x3 with value 0xb9d428cc9d85883c
sd x3, 0(x2) # store 0xb9d428cc9d85883c in memory
fld f13, 0(x2) # load 0xb9d428cc9d85883c from memory into f13
froundnx.d f1, f13 # perform operation
froundnx.d f1, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x7, 0x2f7bd1738e66a391 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x174c48d3156ce8a1 # load x3 with value 0x174c48d3156ce8a1
sd x3, 0(x2) # store 0x174c48d3156ce8a1 in memory
fld f14, 0(x2) # load 0x174c48d3156ce8a1 from memory into f14
froundnx.d f7, f14 # perform operation
froundnx.d f7, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x29, 0x8c11dab9adc1ba3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd5ae5544a81d2c8 # load x3 with value 0xcd5ae5544a81d2c8
sd x3, 0(x2) # store 0xcd5ae5544a81d2c8 in memory
fld f15, 0(x2) # load 0xcd5ae5544a81d2c8 from memory into f15
froundnx.d f29, f15 # perform operation
froundnx.d f29, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x19, 0x62e5f9eb297bfb35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16641cee31211273 # load x3 with value 0x16641cee31211273
sd x3, 0(x2) # store 0x16641cee31211273 in memory
fld f16, 0(x2) # load 0x16641cee31211273 from memory into f16
froundnx.d f19, f16 # perform operation
froundnx.d f19, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x6, 0x8af1c343047ae610 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x188fedb9c51dc7fc # load x3 with value 0x188fedb9c51dc7fc
sd x3, 0(x2) # store 0x188fedb9c51dc7fc in memory
fld f17, 0(x2) # load 0x188fedb9c51dc7fc from memory into f17
froundnx.d f6, f17 # perform operation
froundnx.d f6, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x23, 0x12cabe2f61c22c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacfa3aa9e1bcdce2 # load x3 with value 0xacfa3aa9e1bcdce2
sd x3, 0(x2) # store 0xacfa3aa9e1bcdce2 in memory
fld f18, 0(x2) # load 0xacfa3aa9e1bcdce2 from memory into f18
froundnx.d f23, f18 # perform operation
froundnx.d f23, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x9, 0x27725fc113ad26f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5390e7f2c116308 # load x3 with value 0xc5390e7f2c116308
sd x3, 0(x2) # store 0xc5390e7f2c116308 in memory
fld f19, 0(x2) # load 0xc5390e7f2c116308 from memory into f19
froundnx.d f9, f19 # perform operation
froundnx.d f9, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x5, 0x64aa33543dc16864 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb66dc9e84452389 # load x3 with value 0xbb66dc9e84452389
sd x3, 0(x2) # store 0xbb66dc9e84452389 in memory
fld f20, 0(x2) # load 0xbb66dc9e84452389 from memory into f20
froundnx.d f5, f20 # perform operation
froundnx.d f5, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x8, 0xfba75c1421f350ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9134cca85e4766ce # load x3 with value 0x9134cca85e4766ce
sd x3, 0(x2) # store 0x9134cca85e4766ce in memory
fld f21, 0(x2) # load 0x9134cca85e4766ce from memory into f21
froundnx.d f8, f21 # perform operation
froundnx.d f8, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x17, 0xef80c4f85426efde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1097f2f9748a80db # load x3 with value 0x1097f2f9748a80db
sd x3, 0(x2) # store 0x1097f2f9748a80db in memory
fld f22, 0(x2) # load 0x1097f2f9748a80db from memory into f22
froundnx.d f17, f22 # perform operation
froundnx.d f17, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x2, 0x7e029bc30fe899f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2128f1236a55ba1a # load x3 with value 0x2128f1236a55ba1a
sd x3, 0(x2) # store 0x2128f1236a55ba1a in memory
fld f23, 0(x2) # load 0x2128f1236a55ba1a from memory into f23
froundnx.d f2, f23 # perform operation
froundnx.d f2, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x30, 0x326d57eeb3c3d15d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e99520c4bfb9ed7 # load x3 with value 0x9e99520c4bfb9ed7
sd x3, 0(x2) # store 0x9e99520c4bfb9ed7 in memory
fld f24, 0(x2) # load 0x9e99520c4bfb9ed7 from memory into f24
froundnx.d f30, f24 # perform operation
froundnx.d f30, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x2, 0x10cfe8be81c82c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfdbd2a647e2ec10 # load x3 with value 0xdfdbd2a647e2ec10
sd x3, 0(x2) # store 0xdfdbd2a647e2ec10 in memory
fld f25, 0(x2) # load 0xdfdbd2a647e2ec10 from memory into f25
froundnx.d f2, f25 # perform operation
froundnx.d f2, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x15, 0xb4fade39178aad7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc60a578f8192d427 # load x3 with value 0xc60a578f8192d427
sd x3, 0(x2) # store 0xc60a578f8192d427 in memory
fld f26, 0(x2) # load 0xc60a578f8192d427 from memory into f26
froundnx.d f15, f26 # perform operation
froundnx.d f15, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x24, 0xc01385be9d78a9b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01c2184bacc21bfd # load x3 with value 0x01c2184bacc21bfd
sd x3, 0(x2) # store 0x01c2184bacc21bfd in memory
fld f27, 0(x2) # load 0x01c2184bacc21bfd from memory into f27
froundnx.d f24, f27 # perform operation
froundnx.d f24, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x7, 0xea600bfe2c99aa72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d6b0bf694a93c11 # load x3 with value 0x7d6b0bf694a93c11
sd x3, 0(x2) # store 0x7d6b0bf694a93c11 in memory
fld f28, 0(x2) # load 0x7d6b0bf694a93c11 from memory into f28
froundnx.d f7, f28 # perform operation
froundnx.d f7, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x31, 0x872e5b04cb5f4846 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b51fd8c31242cae # load x3 with value 0x0b51fd8c31242cae
sd x3, 0(x2) # store 0x0b51fd8c31242cae in memory
fld f29, 0(x2) # load 0x0b51fd8c31242cae from memory into f29
froundnx.d f31, f29 # perform operation
froundnx.d f31, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x9, 0x3f20698f5bfd3213 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9a013f0f4369d04 # load x3 with value 0xb9a013f0f4369d04
sd x3, 0(x2) # store 0xb9a013f0f4369d04 in memory
fld f30, 0(x2) # load 0xb9a013f0f4369d04 from memory into f30
froundnx.d f9, f30 # perform operation
froundnx.d f9, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x20, 0x7d0b342ce089a3cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x621e3c48ea99330c # load x3 with value 0x621e3c48ea99330c
sd x3, 0(x2) # store 0x621e3c48ea99330c in memory
fld f31, 0(x2) # load 0x621e3c48ea99330c from memory into f31
froundnx.d f20, f31 # perform operation
froundnx.d f20, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
