///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fsqrt.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.380451
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
fsqrt.s f24, f11 # perform first operation
fsqrt.s f1, f24 # perform second operation

# Testcase cmp_gpr_hazard raw test
fsqrt.s f27, f30 # perform first operation
fsqrt.s f10, f27 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.s f18, f6 # perform first operation
fsqrt.s f18, f22 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.s f10, f11 # perform first operation
fsqrt.s f10, f24 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.s f25, f12 # perform first operation
fsqrt.s f12, f14 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.s f1, f20 # perform first operation
fsqrt.s f16, f11 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x3f4ae769 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x814a3f31 # load x3 with value 0x814a3f31
sw x3, 0(x2) # store 0x814a3f31 in memory
flw f0, 0(x2) # load 0x814a3f31 from memory into f0
fsqrt.s f0, f0 # perform operation
fsqrt.s f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xf4927bce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9af0a90c # load x3 with value 0x9af0a90c
sw x3, 0(x2) # store 0x9af0a90c in memory
flw f1, 0(x2) # load 0x9af0a90c from memory into f1
fsqrt.s f1, f1 # perform operation
fsqrt.s f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x637750b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e8aa3fb # load x3 with value 0x6e8aa3fb
sw x3, 0(x2) # store 0x6e8aa3fb in memory
flw f2, 0(x2) # load 0x6e8aa3fb from memory into f2
fsqrt.s f2, f2 # perform operation
fsqrt.s f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x989a48b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x260a6515 # load x3 with value 0x260a6515
sw x3, 0(x2) # store 0x260a6515 in memory
flw f3, 0(x2) # load 0x260a6515 from memory into f3
fsqrt.s f3, f3 # perform operation
fsqrt.s f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x895fe7f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ae47ef1 # load x3 with value 0x8ae47ef1
sw x3, 0(x2) # store 0x8ae47ef1 in memory
flw f4, 0(x2) # load 0x8ae47ef1 from memory into f4
fsqrt.s f4, f4 # perform operation
fsqrt.s f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x82375d32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0166826 # load x3 with value 0xe0166826
sw x3, 0(x2) # store 0xe0166826 in memory
flw f5, 0(x2) # load 0xe0166826 from memory into f5
fsqrt.s f5, f5 # perform operation
fsqrt.s f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x77649246 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa630bc1b # load x3 with value 0xa630bc1b
sw x3, 0(x2) # store 0xa630bc1b in memory
flw f6, 0(x2) # load 0xa630bc1b from memory into f6
fsqrt.s f6, f6 # perform operation
fsqrt.s f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x1df5a631 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31066b35 # load x3 with value 0x31066b35
sw x3, 0(x2) # store 0x31066b35 in memory
flw f7, 0(x2) # load 0x31066b35 from memory into f7
fsqrt.s f7, f7 # perform operation
fsqrt.s f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xf0d24e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3121bcf9 # load x3 with value 0x3121bcf9
sw x3, 0(x2) # store 0x3121bcf9 in memory
flw f8, 0(x2) # load 0x3121bcf9 from memory into f8
fsqrt.s f8, f8 # perform operation
fsqrt.s f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xa80954b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc46def12 # load x3 with value 0xc46def12
sw x3, 0(x2) # store 0xc46def12 in memory
flw f9, 0(x2) # load 0xc46def12 from memory into f9
fsqrt.s f9, f9 # perform operation
fsqrt.s f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x0f844438 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffa33319 # load x3 with value 0xffa33319
sw x3, 0(x2) # store 0xffa33319 in memory
flw f10, 0(x2) # load 0xffa33319 from memory into f10
fsqrt.s f10, f10 # perform operation
fsqrt.s f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x06eccd4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x854395bd # load x3 with value 0x854395bd
sw x3, 0(x2) # store 0x854395bd in memory
flw f11, 0(x2) # load 0x854395bd from memory into f11
fsqrt.s f11, f11 # perform operation
fsqrt.s f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x56eafd50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ba95960 # load x3 with value 0x2ba95960
sw x3, 0(x2) # store 0x2ba95960 in memory
flw f12, 0(x2) # load 0x2ba95960 from memory into f12
fsqrt.s f12, f12 # perform operation
fsqrt.s f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xe23c0ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d39499d # load x3 with value 0x5d39499d
sw x3, 0(x2) # store 0x5d39499d in memory
flw f13, 0(x2) # load 0x5d39499d from memory into f13
fsqrt.s f13, f13 # perform operation
fsqrt.s f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x6d6a5a4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeab94dc8 # load x3 with value 0xeab94dc8
sw x3, 0(x2) # store 0xeab94dc8 in memory
flw f14, 0(x2) # load 0xeab94dc8 from memory into f14
fsqrt.s f14, f14 # perform operation
fsqrt.s f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x8411ea73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ad17c45 # load x3 with value 0x0ad17c45
sw x3, 0(x2) # store 0x0ad17c45 in memory
flw f15, 0(x2) # load 0x0ad17c45 from memory into f15
fsqrt.s f15, f15 # perform operation
fsqrt.s f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xf02c7397 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79203635 # load x3 with value 0x79203635
sw x3, 0(x2) # store 0x79203635 in memory
flw f16, 0(x2) # load 0x79203635 from memory into f16
fsqrt.s f16, f16 # perform operation
fsqrt.s f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x9c3b78db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64dff71e # load x3 with value 0x64dff71e
sw x3, 0(x2) # store 0x64dff71e in memory
flw f17, 0(x2) # load 0x64dff71e from memory into f17
fsqrt.s f17, f17 # perform operation
fsqrt.s f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xadfaf005 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc018b999 # load x3 with value 0xc018b999
sw x3, 0(x2) # store 0xc018b999 in memory
flw f18, 0(x2) # load 0xc018b999 from memory into f18
fsqrt.s f18, f18 # perform operation
fsqrt.s f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x9c2ade44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23790545 # load x3 with value 0x23790545
sw x3, 0(x2) # store 0x23790545 in memory
flw f19, 0(x2) # load 0x23790545 from memory into f19
fsqrt.s f19, f19 # perform operation
fsqrt.s f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xab91a6ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4acde8e # load x3 with value 0xb4acde8e
sw x3, 0(x2) # store 0xb4acde8e in memory
flw f20, 0(x2) # load 0xb4acde8e from memory into f20
fsqrt.s f20, f20 # perform operation
fsqrt.s f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xe3c8068b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86f5f2c2 # load x3 with value 0x86f5f2c2
sw x3, 0(x2) # store 0x86f5f2c2 in memory
flw f21, 0(x2) # load 0x86f5f2c2 from memory into f21
fsqrt.s f21, f21 # perform operation
fsqrt.s f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xe3fdb1df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f251cc4 # load x3 with value 0x7f251cc4
sw x3, 0(x2) # store 0x7f251cc4 in memory
flw f22, 0(x2) # load 0x7f251cc4 from memory into f22
fsqrt.s f22, f22 # perform operation
fsqrt.s f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x44f028ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26da1b3c # load x3 with value 0x26da1b3c
sw x3, 0(x2) # store 0x26da1b3c in memory
flw f23, 0(x2) # load 0x26da1b3c from memory into f23
fsqrt.s f23, f23 # perform operation
fsqrt.s f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x77e6808c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5c7ff88 # load x3 with value 0xa5c7ff88
sw x3, 0(x2) # store 0xa5c7ff88 in memory
flw f24, 0(x2) # load 0xa5c7ff88 from memory into f24
fsqrt.s f24, f24 # perform operation
fsqrt.s f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x28bda53f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9d51878 # load x3 with value 0xc9d51878
sw x3, 0(x2) # store 0xc9d51878 in memory
flw f25, 0(x2) # load 0xc9d51878 from memory into f25
fsqrt.s f25, f25 # perform operation
fsqrt.s f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xf3c14db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe365cff2 # load x3 with value 0xe365cff2
sw x3, 0(x2) # store 0xe365cff2 in memory
flw f26, 0(x2) # load 0xe365cff2 from memory into f26
fsqrt.s f26, f26 # perform operation
fsqrt.s f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xea1ceced # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x062eb3ea # load x3 with value 0x062eb3ea
sw x3, 0(x2) # store 0x062eb3ea in memory
flw f27, 0(x2) # load 0x062eb3ea from memory into f27
fsqrt.s f27, f27 # perform operation
fsqrt.s f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x66b22450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1f35f8f # load x3 with value 0xf1f35f8f
sw x3, 0(x2) # store 0xf1f35f8f in memory
flw f28, 0(x2) # load 0xf1f35f8f from memory into f28
fsqrt.s f28, f28 # perform operation
fsqrt.s f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x703a2ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0a5267a # load x3 with value 0xa0a5267a
sw x3, 0(x2) # store 0xa0a5267a in memory
flw f29, 0(x2) # load 0xa0a5267a from memory into f29
fsqrt.s f29, f29 # perform operation
fsqrt.s f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xedd7addc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65020363 # load x3 with value 0x65020363
sw x3, 0(x2) # store 0x65020363 in memory
flw f30, 0(x2) # load 0x65020363 from memory into f30
fsqrt.s f30, f30 # perform operation
fsqrt.s f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x91d0492b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedd2c73c # load x3 with value 0xedd2c73c
sw x3, 0(x2) # store 0xedd2c73c in memory
flw f31, 0(x2) # load 0xedd2c73c from memory into f31
fsqrt.s f31, f31 # perform operation
fsqrt.s f31, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x27, 0x214b8a19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fsqrt.s f27, f23 # perform operation
fsqrt.s f27, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x27, 0x45d9c060 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fsqrt.s f27, f26 # perform operation
fsqrt.s f27, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x16, 0x5f0c1ff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fsqrt.s f16, f30 # perform operation
fsqrt.s f16, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x10, 0x24b74ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fsqrt.s f10, f25 # perform operation
fsqrt.s f10, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x9, 0x36405025 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fsqrt.s f9, f28 # perform operation
fsqrt.s f9, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x21, 0xcb2b2c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fsqrt.s f21, f29 # perform operation
fsqrt.s f21, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x24, 0xe5e65c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fsqrt.s f24, f13 # perform operation
fsqrt.s f24, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x13, 0x17085269 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fsqrt.s f13, f20 # perform operation
fsqrt.s f13, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x5, 0x9b006e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fsqrt.s f5, f31 # perform operation
fsqrt.s f5, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x13, 0x7d91a766 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fsqrt.s f13, f15 # perform operation
fsqrt.s f13, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x7, 0x7f97bc05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fsqrt.s f7, f19 # perform operation
fsqrt.s f7, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x12, 0xf41597dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fsqrt.s f12, f29 # perform operation
fsqrt.s f12, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x6, 0xb065bdd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fsqrt.s f6, f9 # perform operation
fsqrt.s f6, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x15, 0x96a1caba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fsqrt.s f15, f22 # perform operation
fsqrt.s f15, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x31, 0x2a81adf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fsqrt.s f31, f19 # perform operation
fsqrt.s f31, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x15, 0xd850fe0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fsqrt.s f15, f9 # perform operation
fsqrt.s f15, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x20, 0x4fdd1e46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fsqrt.s f20, f31 # perform operation
fsqrt.s f20, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x29, 0x249447aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fsqrt.s f29, f7 # perform operation
fsqrt.s f29, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x3, 0x1b4963aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fsqrt.s f3, f30 # perform operation
fsqrt.s f3, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x12, 0xc5fcaefa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fsqrt.s f12, f8 # perform operation
fsqrt.s f12, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x26, 0xfc239fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fsqrt.s f26, f15 # perform operation
fsqrt.s f26, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x17, 0xc6fb9144 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fsqrt.s f17, f14 # perform operation
fsqrt.s f17, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x17, 0x4c6a7c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fsqrt.s f17, f5 # perform operation
fsqrt.s f17, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x10, 0xbec745ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fsqrt.s f10, f17 # perform operation
fsqrt.s f10, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x10, 0x5ca7bee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fsqrt.s f10, f6 # perform operation
fsqrt.s f10, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x14, 0x5acbdbf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fsqrt.s f14, f11 # perform operation
fsqrt.s f14, f11 # perform operation

