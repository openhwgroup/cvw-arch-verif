///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fcvt.h.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.535709
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
li x24, 0x283daa5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fcvt.h.s f24, f14 # perform operation
fcvt.h.s f24, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x19, 0x6ae547ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
fcvt.h.s f19, f4 # perform operation
fcvt.h.s f19, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x3, 0x43a651f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fcvt.h.s f3, f27 # perform operation
fcvt.h.s f3, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x8, 0xd88a0269 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fcvt.h.s f8, f16 # perform operation
fcvt.h.s f8, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x12, 0x2ba620f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fcvt.h.s f12, f2 # perform operation
fcvt.h.s f12, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x7, 0xe2d589d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fcvt.h.s f7, f12 # perform operation
fcvt.h.s f7, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x27, 0xa3ee8064 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fcvt.h.s f27, f12 # perform operation
fcvt.h.s f27, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x23, 0x5eaba444 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fcvt.h.s f23, f29 # perform operation
fcvt.h.s f23, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x28, 0x20d58492 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fcvt.h.s f28, f7 # perform operation
fcvt.h.s f28, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x24, 0xf9cf4846 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fcvt.h.s f24, f19 # perform operation
fcvt.h.s f24, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x31, 0xae84a358 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fcvt.h.s f31, f12 # perform operation
fcvt.h.s f31, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x26, 0x69f3a81a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fcvt.h.s f26, f5 # perform operation
fcvt.h.s f26, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x18, 0xa3abb3c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fcvt.h.s f18, f29 # perform operation
fcvt.h.s f18, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x14, 0x2be4345c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fcvt.h.s f14, f12 # perform operation
fcvt.h.s f14, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x29, 0xd6c72b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fcvt.h.s f29, f6 # perform operation
fcvt.h.s f29, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x15, 0x922d6ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fcvt.h.s f15, f26 # perform operation
fcvt.h.s f15, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x23, 0xec01df9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fcvt.h.s f23, f28 # perform operation
fcvt.h.s f23, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x1, 0xea81127d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fcvt.h.s f1, f15 # perform operation
fcvt.h.s f1, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x8, 0x564380e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fcvt.h.s f8, f23 # perform operation
fcvt.h.s f8, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x11, 0xb97e7b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fcvt.h.s f11, f8 # perform operation
fcvt.h.s f11, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x21, 0xfc9c6769 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fcvt.h.s f21, f1 # perform operation
fcvt.h.s f21, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x9, 0xc087461f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fcvt.h.s f9, f7 # perform operation
fcvt.h.s f9, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x26, 0x3e911168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fcvt.h.s f26, f2 # perform operation
fcvt.h.s f26, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x18, 0x558a07a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fcvt.h.s f18, f21 # perform operation
fcvt.h.s f18, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x8, 0x73188da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fcvt.h.s f8, f15 # perform operation
fcvt.h.s f8, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x6, 0x7634e73c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fcvt.h.s f6, f16 # perform operation
fcvt.h.s f6, f16 # perform operation

