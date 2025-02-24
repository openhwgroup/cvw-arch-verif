///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfhD//WALLY-COV-fcvt.h.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.035980
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
li x28, 0x02e80ad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
fcvt.h.d f28, f3 # perform operation
fcvt.h.d f28, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x21, 0x522a0336 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
fcvt.h.d f21, f15 # perform operation
fcvt.h.d f21, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x10, 0xf8204c3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
fcvt.h.d f10, f16 # perform operation
fcvt.h.d f10, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x6, 0x6c883e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fcvt.h.d f6, f28 # perform operation
fcvt.h.d f6, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x23, 0xf9822690 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
fcvt.h.d f23, f25 # perform operation
fcvt.h.d f23, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x19, 0xa0b6f91c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
fcvt.h.d f19, f9 # perform operation
fcvt.h.d f19, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x3, 0x79716847 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fcvt.h.d f3, f26 # perform operation
fcvt.h.d f3, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x12, 0x4d5f45a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
fcvt.h.d f12, f27 # perform operation
fcvt.h.d f12, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x31, 0x920c53d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fcvt.h.d f31, f20 # perform operation
fcvt.h.d f31, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x29, 0xef3bbc19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fcvt.h.d f29, f10 # perform operation
fcvt.h.d f29, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x10, 0x572c8840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
fcvt.h.d f10, f25 # perform operation
fcvt.h.d f10, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x5, 0x0785b36a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
fcvt.h.d f5, f28 # perform operation
fcvt.h.d f5, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x1, 0xb5714ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fcvt.h.d f1, f25 # perform operation
fcvt.h.d f1, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x29, 0xbc6060d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
fcvt.h.d f29, f4 # perform operation
fcvt.h.d f29, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x10, 0x1f911c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
fcvt.h.d f10, f19 # perform operation
fcvt.h.d f10, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x26, 0xfd630f63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
fcvt.h.d f26, f1 # perform operation
fcvt.h.d f26, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x1, 0x1d3505f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fcvt.h.d f1, f2 # perform operation
fcvt.h.d f1, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x9, 0xdf790da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
fcvt.h.d f9, f29 # perform operation
fcvt.h.d f9, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x31, 0x00379704 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fcvt.h.d f31, f21 # perform operation
fcvt.h.d f31, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x8, 0xd6202ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fcvt.h.d f8, f29 # perform operation
fcvt.h.d f8, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x12, 0xf74f8ee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fcvt.h.d f12, f29 # perform operation
fcvt.h.d f12, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x29, 0x9a4e6cca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fcvt.h.d f29, f30 # perform operation
fcvt.h.d f29, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x7, 0xf6bbf87d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
fcvt.h.d f7, f5 # perform operation
fcvt.h.d f7, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x25, 0xa156ee11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
fcvt.h.d f25, f18 # perform operation
fcvt.h.d f25, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x17, 0x9b02e827 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
fcvt.h.d f17, f16 # perform operation
fcvt.h.d f17, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x8, 0x46acb22c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fcvt.h.d f8, f14 # perform operation
fcvt.h.d f8, f14 # perform operation

