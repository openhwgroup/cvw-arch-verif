///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fcvt.s.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.852294
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
li x21, 0x33e74cee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
fcvt.s.d f21, f1 # perform operation
fcvt.s.d f21, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x21, 0x8009bf3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
fcvt.s.d f21, f25 # perform operation
fcvt.s.d f21, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x17, 0x137bb766 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fcvt.s.d f17, f19 # perform operation
fcvt.s.d f17, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x15, 0xf7f95b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fcvt.s.d f15, f3 # perform operation
fcvt.s.d f15, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x5, 0x8033b102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fcvt.s.d f5, f8 # perform operation
fcvt.s.d f5, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x27, 0xe2c4b6f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
fcvt.s.d f27, f11 # perform operation
fcvt.s.d f27, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x3, 0x0f7a756f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fcvt.s.d f3, f16 # perform operation
fcvt.s.d f3, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x16, 0x04cc6ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
fcvt.s.d f16, f1 # perform operation
fcvt.s.d f16, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x10, 0x57fa8bec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fcvt.s.d f10, f18 # perform operation
fcvt.s.d f10, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x26, 0x83401a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
fcvt.s.d f26, f24 # perform operation
fcvt.s.d f26, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x28, 0xc8e3a900 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
fcvt.s.d f28, f27 # perform operation
fcvt.s.d f28, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x21, 0x318d9305 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
fcvt.s.d f21, f24 # perform operation
fcvt.s.d f21, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x20, 0xed78a422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
fcvt.s.d f20, f17 # perform operation
fcvt.s.d f20, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x24, 0x5248c50d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
fcvt.s.d f24, f21 # perform operation
fcvt.s.d f24, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x8, 0x40761d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
fcvt.s.d f8, f18 # perform operation
fcvt.s.d f8, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x2, 0x44e23d3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
fcvt.s.d f2, f30 # perform operation
fcvt.s.d f2, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x9, 0x3ae1b909 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fcvt.s.d f9, f5 # perform operation
fcvt.s.d f9, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x23, 0x572aed06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
fcvt.s.d f23, f9 # perform operation
fcvt.s.d f23, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x2, 0x47a381d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff0000000000000 from memory into f23
fcvt.s.d f2, f23 # perform operation
fcvt.s.d f2, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x23, 0xf9ae6c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
fcvt.s.d f23, f6 # perform operation
fcvt.s.d f23, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x8, 0xac176474 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fcvt.s.d f8, f4 # perform operation
fcvt.s.d f8, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x4, 0xb2a032c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
fcvt.s.d f4, f31 # perform operation
fcvt.s.d f4, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x13, 0x64af3d78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
fcvt.s.d f13, f9 # perform operation
fcvt.s.d f13, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x16, 0xf74d3839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
fcvt.s.d f16, f5 # perform operation
fcvt.s.d f16, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x7, 0xf82fda85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
fcvt.s.d f7, f22 # perform operation
fcvt.s.d f7, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x21, 0xca6d98cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
fcvt.s.d f21, f12 # perform operation
fcvt.s.d f21, f12 # perform operation