# Testcase cp_frm
li x24, 0x4672ea57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6a4b36f # load x3 with value 0xf6a4b36f
sw x3, 0(x2) # store 0xf6a4b36f in memory
flw f2, 0(x2) # load 0xf6a4b36f from memory into f2
fcvt.h.s f24, f2 # perform operation
fcvt.h.s f24, f2, dyn # perform operation
fcvt.h.s f24, f2, rdn # perform operation
fcvt.h.s f24, f2, rmm # perform operation
fcvt.h.s f24, f2, rne # perform operation
fcvt.h.s f24, f2, rtz # perform operation
fcvt.h.s f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f24, f2 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xebcf56a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11197cd9 # load x3 with value 0x11197cd9
sw x3, 0(x2) # store 0x11197cd9 in memory
flw f26, 0(x2) # load 0x11197cd9 from memory into f26
fcvt.h.s f0, f26 # perform operation
fcvt.h.s f0, f26 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xaab78a0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58b2c978 # load x3 with value 0x58b2c978
sw x3, 0(x2) # store 0x58b2c978 in memory
flw f17, 0(x2) # load 0x58b2c978 from memory into f17
fcvt.h.s f1, f17 # perform operation
fcvt.h.s f1, f17 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xbf661523 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea72d655 # load x3 with value 0xea72d655
sw x3, 0(x2) # store 0xea72d655 in memory
flw f26, 0(x2) # load 0xea72d655 from memory into f26
fcvt.h.s f2, f26 # perform operation
fcvt.h.s f2, f26 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xa758ddd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d846b24 # load x3 with value 0x6d846b24
sw x3, 0(x2) # store 0x6d846b24 in memory
flw f2, 0(x2) # load 0x6d846b24 from memory into f2
fcvt.h.s f3, f2 # perform operation
fcvt.h.s f3, f2 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x473075ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2e200cb # load x3 with value 0xe2e200cb
sw x3, 0(x2) # store 0xe2e200cb in memory
flw f8, 0(x2) # load 0xe2e200cb from memory into f8
fcvt.h.s f4, f8 # perform operation
fcvt.h.s f4, f8 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xa95dc9d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc92c400b # load x3 with value 0xc92c400b
sw x3, 0(x2) # store 0xc92c400b in memory
flw f9, 0(x2) # load 0xc92c400b from memory into f9
fcvt.h.s f5, f9 # perform operation
fcvt.h.s f5, f9 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x2f7e5c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb51048a6 # load x3 with value 0xb51048a6
sw x3, 0(x2) # store 0xb51048a6 in memory
flw f19, 0(x2) # load 0xb51048a6 from memory into f19
fcvt.h.s f6, f19 # perform operation
fcvt.h.s f6, f19 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x1c3c7dcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ca698d3 # load x3 with value 0x2ca698d3
sw x3, 0(x2) # store 0x2ca698d3 in memory
flw f14, 0(x2) # load 0x2ca698d3 from memory into f14
fcvt.h.s f7, f14 # perform operation
fcvt.h.s f7, f14 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xe4fed9cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bc01fda # load x3 with value 0x1bc01fda
sw x3, 0(x2) # store 0x1bc01fda in memory
flw f30, 0(x2) # load 0x1bc01fda from memory into f30
fcvt.h.s f8, f30 # perform operation
fcvt.h.s f8, f30 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x11a64183 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf983866 # load x3 with value 0xaf983866
sw x3, 0(x2) # store 0xaf983866 in memory
flw f3, 0(x2) # load 0xaf983866 from memory into f3
fcvt.h.s f9, f3 # perform operation
fcvt.h.s f9, f3 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x1722e71d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfc03f03 # load x3 with value 0xdfc03f03
sw x3, 0(x2) # store 0xdfc03f03 in memory
flw f21, 0(x2) # load 0xdfc03f03 from memory into f21
fcvt.h.s f10, f21 # perform operation
fcvt.h.s f10, f21 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x2190de58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b18cce8 # load x3 with value 0x5b18cce8
sw x3, 0(x2) # store 0x5b18cce8 in memory
flw f25, 0(x2) # load 0x5b18cce8 from memory into f25
fcvt.h.s f11, f25 # perform operation
fcvt.h.s f11, f25 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x4d120207 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa624f43c # load x3 with value 0xa624f43c
sw x3, 0(x2) # store 0xa624f43c in memory
flw f30, 0(x2) # load 0xa624f43c from memory into f30
fcvt.h.s f12, f30 # perform operation
fcvt.h.s f12, f30 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x9a22b279 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9b03b2f # load x3 with value 0xc9b03b2f
sw x3, 0(x2) # store 0xc9b03b2f in memory
flw f26, 0(x2) # load 0xc9b03b2f from memory into f26
fcvt.h.s f13, f26 # perform operation
fcvt.h.s f13, f26 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xd481f3b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x694e58a5 # load x3 with value 0x694e58a5
sw x3, 0(x2) # store 0x694e58a5 in memory
flw f24, 0(x2) # load 0x694e58a5 from memory into f24
fcvt.h.s f14, f24 # perform operation
fcvt.h.s f14, f24 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x6394ca22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c41784e # load x3 with value 0x8c41784e
sw x3, 0(x2) # store 0x8c41784e in memory
flw f18, 0(x2) # load 0x8c41784e from memory into f18
fcvt.h.s f15, f18 # perform operation
fcvt.h.s f15, f18 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xe9a30fb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27404ab5 # load x3 with value 0x27404ab5
sw x3, 0(x2) # store 0x27404ab5 in memory
flw f15, 0(x2) # load 0x27404ab5 from memory into f15
fcvt.h.s f16, f15 # perform operation
fcvt.h.s f16, f15 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x49465385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15e15658 # load x3 with value 0x15e15658
sw x3, 0(x2) # store 0x15e15658 in memory
flw f26, 0(x2) # load 0x15e15658 from memory into f26
fcvt.h.s f17, f26 # perform operation
fcvt.h.s f17, f26 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x50de11e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ca4f37f # load x3 with value 0x8ca4f37f
sw x3, 0(x2) # store 0x8ca4f37f in memory
flw f13, 0(x2) # load 0x8ca4f37f from memory into f13
fcvt.h.s f18, f13 # perform operation
fcvt.h.s f18, f13 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x50786bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89a15da9 # load x3 with value 0x89a15da9
sw x3, 0(x2) # store 0x89a15da9 in memory
flw f14, 0(x2) # load 0x89a15da9 from memory into f14
fcvt.h.s f19, f14 # perform operation
fcvt.h.s f19, f14 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x3bf0c115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc6ae55d # load x3 with value 0xcc6ae55d
sw x3, 0(x2) # store 0xcc6ae55d in memory
flw f14, 0(x2) # load 0xcc6ae55d from memory into f14
fcvt.h.s f20, f14 # perform operation
fcvt.h.s f20, f14 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x1ffba86d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35be89a8 # load x3 with value 0x35be89a8
sw x3, 0(x2) # store 0x35be89a8 in memory
flw f2, 0(x2) # load 0x35be89a8 from memory into f2
fcvt.h.s f21, f2 # perform operation
fcvt.h.s f21, f2 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x8563bd5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e074fa0 # load x3 with value 0x3e074fa0
sw x3, 0(x2) # store 0x3e074fa0 in memory
flw f17, 0(x2) # load 0x3e074fa0 from memory into f17
fcvt.h.s f22, f17 # perform operation
fcvt.h.s f22, f17 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x493891b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1c60b33 # load x3 with value 0xd1c60b33
sw x3, 0(x2) # store 0xd1c60b33 in memory
flw f20, 0(x2) # load 0xd1c60b33 from memory into f20
fcvt.h.s f23, f20 # perform operation
fcvt.h.s f23, f20 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xf968f9c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72f5bff0 # load x3 with value 0x72f5bff0
sw x3, 0(x2) # store 0x72f5bff0 in memory
flw f6, 0(x2) # load 0x72f5bff0 from memory into f6
fcvt.h.s f24, f6 # perform operation
fcvt.h.s f24, f6 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xc995a31c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f744ba8 # load x3 with value 0x4f744ba8
sw x3, 0(x2) # store 0x4f744ba8 in memory
flw f7, 0(x2) # load 0x4f744ba8 from memory into f7
fcvt.h.s f25, f7 # perform operation
fcvt.h.s f25, f7 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xcaffd153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f4ac6a4 # load x3 with value 0x0f4ac6a4
sw x3, 0(x2) # store 0x0f4ac6a4 in memory
flw f21, 0(x2) # load 0x0f4ac6a4 from memory into f21
fcvt.h.s f26, f21 # perform operation
fcvt.h.s f26, f21 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xf8a89427 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff359aaa # load x3 with value 0xff359aaa
sw x3, 0(x2) # store 0xff359aaa in memory
flw f28, 0(x2) # load 0xff359aaa from memory into f28
fcvt.h.s f27, f28 # perform operation
fcvt.h.s f27, f28 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xbcfe2d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x849d5573 # load x3 with value 0x849d5573
sw x3, 0(x2) # store 0x849d5573 in memory
flw f23, 0(x2) # load 0x849d5573 from memory into f23
fcvt.h.s f28, f23 # perform operation
fcvt.h.s f28, f23 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x0ecf7af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45957cdd # load x3 with value 0x45957cdd
sw x3, 0(x2) # store 0x45957cdd in memory
flw f24, 0(x2) # load 0x45957cdd from memory into f24
fcvt.h.s f29, f24 # perform operation
fcvt.h.s f29, f24 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x6958b774 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07829e17 # load x3 with value 0x07829e17
sw x3, 0(x2) # store 0x07829e17 in memory
flw f24, 0(x2) # load 0x07829e17 from memory into f24
fcvt.h.s f30, f24 # perform operation
fcvt.h.s f30, f24 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x03b34bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd055fe9e # load x3 with value 0xd055fe9e
sw x3, 0(x2) # store 0xd055fe9e in memory
flw f15, 0(x2) # load 0xd055fe9e from memory into f15
fcvt.h.s f31, f15 # perform operation
fcvt.h.s f31, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x28, 0x79964822 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8193bd1b # load x3 with value 0x8193bd1b
sw x3, 0(x2) # store 0x8193bd1b in memory
flw f0, 0(x2) # load 0x8193bd1b from memory into f0
fcvt.h.s f28, f0 # perform operation
fcvt.h.s f28, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x9, 0xad7d93ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85b6afc0 # load x3 with value 0x85b6afc0
sw x3, 0(x2) # store 0x85b6afc0 in memory
flw f1, 0(x2) # load 0x85b6afc0 from memory into f1
fcvt.h.s f9, f1 # perform operation
fcvt.h.s f9, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x23, 0x7a2e357e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77b6f089 # load x3 with value 0x77b6f089
sw x3, 0(x2) # store 0x77b6f089 in memory
flw f2, 0(x2) # load 0x77b6f089 from memory into f2
fcvt.h.s f23, f2 # perform operation
fcvt.h.s f23, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x28, 0xe2cab7ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x035aa773 # load x3 with value 0x035aa773
sw x3, 0(x2) # store 0x035aa773 in memory
flw f3, 0(x2) # load 0x035aa773 from memory into f3
fcvt.h.s f28, f3 # perform operation
fcvt.h.s f28, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x22, 0x4c5ae421 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe27c42ec # load x3 with value 0xe27c42ec
sw x3, 0(x2) # store 0xe27c42ec in memory
flw f4, 0(x2) # load 0xe27c42ec from memory into f4
fcvt.h.s f22, f4 # perform operation
fcvt.h.s f22, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x4, 0x19cd43ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe876ee74 # load x3 with value 0xe876ee74
sw x3, 0(x2) # store 0xe876ee74 in memory
flw f5, 0(x2) # load 0xe876ee74 from memory into f5
fcvt.h.s f4, f5 # perform operation
fcvt.h.s f4, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x11, 0xa2867d3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5877f9a # load x3 with value 0xe5877f9a
sw x3, 0(x2) # store 0xe5877f9a in memory
flw f6, 0(x2) # load 0xe5877f9a from memory into f6
fcvt.h.s f11, f6 # perform operation
fcvt.h.s f11, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x10, 0xf29ff80b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4e80f58 # load x3 with value 0xd4e80f58
sw x3, 0(x2) # store 0xd4e80f58 in memory
flw f7, 0(x2) # load 0xd4e80f58 from memory into f7
fcvt.h.s f10, f7 # perform operation
fcvt.h.s f10, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x5, 0x148aad12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd90a2204 # load x3 with value 0xd90a2204
sw x3, 0(x2) # store 0xd90a2204 in memory
flw f8, 0(x2) # load 0xd90a2204 from memory into f8
fcvt.h.s f5, f8 # perform operation
fcvt.h.s f5, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x19, 0xa14d0a10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x318ae7f6 # load x3 with value 0x318ae7f6
sw x3, 0(x2) # store 0x318ae7f6 in memory
flw f9, 0(x2) # load 0x318ae7f6 from memory into f9
fcvt.h.s f19, f9 # perform operation
fcvt.h.s f19, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x8, 0x0e26677f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47fe8b75 # load x3 with value 0x47fe8b75
sw x3, 0(x2) # store 0x47fe8b75 in memory
flw f10, 0(x2) # load 0x47fe8b75 from memory into f10
fcvt.h.s f8, f10 # perform operation
fcvt.h.s f8, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x20, 0x078cfa3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c01c91d # load x3 with value 0x2c01c91d
sw x3, 0(x2) # store 0x2c01c91d in memory
flw f11, 0(x2) # load 0x2c01c91d from memory into f11
fcvt.h.s f20, f11 # perform operation
fcvt.h.s f20, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x22, 0x1cb964da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x872f006e # load x3 with value 0x872f006e
sw x3, 0(x2) # store 0x872f006e in memory
flw f12, 0(x2) # load 0x872f006e from memory into f12
fcvt.h.s f22, f12 # perform operation
fcvt.h.s f22, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x2, 0x025424e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2857f2d0 # load x3 with value 0x2857f2d0
sw x3, 0(x2) # store 0x2857f2d0 in memory
flw f13, 0(x2) # load 0x2857f2d0 from memory into f13
fcvt.h.s f2, f13 # perform operation
fcvt.h.s f2, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x22, 0xf8ec69a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1290952e # load x3 with value 0x1290952e
sw x3, 0(x2) # store 0x1290952e in memory
flw f14, 0(x2) # load 0x1290952e from memory into f14
fcvt.h.s f22, f14 # perform operation
fcvt.h.s f22, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x4, 0xb8bbd6e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a2378e0 # load x3 with value 0x9a2378e0
sw x3, 0(x2) # store 0x9a2378e0 in memory
flw f15, 0(x2) # load 0x9a2378e0 from memory into f15
fcvt.h.s f4, f15 # perform operation
fcvt.h.s f4, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x17, 0x32d95b56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c7f4933 # load x3 with value 0x5c7f4933
sw x3, 0(x2) # store 0x5c7f4933 in memory
flw f16, 0(x2) # load 0x5c7f4933 from memory into f16
fcvt.h.s f17, f16 # perform operation
fcvt.h.s f17, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x19, 0x32d8d089 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x062ed10f # load x3 with value 0x062ed10f
sw x3, 0(x2) # store 0x062ed10f in memory
flw f17, 0(x2) # load 0x062ed10f from memory into f17
fcvt.h.s f19, f17 # perform operation
fcvt.h.s f19, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x11, 0xfa1201f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f36c23c # load x3 with value 0x2f36c23c
sw x3, 0(x2) # store 0x2f36c23c in memory
flw f18, 0(x2) # load 0x2f36c23c from memory into f18
fcvt.h.s f11, f18 # perform operation
fcvt.h.s f11, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x3, 0x11dfb09b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x727a20d8 # load x3 with value 0x727a20d8
sw x3, 0(x2) # store 0x727a20d8 in memory
flw f19, 0(x2) # load 0x727a20d8 from memory into f19
fcvt.h.s f3, f19 # perform operation
fcvt.h.s f3, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x30, 0x8cb26f08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80bd8ad4 # load x3 with value 0x80bd8ad4
sw x3, 0(x2) # store 0x80bd8ad4 in memory
flw f20, 0(x2) # load 0x80bd8ad4 from memory into f20
fcvt.h.s f30, f20 # perform operation
fcvt.h.s f30, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x15, 0x83862671 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x998eaff6 # load x3 with value 0x998eaff6
sw x3, 0(x2) # store 0x998eaff6 in memory
flw f21, 0(x2) # load 0x998eaff6 from memory into f21
fcvt.h.s f15, f21 # perform operation
fcvt.h.s f15, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x17, 0x481b6385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65cde539 # load x3 with value 0x65cde539
sw x3, 0(x2) # store 0x65cde539 in memory
flw f22, 0(x2) # load 0x65cde539 from memory into f22
fcvt.h.s f17, f22 # perform operation
fcvt.h.s f17, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x28, 0x245a2c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x142895a3 # load x3 with value 0x142895a3
sw x3, 0(x2) # store 0x142895a3 in memory
flw f23, 0(x2) # load 0x142895a3 from memory into f23
fcvt.h.s f28, f23 # perform operation
fcvt.h.s f28, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x10, 0x33535a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x552c36dc # load x3 with value 0x552c36dc
sw x3, 0(x2) # store 0x552c36dc in memory
flw f24, 0(x2) # load 0x552c36dc from memory into f24
fcvt.h.s f10, f24 # perform operation
fcvt.h.s f10, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x7, 0x91a3e59b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2889d448 # load x3 with value 0x2889d448
sw x3, 0(x2) # store 0x2889d448 in memory
flw f25, 0(x2) # load 0x2889d448 from memory into f25
fcvt.h.s f7, f25 # perform operation
fcvt.h.s f7, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x20, 0xae585f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ebf9ca4 # load x3 with value 0x8ebf9ca4
sw x3, 0(x2) # store 0x8ebf9ca4 in memory
flw f26, 0(x2) # load 0x8ebf9ca4 from memory into f26
fcvt.h.s f20, f26 # perform operation
fcvt.h.s f20, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x4, 0x67d42f3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6732e1c8 # load x3 with value 0x6732e1c8
sw x3, 0(x2) # store 0x6732e1c8 in memory
flw f27, 0(x2) # load 0x6732e1c8 from memory into f27
fcvt.h.s f4, f27 # perform operation
fcvt.h.s f4, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x24, 0xfd09f2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x187690f1 # load x3 with value 0x187690f1
sw x3, 0(x2) # store 0x187690f1 in memory
flw f28, 0(x2) # load 0x187690f1 from memory into f28
fcvt.h.s f24, f28 # perform operation
fcvt.h.s f24, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x13, 0xf116bc22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe15e8b48 # load x3 with value 0xe15e8b48
sw x3, 0(x2) # store 0xe15e8b48 in memory
flw f29, 0(x2) # load 0xe15e8b48 from memory into f29
fcvt.h.s f13, f29 # perform operation
fcvt.h.s f13, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x1, 0xd8bc7c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d007037 # load x3 with value 0x4d007037
sw x3, 0(x2) # store 0x4d007037 in memory
flw f30, 0(x2) # load 0x4d007037 from memory into f30
fcvt.h.s f1, f30 # perform operation
fcvt.h.s f1, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x16, 0x50e58b9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0c44e15 # load x3 with value 0xd0c44e15
sw x3, 0(x2) # store 0xd0c44e15 in memory
flw f31, 0(x2) # load 0xd0c44e15 from memory into f31
fcvt.h.s f16, f31 # perform operation
fcvt.h.s f16, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