# Testcase cp_frm
li x13, 0xaafe863a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcacfa804 # load x3 with 32 MSBs 0x00000000cacfa804
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cacfa804
sw x3, 0(x2) # store x3 (0xcacfa804) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000cacfa804 from memory into f1
fcvt.h.d f13, f1 # perform operation
fcvt.h.d f13, f1, dyn # perform operation
fcvt.h.d f13, f1, rdn # perform operation
fcvt.h.d f13, f1, rmm # perform operation
fcvt.h.d f13, f1, rne # perform operation
fcvt.h.d f13, f1, rtz # perform operation
fcvt.h.d f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f13, f1 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x3d1cc213 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a1c04e9 # load x3 with 32 MSBs 0x000000005a1c04e9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005a1c04e9
sw x3, 0(x2) # store x3 (0x5a1c04e9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000005a1c04e9 from memory into f10
fcvt.h.d f0, f10 # perform operation
fcvt.h.d f0, f10 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x103c5285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2d86dff # load x3 with 32 MSBs 0x00000000e2d86dff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e2d86dff
sw x3, 0(x2) # store x3 (0xe2d86dff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000e2d86dff from memory into f9
fcvt.h.d f1, f9 # perform operation
fcvt.h.d f1, f9 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x2606ced4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1269aef3 # load x3 with 32 MSBs 0x000000001269aef3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001269aef3
sw x3, 0(x2) # store x3 (0x1269aef3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000001269aef3 from memory into f23
fcvt.h.d f2, f23 # perform operation
fcvt.h.d f2, f23 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x771934fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9178c5eb # load x3 with 32 MSBs 0x000000009178c5eb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009178c5eb
sw x3, 0(x2) # store x3 (0x9178c5eb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000009178c5eb from memory into f18
fcvt.h.d f3, f18 # perform operation
fcvt.h.d f3, f18 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x449bcb3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8eae2a61 # load x3 with 32 MSBs 0x000000008eae2a61
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008eae2a61
sw x3, 0(x2) # store x3 (0x8eae2a61) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000008eae2a61 from memory into f30
fcvt.h.d f4, f30 # perform operation
fcvt.h.d f4, f30 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x7c26e117 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae5d9a40 # load x3 with 32 MSBs 0x00000000ae5d9a40
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ae5d9a40
sw x3, 0(x2) # store x3 (0xae5d9a40) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000ae5d9a40 from memory into f3
fcvt.h.d f5, f3 # perform operation
fcvt.h.d f5, f3 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xa1e9378c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4aca0036 # load x3 with 32 MSBs 0x000000004aca0036
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004aca0036
sw x3, 0(x2) # store x3 (0x4aca0036) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000004aca0036 from memory into f5
fcvt.h.d f6, f5 # perform operation
fcvt.h.d f6, f5 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x00fa52f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d0439b2 # load x3 with 32 MSBs 0x000000001d0439b2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001d0439b2
sw x3, 0(x2) # store x3 (0x1d0439b2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000001d0439b2 from memory into f9
fcvt.h.d f7, f9 # perform operation
fcvt.h.d f7, f9 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xc4f04e4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26fdc92f # load x3 with 32 MSBs 0x0000000026fdc92f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000026fdc92f
sw x3, 0(x2) # store x3 (0x26fdc92f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000026fdc92f from memory into f1
fcvt.h.d f8, f1 # perform operation
fcvt.h.d f8, f1 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x4477c730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e274e55 # load x3 with 32 MSBs 0x000000001e274e55
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001e274e55
sw x3, 0(x2) # store x3 (0x1e274e55) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000001e274e55 from memory into f5
fcvt.h.d f9, f5 # perform operation
fcvt.h.d f9, f5 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x5888f0b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72f8edce # load x3 with 32 MSBs 0x0000000072f8edce
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000072f8edce
sw x3, 0(x2) # store x3 (0x72f8edce) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000072f8edce from memory into f21
fcvt.h.d f10, f21 # perform operation
fcvt.h.d f10, f21 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xcf117a65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa8c033b # load x3 with 32 MSBs 0x00000000fa8c033b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fa8c033b
sw x3, 0(x2) # store x3 (0xfa8c033b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000fa8c033b from memory into f28
fcvt.h.d f11, f28 # perform operation
fcvt.h.d f11, f28 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x646bd9e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc29b8c4a # load x3 with 32 MSBs 0x00000000c29b8c4a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c29b8c4a
sw x3, 0(x2) # store x3 (0xc29b8c4a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000c29b8c4a from memory into f19
fcvt.h.d f12, f19 # perform operation
fcvt.h.d f12, f19 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xb2a51552 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd27ca979 # load x3 with 32 MSBs 0x00000000d27ca979
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d27ca979
sw x3, 0(x2) # store x3 (0xd27ca979) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000d27ca979 from memory into f3
fcvt.h.d f13, f3 # perform operation
fcvt.h.d f13, f3 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xd91c8148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ca84123 # load x3 with 32 MSBs 0x000000006ca84123
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006ca84123
sw x3, 0(x2) # store x3 (0x6ca84123) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000006ca84123 from memory into f2
fcvt.h.d f14, f2 # perform operation
fcvt.h.d f14, f2 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x4252e914 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8978486 # load x3 with 32 MSBs 0x00000000d8978486
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d8978486
sw x3, 0(x2) # store x3 (0xd8978486) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000d8978486 from memory into f17
fcvt.h.d f15, f17 # perform operation
fcvt.h.d f15, f17 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xe3e753dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e31a9f5 # load x3 with 32 MSBs 0x000000006e31a9f5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006e31a9f5
sw x3, 0(x2) # store x3 (0x6e31a9f5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000006e31a9f5 from memory into f9
fcvt.h.d f16, f9 # perform operation
fcvt.h.d f16, f9 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xed0a9881 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9446324 # load x3 with 32 MSBs 0x00000000b9446324
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b9446324
sw x3, 0(x2) # store x3 (0xb9446324) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000b9446324 from memory into f7
fcvt.h.d f17, f7 # perform operation
fcvt.h.d f17, f7 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x2230984f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4de582d3 # load x3 with 32 MSBs 0x000000004de582d3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004de582d3
sw x3, 0(x2) # store x3 (0x4de582d3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000004de582d3 from memory into f31
fcvt.h.d f18, f31 # perform operation
fcvt.h.d f18, f31 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x4149b0df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74c46f2f # load x3 with 32 MSBs 0x0000000074c46f2f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000074c46f2f
sw x3, 0(x2) # store x3 (0x74c46f2f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000074c46f2f from memory into f27
fcvt.h.d f19, f27 # perform operation
fcvt.h.d f19, f27 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x46cbff2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabc1d38f # load x3 with 32 MSBs 0x00000000abc1d38f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000abc1d38f
sw x3, 0(x2) # store x3 (0xabc1d38f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000abc1d38f from memory into f21
fcvt.h.d f20, f21 # perform operation
fcvt.h.d f20, f21 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x9737359a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a79f609 # load x3 with 32 MSBs 0x000000009a79f609
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009a79f609
sw x3, 0(x2) # store x3 (0x9a79f609) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000009a79f609 from memory into f25
fcvt.h.d f21, f25 # perform operation
fcvt.h.d f21, f25 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xe275cac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6866d717 # load x3 with 32 MSBs 0x000000006866d717
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006866d717
sw x3, 0(x2) # store x3 (0x6866d717) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000006866d717 from memory into f29
fcvt.h.d f22, f29 # perform operation
fcvt.h.d f22, f29 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xb86a661a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcfca6179 # load x3 with 32 MSBs 0x00000000cfca6179
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cfca6179
sw x3, 0(x2) # store x3 (0xcfca6179) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000cfca6179 from memory into f25
fcvt.h.d f23, f25 # perform operation
fcvt.h.d f23, f25 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xa6d83f5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65d90583 # load x3 with 32 MSBs 0x0000000065d90583
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000065d90583
sw x3, 0(x2) # store x3 (0x65d90583) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000065d90583 from memory into f7
fcvt.h.d f24, f7 # perform operation
fcvt.h.d f24, f7 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xd92a45d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64774a96 # load x3 with 32 MSBs 0x0000000064774a96
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000064774a96
sw x3, 0(x2) # store x3 (0x64774a96) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000064774a96 from memory into f25
fcvt.h.d f25, f25 # perform operation
fcvt.h.d f25, f25 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xce45986d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd468b149 # load x3 with 32 MSBs 0x00000000d468b149
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d468b149
sw x3, 0(x2) # store x3 (0xd468b149) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000d468b149 from memory into f17
fcvt.h.d f26, f17 # perform operation
fcvt.h.d f26, f17 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xd50a65e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccb1de2d # load x3 with 32 MSBs 0x00000000ccb1de2d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ccb1de2d
sw x3, 0(x2) # store x3 (0xccb1de2d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000ccb1de2d from memory into f25
fcvt.h.d f27, f25 # perform operation
fcvt.h.d f27, f25 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xc73b6fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7ebacd4 # load x3 with 32 MSBs 0x00000000a7ebacd4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a7ebacd4
sw x3, 0(x2) # store x3 (0xa7ebacd4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000a7ebacd4 from memory into f8
fcvt.h.d f28, f8 # perform operation
fcvt.h.d f28, f8 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xe1d24e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fef1f42 # load x3 with 32 MSBs 0x000000009fef1f42
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009fef1f42
sw x3, 0(x2) # store x3 (0x9fef1f42) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000009fef1f42 from memory into f19
fcvt.h.d f29, f19 # perform operation
fcvt.h.d f29, f19 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x035a0859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3bae3a19 # load x3 with 32 MSBs 0x000000003bae3a19
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003bae3a19
sw x3, 0(x2) # store x3 (0x3bae3a19) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000003bae3a19 from memory into f20
fcvt.h.d f30, f20 # perform operation
fcvt.h.d f30, f20 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x693b51f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ab787a2 # load x3 with 32 MSBs 0x000000009ab787a2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009ab787a2
sw x3, 0(x2) # store x3 (0x9ab787a2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000009ab787a2 from memory into f25
fcvt.h.d f31, f25 # perform operation
fcvt.h.d f31, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x31, 0xa85188f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e15da44 # load x3 with 32 MSBs 0x000000006e15da44
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006e15da44
sw x3, 0(x2) # store x3 (0x6e15da44) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000006e15da44 from memory into f0
fcvt.h.d f31, f0 # perform operation
fcvt.h.d f31, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x15, 0x7c181d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a2224c5 # load x3 with 32 MSBs 0x000000000a2224c5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000a2224c5
sw x3, 0(x2) # store x3 (0x0a2224c5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000000a2224c5 from memory into f1
fcvt.h.d f15, f1 # perform operation
fcvt.h.d f15, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x14, 0xbc0858f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce72325f # load x3 with 32 MSBs 0x00000000ce72325f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ce72325f
sw x3, 0(x2) # store x3 (0xce72325f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ce72325f from memory into f2
fcvt.h.d f14, f2 # perform operation
fcvt.h.d f14, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x6, 0x20093171 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x578dd1ce # load x3 with 32 MSBs 0x00000000578dd1ce
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000578dd1ce
sw x3, 0(x2) # store x3 (0x578dd1ce) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000578dd1ce from memory into f3
fcvt.h.d f6, f3 # perform operation
fcvt.h.d f6, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x21, 0x5174b8cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6d11067 # load x3 with 32 MSBs 0x00000000e6d11067
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e6d11067
sw x3, 0(x2) # store x3 (0xe6d11067) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000e6d11067 from memory into f4
fcvt.h.d f21, f4 # perform operation
fcvt.h.d f21, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x3, 0x7ea88c2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ce16fa2 # load x3 with 32 MSBs 0x000000000ce16fa2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000ce16fa2
sw x3, 0(x2) # store x3 (0x0ce16fa2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000ce16fa2 from memory into f5
fcvt.h.d f3, f5 # perform operation
fcvt.h.d f3, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x27, 0x68066932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c65e2e4 # load x3 with 32 MSBs 0x000000000c65e2e4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000c65e2e4
sw x3, 0(x2) # store x3 (0x0c65e2e4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000000c65e2e4 from memory into f6
fcvt.h.d f27, f6 # perform operation
fcvt.h.d f27, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x24, 0x42f5c5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d0f4f9d # load x3 with 32 MSBs 0x000000000d0f4f9d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000d0f4f9d
sw x3, 0(x2) # store x3 (0x0d0f4f9d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000000d0f4f9d from memory into f7
fcvt.h.d f24, f7 # perform operation
fcvt.h.d f24, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x10, 0x4d068b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12dff780 # load x3 with 32 MSBs 0x0000000012dff780
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000012dff780
sw x3, 0(x2) # store x3 (0x12dff780) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000012dff780 from memory into f8
fcvt.h.d f10, f8 # perform operation
fcvt.h.d f10, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x13, 0xb533fbd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2591f257 # load x3 with 32 MSBs 0x000000002591f257
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002591f257
sw x3, 0(x2) # store x3 (0x2591f257) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000002591f257 from memory into f9
fcvt.h.d f13, f9 # perform operation
fcvt.h.d f13, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x16, 0xb37ecbcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb10c80e4 # load x3 with 32 MSBs 0x00000000b10c80e4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b10c80e4
sw x3, 0(x2) # store x3 (0xb10c80e4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000b10c80e4 from memory into f10
fcvt.h.d f16, f10 # perform operation
fcvt.h.d f16, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x19, 0xd2f59a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd683b76e # load x3 with 32 MSBs 0x00000000d683b76e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d683b76e
sw x3, 0(x2) # store x3 (0xd683b76e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000d683b76e from memory into f11
fcvt.h.d f19, f11 # perform operation
fcvt.h.d f19, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x12, 0xe854066d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bb41414 # load x3 with 32 MSBs 0x000000002bb41414
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002bb41414
sw x3, 0(x2) # store x3 (0x2bb41414) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000002bb41414 from memory into f12
fcvt.h.d f12, f12 # perform operation
fcvt.h.d f12, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x1, 0xe54573a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca635b7d # load x3 with 32 MSBs 0x00000000ca635b7d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ca635b7d
sw x3, 0(x2) # store x3 (0xca635b7d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000ca635b7d from memory into f13
fcvt.h.d f1, f13 # perform operation
fcvt.h.d f1, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x10, 0x7563025f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16418f08 # load x3 with 32 MSBs 0x0000000016418f08
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000016418f08
sw x3, 0(x2) # store x3 (0x16418f08) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000016418f08 from memory into f14
fcvt.h.d f10, f14 # perform operation
fcvt.h.d f10, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x20, 0xb21ceb1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1469c41c # load x3 with 32 MSBs 0x000000001469c41c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001469c41c
sw x3, 0(x2) # store x3 (0x1469c41c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000001469c41c from memory into f15
fcvt.h.d f20, f15 # perform operation
fcvt.h.d f20, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x31, 0xac633356 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b94aa0b # load x3 with 32 MSBs 0x000000009b94aa0b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009b94aa0b
sw x3, 0(x2) # store x3 (0x9b94aa0b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000009b94aa0b from memory into f16
fcvt.h.d f31, f16 # perform operation
fcvt.h.d f31, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x21, 0x3f606e5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd89b956d # load x3 with 32 MSBs 0x00000000d89b956d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d89b956d
sw x3, 0(x2) # store x3 (0xd89b956d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000d89b956d from memory into f17
fcvt.h.d f21, f17 # perform operation
fcvt.h.d f21, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x6, 0x9de8b6e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x829cc4ca # load x3 with 32 MSBs 0x00000000829cc4ca
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000829cc4ca
sw x3, 0(x2) # store x3 (0x829cc4ca) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000829cc4ca from memory into f18
fcvt.h.d f6, f18 # perform operation
fcvt.h.d f6, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x2, 0x95bbcbc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a58a0dd # load x3 with 32 MSBs 0x000000005a58a0dd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005a58a0dd
sw x3, 0(x2) # store x3 (0x5a58a0dd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000005a58a0dd from memory into f19
fcvt.h.d f2, f19 # perform operation
fcvt.h.d f2, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x14, 0xf3d43bc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb372b40 # load x3 with 32 MSBs 0x00000000cb372b40
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cb372b40
sw x3, 0(x2) # store x3 (0xcb372b40) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000cb372b40 from memory into f20
fcvt.h.d f14, f20 # perform operation
fcvt.h.d f14, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x7, 0x2e273e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x755e4c80 # load x3 with 32 MSBs 0x00000000755e4c80
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000755e4c80
sw x3, 0(x2) # store x3 (0x755e4c80) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000755e4c80 from memory into f21
fcvt.h.d f7, f21 # perform operation
fcvt.h.d f7, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x19, 0x251ece87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf61357bf # load x3 with 32 MSBs 0x00000000f61357bf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f61357bf
sw x3, 0(x2) # store x3 (0xf61357bf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000f61357bf from memory into f22
fcvt.h.d f19, f22 # perform operation
fcvt.h.d f19, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x30, 0x0ecd1f6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x299b7a5e # load x3 with 32 MSBs 0x00000000299b7a5e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000299b7a5e
sw x3, 0(x2) # store x3 (0x299b7a5e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000299b7a5e from memory into f23
fcvt.h.d f30, f23 # perform operation
fcvt.h.d f30, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x8, 0x4e91ae9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3686ab7 # load x3 with 32 MSBs 0x00000000e3686ab7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e3686ab7
sw x3, 0(x2) # store x3 (0xe3686ab7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000e3686ab7 from memory into f24
fcvt.h.d f8, f24 # perform operation
fcvt.h.d f8, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x8, 0xb63999b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f3c0fe5 # load x3 with 32 MSBs 0x000000006f3c0fe5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006f3c0fe5
sw x3, 0(x2) # store x3 (0x6f3c0fe5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000006f3c0fe5 from memory into f25
fcvt.h.d f8, f25 # perform operation
fcvt.h.d f8, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x30, 0x5b07c567 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ee4ae0c # load x3 with 32 MSBs 0x000000003ee4ae0c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003ee4ae0c
sw x3, 0(x2) # store x3 (0x3ee4ae0c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000003ee4ae0c from memory into f26
fcvt.h.d f30, f26 # perform operation
fcvt.h.d f30, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x16, 0x43d56e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x166b4328 # load x3 with 32 MSBs 0x00000000166b4328
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000166b4328
sw x3, 0(x2) # store x3 (0x166b4328) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000166b4328 from memory into f27
fcvt.h.d f16, f27 # perform operation
fcvt.h.d f16, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x24, 0x8bd60a30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd1a7598 # load x3 with 32 MSBs 0x00000000cd1a7598
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cd1a7598
sw x3, 0(x2) # store x3 (0xcd1a7598) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000cd1a7598 from memory into f28
fcvt.h.d f24, f28 # perform operation
fcvt.h.d f24, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x25, 0xb9ea1583 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3717b99a # load x3 with 32 MSBs 0x000000003717b99a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003717b99a
sw x3, 0(x2) # store x3 (0x3717b99a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003717b99a from memory into f29
fcvt.h.d f25, f29 # perform operation
fcvt.h.d f25, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x24, 0x416ad20d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2992a9c # load x3 with 32 MSBs 0x00000000a2992a9c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a2992a9c
sw x3, 0(x2) # store x3 (0xa2992a9c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000a2992a9c from memory into f30
fcvt.h.d f24, f30 # perform operation
fcvt.h.d f24, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x11, 0xcfd95bc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb381596 # load x3 with 32 MSBs 0x00000000bb381596
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bb381596
sw x3, 0(x2) # store x3 (0xbb381596) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000bb381596 from memory into f31
fcvt.h.d f11, f31 # perform operation
fcvt.h.d f11, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
