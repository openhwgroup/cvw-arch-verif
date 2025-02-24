///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfhD//WALLY-COV-fcvt.h.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.822001
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
li x7, 0x383ccd327969bcb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
fcvt.h.d f7, f31 # perform operation
fcvt.h.d f7, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x22, 0x82f173033bfdd412 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
fcvt.h.d f22, f21 # perform operation
fcvt.h.d f22, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x5, 0x0179c611007c3133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fcvt.h.d f5, f2 # perform operation
fcvt.h.d f5, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x28, 0x2985e999dacb1423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
fcvt.h.d f28, f17 # perform operation
fcvt.h.d f28, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x14, 0x7133a18f11ec5564 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fcvt.h.d f14, f16 # perform operation
fcvt.h.d f14, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x1, 0x4b762ecd69bec15c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fcvt.h.d f1, f24 # perform operation
fcvt.h.d f1, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x28, 0x0ec026b949692833 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fcvt.h.d f28, f16 # perform operation
fcvt.h.d f28, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x22, 0x31b2d8068ab465c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
fcvt.h.d f22, f4 # perform operation
fcvt.h.d f22, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x29, 0xabed00eb7b1ffa58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
fcvt.h.d f29, f11 # perform operation
fcvt.h.d f29, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x29, 0x08980b1a282c6ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
fcvt.h.d f29, f11 # perform operation
fcvt.h.d f29, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x6, 0xd7830da622079091 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
fcvt.h.d f6, f5 # perform operation
fcvt.h.d f6, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x20, 0x6c6a3390263fef5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fcvt.h.d f20, f14 # perform operation
fcvt.h.d f20, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x19, 0xe137aaa8cd29e6e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
fcvt.h.d f19, f6 # perform operation
fcvt.h.d f19, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x13, 0x4b4670aaeff25538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
fcvt.h.d f13, f4 # perform operation
fcvt.h.d f13, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x25, 0x4d19e956f0372677 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
fcvt.h.d f25, f21 # perform operation
fcvt.h.d f25, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x7, 0xba941580649d1a82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
fcvt.h.d f7, f30 # perform operation
fcvt.h.d f7, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x10, 0x5d9c354b2a801521 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f30, 0(x2) # load 0x0000000000000001 from memory into f30
fcvt.h.d f10, f30 # perform operation
fcvt.h.d f10, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x3, 0x0e43655f7b7337f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
fcvt.h.d f3, f12 # perform operation
fcvt.h.d f3, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x29, 0x3165d7babcc75d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f13, 0(x2) # load 0x7ff0000000000000 from memory into f13
fcvt.h.d f29, f13 # perform operation
fcvt.h.d f29, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x31, 0x77fd172248770c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
fcvt.h.d f31, f19 # perform operation
fcvt.h.d f31, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x30, 0x0447a5583f60817f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fcvt.h.d f30, f28 # perform operation
fcvt.h.d f30, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x30, 0x261beec56f791b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fcvt.h.d f30, f1 # perform operation
fcvt.h.d f30, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x30, 0xbaea017acdc87bae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
fcvt.h.d f30, f19 # perform operation
fcvt.h.d f30, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x29, 0x588627d1f031a954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f14, 0(x2) # load 0x7ff7ffffffffffff from memory into f14
fcvt.h.d f29, f14 # perform operation
fcvt.h.d f29, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x23, 0xd163fd0e77c71843 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
fcvt.h.d f23, f16 # perform operation
fcvt.h.d f23, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x30, 0xa47d8bb5f6cc52cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
fcvt.h.d f30, f9 # perform operation
fcvt.h.d f30, f9 # perform operation