# Testcase cp_frm
li x29, 0xb3e465e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce75c551 # load x3 with 32 MSBs 0x00000000ce75c551
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ce75c551
sw x3, 0(x2) # store x3 (0xce75c551) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000ce75c551 from memory into f19
fcvt.s.d f29, f19 # perform operation
fcvt.s.d f29, f19, dyn # perform operation
fcvt.s.d f29, f19, rdn # perform operation
fcvt.s.d f29, f19, rmm # perform operation
fcvt.s.d f29, f19, rne # perform operation
fcvt.s.d f29, f19, rtz # perform operation
fcvt.s.d f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f29, f19 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x34f07bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5be83124 # load x3 with 32 MSBs 0x000000005be83124
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005be83124
sw x3, 0(x2) # store x3 (0x5be83124) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000005be83124 from memory into f23
fcvt.s.d f0, f23 # perform operation
fcvt.s.d f0, f23 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x1e7816b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ab7d457 # load x3 with 32 MSBs 0x000000009ab7d457
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009ab7d457
sw x3, 0(x2) # store x3 (0x9ab7d457) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000009ab7d457 from memory into f14
fcvt.s.d f1, f14 # perform operation
fcvt.s.d f1, f14 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x82c51ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x05556e27 # load x3 with 32 MSBs 0x0000000005556e27
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000005556e27
sw x3, 0(x2) # store x3 (0x05556e27) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000005556e27 from memory into f8
fcvt.s.d f2, f8 # perform operation
fcvt.s.d f2, f8 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xb300d7ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90addd8a # load x3 with 32 MSBs 0x0000000090addd8a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000090addd8a
sw x3, 0(x2) # store x3 (0x90addd8a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000090addd8a from memory into f20
fcvt.s.d f3, f20 # perform operation
fcvt.s.d f3, f20 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x87347bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb922743b # load x3 with 32 MSBs 0x00000000b922743b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b922743b
sw x3, 0(x2) # store x3 (0xb922743b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000b922743b from memory into f7
fcvt.s.d f4, f7 # perform operation
fcvt.s.d f4, f7 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x18df694e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad679d84 # load x3 with 32 MSBs 0x00000000ad679d84
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ad679d84
sw x3, 0(x2) # store x3 (0xad679d84) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000ad679d84 from memory into f17
fcvt.s.d f5, f17 # perform operation
fcvt.s.d f5, f17 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x20bf3cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0884d599 # load x3 with 32 MSBs 0x000000000884d599
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000884d599
sw x3, 0(x2) # store x3 (0x0884d599) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000000884d599 from memory into f1
fcvt.s.d f6, f1 # perform operation
fcvt.s.d f6, f1 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x0d22f7c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a23cc16 # load x3 with 32 MSBs 0x000000005a23cc16
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005a23cc16
sw x3, 0(x2) # store x3 (0x5a23cc16) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000005a23cc16 from memory into f2
fcvt.s.d f7, f2 # perform operation
fcvt.s.d f7, f2 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x7b8ec3eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c76d19a # load x3 with 32 MSBs 0x000000003c76d19a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003c76d19a
sw x3, 0(x2) # store x3 (0x3c76d19a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000003c76d19a from memory into f16
fcvt.s.d f8, f16 # perform operation
fcvt.s.d f8, f16 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x2f030476 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd082e373 # load x3 with 32 MSBs 0x00000000d082e373
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d082e373
sw x3, 0(x2) # store x3 (0xd082e373) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000d082e373 from memory into f13
fcvt.s.d f9, f13 # perform operation
fcvt.s.d f9, f13 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xa86a6eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc715cd1 # load x3 with 32 MSBs 0x00000000cc715cd1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cc715cd1
sw x3, 0(x2) # store x3 (0xcc715cd1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000cc715cd1 from memory into f9
fcvt.s.d f10, f9 # perform operation
fcvt.s.d f10, f9 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x941a42ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6841853 # load x3 with 32 MSBs 0x00000000f6841853
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f6841853
sw x3, 0(x2) # store x3 (0xf6841853) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000f6841853 from memory into f4
fcvt.s.d f11, f4 # perform operation
fcvt.s.d f11, f4 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xc8ecaf63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc1254ba # load x3 with 32 MSBs 0x00000000dc1254ba
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dc1254ba
sw x3, 0(x2) # store x3 (0xdc1254ba) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000dc1254ba from memory into f16
fcvt.s.d f12, f16 # perform operation
fcvt.s.d f12, f16 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xb82728c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb53a3d0c # load x3 with 32 MSBs 0x00000000b53a3d0c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b53a3d0c
sw x3, 0(x2) # store x3 (0xb53a3d0c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000b53a3d0c from memory into f11
fcvt.s.d f13, f11 # perform operation
fcvt.s.d f13, f11 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x5af8249b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c4ee70d # load x3 with 32 MSBs 0x000000002c4ee70d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002c4ee70d
sw x3, 0(x2) # store x3 (0x2c4ee70d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000002c4ee70d from memory into f8
fcvt.s.d f14, f8 # perform operation
fcvt.s.d f14, f8 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x235e0be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c12d042 # load x3 with 32 MSBs 0x000000007c12d042
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007c12d042
sw x3, 0(x2) # store x3 (0x7c12d042) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000007c12d042 from memory into f12
fcvt.s.d f15, f12 # perform operation
fcvt.s.d f15, f12 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xf64b76d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee48978c # load x3 with 32 MSBs 0x00000000ee48978c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ee48978c
sw x3, 0(x2) # store x3 (0xee48978c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000ee48978c from memory into f18
fcvt.s.d f16, f18 # perform operation
fcvt.s.d f16, f18 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xed8a249b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47af15a1 # load x3 with 32 MSBs 0x0000000047af15a1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000047af15a1
sw x3, 0(x2) # store x3 (0x47af15a1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000047af15a1 from memory into f2
fcvt.s.d f17, f2 # perform operation
fcvt.s.d f17, f2 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x74c90817 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb775006 # load x3 with 32 MSBs 0x00000000bb775006
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bb775006
sw x3, 0(x2) # store x3 (0xbb775006) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000bb775006 from memory into f21
fcvt.s.d f18, f21 # perform operation
fcvt.s.d f18, f21 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xf71b5304 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9a2f49f # load x3 with 32 MSBs 0x00000000c9a2f49f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c9a2f49f
sw x3, 0(x2) # store x3 (0xc9a2f49f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000c9a2f49f from memory into f2
fcvt.s.d f19, f2 # perform operation
fcvt.s.d f19, f2 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x66ecba8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c7e368d # load x3 with 32 MSBs 0x000000006c7e368d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006c7e368d
sw x3, 0(x2) # store x3 (0x6c7e368d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000006c7e368d from memory into f28
fcvt.s.d f20, f28 # perform operation
fcvt.s.d f20, f28 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x27036e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc672a04 # load x3 with 32 MSBs 0x00000000fc672a04
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fc672a04
sw x3, 0(x2) # store x3 (0xfc672a04) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000fc672a04 from memory into f4
fcvt.s.d f21, f4 # perform operation
fcvt.s.d f21, f4 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xf47e7d5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b3509f9 # load x3 with 32 MSBs 0x000000008b3509f9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008b3509f9
sw x3, 0(x2) # store x3 (0x8b3509f9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000008b3509f9 from memory into f6
fcvt.s.d f22, f6 # perform operation
fcvt.s.d f22, f6 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x36470d58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3aa54812 # load x3 with 32 MSBs 0x000000003aa54812
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003aa54812
sw x3, 0(x2) # store x3 (0x3aa54812) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000003aa54812 from memory into f15
fcvt.s.d f23, f15 # perform operation
fcvt.s.d f23, f15 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x0d7392b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafcbd3b1 # load x3 with 32 MSBs 0x00000000afcbd3b1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000afcbd3b1
sw x3, 0(x2) # store x3 (0xafcbd3b1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000afcbd3b1 from memory into f8
fcvt.s.d f24, f8 # perform operation
fcvt.s.d f24, f8 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x796f15db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10dfe1b6 # load x3 with 32 MSBs 0x0000000010dfe1b6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000010dfe1b6
sw x3, 0(x2) # store x3 (0x10dfe1b6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000010dfe1b6 from memory into f6
fcvt.s.d f25, f6 # perform operation
fcvt.s.d f25, f6 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x84007287 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x625b780d # load x3 with 32 MSBs 0x00000000625b780d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000625b780d
sw x3, 0(x2) # store x3 (0x625b780d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000625b780d from memory into f13
fcvt.s.d f26, f13 # perform operation
fcvt.s.d f26, f13 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x2859c5b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3cae7514 # load x3 with 32 MSBs 0x000000003cae7514
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003cae7514
sw x3, 0(x2) # store x3 (0x3cae7514) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003cae7514 from memory into f29
fcvt.s.d f27, f29 # perform operation
fcvt.s.d f27, f29 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x5a4314f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e6d5913 # load x3 with 32 MSBs 0x000000003e6d5913
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003e6d5913
sw x3, 0(x2) # store x3 (0x3e6d5913) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000003e6d5913 from memory into f10
fcvt.s.d f28, f10 # perform operation
fcvt.s.d f28, f10 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x2a7edfec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x374337ee # load x3 with 32 MSBs 0x00000000374337ee
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000374337ee
sw x3, 0(x2) # store x3 (0x374337ee) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000374337ee from memory into f20
fcvt.s.d f29, f20 # perform operation
fcvt.s.d f29, f20 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x659dec02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdeb0a9c8 # load x3 with 32 MSBs 0x00000000deb0a9c8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000deb0a9c8
sw x3, 0(x2) # store x3 (0xdeb0a9c8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000deb0a9c8 from memory into f14
fcvt.s.d f30, f14 # perform operation
fcvt.s.d f30, f14 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xda911e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0fd2ca8 # load x3 with 32 MSBs 0x00000000b0fd2ca8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b0fd2ca8
sw x3, 0(x2) # store x3 (0xb0fd2ca8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000b0fd2ca8 from memory into f13
fcvt.s.d f31, f13 # perform operation
fcvt.s.d f31, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x21, 0xfd81fd96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe76f28a8 # load x3 with 32 MSBs 0x00000000e76f28a8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e76f28a8
sw x3, 0(x2) # store x3 (0xe76f28a8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000e76f28a8 from memory into f0
fcvt.s.d f21, f0 # perform operation
fcvt.s.d f21, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x5, 0x2b24d9c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddb8a7c2 # load x3 with 32 MSBs 0x00000000ddb8a7c2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ddb8a7c2
sw x3, 0(x2) # store x3 (0xddb8a7c2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000ddb8a7c2 from memory into f1
fcvt.s.d f5, f1 # perform operation
fcvt.s.d f5, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x23, 0xaec4e327 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8495ed55 # load x3 with 32 MSBs 0x000000008495ed55
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008495ed55
sw x3, 0(x2) # store x3 (0x8495ed55) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000008495ed55 from memory into f2
fcvt.s.d f23, f2 # perform operation
fcvt.s.d f23, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x22, 0xe8072a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x455ee865 # load x3 with 32 MSBs 0x00000000455ee865
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000455ee865
sw x3, 0(x2) # store x3 (0x455ee865) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000455ee865 from memory into f3
fcvt.s.d f22, f3 # perform operation
fcvt.s.d f22, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x26, 0xdd9328fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47894410 # load x3 with 32 MSBs 0x0000000047894410
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000047894410
sw x3, 0(x2) # store x3 (0x47894410) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000047894410 from memory into f4
fcvt.s.d f26, f4 # perform operation
fcvt.s.d f26, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x14, 0xbf1487cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54fd55dd # load x3 with 32 MSBs 0x0000000054fd55dd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000054fd55dd
sw x3, 0(x2) # store x3 (0x54fd55dd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000054fd55dd from memory into f5
fcvt.s.d f14, f5 # perform operation
fcvt.s.d f14, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x29, 0xe41b0dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f6ec8a1 # load x3 with 32 MSBs 0x000000003f6ec8a1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003f6ec8a1
sw x3, 0(x2) # store x3 (0x3f6ec8a1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003f6ec8a1 from memory into f6
fcvt.s.d f29, f6 # perform operation
fcvt.s.d f29, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x15, 0x43e8c3fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf75b856c # load x3 with 32 MSBs 0x00000000f75b856c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f75b856c
sw x3, 0(x2) # store x3 (0xf75b856c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000f75b856c from memory into f7
fcvt.s.d f15, f7 # perform operation
fcvt.s.d f15, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x6, 0xa130bbf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x963e1ad9 # load x3 with 32 MSBs 0x00000000963e1ad9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000963e1ad9
sw x3, 0(x2) # store x3 (0x963e1ad9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000963e1ad9 from memory into f8
fcvt.s.d f6, f8 # perform operation
fcvt.s.d f6, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x13, 0x4ec67957 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ad95aac # load x3 with 32 MSBs 0x000000009ad95aac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009ad95aac
sw x3, 0(x2) # store x3 (0x9ad95aac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000009ad95aac from memory into f9
fcvt.s.d f13, f9 # perform operation
fcvt.s.d f13, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x19, 0x9ad28658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c55de79 # load x3 with 32 MSBs 0x000000006c55de79
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006c55de79
sw x3, 0(x2) # store x3 (0x6c55de79) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000006c55de79 from memory into f10
fcvt.s.d f19, f10 # perform operation
fcvt.s.d f19, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x4, 0xbe3a0433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8972745 # load x3 with 32 MSBs 0x00000000a8972745
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a8972745
sw x3, 0(x2) # store x3 (0xa8972745) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000a8972745 from memory into f11
fcvt.s.d f4, f11 # perform operation
fcvt.s.d f4, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x13, 0xea446f95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07de0fa3 # load x3 with 32 MSBs 0x0000000007de0fa3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000007de0fa3
sw x3, 0(x2) # store x3 (0x07de0fa3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000007de0fa3 from memory into f12
fcvt.s.d f13, f12 # perform operation
fcvt.s.d f13, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x26, 0x9d7cccf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf562ea9 # load x3 with 32 MSBs 0x00000000bf562ea9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bf562ea9
sw x3, 0(x2) # store x3 (0xbf562ea9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000bf562ea9 from memory into f13
fcvt.s.d f26, f13 # perform operation
fcvt.s.d f26, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x11, 0xd8c2e9ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x09dd275d # load x3 with 32 MSBs 0x0000000009dd275d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000009dd275d
sw x3, 0(x2) # store x3 (0x09dd275d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000009dd275d from memory into f14
fcvt.s.d f11, f14 # perform operation
fcvt.s.d f11, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x7, 0x5fb2f671 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f0e369d # load x3 with 32 MSBs 0x000000003f0e369d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003f0e369d
sw x3, 0(x2) # store x3 (0x3f0e369d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000003f0e369d from memory into f15
fcvt.s.d f7, f15 # perform operation
fcvt.s.d f7, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x11, 0xfa6bc851 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc98c50e7 # load x3 with 32 MSBs 0x00000000c98c50e7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c98c50e7
sw x3, 0(x2) # store x3 (0xc98c50e7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000c98c50e7 from memory into f16
fcvt.s.d f11, f16 # perform operation
fcvt.s.d f11, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x13, 0x18b92359 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc80d2c93 # load x3 with 32 MSBs 0x00000000c80d2c93
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c80d2c93
sw x3, 0(x2) # store x3 (0xc80d2c93) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000c80d2c93 from memory into f17
fcvt.s.d f13, f17 # perform operation
fcvt.s.d f13, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x27, 0x22675bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b94d231 # load x3 with 32 MSBs 0x000000005b94d231
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005b94d231
sw x3, 0(x2) # store x3 (0x5b94d231) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000005b94d231 from memory into f18
fcvt.s.d f27, f18 # perform operation
fcvt.s.d f27, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x18, 0xe0f080d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae916ca6 # load x3 with 32 MSBs 0x00000000ae916ca6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ae916ca6
sw x3, 0(x2) # store x3 (0xae916ca6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000ae916ca6 from memory into f19
fcvt.s.d f18, f19 # perform operation
fcvt.s.d f18, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x9, 0x221fc489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7af2f7f5 # load x3 with 32 MSBs 0x000000007af2f7f5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007af2f7f5
sw x3, 0(x2) # store x3 (0x7af2f7f5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000007af2f7f5 from memory into f20
fcvt.s.d f9, f20 # perform operation
fcvt.s.d f9, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x2, 0x0ea0b69c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb576fcea # load x3 with 32 MSBs 0x00000000b576fcea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b576fcea
sw x3, 0(x2) # store x3 (0xb576fcea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000b576fcea from memory into f21
fcvt.s.d f2, f21 # perform operation
fcvt.s.d f2, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x21, 0x60096c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3afe7b8 # load x3 with 32 MSBs 0x00000000c3afe7b8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c3afe7b8
sw x3, 0(x2) # store x3 (0xc3afe7b8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000c3afe7b8 from memory into f22
fcvt.s.d f21, f22 # perform operation
fcvt.s.d f21, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x21, 0x8eefe2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07838bd8 # load x3 with 32 MSBs 0x0000000007838bd8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000007838bd8
sw x3, 0(x2) # store x3 (0x07838bd8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000007838bd8 from memory into f23
fcvt.s.d f21, f23 # perform operation
fcvt.s.d f21, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x11, 0x78f1bc45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x633e519a # load x3 with 32 MSBs 0x00000000633e519a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000633e519a
sw x3, 0(x2) # store x3 (0x633e519a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000633e519a from memory into f24
fcvt.s.d f11, f24 # perform operation
fcvt.s.d f11, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x3, 0x9a87bfcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ed6ee68 # load x3 with 32 MSBs 0x000000005ed6ee68
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005ed6ee68
sw x3, 0(x2) # store x3 (0x5ed6ee68) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000005ed6ee68 from memory into f25
fcvt.s.d f3, f25 # perform operation
fcvt.s.d f3, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x22, 0x9df89967 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d7816ca # load x3 with 32 MSBs 0x000000008d7816ca
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008d7816ca
sw x3, 0(x2) # store x3 (0x8d7816ca) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000008d7816ca from memory into f26
fcvt.s.d f22, f26 # perform operation
fcvt.s.d f22, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x6, 0x6b2a5dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc09d7565 # load x3 with 32 MSBs 0x00000000c09d7565
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c09d7565
sw x3, 0(x2) # store x3 (0xc09d7565) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000c09d7565 from memory into f27
fcvt.s.d f6, f27 # perform operation
fcvt.s.d f6, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x7, 0xd9c8adb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11ccf7c3 # load x3 with 32 MSBs 0x0000000011ccf7c3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000011ccf7c3
sw x3, 0(x2) # store x3 (0x11ccf7c3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000011ccf7c3 from memory into f28
fcvt.s.d f7, f28 # perform operation
fcvt.s.d f7, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x2, 0x51bed714 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ca91c28 # load x3 with 32 MSBs 0x000000002ca91c28
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002ca91c28
sw x3, 0(x2) # store x3 (0x2ca91c28) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000002ca91c28 from memory into f29
fcvt.s.d f2, f29 # perform operation
fcvt.s.d f2, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x31, 0x2ce72365 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5e74812 # load x3 with 32 MSBs 0x00000000d5e74812
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d5e74812
sw x3, 0(x2) # store x3 (0xd5e74812) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000d5e74812 from memory into f30
fcvt.s.d f31, f30 # perform operation
fcvt.s.d f31, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x9, 0x1329c392 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb06b085a # load x3 with 32 MSBs 0x00000000b06b085a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b06b085a
sw x3, 0(x2) # store x3 (0xb06b085a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000b06b085a from memory into f31
fcvt.s.d f9, f31 # perform operation
fcvt.s.d f9, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
