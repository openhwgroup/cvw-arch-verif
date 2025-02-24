///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fsgnjn.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.018079
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
li x4, 0xfeacac5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
li x3, 0x2ccc29f4 # load x3 with 32 MSBs 0x000000002ccc29f4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002ccc29f4
sw x3, 0(x2) # store x3 (0x2ccc29f4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000002ccc29f4 from memory into f18
fsgnjn.d f4, f28, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x1, 0x7f14e66e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
li x3, 0x13ae5dcb # load x3 with 32 MSBs 0x0000000013ae5dcb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000013ae5dcb
sw x3, 0(x2) # store x3 (0x13ae5dcb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000013ae5dcb from memory into f6
fsgnjn.d f1, f2, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x14, 0xc03c9c81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
li x3, 0x22a669e3 # load x3 with 32 MSBs 0x0000000022a669e3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000022a669e3
sw x3, 0(x2) # store x3 (0x22a669e3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000022a669e3 from memory into f6
fsgnjn.d f14, f20, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x7, 0xbb780bb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0xafae13d4 # load x3 with 32 MSBs 0x00000000afae13d4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000afae13d4
sw x3, 0(x2) # store x3 (0xafae13d4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000afae13d4 from memory into f11
fsgnjn.d f7, f26, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x11, 0x2bb942d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
li x3, 0xf8cf55a0 # load x3 with 32 MSBs 0x00000000f8cf55a0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f8cf55a0
sw x3, 0(x2) # store x3 (0xf8cf55a0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000f8cf55a0 from memory into f1
fsgnjn.d f11, f18, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x13, 0xe3810b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
li x3, 0x5fbbf6e6 # load x3 with 32 MSBs 0x000000005fbbf6e6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005fbbf6e6
sw x3, 0(x2) # store x3 (0x5fbbf6e6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000005fbbf6e6 from memory into f26
fsgnjn.d f13, f1, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x29, 0x063fac41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
li x3, 0xf866c6af # load x3 with 32 MSBs 0x00000000f866c6af
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f866c6af
sw x3, 0(x2) # store x3 (0xf866c6af) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000f866c6af from memory into f27
fsgnjn.d f29, f23, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x10, 0xed225c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
li x3, 0x285f38ec # load x3 with 32 MSBs 0x00000000285f38ec
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000285f38ec
sw x3, 0(x2) # store x3 (0x285f38ec) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000285f38ec from memory into f26
fsgnjn.d f10, f24, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x25, 0x91836ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0xc5eb267f # load x3 with 32 MSBs 0x00000000c5eb267f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c5eb267f
sw x3, 0(x2) # store x3 (0xc5eb267f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000c5eb267f from memory into f4
fsgnjn.d f25, f16, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x25, 0x0e7869b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
li x3, 0x61766e0b # load x3 with 32 MSBs 0x0000000061766e0b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000061766e0b
sw x3, 0(x2) # store x3 (0x61766e0b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000061766e0b from memory into f8
fsgnjn.d f25, f19, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x21, 0x454c370e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
li x3, 0x8d29b020 # load x3 with 32 MSBs 0x000000008d29b020
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008d29b020
sw x3, 0(x2) # store x3 (0x8d29b020) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000008d29b020 from memory into f12
fsgnjn.d f21, f18, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x20, 0x72e8ea43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
li x3, 0x7e71ecf3 # load x3 with 32 MSBs 0x000000007e71ecf3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007e71ecf3
sw x3, 0(x2) # store x3 (0x7e71ecf3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000007e71ecf3 from memory into f3
fsgnjn.d f20, f27, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x11, 0x5d5b9091 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
li x3, 0x459f97ba # load x3 with 32 MSBs 0x00000000459f97ba
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000459f97ba
sw x3, 0(x2) # store x3 (0x459f97ba) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000459f97ba from memory into f17
fsgnjn.d f11, f25, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x27, 0x94b80398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
li x3, 0x7900a4b0 # load x3 with 32 MSBs 0x000000007900a4b0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007900a4b0
sw x3, 0(x2) # store x3 (0x7900a4b0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000007900a4b0 from memory into f2
fsgnjn.d f27, f24, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x25, 0x983797df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
li x3, 0x137ef87c # load x3 with 32 MSBs 0x00000000137ef87c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000137ef87c
sw x3, 0(x2) # store x3 (0x137ef87c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000137ef87c from memory into f1
fsgnjn.d f25, f7, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x19, 0x0ba43b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
li x3, 0x5d4ac88e # load x3 with 32 MSBs 0x000000005d4ac88e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005d4ac88e
sw x3, 0(x2) # store x3 (0x5d4ac88e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000005d4ac88e from memory into f18
fsgnjn.d f19, f29, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x23, 0x3a51713f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
li x3, 0x1073e1a7 # load x3 with 32 MSBs 0x000000001073e1a7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001073e1a7
sw x3, 0(x2) # store x3 (0x1073e1a7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000001073e1a7 from memory into f11
fsgnjn.d f23, f7, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x27, 0xfb23ae08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
li x3, 0x69f99ea2 # load x3 with 32 MSBs 0x0000000069f99ea2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000069f99ea2
sw x3, 0(x2) # store x3 (0x69f99ea2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000069f99ea2 from memory into f15
fsgnjn.d f27, f11, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x20, 0xf3bec8db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
li x3, 0x5a082a8b # load x3 with 32 MSBs 0x000000005a082a8b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005a082a8b
sw x3, 0(x2) # store x3 (0x5a082a8b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000005a082a8b from memory into f7
fsgnjn.d f20, f14, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x2, 0xeb9655fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
li x3, 0x7bd2cf01 # load x3 with 32 MSBs 0x000000007bd2cf01
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007bd2cf01
sw x3, 0(x2) # store x3 (0x7bd2cf01) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000007bd2cf01 from memory into f8
fsgnjn.d f2, f30, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x3, 0xbea4e6fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
li x3, 0xfe72b485 # load x3 with 32 MSBs 0x00000000fe72b485
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fe72b485
sw x3, 0(x2) # store x3 (0xfe72b485) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000fe72b485 from memory into f6
fsgnjn.d f3, f10, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x6, 0xb2c090dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7fffffffffffffff from memory into f8
li x3, 0x8cc59bdb # load x3 with 32 MSBs 0x000000008cc59bdb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008cc59bdb
sw x3, 0(x2) # store x3 (0x8cc59bdb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000008cc59bdb from memory into f25
fsgnjn.d f6, f8, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x17, 0x8293b601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
li x3, 0xf580488a # load x3 with 32 MSBs 0x00000000f580488a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f580488a
sw x3, 0(x2) # store x3 (0xf580488a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000f580488a from memory into f23
fsgnjn.d f17, f16, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x2, 0xc5de115e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
li x3, 0x48771ff3 # load x3 with 32 MSBs 0x0000000048771ff3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000048771ff3
sw x3, 0(x2) # store x3 (0x48771ff3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000048771ff3 from memory into f5
fsgnjn.d f2, f4, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x10, 0xec177d83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
li x3, 0xf2489e39 # load x3 with 32 MSBs 0x00000000f2489e39
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f2489e39
sw x3, 0(x2) # store x3 (0xf2489e39) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000f2489e39 from memory into f9
fsgnjn.d f10, f20, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x10, 0xeeabd3b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
li x3, 0xf76d1bc6 # load x3 with 32 MSBs 0x00000000f76d1bc6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f76d1bc6
sw x3, 0(x2) # store x3 (0xf76d1bc6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000f76d1bc6 from memory into f18
fsgnjn.d f10, f20, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x2, 0xa762d820 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5bd5e63 # load x3 with 32 MSBs 0x00000000a5bd5e63
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a5bd5e63
sw x3, 0(x2) # store x3 (0xa5bd5e63) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000a5bd5e63 from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fsgnjn.d f2, f29, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x4, 0x82447afd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f223590 # load x3 with 32 MSBs 0x000000009f223590
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009f223590
sw x3, 0(x2) # store x3 (0x9f223590) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000009f223590 from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
fsgnjn.d f4, f5, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x25, 0x5df190ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe13b3b2e # load x3 with 32 MSBs 0x00000000e13b3b2e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e13b3b2e
sw x3, 0(x2) # store x3 (0xe13b3b2e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000e13b3b2e from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
fsgnjn.d f25, f19, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x7, 0x67fb4e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e45d0f7 # load x3 with 32 MSBs 0x000000004e45d0f7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004e45d0f7
sw x3, 0(x2) # store x3 (0x4e45d0f7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000004e45d0f7 from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
fsgnjn.d f7, f30, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x16, 0xf65528d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebbf86ac # load x3 with 32 MSBs 0x00000000ebbf86ac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ebbf86ac
sw x3, 0(x2) # store x3 (0xebbf86ac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ebbf86ac from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
fsgnjn.d f16, f23, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x5, 0x4406ed43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6afaa850 # load x3 with 32 MSBs 0x000000006afaa850
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006afaa850
sw x3, 0(x2) # store x3 (0x6afaa850) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000006afaa850 from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fsgnjn.d f5, f8, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x9, 0xe10a28d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a8c609a # load x3 with 32 MSBs 0x000000005a8c609a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005a8c609a
sw x3, 0(x2) # store x3 (0x5a8c609a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000005a8c609a from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fsgnjn.d f9, f18, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x5, 0xe751afc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1fa16122 # load x3 with 32 MSBs 0x000000001fa16122
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001fa16122
sw x3, 0(x2) # store x3 (0x1fa16122) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000001fa16122 from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fsgnjn.d f5, f3, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x22, 0x9796003f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3936de67 # load x3 with 32 MSBs 0x000000003936de67
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003936de67
sw x3, 0(x2) # store x3 (0x3936de67) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000003936de67 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fsgnjn.d f22, f2, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x26, 0x1f9fab31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8660d33e # load x3 with 32 MSBs 0x000000008660d33e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008660d33e
sw x3, 0(x2) # store x3 (0x8660d33e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000008660d33e from memory into f1
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fsgnjn.d f26, f1, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x8, 0xe967514f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1ba8a69 # load x3 with 32 MSBs 0x00000000d1ba8a69
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d1ba8a69
sw x3, 0(x2) # store x3 (0xd1ba8a69) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000d1ba8a69 from memory into f31
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fsgnjn.d f8, f31, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x24, 0x0c25ab68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d7b0eac # load x3 with 32 MSBs 0x000000002d7b0eac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002d7b0eac
sw x3, 0(x2) # store x3 (0x2d7b0eac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000002d7b0eac from memory into f20
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
fsgnjn.d f24, f20, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x23, 0xbde547f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbabb2aa # load x3 with 32 MSBs 0x00000000dbabb2aa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dbabb2aa
sw x3, 0(x2) # store x3 (0xdbabb2aa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000dbabb2aa from memory into f15
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fsgnjn.d f23, f15, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x12, 0xa3306c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51dceea2 # load x3 with 32 MSBs 0x0000000051dceea2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000051dceea2
sw x3, 0(x2) # store x3 (0x51dceea2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000051dceea2 from memory into f29
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
fsgnjn.d f12, f29, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x27, 0x91b09bec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x733216a5 # load x3 with 32 MSBs 0x00000000733216a5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000733216a5
sw x3, 0(x2) # store x3 (0x733216a5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000733216a5 from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fsgnjn.d f27, f15, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x19, 0x77aa5e85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebb1e41c # load x3 with 32 MSBs 0x00000000ebb1e41c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ebb1e41c
sw x3, 0(x2) # store x3 (0xebb1e41c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000ebb1e41c from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fsgnjn.d f19, f5, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x10, 0x422beeef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a329511 # load x3 with 32 MSBs 0x000000003a329511
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003a329511
sw x3, 0(x2) # store x3 (0x3a329511) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000003a329511 from memory into f30
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
fsgnjn.d f10, f30, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x5, 0xe23bd487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9a2f82d # load x3 with 32 MSBs 0x00000000f9a2f82d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f9a2f82d
sw x3, 0(x2) # store x3 (0xf9a2f82d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000f9a2f82d from memory into f25
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
fsgnjn.d f5, f25, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x26, 0xe0c624e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x645c36d8 # load x3 with 32 MSBs 0x00000000645c36d8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000645c36d8
sw x3, 0(x2) # store x3 (0x645c36d8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000645c36d8 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
fsgnjn.d f26, f21, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x11, 0xe63a3011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7bfc74fb # load x3 with 32 MSBs 0x000000007bfc74fb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007bfc74fb
sw x3, 0(x2) # store x3 (0x7bfc74fb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000007bfc74fb from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
fsgnjn.d f11, f20, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x24, 0x607c5e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2aa10876 # load x3 with 32 MSBs 0x000000002aa10876
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002aa10876
sw x3, 0(x2) # store x3 (0x2aa10876) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000002aa10876 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fsgnjn.d f24, f14, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x4, 0x5b43b8a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18111cb0 # load x3 with 32 MSBs 0x0000000018111cb0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000018111cb0
sw x3, 0(x2) # store x3 (0x18111cb0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000018111cb0 from memory into f5
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
fsgnjn.d f4, f5, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x18, 0xbd4a65aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a45c8fc # load x3 with 32 MSBs 0x000000007a45c8fc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007a45c8fc
sw x3, 0(x2) # store x3 (0x7a45c8fc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000007a45c8fc from memory into f19
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fsgnjn.d f18, f19, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x28, 0xd064700a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa44e933c # load x3 with 32 MSBs 0x00000000a44e933c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a44e933c
sw x3, 0(x2) # store x3 (0xa44e933c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a44e933c from memory into f24
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fsgnjn.d f28, f24, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x25, 0x89b1180f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2022afa3 # load x3 with 32 MSBs 0x000000002022afa3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002022afa3
sw x3, 0(x2) # store x3 (0x2022afa3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000002022afa3 from memory into f21
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fsgnjn.d f25, f21, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x18, 0xb11262f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d223821 # load x3 with 32 MSBs 0x000000001d223821
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001d223821
sw x3, 0(x2) # store x3 (0x1d223821) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000001d223821 from memory into f14
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
fsgnjn.d f18, f14, f12 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xda21ada5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcf9b1e6 # load x3 with 32 MSBs 0x00000000bcf9b1e6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bcf9b1e6
sw x3, 0(x2) # store x3 (0xbcf9b1e6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000bcf9b1e6 from memory into f4
li x3, 0xb05fe751 # load x3 with 32 MSBs 0x00000000b05fe751
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b05fe751
sw x3, 0(x2) # store x3 (0xb05fe751) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000b05fe751 from memory into f15
fsgnjn.d f0, f4, f15 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xab9e2c6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8009f1a3 # load x3 with 32 MSBs 0x000000008009f1a3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008009f1a3
sw x3, 0(x2) # store x3 (0x8009f1a3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000008009f1a3 from memory into f21
li x3, 0xe3e55652 # load x3 with 32 MSBs 0x00000000e3e55652
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e3e55652
sw x3, 0(x2) # store x3 (0xe3e55652) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e3e55652 from memory into f8
fsgnjn.d f1, f21, f8 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x52cd7de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72df20f5 # load x3 with 32 MSBs 0x0000000072df20f5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000072df20f5
sw x3, 0(x2) # store x3 (0x72df20f5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000072df20f5 from memory into f8
li x3, 0xce9ea0e6 # load x3 with 32 MSBs 0x00000000ce9ea0e6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ce9ea0e6
sw x3, 0(x2) # store x3 (0xce9ea0e6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000ce9ea0e6 from memory into f7
fsgnjn.d f2, f8, f7 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xbc6e2808 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70503f96 # load x3 with 32 MSBs 0x0000000070503f96
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000070503f96
sw x3, 0(x2) # store x3 (0x70503f96) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000070503f96 from memory into f24
li x3, 0xffc61c8d # load x3 with 32 MSBs 0x00000000ffc61c8d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ffc61c8d
sw x3, 0(x2) # store x3 (0xffc61c8d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000ffc61c8d from memory into f8
fsgnjn.d f3, f24, f8 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xbe478f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac4ba56f # load x3 with 32 MSBs 0x00000000ac4ba56f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ac4ba56f
sw x3, 0(x2) # store x3 (0xac4ba56f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000ac4ba56f from memory into f5
li x3, 0xc3cf4f25 # load x3 with 32 MSBs 0x00000000c3cf4f25
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c3cf4f25
sw x3, 0(x2) # store x3 (0xc3cf4f25) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000c3cf4f25 from memory into f26
fsgnjn.d f4, f5, f26 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x490cc352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc60adf8a # load x3 with 32 MSBs 0x00000000c60adf8a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c60adf8a
sw x3, 0(x2) # store x3 (0xc60adf8a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000c60adf8a from memory into f28
li x3, 0xb3cb12c8 # load x3 with 32 MSBs 0x00000000b3cb12c8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b3cb12c8
sw x3, 0(x2) # store x3 (0xb3cb12c8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b3cb12c8 from memory into f19
fsgnjn.d f5, f28, f19 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x6285cccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x225fc6a2 # load x3 with 32 MSBs 0x00000000225fc6a2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000225fc6a2
sw x3, 0(x2) # store x3 (0x225fc6a2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000225fc6a2 from memory into f29
li x3, 0xc1c80be3 # load x3 with 32 MSBs 0x00000000c1c80be3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c1c80be3
sw x3, 0(x2) # store x3 (0xc1c80be3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000c1c80be3 from memory into f3
fsgnjn.d f6, f29, f3 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xfe8ae6bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36d0b834 # load x3 with 32 MSBs 0x0000000036d0b834
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000036d0b834
sw x3, 0(x2) # store x3 (0x36d0b834) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000036d0b834 from memory into f7
li x3, 0x2ba914e3 # load x3 with 32 MSBs 0x000000002ba914e3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002ba914e3
sw x3, 0(x2) # store x3 (0x2ba914e3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000002ba914e3 from memory into f5
fsgnjn.d f7, f7, f5 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x4bfbb39e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4e3abeb # load x3 with 32 MSBs 0x00000000c4e3abeb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c4e3abeb
sw x3, 0(x2) # store x3 (0xc4e3abeb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000c4e3abeb from memory into f12
li x3, 0xa4a6469c # load x3 with 32 MSBs 0x00000000a4a6469c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a4a6469c
sw x3, 0(x2) # store x3 (0xa4a6469c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000a4a6469c from memory into f10
fsgnjn.d f8, f12, f10 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xbb68d8cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbec8ff8 # load x3 with 32 MSBs 0x00000000dbec8ff8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dbec8ff8
sw x3, 0(x2) # store x3 (0xdbec8ff8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000dbec8ff8 from memory into f12
li x3, 0xba67b769 # load x3 with 32 MSBs 0x00000000ba67b769
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ba67b769
sw x3, 0(x2) # store x3 (0xba67b769) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000ba67b769 from memory into f13
fsgnjn.d f9, f12, f13 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x9562391c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7350d6b # load x3 with 32 MSBs 0x00000000b7350d6b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b7350d6b
sw x3, 0(x2) # store x3 (0xb7350d6b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000b7350d6b from memory into f26
li x3, 0x0307f6af # load x3 with 32 MSBs 0x000000000307f6af
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000307f6af
sw x3, 0(x2) # store x3 (0x0307f6af) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000000307f6af from memory into f22
fsgnjn.d f10, f26, f22 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xa0cbbf19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce0c4b6f # load x3 with 32 MSBs 0x00000000ce0c4b6f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ce0c4b6f
sw x3, 0(x2) # store x3 (0xce0c4b6f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000ce0c4b6f from memory into f30
li x3, 0xcd0fad65 # load x3 with 32 MSBs 0x00000000cd0fad65
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cd0fad65
sw x3, 0(x2) # store x3 (0xcd0fad65) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000cd0fad65 from memory into f18
fsgnjn.d f11, f30, f18 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x30a0c14b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd49c39d # load x3 with 32 MSBs 0x00000000cd49c39d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cd49c39d
sw x3, 0(x2) # store x3 (0xcd49c39d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000cd49c39d from memory into f3
li x3, 0xf42feae5 # load x3 with 32 MSBs 0x00000000f42feae5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f42feae5
sw x3, 0(x2) # store x3 (0xf42feae5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000f42feae5 from memory into f24
fsgnjn.d f12, f3, f24 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xc5153825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6d8e1ce # load x3 with 32 MSBs 0x00000000d6d8e1ce
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d6d8e1ce
sw x3, 0(x2) # store x3 (0xd6d8e1ce) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000d6d8e1ce from memory into f25
li x3, 0x8f1d446e # load x3 with 32 MSBs 0x000000008f1d446e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008f1d446e
sw x3, 0(x2) # store x3 (0x8f1d446e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000008f1d446e from memory into f12
fsgnjn.d f13, f25, f12 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xf804853b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2eba21ea # load x3 with 32 MSBs 0x000000002eba21ea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002eba21ea
sw x3, 0(x2) # store x3 (0x2eba21ea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000002eba21ea from memory into f7
li x3, 0x9135c716 # load x3 with 32 MSBs 0x000000009135c716
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009135c716
sw x3, 0(x2) # store x3 (0x9135c716) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000009135c716 from memory into f30
fsgnjn.d f14, f7, f30 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x26edbdfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5b22706 # load x3 with 32 MSBs 0x00000000c5b22706
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c5b22706
sw x3, 0(x2) # store x3 (0xc5b22706) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000c5b22706 from memory into f8
li x3, 0x50589a71 # load x3 with 32 MSBs 0x0000000050589a71
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000050589a71
sw x3, 0(x2) # store x3 (0x50589a71) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000050589a71 from memory into f23
fsgnjn.d f15, f8, f23 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x11659e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa936b20b # load x3 with 32 MSBs 0x00000000a936b20b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a936b20b
sw x3, 0(x2) # store x3 (0xa936b20b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000a936b20b from memory into f21
li x3, 0x951ebc53 # load x3 with 32 MSBs 0x00000000951ebc53
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000951ebc53
sw x3, 0(x2) # store x3 (0x951ebc53) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000951ebc53 from memory into f18
fsgnjn.d f16, f21, f18 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x00ecea58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x05c477d3 # load x3 with 32 MSBs 0x0000000005c477d3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000005c477d3
sw x3, 0(x2) # store x3 (0x05c477d3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000005c477d3 from memory into f14
li x3, 0x40e9cedb # load x3 with 32 MSBs 0x0000000040e9cedb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000040e9cedb
sw x3, 0(x2) # store x3 (0x40e9cedb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000040e9cedb from memory into f23
fsgnjn.d f17, f14, f23 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x971ea954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28c5605c # load x3 with 32 MSBs 0x0000000028c5605c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000028c5605c
sw x3, 0(x2) # store x3 (0x28c5605c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000028c5605c from memory into f20
li x3, 0xa85c70ca # load x3 with 32 MSBs 0x00000000a85c70ca
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a85c70ca
sw x3, 0(x2) # store x3 (0xa85c70ca) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000a85c70ca from memory into f21
fsgnjn.d f18, f20, f21 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xf09d3f78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4825df8 # load x3 with 32 MSBs 0x00000000f4825df8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f4825df8
sw x3, 0(x2) # store x3 (0xf4825df8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000f4825df8 from memory into f29
li x3, 0xeb58e9bd # load x3 with 32 MSBs 0x00000000eb58e9bd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000eb58e9bd
sw x3, 0(x2) # store x3 (0xeb58e9bd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000eb58e9bd from memory into f14
fsgnjn.d f19, f29, f14 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xb8c03e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe64eea92 # load x3 with 32 MSBs 0x00000000e64eea92
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e64eea92
sw x3, 0(x2) # store x3 (0xe64eea92) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000e64eea92 from memory into f14
li x3, 0x32c04e3c # load x3 with 32 MSBs 0x0000000032c04e3c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000032c04e3c
sw x3, 0(x2) # store x3 (0x32c04e3c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000032c04e3c from memory into f15
fsgnjn.d f20, f14, f15 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xe89f71b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac4740d3 # load x3 with 32 MSBs 0x00000000ac4740d3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ac4740d3
sw x3, 0(x2) # store x3 (0xac4740d3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000ac4740d3 from memory into f3
li x3, 0xac7b6eaa # load x3 with 32 MSBs 0x00000000ac7b6eaa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ac7b6eaa
sw x3, 0(x2) # store x3 (0xac7b6eaa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000ac7b6eaa from memory into f17
fsgnjn.d f21, f3, f17 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x7c282e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x203a910d # load x3 with 32 MSBs 0x00000000203a910d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000203a910d
sw x3, 0(x2) # store x3 (0x203a910d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000203a910d from memory into f21
li x3, 0x00433f08 # load x3 with 32 MSBs 0x0000000000433f08
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000433f08
sw x3, 0(x2) # store x3 (0x00433f08) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000433f08 from memory into f26
fsgnjn.d f22, f21, f26 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x22c0e447 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f0d81fd # load x3 with 32 MSBs 0x000000009f0d81fd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009f0d81fd
sw x3, 0(x2) # store x3 (0x9f0d81fd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000009f0d81fd from memory into f28
li x3, 0xeb8810bf # load x3 with 32 MSBs 0x00000000eb8810bf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000eb8810bf
sw x3, 0(x2) # store x3 (0xeb8810bf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000eb8810bf from memory into f5
fsgnjn.d f23, f28, f5 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xd22eaff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8912c64d # load x3 with 32 MSBs 0x000000008912c64d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008912c64d
sw x3, 0(x2) # store x3 (0x8912c64d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000008912c64d from memory into f20
li x3, 0xe858ea3f # load x3 with 32 MSBs 0x00000000e858ea3f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e858ea3f
sw x3, 0(x2) # store x3 (0xe858ea3f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e858ea3f from memory into f8
fsgnjn.d f24, f20, f8 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x30d10bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82bb7a9f # load x3 with 32 MSBs 0x0000000082bb7a9f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000082bb7a9f
sw x3, 0(x2) # store x3 (0x82bb7a9f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000082bb7a9f from memory into f9
li x3, 0x814ef29d # load x3 with 32 MSBs 0x00000000814ef29d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000814ef29d
sw x3, 0(x2) # store x3 (0x814ef29d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000814ef29d from memory into f2
fsgnjn.d f25, f9, f2 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xd796593f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x647d04bf # load x3 with 32 MSBs 0x00000000647d04bf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000647d04bf
sw x3, 0(x2) # store x3 (0x647d04bf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000647d04bf from memory into f10
li x3, 0x4a13aa1f # load x3 with 32 MSBs 0x000000004a13aa1f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004a13aa1f
sw x3, 0(x2) # store x3 (0x4a13aa1f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000004a13aa1f from memory into f26
fsgnjn.d f26, f10, f26 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x2650b12a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5998faac # load x3 with 32 MSBs 0x000000005998faac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005998faac
sw x3, 0(x2) # store x3 (0x5998faac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000005998faac from memory into f30
li x3, 0x0559043c # load x3 with 32 MSBs 0x000000000559043c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000559043c
sw x3, 0(x2) # store x3 (0x0559043c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000000559043c from memory into f16
fsgnjn.d f27, f30, f16 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x7391f044 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7eed361 # load x3 with 32 MSBs 0x00000000b7eed361
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b7eed361
sw x3, 0(x2) # store x3 (0xb7eed361) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000b7eed361 from memory into f20
li x3, 0x6cc9f68e # load x3 with 32 MSBs 0x000000006cc9f68e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006cc9f68e
sw x3, 0(x2) # store x3 (0x6cc9f68e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000006cc9f68e from memory into f5
fsgnjn.d f28, f20, f5 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x35430977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3dfe634 # load x3 with 32 MSBs 0x00000000c3dfe634
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c3dfe634
sw x3, 0(x2) # store x3 (0xc3dfe634) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000c3dfe634 from memory into f19
li x3, 0xd69ef5ef # load x3 with 32 MSBs 0x00000000d69ef5ef
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d69ef5ef
sw x3, 0(x2) # store x3 (0xd69ef5ef) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000d69ef5ef from memory into f14
fsgnjn.d f29, f19, f14 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x678442de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd43d8e08 # load x3 with 32 MSBs 0x00000000d43d8e08
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d43d8e08
sw x3, 0(x2) # store x3 (0xd43d8e08) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000d43d8e08 from memory into f19
li x3, 0x4acaa8fa # load x3 with 32 MSBs 0x000000004acaa8fa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004acaa8fa
sw x3, 0(x2) # store x3 (0x4acaa8fa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000004acaa8fa from memory into f20
fsgnjn.d f30, f19, f20 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x86c567b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d689e3e # load x3 with 32 MSBs 0x000000008d689e3e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008d689e3e
sw x3, 0(x2) # store x3 (0x8d689e3e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000008d689e3e from memory into f28
li x3, 0x6c152d12 # load x3 with 32 MSBs 0x000000006c152d12
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006c152d12
sw x3, 0(x2) # store x3 (0x6c152d12) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000006c152d12 from memory into f30
fsgnjn.d f31, f28, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x3, 0x869c4f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56a50ef3 # load x3 with 32 MSBs 0x0000000056a50ef3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000056a50ef3
sw x3, 0(x2) # store x3 (0x56a50ef3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x0000000056a50ef3 from memory into f0
li x3, 0x6e3b2785 # load x3 with 32 MSBs 0x000000006e3b2785
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006e3b2785
sw x3, 0(x2) # store x3 (0x6e3b2785) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000006e3b2785 from memory into f17
fsgnjn.d f3, f0, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x13, 0xb7f2e5fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb070d16a # load x3 with 32 MSBs 0x00000000b070d16a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b070d16a
sw x3, 0(x2) # store x3 (0xb070d16a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000b070d16a from memory into f1
li x3, 0x2e0fff7b # load x3 with 32 MSBs 0x000000002e0fff7b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002e0fff7b
sw x3, 0(x2) # store x3 (0x2e0fff7b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000002e0fff7b from memory into f31
fsgnjn.d f13, f1, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x8, 0xaf34ac3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5dc0440 # load x3 with 32 MSBs 0x00000000f5dc0440
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f5dc0440
sw x3, 0(x2) # store x3 (0xf5dc0440) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000f5dc0440 from memory into f2
li x3, 0xd0b4f015 # load x3 with 32 MSBs 0x00000000d0b4f015
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d0b4f015
sw x3, 0(x2) # store x3 (0xd0b4f015) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000d0b4f015 from memory into f16
fsgnjn.d f8, f2, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x25, 0x1e246de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d7cad08 # load x3 with 32 MSBs 0x000000007d7cad08
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007d7cad08
sw x3, 0(x2) # store x3 (0x7d7cad08) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000007d7cad08 from memory into f3
li x3, 0x02260ed1 # load x3 with 32 MSBs 0x0000000002260ed1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000002260ed1
sw x3, 0(x2) # store x3 (0x02260ed1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000002260ed1 from memory into f1
fsgnjn.d f25, f3, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x13, 0xf8593d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28369a9b # load x3 with 32 MSBs 0x0000000028369a9b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000028369a9b
sw x3, 0(x2) # store x3 (0x28369a9b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000028369a9b from memory into f4
li x3, 0x837f6acd # load x3 with 32 MSBs 0x00000000837f6acd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000837f6acd
sw x3, 0(x2) # store x3 (0x837f6acd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000837f6acd from memory into f1
fsgnjn.d f13, f4, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x14, 0xcbc887c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd314c39a # load x3 with 32 MSBs 0x00000000d314c39a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d314c39a
sw x3, 0(x2) # store x3 (0xd314c39a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000d314c39a from memory into f5
li x3, 0x7ec88d17 # load x3 with 32 MSBs 0x000000007ec88d17
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007ec88d17
sw x3, 0(x2) # store x3 (0x7ec88d17) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000007ec88d17 from memory into f31
fsgnjn.d f14, f5, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x3, 0xb31477f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xecb9c311 # load x3 with 32 MSBs 0x00000000ecb9c311
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ecb9c311
sw x3, 0(x2) # store x3 (0xecb9c311) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000ecb9c311 from memory into f6
li x3, 0x92b722e9 # load x3 with 32 MSBs 0x0000000092b722e9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000092b722e9
sw x3, 0(x2) # store x3 (0x92b722e9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000092b722e9 from memory into f16
fsgnjn.d f3, f6, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x22, 0x934e3647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf32d7b10 # load x3 with 32 MSBs 0x00000000f32d7b10
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f32d7b10
sw x3, 0(x2) # store x3 (0xf32d7b10) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000f32d7b10 from memory into f7
li x3, 0xb7ec9aa8 # load x3 with 32 MSBs 0x00000000b7ec9aa8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b7ec9aa8
sw x3, 0(x2) # store x3 (0xb7ec9aa8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000b7ec9aa8 from memory into f27
fsgnjn.d f22, f7, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x18, 0xd715f8af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0c278db # load x3 with 32 MSBs 0x00000000e0c278db
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e0c278db
sw x3, 0(x2) # store x3 (0xe0c278db) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e0c278db from memory into f8
li x3, 0x8dd5e3eb # load x3 with 32 MSBs 0x000000008dd5e3eb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008dd5e3eb
sw x3, 0(x2) # store x3 (0x8dd5e3eb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000008dd5e3eb from memory into f25
fsgnjn.d f18, f8, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x24, 0x44b5c1e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f911e53 # load x3 with 32 MSBs 0x000000002f911e53
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002f911e53
sw x3, 0(x2) # store x3 (0x2f911e53) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000002f911e53 from memory into f9
li x3, 0xfaf4abd2 # load x3 with 32 MSBs 0x00000000faf4abd2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000faf4abd2
sw x3, 0(x2) # store x3 (0xfaf4abd2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000faf4abd2 from memory into f2
fsgnjn.d f24, f9, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x24, 0xb5072d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d515470 # load x3 with 32 MSBs 0x000000001d515470
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001d515470
sw x3, 0(x2) # store x3 (0x1d515470) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000001d515470 from memory into f10
li x3, 0x062917e0 # load x3 with 32 MSBs 0x00000000062917e0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000062917e0
sw x3, 0(x2) # store x3 (0x062917e0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000062917e0 from memory into f4
fsgnjn.d f24, f10, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x30, 0x9ed44c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb9f26f4 # load x3 with 32 MSBs 0x00000000eb9f26f4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000eb9f26f4
sw x3, 0(x2) # store x3 (0xeb9f26f4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000eb9f26f4 from memory into f11
li x3, 0x3f3818a6 # load x3 with 32 MSBs 0x000000003f3818a6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003f3818a6
sw x3, 0(x2) # store x3 (0x3f3818a6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000003f3818a6 from memory into f9
fsgnjn.d f30, f11, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x26, 0xe0b82d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7585c0d # load x3 with 32 MSBs 0x00000000d7585c0d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d7585c0d
sw x3, 0(x2) # store x3 (0xd7585c0d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000d7585c0d from memory into f12
li x3, 0x837fc03b # load x3 with 32 MSBs 0x00000000837fc03b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000837fc03b
sw x3, 0(x2) # store x3 (0x837fc03b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000837fc03b from memory into f17
fsgnjn.d f26, f12, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x24, 0x3695205b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4d18d23 # load x3 with 32 MSBs 0x00000000c4d18d23
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c4d18d23
sw x3, 0(x2) # store x3 (0xc4d18d23) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000c4d18d23 from memory into f13
li x3, 0x4d1c35a0 # load x3 with 32 MSBs 0x000000004d1c35a0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004d1c35a0
sw x3, 0(x2) # store x3 (0x4d1c35a0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000004d1c35a0 from memory into f17
fsgnjn.d f24, f13, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x26, 0xeb1f5383 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb649c786 # load x3 with 32 MSBs 0x00000000b649c786
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b649c786
sw x3, 0(x2) # store x3 (0xb649c786) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000b649c786 from memory into f14
li x3, 0xdf428cc3 # load x3 with 32 MSBs 0x00000000df428cc3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000df428cc3
sw x3, 0(x2) # store x3 (0xdf428cc3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000df428cc3 from memory into f2
fsgnjn.d f26, f14, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x12, 0xe3b41a0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68d73f7e # load x3 with 32 MSBs 0x0000000068d73f7e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000068d73f7e
sw x3, 0(x2) # store x3 (0x68d73f7e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000068d73f7e from memory into f15
li x3, 0x8ba9754b # load x3 with 32 MSBs 0x000000008ba9754b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008ba9754b
sw x3, 0(x2) # store x3 (0x8ba9754b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000008ba9754b from memory into f14
fsgnjn.d f12, f15, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x23, 0xf310ae07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f2dac60 # load x3 with 32 MSBs 0x000000008f2dac60
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008f2dac60
sw x3, 0(x2) # store x3 (0x8f2dac60) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008f2dac60 from memory into f16
li x3, 0x779119e1 # load x3 with 32 MSBs 0x00000000779119e1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000779119e1
sw x3, 0(x2) # store x3 (0x779119e1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000779119e1 from memory into f14
fsgnjn.d f23, f16, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x10, 0xce99f375 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd82ebb69 # load x3 with 32 MSBs 0x00000000d82ebb69
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d82ebb69
sw x3, 0(x2) # store x3 (0xd82ebb69) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000d82ebb69 from memory into f17
li x3, 0x234f9a76 # load x3 with 32 MSBs 0x00000000234f9a76
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000234f9a76
sw x3, 0(x2) # store x3 (0x234f9a76) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000234f9a76 from memory into f5
fsgnjn.d f10, f17, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x20, 0x5102bb95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaaeca9f8 # load x3 with 32 MSBs 0x00000000aaeca9f8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000aaeca9f8
sw x3, 0(x2) # store x3 (0xaaeca9f8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000aaeca9f8 from memory into f18
li x3, 0xa8f71b3d # load x3 with 32 MSBs 0x00000000a8f71b3d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a8f71b3d
sw x3, 0(x2) # store x3 (0xa8f71b3d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000a8f71b3d from memory into f27
fsgnjn.d f20, f18, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x7, 0xee2def7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70dd7cc1 # load x3 with 32 MSBs 0x0000000070dd7cc1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000070dd7cc1
sw x3, 0(x2) # store x3 (0x70dd7cc1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000070dd7cc1 from memory into f19
li x3, 0x998c0ec3 # load x3 with 32 MSBs 0x00000000998c0ec3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000998c0ec3
sw x3, 0(x2) # store x3 (0x998c0ec3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000998c0ec3 from memory into f18
fsgnjn.d f7, f19, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x22, 0x40e2b7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe83e888f # load x3 with 32 MSBs 0x00000000e83e888f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e83e888f
sw x3, 0(x2) # store x3 (0xe83e888f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e83e888f from memory into f20
li x3, 0xbba1172b # load x3 with 32 MSBs 0x00000000bba1172b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bba1172b
sw x3, 0(x2) # store x3 (0xbba1172b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000bba1172b from memory into f28
fsgnjn.d f22, f20, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x13, 0xae328b44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25a03c4b # load x3 with 32 MSBs 0x0000000025a03c4b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000025a03c4b
sw x3, 0(x2) # store x3 (0x25a03c4b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000025a03c4b from memory into f21
li x3, 0xc68fc21e # load x3 with 32 MSBs 0x00000000c68fc21e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c68fc21e
sw x3, 0(x2) # store x3 (0xc68fc21e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000c68fc21e from memory into f23
fsgnjn.d f13, f21, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x9, 0xc78f7008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x152a6b43 # load x3 with 32 MSBs 0x00000000152a6b43
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000152a6b43
sw x3, 0(x2) # store x3 (0x152a6b43) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000152a6b43 from memory into f22
li x3, 0xd392da71 # load x3 with 32 MSBs 0x00000000d392da71
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d392da71
sw x3, 0(x2) # store x3 (0xd392da71) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000d392da71 from memory into f17
fsgnjn.d f9, f22, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x31, 0xd473120f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb9950a1 # load x3 with 32 MSBs 0x00000000fb9950a1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fb9950a1
sw x3, 0(x2) # store x3 (0xfb9950a1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000fb9950a1 from memory into f23
li x3, 0x9b36b21c # load x3 with 32 MSBs 0x000000009b36b21c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009b36b21c
sw x3, 0(x2) # store x3 (0x9b36b21c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000009b36b21c from memory into f13
fsgnjn.d f31, f23, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x4, 0x20e0c4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba53190f # load x3 with 32 MSBs 0x00000000ba53190f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ba53190f
sw x3, 0(x2) # store x3 (0xba53190f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000ba53190f from memory into f24
li x3, 0xcaea1946 # load x3 with 32 MSBs 0x00000000caea1946
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000caea1946
sw x3, 0(x2) # store x3 (0xcaea1946) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000caea1946 from memory into f31
fsgnjn.d f4, f24, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x20, 0x37909fab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0305fda4 # load x3 with 32 MSBs 0x000000000305fda4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000305fda4
sw x3, 0(x2) # store x3 (0x0305fda4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000000305fda4 from memory into f25
li x3, 0x43a0bafb # load x3 with 32 MSBs 0x0000000043a0bafb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000043a0bafb
sw x3, 0(x2) # store x3 (0x43a0bafb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000043a0bafb from memory into f5
fsgnjn.d f20, f25, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x9, 0xf646f645 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x371278b5 # load x3 with 32 MSBs 0x00000000371278b5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000371278b5
sw x3, 0(x2) # store x3 (0x371278b5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000371278b5 from memory into f26
li x3, 0xefc43d5d # load x3 with 32 MSBs 0x00000000efc43d5d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000efc43d5d
sw x3, 0(x2) # store x3 (0xefc43d5d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000efc43d5d from memory into f10
fsgnjn.d f9, f26, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x21, 0xc18ea87d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ee43960 # load x3 with 32 MSBs 0x000000007ee43960
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007ee43960
sw x3, 0(x2) # store x3 (0x7ee43960) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000007ee43960 from memory into f27
li x3, 0x4f39487d # load x3 with 32 MSBs 0x000000004f39487d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004f39487d
sw x3, 0(x2) # store x3 (0x4f39487d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000004f39487d from memory into f18
fsgnjn.d f21, f27, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x24, 0x8329dbfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad3c3378 # load x3 with 32 MSBs 0x00000000ad3c3378
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ad3c3378
sw x3, 0(x2) # store x3 (0xad3c3378) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000ad3c3378 from memory into f28
li x3, 0x171c4878 # load x3 with 32 MSBs 0x00000000171c4878
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000171c4878
sw x3, 0(x2) # store x3 (0x171c4878) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000171c4878 from memory into f23
fsgnjn.d f24, f28, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x31, 0x84b75255 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x544bb6a5 # load x3 with 32 MSBs 0x00000000544bb6a5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000544bb6a5
sw x3, 0(x2) # store x3 (0x544bb6a5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000544bb6a5 from memory into f29
li x3, 0x12158b4d # load x3 with 32 MSBs 0x0000000012158b4d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000012158b4d
sw x3, 0(x2) # store x3 (0x12158b4d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000012158b4d from memory into f7
fsgnjn.d f31, f29, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x2, 0xcd3ba4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb098081e # load x3 with 32 MSBs 0x00000000b098081e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b098081e
sw x3, 0(x2) # store x3 (0xb098081e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000b098081e from memory into f30
li x3, 0x38834b2e # load x3 with 32 MSBs 0x0000000038834b2e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000038834b2e
sw x3, 0(x2) # store x3 (0x38834b2e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000038834b2e from memory into f22
fsgnjn.d f2, f30, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x10, 0xc6a0e3d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf98ed062 # load x3 with 32 MSBs 0x00000000f98ed062
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f98ed062
sw x3, 0(x2) # store x3 (0xf98ed062) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000f98ed062 from memory into f31
li x3, 0xd8861978 # load x3 with 32 MSBs 0x00000000d8861978
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d8861978
sw x3, 0(x2) # store x3 (0xd8861978) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000d8861978 from memory into f17
fsgnjn.d f10, f31, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x9, 0x5b58cacd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b708167 # load x3 with 32 MSBs 0x000000004b708167
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004b708167
sw x3, 0(x2) # store x3 (0x4b708167) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000004b708167 from memory into f7
li x3, 0x38bdeb79 # load x3 with 32 MSBs 0x0000000038bdeb79
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000038bdeb79
sw x3, 0(x2) # store x3 (0x38bdeb79) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x0000000038bdeb79 from memory into f0
fsgnjn.d f9, f7, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x19, 0xc0e44a04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x128a17c9 # load x3 with 32 MSBs 0x00000000128a17c9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000128a17c9
sw x3, 0(x2) # store x3 (0x128a17c9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000128a17c9 from memory into f9
li x3, 0x1a6a2f62 # load x3 with 32 MSBs 0x000000001a6a2f62
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001a6a2f62
sw x3, 0(x2) # store x3 (0x1a6a2f62) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000001a6a2f62 from memory into f1
fsgnjn.d f19, f9, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x10, 0x033b1636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a15b7fe # load x3 with 32 MSBs 0x000000007a15b7fe
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007a15b7fe
sw x3, 0(x2) # store x3 (0x7a15b7fe) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000007a15b7fe from memory into f12
li x3, 0x6689ff83 # load x3 with 32 MSBs 0x000000006689ff83
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006689ff83
sw x3, 0(x2) # store x3 (0x6689ff83) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000006689ff83 from memory into f2
fsgnjn.d f10, f12, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x29, 0x99e5b427 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c9ddc98 # load x3 with 32 MSBs 0x000000000c9ddc98
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000c9ddc98
sw x3, 0(x2) # store x3 (0x0c9ddc98) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000000c9ddc98 from memory into f22
li x3, 0x9d2a6a27 # load x3 with 32 MSBs 0x000000009d2a6a27
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009d2a6a27
sw x3, 0(x2) # store x3 (0x9d2a6a27) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000009d2a6a27 from memory into f3
fsgnjn.d f29, f22, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x9, 0x563fbc31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc813d7d5 # load x3 with 32 MSBs 0x00000000c813d7d5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c813d7d5
sw x3, 0(x2) # store x3 (0xc813d7d5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000c813d7d5 from memory into f13
li x3, 0xffa60aa7 # load x3 with 32 MSBs 0x00000000ffa60aa7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ffa60aa7
sw x3, 0(x2) # store x3 (0xffa60aa7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000ffa60aa7 from memory into f4
fsgnjn.d f9, f13, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x2, 0x71223293 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f8f42df # load x3 with 32 MSBs 0x000000003f8f42df
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003f8f42df
sw x3, 0(x2) # store x3 (0x3f8f42df) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003f8f42df from memory into f6
li x3, 0x1d94ef90 # load x3 with 32 MSBs 0x000000001d94ef90
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001d94ef90
sw x3, 0(x2) # store x3 (0x1d94ef90) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000001d94ef90 from memory into f5
fsgnjn.d f2, f6, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x16, 0x4dd4b828 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd84266b5 # load x3 with 32 MSBs 0x00000000d84266b5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d84266b5
sw x3, 0(x2) # store x3 (0xd84266b5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000d84266b5 from memory into f12
li x3, 0x0be34831 # load x3 with 32 MSBs 0x000000000be34831
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000be34831
sw x3, 0(x2) # store x3 (0x0be34831) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000000be34831 from memory into f6
fsgnjn.d f16, f12, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x29, 0x9a0479e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf56957a # load x3 with 32 MSBs 0x00000000cf56957a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cf56957a
sw x3, 0(x2) # store x3 (0xcf56957a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000cf56957a from memory into f4
li x3, 0xa99dd0f2 # load x3 with 32 MSBs 0x00000000a99dd0f2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a99dd0f2
sw x3, 0(x2) # store x3 (0xa99dd0f2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000a99dd0f2 from memory into f7
fsgnjn.d f29, f4, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x10, 0x30d5e437 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb66cda33 # load x3 with 32 MSBs 0x00000000b66cda33
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b66cda33
sw x3, 0(x2) # store x3 (0xb66cda33) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000b66cda33 from memory into f22
li x3, 0x55c45de0 # load x3 with 32 MSBs 0x0000000055c45de0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000055c45de0
sw x3, 0(x2) # store x3 (0x55c45de0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000055c45de0 from memory into f8
fsgnjn.d f10, f22, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x28, 0xa1f553b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a09cbbb # load x3 with 32 MSBs 0x000000006a09cbbb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006a09cbbb
sw x3, 0(x2) # store x3 (0x6a09cbbb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000006a09cbbb from memory into f12
li x3, 0xa8f18893 # load x3 with 32 MSBs 0x00000000a8f18893
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a8f18893
sw x3, 0(x2) # store x3 (0xa8f18893) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000a8f18893 from memory into f9
fsgnjn.d f28, f12, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x6, 0xc238eca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0435bf4a # load x3 with 32 MSBs 0x000000000435bf4a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000435bf4a
sw x3, 0(x2) # store x3 (0x0435bf4a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000000435bf4a from memory into f24
li x3, 0x9041b978 # load x3 with 32 MSBs 0x000000009041b978
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009041b978
sw x3, 0(x2) # store x3 (0x9041b978) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000009041b978 from memory into f10
fsgnjn.d f6, f24, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x26, 0x6c124169 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29891d9c # load x3 with 32 MSBs 0x0000000029891d9c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000029891d9c
sw x3, 0(x2) # store x3 (0x29891d9c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000029891d9c from memory into f23
li x3, 0x50880218 # load x3 with 32 MSBs 0x0000000050880218
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000050880218
sw x3, 0(x2) # store x3 (0x50880218) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000050880218 from memory into f11
fsgnjn.d f26, f23, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x17, 0x56b54b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x843f91be # load x3 with 32 MSBs 0x00000000843f91be
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000843f91be
sw x3, 0(x2) # store x3 (0x843f91be) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000843f91be from memory into f30
li x3, 0x3621cd1e # load x3 with 32 MSBs 0x000000003621cd1e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003621cd1e
sw x3, 0(x2) # store x3 (0x3621cd1e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000003621cd1e from memory into f12
fsgnjn.d f17, f30, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x11, 0x586f8bb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92328655 # load x3 with 32 MSBs 0x0000000092328655
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000092328655
sw x3, 0(x2) # store x3 (0x92328655) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000092328655 from memory into f21
li x3, 0x3ea69b47 # load x3 with 32 MSBs 0x000000003ea69b47
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003ea69b47
sw x3, 0(x2) # store x3 (0x3ea69b47) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000003ea69b47 from memory into f13
fsgnjn.d f11, f21, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x6, 0xe33d6941 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f5fd1b5 # load x3 with 32 MSBs 0x000000007f5fd1b5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007f5fd1b5
sw x3, 0(x2) # store x3 (0x7f5fd1b5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000007f5fd1b5 from memory into f7
li x3, 0x8818b177 # load x3 with 32 MSBs 0x000000008818b177
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008818b177
sw x3, 0(x2) # store x3 (0x8818b177) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000008818b177 from memory into f14
fsgnjn.d f6, f7, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x11, 0x53e68ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11cfcaf0 # load x3 with 32 MSBs 0x0000000011cfcaf0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000011cfcaf0
sw x3, 0(x2) # store x3 (0x11cfcaf0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000011cfcaf0 from memory into f22
li x3, 0x9b0263d7 # load x3 with 32 MSBs 0x000000009b0263d7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009b0263d7
sw x3, 0(x2) # store x3 (0x9b0263d7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000009b0263d7 from memory into f15
fsgnjn.d f11, f22, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x24, 0x0e6e53eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a94737b # load x3 with 32 MSBs 0x000000005a94737b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005a94737b
sw x3, 0(x2) # store x3 (0x5a94737b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000005a94737b from memory into f9
li x3, 0x5c306bbc # load x3 with 32 MSBs 0x000000005c306bbc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005c306bbc
sw x3, 0(x2) # store x3 (0x5c306bbc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000005c306bbc from memory into f16
fsgnjn.d f24, f9, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x7, 0x2b76d3bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x104a2d24 # load x3 with 32 MSBs 0x00000000104a2d24
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000104a2d24
sw x3, 0(x2) # store x3 (0x104a2d24) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000104a2d24 from memory into f5
li x3, 0x8eb96c0c # load x3 with 32 MSBs 0x000000008eb96c0c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008eb96c0c
sw x3, 0(x2) # store x3 (0x8eb96c0c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000008eb96c0c from memory into f17
fsgnjn.d f7, f5, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x19, 0x1b2481b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50018260 # load x3 with 32 MSBs 0x0000000050018260
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000050018260
sw x3, 0(x2) # store x3 (0x50018260) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000050018260 from memory into f5
li x3, 0xdefa03b1 # load x3 with 32 MSBs 0x00000000defa03b1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000defa03b1
sw x3, 0(x2) # store x3 (0xdefa03b1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000defa03b1 from memory into f18
fsgnjn.d f19, f5, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x28, 0x760907b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a18d019 # load x3 with 32 MSBs 0x000000002a18d019
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002a18d019
sw x3, 0(x2) # store x3 (0x2a18d019) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000002a18d019 from memory into f30
li x3, 0x62fb71ce # load x3 with 32 MSBs 0x0000000062fb71ce
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000062fb71ce
sw x3, 0(x2) # store x3 (0x62fb71ce) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000062fb71ce from memory into f19
fsgnjn.d f28, f30, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x24, 0xad1af5eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6e369af # load x3 with 32 MSBs 0x00000000d6e369af
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d6e369af
sw x3, 0(x2) # store x3 (0xd6e369af) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000d6e369af from memory into f17
li x3, 0x7202856b # load x3 with 32 MSBs 0x000000007202856b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007202856b
sw x3, 0(x2) # store x3 (0x7202856b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000007202856b from memory into f20
fsgnjn.d f24, f17, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x13, 0x54c5e5e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x825aeda2 # load x3 with 32 MSBs 0x00000000825aeda2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000825aeda2
sw x3, 0(x2) # store x3 (0x825aeda2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000825aeda2 from memory into f25
li x3, 0x3edf44e4 # load x3 with 32 MSBs 0x000000003edf44e4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003edf44e4
sw x3, 0(x2) # store x3 (0x3edf44e4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000003edf44e4 from memory into f21
fsgnjn.d f13, f25, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x9, 0x62c4288e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0be89f7 # load x3 with 32 MSBs 0x00000000e0be89f7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e0be89f7
sw x3, 0(x2) # store x3 (0xe0be89f7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e0be89f7 from memory into f23
li x3, 0x905f7062 # load x3 with 32 MSBs 0x00000000905f7062
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000905f7062
sw x3, 0(x2) # store x3 (0x905f7062) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000905f7062 from memory into f22
fsgnjn.d f9, f23, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x11, 0x57cb9695 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd42b49e1 # load x3 with 32 MSBs 0x00000000d42b49e1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d42b49e1
sw x3, 0(x2) # store x3 (0xd42b49e1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000d42b49e1 from memory into f24
li x3, 0x69640efd # load x3 with 32 MSBs 0x0000000069640efd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000069640efd
sw x3, 0(x2) # store x3 (0x69640efd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000069640efd from memory into f23
fsgnjn.d f11, f24, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x6, 0x0e19b9f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca12dee7 # load x3 with 32 MSBs 0x00000000ca12dee7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ca12dee7
sw x3, 0(x2) # store x3 (0xca12dee7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ca12dee7 from memory into f2
li x3, 0x8f5c402f # load x3 with 32 MSBs 0x000000008f5c402f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008f5c402f
sw x3, 0(x2) # store x3 (0x8f5c402f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000008f5c402f from memory into f24
fsgnjn.d f6, f2, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x27, 0xed645c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66972120 # load x3 with 32 MSBs 0x0000000066972120
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000066972120
sw x3, 0(x2) # store x3 (0x66972120) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000066972120 from memory into f8
li x3, 0x84f97e42 # load x3 with 32 MSBs 0x0000000084f97e42
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000084f97e42
sw x3, 0(x2) # store x3 (0x84f97e42) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000084f97e42 from memory into f25
fsgnjn.d f27, f8, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x25, 0xc5a11fce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f7603fd # load x3 with 32 MSBs 0x000000003f7603fd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003f7603fd
sw x3, 0(x2) # store x3 (0x3f7603fd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000003f7603fd from memory into f3
li x3, 0x60d5c1ad # load x3 with 32 MSBs 0x0000000060d5c1ad
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000060d5c1ad
sw x3, 0(x2) # store x3 (0x60d5c1ad) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000060d5c1ad from memory into f26
fsgnjn.d f25, f3, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x21, 0x4663b49a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed3997b1 # load x3 with 32 MSBs 0x00000000ed3997b1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ed3997b1
sw x3, 0(x2) # store x3 (0xed3997b1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000ed3997b1 from memory into f4
li x3, 0xed23f0bf # load x3 with 32 MSBs 0x00000000ed23f0bf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ed23f0bf
sw x3, 0(x2) # store x3 (0xed23f0bf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000ed23f0bf from memory into f27
fsgnjn.d f21, f4, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x15, 0x02b0ac56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48e3ca9f # load x3 with 32 MSBs 0x0000000048e3ca9f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000048e3ca9f
sw x3, 0(x2) # store x3 (0x48e3ca9f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000048e3ca9f from memory into f26
li x3, 0xbaa91d31 # load x3 with 32 MSBs 0x00000000baa91d31
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000baa91d31
sw x3, 0(x2) # store x3 (0xbaa91d31) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000baa91d31 from memory into f28
fsgnjn.d f15, f26, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x26, 0x0d5d1c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa733e98 # load x3 with 32 MSBs 0x00000000aa733e98
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000aa733e98
sw x3, 0(x2) # store x3 (0xaa733e98) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000aa733e98 from memory into f19
li x3, 0x1b829c90 # load x3 with 32 MSBs 0x000000001b829c90
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001b829c90
sw x3, 0(x2) # store x3 (0x1b829c90) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000001b829c90 from memory into f29
fsgnjn.d f26, f19, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x18, 0x6b5b19b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb094d487 # load x3 with 32 MSBs 0x00000000b094d487
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b094d487
sw x3, 0(x2) # store x3 (0xb094d487) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000b094d487 from memory into f28
li x3, 0x27df5108 # load x3 with 32 MSBs 0x0000000027df5108
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000027df5108
sw x3, 0(x2) # store x3 (0x27df5108) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000027df5108 from memory into f30
fsgnjn.d f18, f28, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x10, 0x7e3b1276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa89794cf # load x3 with 32 MSBs 0x00000000a89794cf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a89794cf
sw x3, 0(x2) # store x3 (0xa89794cf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000a89794cf from memory into f26
li x3, 0x89b69683 # load x3 with 32 MSBs 0x0000000089b69683
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000089b69683
sw x3, 0(x2) # store x3 (0x89b69683) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000089b69683 from memory into f31
fsgnjn.d f10, f26, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