# Testcase cp_frm
li x22, 0xaa6d45201a1ffdca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe59575f4efb8a250 # load x3 with value 0xe59575f4efb8a250
sd x3, 0(x2) # store 0xe59575f4efb8a250 in memory
fld f14, 0(x2) # load 0xe59575f4efb8a250 from memory into f14
fcvt.h.d f22, f14 # perform operation
fcvt.h.d f22, f14, dyn # perform operation
fcvt.h.d f22, f14, rdn # perform operation
fcvt.h.d f22, f14, rmm # perform operation
fcvt.h.d f22, f14, rne # perform operation
fcvt.h.d f22, f14, rtz # perform operation
fcvt.h.d f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f22, f14 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xca7f0dcd231f9e54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0592c525bd3b0607 # load x3 with value 0x0592c525bd3b0607
sd x3, 0(x2) # store 0x0592c525bd3b0607 in memory
fld f21, 0(x2) # load 0x0592c525bd3b0607 from memory into f21
fcvt.h.d f0, f21 # perform operation
fcvt.h.d f0, f21 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x591df4a601718329 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98ba953c5a8bb82a # load x3 with value 0x98ba953c5a8bb82a
sd x3, 0(x2) # store 0x98ba953c5a8bb82a in memory
fld f3, 0(x2) # load 0x98ba953c5a8bb82a from memory into f3
fcvt.h.d f1, f3 # perform operation
fcvt.h.d f1, f3 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x99d7bc1016e53b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29ddf6aa19c2b844 # load x3 with value 0x29ddf6aa19c2b844
sd x3, 0(x2) # store 0x29ddf6aa19c2b844 in memory
fld f19, 0(x2) # load 0x29ddf6aa19c2b844 from memory into f19
fcvt.h.d f2, f19 # perform operation
fcvt.h.d f2, f19 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x145b51181f8ed07a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x846ef5bc4f70d238 # load x3 with value 0x846ef5bc4f70d238
sd x3, 0(x2) # store 0x846ef5bc4f70d238 in memory
fld f26, 0(x2) # load 0x846ef5bc4f70d238 from memory into f26
fcvt.h.d f3, f26 # perform operation
fcvt.h.d f3, f26 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xf06b88ae54af18bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75c53e128a81136e # load x3 with value 0x75c53e128a81136e
sd x3, 0(x2) # store 0x75c53e128a81136e in memory
fld f23, 0(x2) # load 0x75c53e128a81136e from memory into f23
fcvt.h.d f4, f23 # perform operation
fcvt.h.d f4, f23 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x6596b724ddde2318 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x383b6c108d016a07 # load x3 with value 0x383b6c108d016a07
sd x3, 0(x2) # store 0x383b6c108d016a07 in memory
fld f6, 0(x2) # load 0x383b6c108d016a07 from memory into f6
fcvt.h.d f5, f6 # perform operation
fcvt.h.d f5, f6 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x019277087ffca5da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81ffab85b8513630 # load x3 with value 0x81ffab85b8513630
sd x3, 0(x2) # store 0x81ffab85b8513630 in memory
fld f21, 0(x2) # load 0x81ffab85b8513630 from memory into f21
fcvt.h.d f6, f21 # perform operation
fcvt.h.d f6, f21 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xd44c243390134b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49f6fc0d0c7d496d # load x3 with value 0x49f6fc0d0c7d496d
sd x3, 0(x2) # store 0x49f6fc0d0c7d496d in memory
fld f25, 0(x2) # load 0x49f6fc0d0c7d496d from memory into f25
fcvt.h.d f7, f25 # perform operation
fcvt.h.d f7, f25 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xd7273c1c94ddcf66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a2f0a50d8c98cbd # load x3 with value 0x0a2f0a50d8c98cbd
sd x3, 0(x2) # store 0x0a2f0a50d8c98cbd in memory
fld f7, 0(x2) # load 0x0a2f0a50d8c98cbd from memory into f7
fcvt.h.d f8, f7 # perform operation
fcvt.h.d f8, f7 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xe76f9b554b56fa81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23af1276c861b8ad # load x3 with value 0x23af1276c861b8ad
sd x3, 0(x2) # store 0x23af1276c861b8ad in memory
fld f7, 0(x2) # load 0x23af1276c861b8ad from memory into f7
fcvt.h.d f9, f7 # perform operation
fcvt.h.d f9, f7 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xd0500d374c3a394a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43275a1d7d697756 # load x3 with value 0x43275a1d7d697756
sd x3, 0(x2) # store 0x43275a1d7d697756 in memory
fld f31, 0(x2) # load 0x43275a1d7d697756 from memory into f31
fcvt.h.d f10, f31 # perform operation
fcvt.h.d f10, f31 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x2437118bd1b09d5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6436617ea0ecf8bb # load x3 with value 0x6436617ea0ecf8bb
sd x3, 0(x2) # store 0x6436617ea0ecf8bb in memory
fld f25, 0(x2) # load 0x6436617ea0ecf8bb from memory into f25
fcvt.h.d f11, f25 # perform operation
fcvt.h.d f11, f25 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x101d0a93fe2ae7c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9a5d5164bb58bf8 # load x3 with value 0xb9a5d5164bb58bf8
sd x3, 0(x2) # store 0xb9a5d5164bb58bf8 in memory
fld f22, 0(x2) # load 0xb9a5d5164bb58bf8 from memory into f22
fcvt.h.d f12, f22 # perform operation
fcvt.h.d f12, f22 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x0e3aba020a3b4277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2776f33a055b4f8c # load x3 with value 0x2776f33a055b4f8c
sd x3, 0(x2) # store 0x2776f33a055b4f8c in memory
fld f30, 0(x2) # load 0x2776f33a055b4f8c from memory into f30
fcvt.h.d f13, f30 # perform operation
fcvt.h.d f13, f30 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x981ff6866806dd56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe73b435b791529e8 # load x3 with value 0xe73b435b791529e8
sd x3, 0(x2) # store 0xe73b435b791529e8 in memory
fld f21, 0(x2) # load 0xe73b435b791529e8 from memory into f21
fcvt.h.d f14, f21 # perform operation
fcvt.h.d f14, f21 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x574b950c5675e4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8586e7892a6d2c0 # load x3 with value 0xa8586e7892a6d2c0
sd x3, 0(x2) # store 0xa8586e7892a6d2c0 in memory
fld f30, 0(x2) # load 0xa8586e7892a6d2c0 from memory into f30
fcvt.h.d f15, f30 # perform operation
fcvt.h.d f15, f30 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x7023ce52a63668b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa5510f5e144c00f # load x3 with value 0xaa5510f5e144c00f
sd x3, 0(x2) # store 0xaa5510f5e144c00f in memory
fld f4, 0(x2) # load 0xaa5510f5e144c00f from memory into f4
fcvt.h.d f16, f4 # perform operation
fcvt.h.d f16, f4 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xe046e1226c76c5a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa398c92c32051b15 # load x3 with value 0xa398c92c32051b15
sd x3, 0(x2) # store 0xa398c92c32051b15 in memory
fld f16, 0(x2) # load 0xa398c92c32051b15 from memory into f16
fcvt.h.d f17, f16 # perform operation
fcvt.h.d f17, f16 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x15493b63c8ee847c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc48f8682e7f76bf # load x3 with value 0xbc48f8682e7f76bf
sd x3, 0(x2) # store 0xbc48f8682e7f76bf in memory
fld f24, 0(x2) # load 0xbc48f8682e7f76bf from memory into f24
fcvt.h.d f18, f24 # perform operation
fcvt.h.d f18, f24 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x17b826a07dc97c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56c638dea9001b2e # load x3 with value 0x56c638dea9001b2e
sd x3, 0(x2) # store 0x56c638dea9001b2e in memory
fld f24, 0(x2) # load 0x56c638dea9001b2e from memory into f24
fcvt.h.d f19, f24 # perform operation
fcvt.h.d f19, f24 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xc9ddcbd68ed7826b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b2e8ec432d7270d # load x3 with value 0x9b2e8ec432d7270d
sd x3, 0(x2) # store 0x9b2e8ec432d7270d in memory
fld f18, 0(x2) # load 0x9b2e8ec432d7270d from memory into f18
fcvt.h.d f20, f18 # perform operation
fcvt.h.d f20, f18 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xe89a71d64c5c410f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7edcc3b88f81d21a # load x3 with value 0x7edcc3b88f81d21a
sd x3, 0(x2) # store 0x7edcc3b88f81d21a in memory
fld f21, 0(x2) # load 0x7edcc3b88f81d21a from memory into f21
fcvt.h.d f21, f21 # perform operation
fcvt.h.d f21, f21 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x550205ec46ae784d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71f0cbf8f8c335fc # load x3 with value 0x71f0cbf8f8c335fc
sd x3, 0(x2) # store 0x71f0cbf8f8c335fc in memory
fld f3, 0(x2) # load 0x71f0cbf8f8c335fc from memory into f3
fcvt.h.d f22, f3 # perform operation
fcvt.h.d f22, f3 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x45aee35670f19c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x661fd2fa1e7b6f2e # load x3 with value 0x661fd2fa1e7b6f2e
sd x3, 0(x2) # store 0x661fd2fa1e7b6f2e in memory
fld f10, 0(x2) # load 0x661fd2fa1e7b6f2e from memory into f10
fcvt.h.d f23, f10 # perform operation
fcvt.h.d f23, f10 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xde4bfa7489d93ec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1c158d95e3a328a # load x3 with value 0xf1c158d95e3a328a
sd x3, 0(x2) # store 0xf1c158d95e3a328a in memory
fld f23, 0(x2) # load 0xf1c158d95e3a328a from memory into f23
fcvt.h.d f24, f23 # perform operation
fcvt.h.d f24, f23 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x6b9a4c4311be97c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb76ce581362714ad # load x3 with value 0xb76ce581362714ad
sd x3, 0(x2) # store 0xb76ce581362714ad in memory
fld f15, 0(x2) # load 0xb76ce581362714ad from memory into f15
fcvt.h.d f25, f15 # perform operation
fcvt.h.d f25, f15 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x220c965623e9230b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78a1d53946409c36 # load x3 with value 0x78a1d53946409c36
sd x3, 0(x2) # store 0x78a1d53946409c36 in memory
fld f15, 0(x2) # load 0x78a1d53946409c36 from memory into f15
fcvt.h.d f26, f15 # perform operation
fcvt.h.d f26, f15 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x73148113bb1e45cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2e40fd46b708a4f # load x3 with value 0xb2e40fd46b708a4f
sd x3, 0(x2) # store 0xb2e40fd46b708a4f in memory
fld f18, 0(x2) # load 0xb2e40fd46b708a4f from memory into f18
fcvt.h.d f27, f18 # perform operation
fcvt.h.d f27, f18 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x218c1c53760f3f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52f62bf4f4d20285 # load x3 with value 0x52f62bf4f4d20285
sd x3, 0(x2) # store 0x52f62bf4f4d20285 in memory
fld f10, 0(x2) # load 0x52f62bf4f4d20285 from memory into f10
fcvt.h.d f28, f10 # perform operation
fcvt.h.d f28, f10 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xbed7bbdac6763107 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc43b027b16930e9b # load x3 with value 0xc43b027b16930e9b
sd x3, 0(x2) # store 0xc43b027b16930e9b in memory
fld f29, 0(x2) # load 0xc43b027b16930e9b from memory into f29
fcvt.h.d f29, f29 # perform operation
fcvt.h.d f29, f29 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x824eafd95e96c69d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2cea63d9025e288 # load x3 with value 0xc2cea63d9025e288
sd x3, 0(x2) # store 0xc2cea63d9025e288 in memory
fld f1, 0(x2) # load 0xc2cea63d9025e288 from memory into f1
fcvt.h.d f30, f1 # perform operation
fcvt.h.d f30, f1 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xa1f9b072fd1d1882 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3363396e46901c96 # load x3 with value 0x3363396e46901c96
sd x3, 0(x2) # store 0x3363396e46901c96 in memory
fld f2, 0(x2) # load 0x3363396e46901c96 from memory into f2
fcvt.h.d f31, f2 # perform operation
fcvt.h.d f31, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x14, 0x364d0104e3a5ba56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2129285858b2486 # load x3 with value 0xb2129285858b2486
sd x3, 0(x2) # store 0xb2129285858b2486 in memory
fld f0, 0(x2) # load 0xb2129285858b2486 from memory into f0
fcvt.h.d f14, f0 # perform operation
fcvt.h.d f14, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x27, 0x38a0f3f47b9e8248 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0e89928eb004a48 # load x3 with value 0xa0e89928eb004a48
sd x3, 0(x2) # store 0xa0e89928eb004a48 in memory
fld f1, 0(x2) # load 0xa0e89928eb004a48 from memory into f1
fcvt.h.d f27, f1 # perform operation
fcvt.h.d f27, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x24, 0x6693d1237066598b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe10f382dac3fc5aa # load x3 with value 0xe10f382dac3fc5aa
sd x3, 0(x2) # store 0xe10f382dac3fc5aa in memory
fld f2, 0(x2) # load 0xe10f382dac3fc5aa from memory into f2
fcvt.h.d f24, f2 # perform operation
fcvt.h.d f24, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x14, 0x9a6cdc6c2c2444d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45ff912db962a6ed # load x3 with value 0x45ff912db962a6ed
sd x3, 0(x2) # store 0x45ff912db962a6ed in memory
fld f3, 0(x2) # load 0x45ff912db962a6ed from memory into f3
fcvt.h.d f14, f3 # perform operation
fcvt.h.d f14, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x5, 0xfd861883f2bece55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e2380f0e8de871f # load x3 with value 0x7e2380f0e8de871f
sd x3, 0(x2) # store 0x7e2380f0e8de871f in memory
fld f4, 0(x2) # load 0x7e2380f0e8de871f from memory into f4
fcvt.h.d f5, f4 # perform operation
fcvt.h.d f5, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x25, 0x5f8a888923741a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17917e36b4c2f4af # load x3 with value 0x17917e36b4c2f4af
sd x3, 0(x2) # store 0x17917e36b4c2f4af in memory
fld f5, 0(x2) # load 0x17917e36b4c2f4af from memory into f5
fcvt.h.d f25, f5 # perform operation
fcvt.h.d f25, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x13, 0x7bc168ce24516f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x907e0774b3ea0810 # load x3 with value 0x907e0774b3ea0810
sd x3, 0(x2) # store 0x907e0774b3ea0810 in memory
fld f6, 0(x2) # load 0x907e0774b3ea0810 from memory into f6
fcvt.h.d f13, f6 # perform operation
fcvt.h.d f13, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x16, 0xd10d9a27f602b5ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ee3c5159059b5ae # load x3 with value 0x2ee3c5159059b5ae
sd x3, 0(x2) # store 0x2ee3c5159059b5ae in memory
fld f7, 0(x2) # load 0x2ee3c5159059b5ae from memory into f7
fcvt.h.d f16, f7 # perform operation
fcvt.h.d f16, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x6, 0x5381cfe30ce0a4a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44d5866aa3f4f508 # load x3 with value 0x44d5866aa3f4f508
sd x3, 0(x2) # store 0x44d5866aa3f4f508 in memory
fld f8, 0(x2) # load 0x44d5866aa3f4f508 from memory into f8
fcvt.h.d f6, f8 # perform operation
fcvt.h.d f6, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x15, 0xb78dfbba257baf48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee2c84a7fae9f9b5 # load x3 with value 0xee2c84a7fae9f9b5
sd x3, 0(x2) # store 0xee2c84a7fae9f9b5 in memory
fld f9, 0(x2) # load 0xee2c84a7fae9f9b5 from memory into f9
fcvt.h.d f15, f9 # perform operation
fcvt.h.d f15, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x25, 0x2b76a85a9bdc86a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e839986c88f84e9 # load x3 with value 0x7e839986c88f84e9
sd x3, 0(x2) # store 0x7e839986c88f84e9 in memory
fld f10, 0(x2) # load 0x7e839986c88f84e9 from memory into f10
fcvt.h.d f25, f10 # perform operation
fcvt.h.d f25, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x25, 0x4c6a0eb3631f6b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1795669113c061f9 # load x3 with value 0x1795669113c061f9
sd x3, 0(x2) # store 0x1795669113c061f9 in memory
fld f11, 0(x2) # load 0x1795669113c061f9 from memory into f11
fcvt.h.d f25, f11 # perform operation
fcvt.h.d f25, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x8, 0x9d6cc76cf375b9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfad6d4b05fb5d2b6 # load x3 with value 0xfad6d4b05fb5d2b6
sd x3, 0(x2) # store 0xfad6d4b05fb5d2b6 in memory
fld f12, 0(x2) # load 0xfad6d4b05fb5d2b6 from memory into f12
fcvt.h.d f8, f12 # perform operation
fcvt.h.d f8, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x8, 0xa5861d52dd2bbb74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc61cd50b7d50b793 # load x3 with value 0xc61cd50b7d50b793
sd x3, 0(x2) # store 0xc61cd50b7d50b793 in memory
fld f13, 0(x2) # load 0xc61cd50b7d50b793 from memory into f13
fcvt.h.d f8, f13 # perform operation
fcvt.h.d f8, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x1, 0xd4f0172609ef25a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbdda689fc98a5699 # load x3 with value 0xbdda689fc98a5699
sd x3, 0(x2) # store 0xbdda689fc98a5699 in memory
fld f14, 0(x2) # load 0xbdda689fc98a5699 from memory into f14
fcvt.h.d f1, f14 # perform operation
fcvt.h.d f1, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x10, 0x45a4b7dd94640731 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70fd4f2c6bcefaab # load x3 with value 0x70fd4f2c6bcefaab
sd x3, 0(x2) # store 0x70fd4f2c6bcefaab in memory
fld f15, 0(x2) # load 0x70fd4f2c6bcefaab from memory into f15
fcvt.h.d f10, f15 # perform operation
fcvt.h.d f10, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x18, 0x613cc342fa09e301 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x706701ceb2d66a2d # load x3 with value 0x706701ceb2d66a2d
sd x3, 0(x2) # store 0x706701ceb2d66a2d in memory
fld f16, 0(x2) # load 0x706701ceb2d66a2d from memory into f16
fcvt.h.d f18, f16 # perform operation
fcvt.h.d f18, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x29, 0x752296a7782cf194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62f5e6be1969335a # load x3 with value 0x62f5e6be1969335a
sd x3, 0(x2) # store 0x62f5e6be1969335a in memory
fld f17, 0(x2) # load 0x62f5e6be1969335a from memory into f17
fcvt.h.d f29, f17 # perform operation
fcvt.h.d f29, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x30, 0x9bb5d2b2b9a86de8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x101a3d60feb1c2ee # load x3 with value 0x101a3d60feb1c2ee
sd x3, 0(x2) # store 0x101a3d60feb1c2ee in memory
fld f18, 0(x2) # load 0x101a3d60feb1c2ee from memory into f18
fcvt.h.d f30, f18 # perform operation
fcvt.h.d f30, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x9, 0x3de8a231219da0c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ab6e330a2992e56 # load x3 with value 0x0ab6e330a2992e56
sd x3, 0(x2) # store 0x0ab6e330a2992e56 in memory
fld f19, 0(x2) # load 0x0ab6e330a2992e56 from memory into f19
fcvt.h.d f9, f19 # perform operation
fcvt.h.d f9, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x10, 0x265fe7fea254e4b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a2ff66c6fe2413c # load x3 with value 0x9a2ff66c6fe2413c
sd x3, 0(x2) # store 0x9a2ff66c6fe2413c in memory
fld f20, 0(x2) # load 0x9a2ff66c6fe2413c from memory into f20
fcvt.h.d f10, f20 # perform operation
fcvt.h.d f10, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x18, 0x75c50006f4fb7869 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbde265bc134e0f8e # load x3 with value 0xbde265bc134e0f8e
sd x3, 0(x2) # store 0xbde265bc134e0f8e in memory
fld f21, 0(x2) # load 0xbde265bc134e0f8e from memory into f21
fcvt.h.d f18, f21 # perform operation
fcvt.h.d f18, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x8, 0x33391745ecb973d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3f9518e36c62169 # load x3 with value 0xd3f9518e36c62169
sd x3, 0(x2) # store 0xd3f9518e36c62169 in memory
fld f22, 0(x2) # load 0xd3f9518e36c62169 from memory into f22
fcvt.h.d f8, f22 # perform operation
fcvt.h.d f8, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x2, 0x5a060394675e5800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68a5f0d04d6fd9ef # load x3 with value 0x68a5f0d04d6fd9ef
sd x3, 0(x2) # store 0x68a5f0d04d6fd9ef in memory
fld f23, 0(x2) # load 0x68a5f0d04d6fd9ef from memory into f23
fcvt.h.d f2, f23 # perform operation
fcvt.h.d f2, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x10, 0xf76a8509c54efb3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ae841f3b1a2759b # load x3 with value 0x4ae841f3b1a2759b
sd x3, 0(x2) # store 0x4ae841f3b1a2759b in memory
fld f24, 0(x2) # load 0x4ae841f3b1a2759b from memory into f24
fcvt.h.d f10, f24 # perform operation
fcvt.h.d f10, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x7, 0xb96df6ccf60ea973 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1df8eb7f425bc8bf # load x3 with value 0x1df8eb7f425bc8bf
sd x3, 0(x2) # store 0x1df8eb7f425bc8bf in memory
fld f25, 0(x2) # load 0x1df8eb7f425bc8bf from memory into f25
fcvt.h.d f7, f25 # perform operation
fcvt.h.d f7, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x19, 0x62028e8c60f5b2ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6de4edd10e931b5 # load x3 with value 0xa6de4edd10e931b5
sd x3, 0(x2) # store 0xa6de4edd10e931b5 in memory
fld f26, 0(x2) # load 0xa6de4edd10e931b5 from memory into f26
fcvt.h.d f19, f26 # perform operation
fcvt.h.d f19, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x12, 0xcfcdf5b6113b0999 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44b8d8ab174e0743 # load x3 with value 0x44b8d8ab174e0743
sd x3, 0(x2) # store 0x44b8d8ab174e0743 in memory
fld f27, 0(x2) # load 0x44b8d8ab174e0743 from memory into f27
fcvt.h.d f12, f27 # perform operation
fcvt.h.d f12, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x21, 0x5b4765f0f2ae4d8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa06b7fbcc1497669 # load x3 with value 0xa06b7fbcc1497669
sd x3, 0(x2) # store 0xa06b7fbcc1497669 in memory
fld f28, 0(x2) # load 0xa06b7fbcc1497669 from memory into f28
fcvt.h.d f21, f28 # perform operation
fcvt.h.d f21, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x21, 0xd5ad43e6776c701a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf044ea6c1d02a6c3 # load x3 with value 0xf044ea6c1d02a6c3
sd x3, 0(x2) # store 0xf044ea6c1d02a6c3 in memory
fld f29, 0(x2) # load 0xf044ea6c1d02a6c3 from memory into f29
fcvt.h.d f21, f29 # perform operation
fcvt.h.d f21, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x24, 0x7d85fb67ab15ac6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcaf28a25bcec9285 # load x3 with value 0xcaf28a25bcec9285
sd x3, 0(x2) # store 0xcaf28a25bcec9285 in memory
fld f30, 0(x2) # load 0xcaf28a25bcec9285 from memory into f30
fcvt.h.d f24, f30 # perform operation
fcvt.h.d f24, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x4, 0x6f70aacb6f12c5f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4abde2d0e7daeacb # load x3 with value 0x4abde2d0e7daeacb
sd x3, 0(x2) # store 0x4abde2d0e7daeacb in memory
fld f31, 0(x2) # load 0x4abde2d0e7daeacb from memory into f31
fcvt.h.d f4, f31 # perform operation
fcvt.h.d f4, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