# Testcase cp_frm
li x1, 0xc1e6df79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e9d65bb # load x3 with value 0x2e9d65bb
sw x3, 0(x2) # store 0x2e9d65bb in memory
flw f25, 0(x2) # load 0x2e9d65bb from memory into f25
fsqrt.s f1, f25 # perform operation
fsqrt.s f1, f25, dyn # perform operation
fsqrt.s f1, f25, rdn # perform operation
fsqrt.s f1, f25, rmm # perform operation
fsqrt.s f1, f25, rne # perform operation
fsqrt.s f1, f25, rtz # perform operation
fsqrt.s f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsqrt.s f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsqrt.s f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsqrt.s f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsqrt.s f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsqrt.s f1, f25 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x4f28607b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x891b75d5 # load x3 with value 0x891b75d5
sw x3, 0(x2) # store 0x891b75d5 in memory
flw f31, 0(x2) # load 0x891b75d5 from memory into f31
fsqrt.s f0, f31 # perform operation
fsqrt.s f0, f31 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xa3dbc81d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65411a8f # load x3 with value 0x65411a8f
sw x3, 0(x2) # store 0x65411a8f in memory
flw f2, 0(x2) # load 0x65411a8f from memory into f2
fsqrt.s f1, f2 # perform operation
fsqrt.s f1, f2 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x061447c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x927d33cf # load x3 with value 0x927d33cf
sw x3, 0(x2) # store 0x927d33cf in memory
flw f5, 0(x2) # load 0x927d33cf from memory into f5
fsqrt.s f2, f5 # perform operation
fsqrt.s f2, f5 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x5e416cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a4ba07d # load x3 with value 0x7a4ba07d
sw x3, 0(x2) # store 0x7a4ba07d in memory
flw f2, 0(x2) # load 0x7a4ba07d from memory into f2
fsqrt.s f3, f2 # perform operation
fsqrt.s f3, f2 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xad18c016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8201ee7 # load x3 with value 0xb8201ee7
sw x3, 0(x2) # store 0xb8201ee7 in memory
flw f29, 0(x2) # load 0xb8201ee7 from memory into f29
fsqrt.s f4, f29 # perform operation
fsqrt.s f4, f29 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xd8b243eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e1fb0cd # load x3 with value 0x8e1fb0cd
sw x3, 0(x2) # store 0x8e1fb0cd in memory
flw f3, 0(x2) # load 0x8e1fb0cd from memory into f3
fsqrt.s f5, f3 # perform operation
fsqrt.s f5, f3 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xaa5497b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x586da6cc # load x3 with value 0x586da6cc
sw x3, 0(x2) # store 0x586da6cc in memory
flw f8, 0(x2) # load 0x586da6cc from memory into f8
fsqrt.s f6, f8 # perform operation
fsqrt.s f6, f8 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x2a7a5655 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeaf871b6 # load x3 with value 0xeaf871b6
sw x3, 0(x2) # store 0xeaf871b6 in memory
flw f23, 0(x2) # load 0xeaf871b6 from memory into f23
fsqrt.s f7, f23 # perform operation
fsqrt.s f7, f23 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x81b6bd48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d74f68a # load x3 with value 0x4d74f68a
sw x3, 0(x2) # store 0x4d74f68a in memory
flw f14, 0(x2) # load 0x4d74f68a from memory into f14
fsqrt.s f8, f14 # perform operation
fsqrt.s f8, f14 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x7b5ec661 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64be5e08 # load x3 with value 0x64be5e08
sw x3, 0(x2) # store 0x64be5e08 in memory
flw f31, 0(x2) # load 0x64be5e08 from memory into f31
fsqrt.s f9, f31 # perform operation
fsqrt.s f9, f31 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x03c19ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x942442e0 # load x3 with value 0x942442e0
sw x3, 0(x2) # store 0x942442e0 in memory
flw f14, 0(x2) # load 0x942442e0 from memory into f14
fsqrt.s f10, f14 # perform operation
fsqrt.s f10, f14 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x3cfdd8fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x792f4010 # load x3 with value 0x792f4010
sw x3, 0(x2) # store 0x792f4010 in memory
flw f15, 0(x2) # load 0x792f4010 from memory into f15
fsqrt.s f11, f15 # perform operation
fsqrt.s f11, f15 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x633290e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d3dd248 # load x3 with value 0x0d3dd248
sw x3, 0(x2) # store 0x0d3dd248 in memory
flw f27, 0(x2) # load 0x0d3dd248 from memory into f27
fsqrt.s f12, f27 # perform operation
fsqrt.s f12, f27 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x68e5157f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3cea3ae # load x3 with value 0xb3cea3ae
sw x3, 0(x2) # store 0xb3cea3ae in memory
flw f25, 0(x2) # load 0xb3cea3ae from memory into f25
fsqrt.s f13, f25 # perform operation
fsqrt.s f13, f25 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x8d5710c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x264c43c3 # load x3 with value 0x264c43c3
sw x3, 0(x2) # store 0x264c43c3 in memory
flw f29, 0(x2) # load 0x264c43c3 from memory into f29
fsqrt.s f14, f29 # perform operation
fsqrt.s f14, f29 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xcdf31dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c22f3df # load x3 with value 0x8c22f3df
sw x3, 0(x2) # store 0x8c22f3df in memory
flw f13, 0(x2) # load 0x8c22f3df from memory into f13
fsqrt.s f15, f13 # perform operation
fsqrt.s f15, f13 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xc8c8a292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22142372 # load x3 with value 0x22142372
sw x3, 0(x2) # store 0x22142372 in memory
flw f18, 0(x2) # load 0x22142372 from memory into f18
fsqrt.s f16, f18 # perform operation
fsqrt.s f16, f18 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xabf78bae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7f35ca4 # load x3 with value 0xd7f35ca4
sw x3, 0(x2) # store 0xd7f35ca4 in memory
flw f13, 0(x2) # load 0xd7f35ca4 from memory into f13
fsqrt.s f17, f13 # perform operation
fsqrt.s f17, f13 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x0d2b5f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37a63fd9 # load x3 with value 0x37a63fd9
sw x3, 0(x2) # store 0x37a63fd9 in memory
flw f31, 0(x2) # load 0x37a63fd9 from memory into f31
fsqrt.s f18, f31 # perform operation
fsqrt.s f18, f31 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xe1216557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fdf639c # load x3 with value 0x0fdf639c
sw x3, 0(x2) # store 0x0fdf639c in memory
flw f6, 0(x2) # load 0x0fdf639c from memory into f6
fsqrt.s f19, f6 # perform operation
fsqrt.s f19, f6 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x1b55e748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39cf9ed5 # load x3 with value 0x39cf9ed5
sw x3, 0(x2) # store 0x39cf9ed5 in memory
flw f17, 0(x2) # load 0x39cf9ed5 from memory into f17
fsqrt.s f20, f17 # perform operation
fsqrt.s f20, f17 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x8fc81e87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ad67f2b # load x3 with value 0x8ad67f2b
sw x3, 0(x2) # store 0x8ad67f2b in memory
flw f2, 0(x2) # load 0x8ad67f2b from memory into f2
fsqrt.s f21, f2 # perform operation
fsqrt.s f21, f2 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xc7c66856 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c441e1e # load x3 with value 0x6c441e1e
sw x3, 0(x2) # store 0x6c441e1e in memory
flw f4, 0(x2) # load 0x6c441e1e from memory into f4
fsqrt.s f22, f4 # perform operation
fsqrt.s f22, f4 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x34899004 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06596bd3 # load x3 with value 0x06596bd3
sw x3, 0(x2) # store 0x06596bd3 in memory
flw f4, 0(x2) # load 0x06596bd3 from memory into f4
fsqrt.s f23, f4 # perform operation
fsqrt.s f23, f4 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xc74fb20c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72886eaf # load x3 with value 0x72886eaf
sw x3, 0(x2) # store 0x72886eaf in memory
flw f20, 0(x2) # load 0x72886eaf from memory into f20
fsqrt.s f24, f20 # perform operation
fsqrt.s f24, f20 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xc67ba0a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b544e37 # load x3 with value 0x2b544e37
sw x3, 0(x2) # store 0x2b544e37 in memory
flw f28, 0(x2) # load 0x2b544e37 from memory into f28
fsqrt.s f25, f28 # perform operation
fsqrt.s f25, f28 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xf022f4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x628b5299 # load x3 with value 0x628b5299
sw x3, 0(x2) # store 0x628b5299 in memory
flw f15, 0(x2) # load 0x628b5299 from memory into f15
fsqrt.s f26, f15 # perform operation
fsqrt.s f26, f15 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x48478a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab2523e9 # load x3 with value 0xab2523e9
sw x3, 0(x2) # store 0xab2523e9 in memory
flw f5, 0(x2) # load 0xab2523e9 from memory into f5
fsqrt.s f27, f5 # perform operation
fsqrt.s f27, f5 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x8aa791f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc778d4f1 # load x3 with value 0xc778d4f1
sw x3, 0(x2) # store 0xc778d4f1 in memory
flw f28, 0(x2) # load 0xc778d4f1 from memory into f28
fsqrt.s f28, f28 # perform operation
fsqrt.s f28, f28 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x43533bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a17fe97 # load x3 with value 0x1a17fe97
sw x3, 0(x2) # store 0x1a17fe97 in memory
flw f3, 0(x2) # load 0x1a17fe97 from memory into f3
fsqrt.s f29, f3 # perform operation
fsqrt.s f29, f3 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xe17254a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2ab0228 # load x3 with value 0xe2ab0228
sw x3, 0(x2) # store 0xe2ab0228 in memory
flw f15, 0(x2) # load 0xe2ab0228 from memory into f15
fsqrt.s f30, f15 # perform operation
fsqrt.s f30, f15 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xa506b1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacddc6e9 # load x3 with value 0xacddc6e9
sw x3, 0(x2) # store 0xacddc6e9 in memory
flw f19, 0(x2) # load 0xacddc6e9 from memory into f19
fsqrt.s f31, f19 # perform operation
fsqrt.s f31, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x12, 0x4dd0c8fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb449e599 # load x3 with value 0xb449e599
sw x3, 0(x2) # store 0xb449e599 in memory
flw f0, 0(x2) # load 0xb449e599 from memory into f0
fsqrt.s f12, f0 # perform operation
fsqrt.s f12, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x5, 0xd283caf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd048fde1 # load x3 with value 0xd048fde1
sw x3, 0(x2) # store 0xd048fde1 in memory
flw f1, 0(x2) # load 0xd048fde1 from memory into f1
fsqrt.s f5, f1 # perform operation
fsqrt.s f5, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x18, 0x9f9ed695 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd14ae01f # load x3 with value 0xd14ae01f
sw x3, 0(x2) # store 0xd14ae01f in memory
flw f2, 0(x2) # load 0xd14ae01f from memory into f2
fsqrt.s f18, f2 # perform operation
fsqrt.s f18, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x10, 0xb3fd442a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a68561b # load x3 with value 0x9a68561b
sw x3, 0(x2) # store 0x9a68561b in memory
flw f3, 0(x2) # load 0x9a68561b from memory into f3
fsqrt.s f10, f3 # perform operation
fsqrt.s f10, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x18, 0xb0dba6b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b6d3cad # load x3 with value 0x4b6d3cad
sw x3, 0(x2) # store 0x4b6d3cad in memory
flw f4, 0(x2) # load 0x4b6d3cad from memory into f4
fsqrt.s f18, f4 # perform operation
fsqrt.s f18, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x10, 0x9e70d617 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5bb8ffe # load x3 with value 0xe5bb8ffe
sw x3, 0(x2) # store 0xe5bb8ffe in memory
flw f5, 0(x2) # load 0xe5bb8ffe from memory into f5
fsqrt.s f10, f5 # perform operation
fsqrt.s f10, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x6, 0xc887b3db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ec5861f # load x3 with value 0x5ec5861f
sw x3, 0(x2) # store 0x5ec5861f in memory
flw f6, 0(x2) # load 0x5ec5861f from memory into f6
fsqrt.s f6, f6 # perform operation
fsqrt.s f6, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x8, 0x8ad492e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf31c6e4 # load x3 with value 0xdf31c6e4
sw x3, 0(x2) # store 0xdf31c6e4 in memory
flw f7, 0(x2) # load 0xdf31c6e4 from memory into f7
fsqrt.s f8, f7 # perform operation
fsqrt.s f8, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x18, 0xc02613fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x793f49a2 # load x3 with value 0x793f49a2
sw x3, 0(x2) # store 0x793f49a2 in memory
flw f8, 0(x2) # load 0x793f49a2 from memory into f8
fsqrt.s f18, f8 # perform operation
fsqrt.s f18, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x25, 0x929dde5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x919a77f1 # load x3 with value 0x919a77f1
sw x3, 0(x2) # store 0x919a77f1 in memory
flw f9, 0(x2) # load 0x919a77f1 from memory into f9
fsqrt.s f25, f9 # perform operation
fsqrt.s f25, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x29, 0x2ddb67ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3b13ed6 # load x3 with value 0xf3b13ed6
sw x3, 0(x2) # store 0xf3b13ed6 in memory
flw f10, 0(x2) # load 0xf3b13ed6 from memory into f10
fsqrt.s f29, f10 # perform operation
fsqrt.s f29, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x24, 0x1d95bcb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0857d5a9 # load x3 with value 0x0857d5a9
sw x3, 0(x2) # store 0x0857d5a9 in memory
flw f11, 0(x2) # load 0x0857d5a9 from memory into f11
fsqrt.s f24, f11 # perform operation
fsqrt.s f24, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x23, 0xfe8a5005 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5d6a366 # load x3 with value 0xe5d6a366
sw x3, 0(x2) # store 0xe5d6a366 in memory
flw f12, 0(x2) # load 0xe5d6a366 from memory into f12
fsqrt.s f23, f12 # perform operation
fsqrt.s f23, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x11, 0x39da5f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfced65f3 # load x3 with value 0xfced65f3
sw x3, 0(x2) # store 0xfced65f3 in memory
flw f13, 0(x2) # load 0xfced65f3 from memory into f13
fsqrt.s f11, f13 # perform operation
fsqrt.s f11, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x8, 0x3f5e82d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43859e8c # load x3 with value 0x43859e8c
sw x3, 0(x2) # store 0x43859e8c in memory
flw f14, 0(x2) # load 0x43859e8c from memory into f14
fsqrt.s f8, f14 # perform operation
fsqrt.s f8, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x21, 0x40aca8fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1455db71 # load x3 with value 0x1455db71
sw x3, 0(x2) # store 0x1455db71 in memory
flw f15, 0(x2) # load 0x1455db71 from memory into f15
fsqrt.s f21, f15 # perform operation
fsqrt.s f21, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x3, 0xd3a10276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee9a3ea8 # load x3 with value 0xee9a3ea8
sw x3, 0(x2) # store 0xee9a3ea8 in memory
flw f16, 0(x2) # load 0xee9a3ea8 from memory into f16
fsqrt.s f3, f16 # perform operation
fsqrt.s f3, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x26, 0xf157e4a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf545c553 # load x3 with value 0xf545c553
sw x3, 0(x2) # store 0xf545c553 in memory
flw f17, 0(x2) # load 0xf545c553 from memory into f17
fsqrt.s f26, f17 # perform operation
fsqrt.s f26, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x13, 0x5c47da69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4bd6322 # load x3 with value 0xf4bd6322
sw x3, 0(x2) # store 0xf4bd6322 in memory
flw f18, 0(x2) # load 0xf4bd6322 from memory into f18
fsqrt.s f13, f18 # perform operation
fsqrt.s f13, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x7, 0x40b114a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79e9c583 # load x3 with value 0x79e9c583
sw x3, 0(x2) # store 0x79e9c583 in memory
flw f19, 0(x2) # load 0x79e9c583 from memory into f19
fsqrt.s f7, f19 # perform operation
fsqrt.s f7, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x6, 0x5023adb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4cec822 # load x3 with value 0xa4cec822
sw x3, 0(x2) # store 0xa4cec822 in memory
flw f20, 0(x2) # load 0xa4cec822 from memory into f20
fsqrt.s f6, f20 # perform operation
fsqrt.s f6, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x23, 0x7d4d43a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf17323a # load x3 with value 0xdf17323a
sw x3, 0(x2) # store 0xdf17323a in memory
flw f21, 0(x2) # load 0xdf17323a from memory into f21
fsqrt.s f23, f21 # perform operation
fsqrt.s f23, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x1, 0x240c4af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8a8e643 # load x3 with value 0xa8a8e643
sw x3, 0(x2) # store 0xa8a8e643 in memory
flw f22, 0(x2) # load 0xa8a8e643 from memory into f22
fsqrt.s f1, f22 # perform operation
fsqrt.s f1, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x2, 0x31a33f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc80243e3 # load x3 with value 0xc80243e3
sw x3, 0(x2) # store 0xc80243e3 in memory
flw f23, 0(x2) # load 0xc80243e3 from memory into f23
fsqrt.s f2, f23 # perform operation
fsqrt.s f2, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x27, 0x8881aa7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe9d0edb # load x3 with value 0xfe9d0edb
sw x3, 0(x2) # store 0xfe9d0edb in memory
flw f24, 0(x2) # load 0xfe9d0edb from memory into f24
fsqrt.s f27, f24 # perform operation
fsqrt.s f27, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x11, 0xc8d3dfa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x444ed8a7 # load x3 with value 0x444ed8a7
sw x3, 0(x2) # store 0x444ed8a7 in memory
flw f25, 0(x2) # load 0x444ed8a7 from memory into f25
fsqrt.s f11, f25 # perform operation
fsqrt.s f11, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x16, 0x8ed61a93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5530e1f4 # load x3 with value 0x5530e1f4
sw x3, 0(x2) # store 0x5530e1f4 in memory
flw f26, 0(x2) # load 0x5530e1f4 from memory into f26
fsqrt.s f16, f26 # perform operation
fsqrt.s f16, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x25, 0x7aa464b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a8757f1 # load x3 with value 0x6a8757f1
sw x3, 0(x2) # store 0x6a8757f1 in memory
flw f27, 0(x2) # load 0x6a8757f1 from memory into f27
fsqrt.s f25, f27 # perform operation
fsqrt.s f25, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x20, 0xf2f3f068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x103aa665 # load x3 with value 0x103aa665
sw x3, 0(x2) # store 0x103aa665 in memory
flw f28, 0(x2) # load 0x103aa665 from memory into f28
fsqrt.s f20, f28 # perform operation
fsqrt.s f20, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x13, 0xbd0e9990 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1fec5c3 # load x3 with value 0xe1fec5c3
sw x3, 0(x2) # store 0xe1fec5c3 in memory
flw f29, 0(x2) # load 0xe1fec5c3 from memory into f29
fsqrt.s f13, f29 # perform operation
fsqrt.s f13, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x14, 0xe4b790f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d31afc7 # load x3 with value 0x8d31afc7
sw x3, 0(x2) # store 0x8d31afc7 in memory
flw f30, 0(x2) # load 0x8d31afc7 from memory into f30
fsqrt.s f14, f30 # perform operation
fsqrt.s f14, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x28, 0xf2e34b4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89dce604 # load x3 with value 0x89dce604
sw x3, 0(x2) # store 0x89dce604 in memory
flw f31, 0(x2) # load 0x89dce604 from memory into f31
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
