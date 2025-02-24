///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fcvt.s.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.507919
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
li x15, 0x68ec1609190c5d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
fcvt.s.d f15, f21 # perform operation
fcvt.s.d f15, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x3, 0x9c0237a1be4349de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
fcvt.s.d f3, f6 # perform operation
fcvt.s.d f3, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x4, 0x23e91aa4489b569d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f9, 0(x2) # load 0x3ff0000000000000 from memory into f9
fcvt.s.d f4, f9 # perform operation
fcvt.s.d f4, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x31, 0x793120ea39e4be1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
fcvt.s.d f31, f27 # perform operation
fcvt.s.d f31, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x12, 0xb003dcfd1e3c43f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fcvt.s.d f12, f26 # perform operation
fcvt.s.d f12, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x24, 0x128adf49013c8970 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fcvt.s.d f24, f25 # perform operation
fcvt.s.d f24, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x27, 0xef8af91ac5396bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
fcvt.s.d f27, f9 # perform operation
fcvt.s.d f27, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x22, 0x8816d6926e92e4b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
fcvt.s.d f22, f1 # perform operation
fcvt.s.d f22, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x5, 0x08c9486da1f43075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
fcvt.s.d f5, f1 # perform operation
fcvt.s.d f5, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x15, 0x6ad9bd165e468c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fcvt.s.d f15, f17 # perform operation
fcvt.s.d f15, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x8, 0xa59afeb5d702bdd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fcvt.s.d f8, f1 # perform operation
fcvt.s.d f8, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x22, 0x2eaf8628ed062394 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
fcvt.s.d f22, f3 # perform operation
fcvt.s.d f22, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x19, 0x9ec54012896ad026 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fcvt.s.d f19, f22 # perform operation
fcvt.s.d f19, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x28, 0x3af97538954a5e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
fcvt.s.d f28, f13 # perform operation
fcvt.s.d f28, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x20, 0xb8aaa4f4a99d5625 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
fcvt.s.d f20, f17 # perform operation
fcvt.s.d f20, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x9, 0x00f8b26936fd1e3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fcvt.s.d f9, f17 # perform operation
fcvt.s.d f9, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x24, 0x29300caa6fa09c31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
fcvt.s.d f24, f31 # perform operation
fcvt.s.d f24, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x24, 0xeda370f8c144f155 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
fcvt.s.d f24, f4 # perform operation
fcvt.s.d f24, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x24, 0x48d9c2336829f6c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fcvt.s.d f24, f7 # perform operation
fcvt.s.d f24, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x22, 0xa2241a05f41b9a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fcvt.s.d f22, f20 # perform operation
fcvt.s.d f22, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x21, 0x83159638caf03e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
fcvt.s.d f21, f7 # perform operation
fcvt.s.d f21, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x21, 0x9803eb203f0d51f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fcvt.s.d f21, f15 # perform operation
fcvt.s.d f21, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x9, 0xc31116d72cd57780 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fcvt.s.d f9, f14 # perform operation
fcvt.s.d f9, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x2, 0x23d1ca14faf45007 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
fcvt.s.d f2, f11 # perform operation
fcvt.s.d f2, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x26, 0x99fa8ed511fc539e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
fcvt.s.d f26, f4 # perform operation
fcvt.s.d f26, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x18, 0x938e2b1f3dd6a2dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f4, 0(x2) # load 0xa6e895993737426c from memory into f4
fcvt.s.d f18, f4 # perform operation
fcvt.s.d f18, f4 # perform operation

# Testcase cp_frm
li x15, 0x4f39b9ce7a6f7578 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68570179ffd3246e # load x3 with value 0x68570179ffd3246e
sd x3, 0(x2) # store 0x68570179ffd3246e in memory
fld f1, 0(x2) # load 0x68570179ffd3246e from memory into f1
fcvt.s.d f15, f1 # perform operation
fcvt.s.d f15, f1, dyn # perform operation
fcvt.s.d f15, f1, rdn # perform operation
fcvt.s.d f15, f1, rmm # perform operation
fcvt.s.d f15, f1, rne # perform operation
fcvt.s.d f15, f1, rtz # perform operation
fcvt.s.d f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f15, f1 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x97d1346fd92549f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a0af58b0371353e # load x3 with value 0x0a0af58b0371353e
sd x3, 0(x2) # store 0x0a0af58b0371353e in memory
fld f24, 0(x2) # load 0x0a0af58b0371353e from memory into f24
fcvt.s.d f0, f24 # perform operation
fcvt.s.d f0, f24 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xc3c56ad1a675da3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf7ae97987026118 # load x3 with value 0xcf7ae97987026118
sd x3, 0(x2) # store 0xcf7ae97987026118 in memory
fld f20, 0(x2) # load 0xcf7ae97987026118 from memory into f20
fcvt.s.d f1, f20 # perform operation
fcvt.s.d f1, f20 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xaf986c08029b68f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61be7472ce04f411 # load x3 with value 0x61be7472ce04f411
sd x3, 0(x2) # store 0x61be7472ce04f411 in memory
fld f17, 0(x2) # load 0x61be7472ce04f411 from memory into f17
fcvt.s.d f2, f17 # perform operation
fcvt.s.d f2, f17 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x2ea94f6aaa91b45c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfdf054c33457655 # load x3 with value 0xdfdf054c33457655
sd x3, 0(x2) # store 0xdfdf054c33457655 in memory
fld f14, 0(x2) # load 0xdfdf054c33457655 from memory into f14
fcvt.s.d f3, f14 # perform operation
fcvt.s.d f3, f14 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xd5b9b8361d77c2ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8f9bd5876ef14db # load x3 with value 0xc8f9bd5876ef14db
sd x3, 0(x2) # store 0xc8f9bd5876ef14db in memory
fld f24, 0(x2) # load 0xc8f9bd5876ef14db from memory into f24
fcvt.s.d f4, f24 # perform operation
fcvt.s.d f4, f24 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xb101b6889e3f1fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x159c6da452448b16 # load x3 with value 0x159c6da452448b16
sd x3, 0(x2) # store 0x159c6da452448b16 in memory
fld f28, 0(x2) # load 0x159c6da452448b16 from memory into f28
fcvt.s.d f5, f28 # perform operation
fcvt.s.d f5, f28 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x9a4188d606cb18c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb31073a0e64e0691 # load x3 with value 0xb31073a0e64e0691
sd x3, 0(x2) # store 0xb31073a0e64e0691 in memory
fld f20, 0(x2) # load 0xb31073a0e64e0691 from memory into f20
fcvt.s.d f6, f20 # perform operation
fcvt.s.d f6, f20 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xf17b065e747ed808 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa12eb0bf88683c98 # load x3 with value 0xa12eb0bf88683c98
sd x3, 0(x2) # store 0xa12eb0bf88683c98 in memory
fld f8, 0(x2) # load 0xa12eb0bf88683c98 from memory into f8
fcvt.s.d f7, f8 # perform operation
fcvt.s.d f7, f8 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x372a606359e57611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc504194e7ad1d2c2 # load x3 with value 0xc504194e7ad1d2c2
sd x3, 0(x2) # store 0xc504194e7ad1d2c2 in memory
fld f15, 0(x2) # load 0xc504194e7ad1d2c2 from memory into f15
fcvt.s.d f8, f15 # perform operation
fcvt.s.d f8, f15 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x7fd0f1a06b78548c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e16c6ce0b7dddd9 # load x3 with value 0x0e16c6ce0b7dddd9
sd x3, 0(x2) # store 0x0e16c6ce0b7dddd9 in memory
fld f22, 0(x2) # load 0x0e16c6ce0b7dddd9 from memory into f22
fcvt.s.d f9, f22 # perform operation
fcvt.s.d f9, f22 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xc995a62463d7092f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd690dc95cbe16c0 # load x3 with value 0xfd690dc95cbe16c0
sd x3, 0(x2) # store 0xfd690dc95cbe16c0 in memory
fld f13, 0(x2) # load 0xfd690dc95cbe16c0 from memory into f13
fcvt.s.d f10, f13 # perform operation
fcvt.s.d f10, f13 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xcea4cc44c13af474 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a37e270fa3c4107 # load x3 with value 0x8a37e270fa3c4107
sd x3, 0(x2) # store 0x8a37e270fa3c4107 in memory
fld f22, 0(x2) # load 0x8a37e270fa3c4107 from memory into f22
fcvt.s.d f11, f22 # perform operation
fcvt.s.d f11, f22 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x38926c98a5cf1c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d0884cfcc66b404 # load x3 with value 0x1d0884cfcc66b404
sd x3, 0(x2) # store 0x1d0884cfcc66b404 in memory
fld f2, 0(x2) # load 0x1d0884cfcc66b404 from memory into f2
fcvt.s.d f12, f2 # perform operation
fcvt.s.d f12, f2 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xf34fae67f31e4c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x561c031ad3f2f3dc # load x3 with value 0x561c031ad3f2f3dc
sd x3, 0(x2) # store 0x561c031ad3f2f3dc in memory
fld f29, 0(x2) # load 0x561c031ad3f2f3dc from memory into f29
fcvt.s.d f13, f29 # perform operation
fcvt.s.d f13, f29 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xa19c06811f13821e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa94d0705152c8b64 # load x3 with value 0xa94d0705152c8b64
sd x3, 0(x2) # store 0xa94d0705152c8b64 in memory
fld f3, 0(x2) # load 0xa94d0705152c8b64 from memory into f3
fcvt.s.d f14, f3 # perform operation
fcvt.s.d f14, f3 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x7c919a7c21e1220d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf87d006dfb9f567 # load x3 with value 0xcf87d006dfb9f567
sd x3, 0(x2) # store 0xcf87d006dfb9f567 in memory
fld f16, 0(x2) # load 0xcf87d006dfb9f567 from memory into f16
fcvt.s.d f15, f16 # perform operation
fcvt.s.d f15, f16 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x4616bc0667f62541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x890a77239f7e04df # load x3 with value 0x890a77239f7e04df
sd x3, 0(x2) # store 0x890a77239f7e04df in memory
fld f1, 0(x2) # load 0x890a77239f7e04df from memory into f1
fcvt.s.d f16, f1 # perform operation
fcvt.s.d f16, f1 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x308873b49bdaf1f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0ebbfadcc040c69 # load x3 with value 0xf0ebbfadcc040c69
sd x3, 0(x2) # store 0xf0ebbfadcc040c69 in memory
fld f17, 0(x2) # load 0xf0ebbfadcc040c69 from memory into f17
fcvt.s.d f17, f17 # perform operation
fcvt.s.d f17, f17 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x56ee35b5cf3a67ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f3a26ec4dc0d406 # load x3 with value 0x9f3a26ec4dc0d406
sd x3, 0(x2) # store 0x9f3a26ec4dc0d406 in memory
fld f15, 0(x2) # load 0x9f3a26ec4dc0d406 from memory into f15
fcvt.s.d f18, f15 # perform operation
fcvt.s.d f18, f15 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xa2307d071fa42e51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb231c9feb94404a # load x3 with value 0xdb231c9feb94404a
sd x3, 0(x2) # store 0xdb231c9feb94404a in memory
fld f23, 0(x2) # load 0xdb231c9feb94404a from memory into f23
fcvt.s.d f19, f23 # perform operation
fcvt.s.d f19, f23 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x836242368d3899c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x084c6614ae07cd16 # load x3 with value 0x084c6614ae07cd16
sd x3, 0(x2) # store 0x084c6614ae07cd16 in memory
fld f30, 0(x2) # load 0x084c6614ae07cd16 from memory into f30
fcvt.s.d f20, f30 # perform operation
fcvt.s.d f20, f30 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x1c5de0369d38b01d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce27fb45da18ec19 # load x3 with value 0xce27fb45da18ec19
sd x3, 0(x2) # store 0xce27fb45da18ec19 in memory
fld f6, 0(x2) # load 0xce27fb45da18ec19 from memory into f6
fcvt.s.d f21, f6 # perform operation
fcvt.s.d f21, f6 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x479d4aba4c07eee3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16a39a1d25fc353c # load x3 with value 0x16a39a1d25fc353c
sd x3, 0(x2) # store 0x16a39a1d25fc353c in memory
fld f13, 0(x2) # load 0x16a39a1d25fc353c from memory into f13
fcvt.s.d f22, f13 # perform operation
fcvt.s.d f22, f13 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xb252947de93c39b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5948cdd91140d4e6 # load x3 with value 0x5948cdd91140d4e6
sd x3, 0(x2) # store 0x5948cdd91140d4e6 in memory
fld f28, 0(x2) # load 0x5948cdd91140d4e6 from memory into f28
fcvt.s.d f23, f28 # perform operation
fcvt.s.d f23, f28 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x8d602c59e38437db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8eeb81f0627a1c8e # load x3 with value 0x8eeb81f0627a1c8e
sd x3, 0(x2) # store 0x8eeb81f0627a1c8e in memory
fld f24, 0(x2) # load 0x8eeb81f0627a1c8e from memory into f24
fcvt.s.d f24, f24 # perform operation
fcvt.s.d f24, f24 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xbc16625507318107 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x781d36294e319512 # load x3 with value 0x781d36294e319512
sd x3, 0(x2) # store 0x781d36294e319512 in memory
fld f3, 0(x2) # load 0x781d36294e319512 from memory into f3
fcvt.s.d f25, f3 # perform operation
fcvt.s.d f25, f3 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x7923ac7820855a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf938448708b40277 # load x3 with value 0xf938448708b40277
sd x3, 0(x2) # store 0xf938448708b40277 in memory
fld f27, 0(x2) # load 0xf938448708b40277 from memory into f27
fcvt.s.d f26, f27 # perform operation
fcvt.s.d f26, f27 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x62728677c5afb2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92cbe62652977012 # load x3 with value 0x92cbe62652977012
sd x3, 0(x2) # store 0x92cbe62652977012 in memory
fld f7, 0(x2) # load 0x92cbe62652977012 from memory into f7
fcvt.s.d f27, f7 # perform operation
fcvt.s.d f27, f7 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xb8f0c422316d39d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67196cec9a77379d # load x3 with value 0x67196cec9a77379d
sd x3, 0(x2) # store 0x67196cec9a77379d in memory
fld f6, 0(x2) # load 0x67196cec9a77379d from memory into f6
fcvt.s.d f28, f6 # perform operation
fcvt.s.d f28, f6 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xfddbaa316e0a789b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3aa31ed8ed5fd866 # load x3 with value 0x3aa31ed8ed5fd866
sd x3, 0(x2) # store 0x3aa31ed8ed5fd866 in memory
fld f28, 0(x2) # load 0x3aa31ed8ed5fd866 from memory into f28
fcvt.s.d f29, f28 # perform operation
fcvt.s.d f29, f28 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x7854ebebdd524326 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4acbebaf46bb240e # load x3 with value 0x4acbebaf46bb240e
sd x3, 0(x2) # store 0x4acbebaf46bb240e in memory
fld f11, 0(x2) # load 0x4acbebaf46bb240e from memory into f11
fcvt.s.d f30, f11 # perform operation
fcvt.s.d f30, f11 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x060ceceee4a531ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x011d3984c106fcf4 # load x3 with value 0x011d3984c106fcf4
sd x3, 0(x2) # store 0x011d3984c106fcf4 in memory
fld f31, 0(x2) # load 0x011d3984c106fcf4 from memory into f31
fcvt.s.d f31, f31 # perform operation
fcvt.s.d f31, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x23, 0x596f51532215ee7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacdaf2a28f263574 # load x3 with value 0xacdaf2a28f263574
sd x3, 0(x2) # store 0xacdaf2a28f263574 in memory
fld f0, 0(x2) # load 0xacdaf2a28f263574 from memory into f0
fcvt.s.d f23, f0 # perform operation
fcvt.s.d f23, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x15, 0x99be6bc31cb6948c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2339d8a12c6f4faf # load x3 with value 0x2339d8a12c6f4faf
sd x3, 0(x2) # store 0x2339d8a12c6f4faf in memory
fld f1, 0(x2) # load 0x2339d8a12c6f4faf from memory into f1
fcvt.s.d f15, f1 # perform operation
fcvt.s.d f15, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x18, 0x48a2376af90e2bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f48896a07ddec6a # load x3 with value 0x5f48896a07ddec6a
sd x3, 0(x2) # store 0x5f48896a07ddec6a in memory
fld f2, 0(x2) # load 0x5f48896a07ddec6a from memory into f2
fcvt.s.d f18, f2 # perform operation
fcvt.s.d f18, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x15, 0x767332963fdc7180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bb4df52b2a0e1cf # load x3 with value 0x5bb4df52b2a0e1cf
sd x3, 0(x2) # store 0x5bb4df52b2a0e1cf in memory
fld f3, 0(x2) # load 0x5bb4df52b2a0e1cf from memory into f3
fcvt.s.d f15, f3 # perform operation
fcvt.s.d f15, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x11, 0x3c8e01720c9ce46a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc198486deac45d4 # load x3 with value 0xfc198486deac45d4
sd x3, 0(x2) # store 0xfc198486deac45d4 in memory
fld f4, 0(x2) # load 0xfc198486deac45d4 from memory into f4
fcvt.s.d f11, f4 # perform operation
fcvt.s.d f11, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x15, 0xe79733170cb5e637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6e050701884452c # load x3 with value 0xe6e050701884452c
sd x3, 0(x2) # store 0xe6e050701884452c in memory
fld f5, 0(x2) # load 0xe6e050701884452c from memory into f5
fcvt.s.d f15, f5 # perform operation
fcvt.s.d f15, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x8, 0xa1ef800adc6b9e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x224da20273c58ac5 # load x3 with value 0x224da20273c58ac5
sd x3, 0(x2) # store 0x224da20273c58ac5 in memory
fld f6, 0(x2) # load 0x224da20273c58ac5 from memory into f6
fcvt.s.d f8, f6 # perform operation
fcvt.s.d f8, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x4, 0x0d9c10501ee1c1a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6567f65378ea78ef # load x3 with value 0x6567f65378ea78ef
sd x3, 0(x2) # store 0x6567f65378ea78ef in memory
fld f7, 0(x2) # load 0x6567f65378ea78ef from memory into f7
fcvt.s.d f4, f7 # perform operation
fcvt.s.d f4, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x8, 0x3eb0d9d042c16931 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91639d9008bad3a6 # load x3 with value 0x91639d9008bad3a6
sd x3, 0(x2) # store 0x91639d9008bad3a6 in memory
fld f8, 0(x2) # load 0x91639d9008bad3a6 from memory into f8
fcvt.s.d f8, f8 # perform operation
fcvt.s.d f8, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x10, 0xeaa23c185aa3437b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbb449162539e2a9 # load x3 with value 0xdbb449162539e2a9
sd x3, 0(x2) # store 0xdbb449162539e2a9 in memory
fld f9, 0(x2) # load 0xdbb449162539e2a9 from memory into f9
fcvt.s.d f10, f9 # perform operation
fcvt.s.d f10, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x24, 0x22468039c3a0286a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x333699b94b0ffe27 # load x3 with value 0x333699b94b0ffe27
sd x3, 0(x2) # store 0x333699b94b0ffe27 in memory
fld f10, 0(x2) # load 0x333699b94b0ffe27 from memory into f10
fcvt.s.d f24, f10 # perform operation
fcvt.s.d f24, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x3, 0x6e552808d8f00c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc191a190ce4b1b4 # load x3 with value 0xdc191a190ce4b1b4
sd x3, 0(x2) # store 0xdc191a190ce4b1b4 in memory
fld f11, 0(x2) # load 0xdc191a190ce4b1b4 from memory into f11
fcvt.s.d f3, f11 # perform operation
fcvt.s.d f3, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x21, 0x18b6c1b7b6a75d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x999ef6cb9c0ff45f # load x3 with value 0x999ef6cb9c0ff45f
sd x3, 0(x2) # store 0x999ef6cb9c0ff45f in memory
fld f12, 0(x2) # load 0x999ef6cb9c0ff45f from memory into f12
fcvt.s.d f21, f12 # perform operation
fcvt.s.d f21, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x14, 0x99abe2bfe258e931 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8ca887f2a34096f # load x3 with value 0xe8ca887f2a34096f
sd x3, 0(x2) # store 0xe8ca887f2a34096f in memory
fld f13, 0(x2) # load 0xe8ca887f2a34096f from memory into f13
fcvt.s.d f14, f13 # perform operation
fcvt.s.d f14, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x8, 0x778a604208f92b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8d31c2007e662ab # load x3 with value 0xf8d31c2007e662ab
sd x3, 0(x2) # store 0xf8d31c2007e662ab in memory
fld f14, 0(x2) # load 0xf8d31c2007e662ab from memory into f14
fcvt.s.d f8, f14 # perform operation
fcvt.s.d f8, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x1, 0x5d4d74e2fa7eba18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5ad274630a26d84 # load x3 with value 0xe5ad274630a26d84
sd x3, 0(x2) # store 0xe5ad274630a26d84 in memory
fld f15, 0(x2) # load 0xe5ad274630a26d84 from memory into f15
fcvt.s.d f1, f15 # perform operation
fcvt.s.d f1, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x7, 0xae052f5f3f7d95ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b61ee48d9ff9d9b # load x3 with value 0x8b61ee48d9ff9d9b
sd x3, 0(x2) # store 0x8b61ee48d9ff9d9b in memory
fld f16, 0(x2) # load 0x8b61ee48d9ff9d9b from memory into f16
fcvt.s.d f7, f16 # perform operation
fcvt.s.d f7, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x10, 0x8e6020fad09287f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41550a5e453e1d18 # load x3 with value 0x41550a5e453e1d18
sd x3, 0(x2) # store 0x41550a5e453e1d18 in memory
fld f17, 0(x2) # load 0x41550a5e453e1d18 from memory into f17
fcvt.s.d f10, f17 # perform operation
fcvt.s.d f10, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x15, 0x3dcfbbbd6b5f0c0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b3a612716aec25a # load x3 with value 0x0b3a612716aec25a
sd x3, 0(x2) # store 0x0b3a612716aec25a in memory
fld f18, 0(x2) # load 0x0b3a612716aec25a from memory into f18
fcvt.s.d f15, f18 # perform operation
fcvt.s.d f15, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x20, 0x2ad8351b45fa0a7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde37b1607b4b38c9 # load x3 with value 0xde37b1607b4b38c9
sd x3, 0(x2) # store 0xde37b1607b4b38c9 in memory
fld f19, 0(x2) # load 0xde37b1607b4b38c9 from memory into f19
fcvt.s.d f20, f19 # perform operation
fcvt.s.d f20, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x12, 0x265b63f54c093cab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcee93d46c9e9cdcd # load x3 with value 0xcee93d46c9e9cdcd
sd x3, 0(x2) # store 0xcee93d46c9e9cdcd in memory
fld f20, 0(x2) # load 0xcee93d46c9e9cdcd from memory into f20
fcvt.s.d f12, f20 # perform operation
fcvt.s.d f12, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x18, 0x9081f715ec3d0a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0aa3d4475664222 # load x3 with value 0xc0aa3d4475664222
sd x3, 0(x2) # store 0xc0aa3d4475664222 in memory
fld f21, 0(x2) # load 0xc0aa3d4475664222 from memory into f21
fcvt.s.d f18, f21 # perform operation
fcvt.s.d f18, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x8, 0xafa2ad0afb10bda4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x464d8cffe439680c # load x3 with value 0x464d8cffe439680c
sd x3, 0(x2) # store 0x464d8cffe439680c in memory
fld f22, 0(x2) # load 0x464d8cffe439680c from memory into f22
fcvt.s.d f8, f22 # perform operation
fcvt.s.d f8, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x8, 0x19b38bef4d97f00e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f55ba3e5d32e04d # load x3 with value 0x8f55ba3e5d32e04d
sd x3, 0(x2) # store 0x8f55ba3e5d32e04d in memory
fld f23, 0(x2) # load 0x8f55ba3e5d32e04d from memory into f23
fcvt.s.d f8, f23 # perform operation
fcvt.s.d f8, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x15, 0x40b9a1eb39bd74c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62d61258e7295db9 # load x3 with value 0x62d61258e7295db9
sd x3, 0(x2) # store 0x62d61258e7295db9 in memory
fld f24, 0(x2) # load 0x62d61258e7295db9 from memory into f24
fcvt.s.d f15, f24 # perform operation
fcvt.s.d f15, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x18, 0xc850d8ddb562f25f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e89b1205fe0106b # load x3 with value 0x7e89b1205fe0106b
sd x3, 0(x2) # store 0x7e89b1205fe0106b in memory
fld f25, 0(x2) # load 0x7e89b1205fe0106b from memory into f25
fcvt.s.d f18, f25 # perform operation
fcvt.s.d f18, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x27, 0x2745b3284c100636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ac41e46e8f89349 # load x3 with value 0x7ac41e46e8f89349
sd x3, 0(x2) # store 0x7ac41e46e8f89349 in memory
fld f26, 0(x2) # load 0x7ac41e46e8f89349 from memory into f26
fcvt.s.d f27, f26 # perform operation
fcvt.s.d f27, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x19, 0x9f92515e8e83dce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c959f9e3d901bc8 # load x3 with value 0x4c959f9e3d901bc8
sd x3, 0(x2) # store 0x4c959f9e3d901bc8 in memory
fld f27, 0(x2) # load 0x4c959f9e3d901bc8 from memory into f27
fcvt.s.d f19, f27 # perform operation
fcvt.s.d f19, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x24, 0x3b934594a61727d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd46f5e0584cd5eeb # load x3 with value 0xd46f5e0584cd5eeb
sd x3, 0(x2) # store 0xd46f5e0584cd5eeb in memory
fld f28, 0(x2) # load 0xd46f5e0584cd5eeb from memory into f28
fcvt.s.d f24, f28 # perform operation
fcvt.s.d f24, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x26, 0xf2f2d191eb59cf2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4283a1237a403b9c # load x3 with value 0x4283a1237a403b9c
sd x3, 0(x2) # store 0x4283a1237a403b9c in memory
fld f29, 0(x2) # load 0x4283a1237a403b9c from memory into f29
fcvt.s.d f26, f29 # perform operation
fcvt.s.d f26, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x25, 0x98c0245e68653c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63d05587747b97c8 # load x3 with value 0x63d05587747b97c8
sd x3, 0(x2) # store 0x63d05587747b97c8 in memory
fld f30, 0(x2) # load 0x63d05587747b97c8 from memory into f30
fcvt.s.d f25, f30 # perform operation
fcvt.s.d f25, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x24, 0xce24b2fa4bac54c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc86f427e2885df30 # load x3 with value 0xc86f427e2885df30
sd x3, 0(x2) # store 0xc86f427e2885df30 in memory
fld f31, 0(x2) # load 0xc86f427e2885df30 from memory into f31
fcvt.s.d f24, f31 # perform operation
fcvt.s.d f24, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
