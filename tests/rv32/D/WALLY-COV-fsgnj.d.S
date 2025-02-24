///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fsgnj.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.016625
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
li x1, 0xec68f2bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
li x3, 0x43058c35 # load x3 with 32 MSBs 0x0000000043058c35
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000043058c35
sw x3, 0(x2) # store x3 (0x43058c35) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000043058c35 from memory into f21
fsgnj.d f1, f22, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x23, 0x312deba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
li x3, 0x51c53de6 # load x3 with 32 MSBs 0x0000000051c53de6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000051c53de6
sw x3, 0(x2) # store x3 (0x51c53de6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000051c53de6 from memory into f27
fsgnj.d f23, f9, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x5, 0x6e623438 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
li x3, 0x7bb28773 # load x3 with 32 MSBs 0x000000007bb28773
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007bb28773
sw x3, 0(x2) # store x3 (0x7bb28773) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000007bb28773 from memory into f22
fsgnj.d f5, f3, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x26, 0x3a2483bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
li x3, 0x1a42362d # load x3 with 32 MSBs 0x000000001a42362d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001a42362d
sw x3, 0(x2) # store x3 (0x1a42362d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001a42362d from memory into f19
fsgnj.d f26, f16, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x29, 0xd4239140 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
li x3, 0xba9464e0 # load x3 with 32 MSBs 0x00000000ba9464e0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ba9464e0
sw x3, 0(x2) # store x3 (0xba9464e0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000ba9464e0 from memory into f13
fsgnj.d f29, f5, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x3, 0xb68c43c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
li x3, 0x978d0e62 # load x3 with 32 MSBs 0x00000000978d0e62
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000978d0e62
sw x3, 0(x2) # store x3 (0x978d0e62) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000978d0e62 from memory into f23
fsgnj.d f3, f22, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x31, 0xdcf8e3d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
li x3, 0x9e158e61 # load x3 with 32 MSBs 0x000000009e158e61
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009e158e61
sw x3, 0(x2) # store x3 (0x9e158e61) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000009e158e61 from memory into f30
fsgnj.d f31, f13, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x4, 0xafb486f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
li x3, 0x154c8560 # load x3 with 32 MSBs 0x00000000154c8560
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000154c8560
sw x3, 0(x2) # store x3 (0x154c8560) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000154c8560 from memory into f3
fsgnj.d f4, f21, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x6, 0xa76e43ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
li x3, 0xed17e47d # load x3 with 32 MSBs 0x00000000ed17e47d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ed17e47d
sw x3, 0(x2) # store x3 (0xed17e47d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ed17e47d from memory into f9
fsgnj.d f6, f25, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x5, 0xf32ff993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
li x3, 0x3b57c399 # load x3 with 32 MSBs 0x000000003b57c399
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003b57c399
sw x3, 0(x2) # store x3 (0x3b57c399) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000003b57c399 from memory into f10
fsgnj.d f5, f20, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x7, 0x7390a10c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0xfd9b68dd # load x3 with 32 MSBs 0x00000000fd9b68dd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fd9b68dd
sw x3, 0(x2) # store x3 (0xfd9b68dd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000fd9b68dd from memory into f4
fsgnj.d f7, f23, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x3, 0x4916881e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
li x3, 0x785b649a # load x3 with 32 MSBs 0x00000000785b649a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000785b649a
sw x3, 0(x2) # store x3 (0x785b649a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000785b649a from memory into f18
fsgnj.d f3, f15, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x7, 0xfb0aafcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
li x3, 0x6658b27d # load x3 with 32 MSBs 0x000000006658b27d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006658b27d
sw x3, 0(x2) # store x3 (0x6658b27d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000006658b27d from memory into f13
fsgnj.d f7, f26, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x27, 0x57b2b0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
li x3, 0x1058e7c8 # load x3 with 32 MSBs 0x000000001058e7c8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001058e7c8
sw x3, 0(x2) # store x3 (0x1058e7c8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000001058e7c8 from memory into f12
fsgnj.d f27, f8, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x31, 0xbdeb5b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0x0f9c7fc8 # load x3 with 32 MSBs 0x000000000f9c7fc8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000f9c7fc8
sw x3, 0(x2) # store x3 (0x0f9c7fc8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000000f9c7fc8 from memory into f11
fsgnj.d f31, f5, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x6, 0xce8f5b9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
li x3, 0x48bc26f4 # load x3 with 32 MSBs 0x0000000048bc26f4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000048bc26f4
sw x3, 0(x2) # store x3 (0x48bc26f4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000048bc26f4 from memory into f16
fsgnj.d f6, f31, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x5, 0x262af36d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
li x3, 0x6d209acf # load x3 with 32 MSBs 0x000000006d209acf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006d209acf
sw x3, 0(x2) # store x3 (0x6d209acf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000006d209acf from memory into f26
fsgnj.d f5, f28, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x31, 0xb2057c81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
li x3, 0xa079f137 # load x3 with 32 MSBs 0x00000000a079f137
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a079f137
sw x3, 0(x2) # store x3 (0xa079f137) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000a079f137 from memory into f23
fsgnj.d f31, f28, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x29, 0x7853749a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
li x3, 0x91a06ab7 # load x3 with 32 MSBs 0x0000000091a06ab7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000091a06ab7
sw x3, 0(x2) # store x3 (0x91a06ab7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000091a06ab7 from memory into f15
fsgnj.d f29, f2, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x12, 0xf996f778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
li x3, 0xcbe975c0 # load x3 with 32 MSBs 0x00000000cbe975c0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cbe975c0
sw x3, 0(x2) # store x3 (0xcbe975c0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000cbe975c0 from memory into f6
fsgnj.d f12, f25, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x4, 0x180910a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
li x3, 0xff6f1176 # load x3 with 32 MSBs 0x00000000ff6f1176
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ff6f1176
sw x3, 0(x2) # store x3 (0xff6f1176) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ff6f1176 from memory into f26
fsgnj.d f4, f28, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x13, 0xa4b04c3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
li x3, 0xc15b009d # load x3 with 32 MSBs 0x00000000c15b009d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c15b009d
sw x3, 0(x2) # store x3 (0xc15b009d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000c15b009d from memory into f12
fsgnj.d f13, f23, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x22, 0x02a11044 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
li x3, 0xea30d12a # load x3 with 32 MSBs 0x00000000ea30d12a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ea30d12a
sw x3, 0(x2) # store x3 (0xea30d12a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ea30d12a from memory into f2
fsgnj.d f22, f13, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x29, 0xbc9e1880 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
li x3, 0x605913d4 # load x3 with 32 MSBs 0x00000000605913d4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000605913d4
sw x3, 0(x2) # store x3 (0x605913d4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000605913d4 from memory into f2
fsgnj.d f29, f23, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x22, 0x5f536d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
li x3, 0xccb8c118 # load x3 with 32 MSBs 0x00000000ccb8c118
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ccb8c118
sw x3, 0(x2) # store x3 (0xccb8c118) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000ccb8c118 from memory into f25
fsgnj.d f22, f20, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x1, 0xf8cfe1cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
li x3, 0x8b26a7c9 # load x3 with 32 MSBs 0x000000008b26a7c9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008b26a7c9
sw x3, 0(x2) # store x3 (0x8b26a7c9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000008b26a7c9 from memory into f26
fsgnj.d f1, f5, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x24, 0xf4c9b06c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79d22c37 # load x3 with 32 MSBs 0x0000000079d22c37
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000079d22c37
sw x3, 0(x2) # store x3 (0x79d22c37) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000079d22c37 from memory into f22
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
fsgnj.d f24, f22, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x5, 0xed776159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf47ba71 # load x3 with 32 MSBs 0x00000000af47ba71
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000af47ba71
sw x3, 0(x2) # store x3 (0xaf47ba71) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000af47ba71 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
fsgnj.d f5, f31, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x28, 0x314f3f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d40ca7c # load x3 with 32 MSBs 0x000000000d40ca7c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000d40ca7c
sw x3, 0(x2) # store x3 (0x0d40ca7c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000000d40ca7c from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fsgnj.d f28, f15, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x17, 0xe9b66ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x722ea05e # load x3 with 32 MSBs 0x00000000722ea05e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000722ea05e
sw x3, 0(x2) # store x3 (0x722ea05e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000722ea05e from memory into f24
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
fsgnj.d f17, f24, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x12, 0xfe597251 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b649b22 # load x3 with 32 MSBs 0x000000008b649b22
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008b649b22
sw x3, 0(x2) # store x3 (0x8b649b22) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000008b649b22 from memory into f1
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
fsgnj.d f12, f1, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x9, 0xaf857075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15a4c473 # load x3 with 32 MSBs 0x0000000015a4c473
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000015a4c473
sw x3, 0(x2) # store x3 (0x15a4c473) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000015a4c473 from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fsgnj.d f9, f3, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x30, 0x536d3f57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7389ef20 # load x3 with 32 MSBs 0x000000007389ef20
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007389ef20
sw x3, 0(x2) # store x3 (0x7389ef20) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000007389ef20 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fsgnj.d f30, f18, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x13, 0xb716e176 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3bdc9ed # load x3 with 32 MSBs 0x00000000f3bdc9ed
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f3bdc9ed
sw x3, 0(x2) # store x3 (0xf3bdc9ed) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000f3bdc9ed from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
fsgnj.d f13, f30, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x7, 0x6e2dd36b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x609b69a9 # load x3 with 32 MSBs 0x00000000609b69a9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000609b69a9
sw x3, 0(x2) # store x3 (0x609b69a9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000609b69a9 from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
fsgnj.d f7, f20, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x2, 0x66c072cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0167a52 # load x3 with 32 MSBs 0x00000000e0167a52
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e0167a52
sw x3, 0(x2) # store x3 (0xe0167a52) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000e0167a52 from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
fsgnj.d f2, f6, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x31, 0x2d3c8c98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e14d333 # load x3 with 32 MSBs 0x000000004e14d333
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004e14d333
sw x3, 0(x2) # store x3 (0x4e14d333) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000004e14d333 from memory into f6
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fsgnj.d f31, f6, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x13, 0x9c01c40b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ff1a36e # load x3 with 32 MSBs 0x000000001ff1a36e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001ff1a36e
sw x3, 0(x2) # store x3 (0x1ff1a36e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000001ff1a36e from memory into f6
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
fsgnj.d f13, f6, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x3, 0x957add39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6250d3cc # load x3 with 32 MSBs 0x000000006250d3cc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006250d3cc
sw x3, 0(x2) # store x3 (0x6250d3cc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000006250d3cc from memory into f5
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fsgnj.d f3, f5, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x26, 0x0e9f55f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47022d4e # load x3 with 32 MSBs 0x0000000047022d4e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000047022d4e
sw x3, 0(x2) # store x3 (0x47022d4e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000047022d4e from memory into f28
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
fsgnj.d f26, f28, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x22, 0xc0498ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf65ae219 # load x3 with 32 MSBs 0x00000000f65ae219
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f65ae219
sw x3, 0(x2) # store x3 (0xf65ae219) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000f65ae219 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
fsgnj.d f22, f28, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x15, 0xefba167c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfae94efb # load x3 with 32 MSBs 0x00000000fae94efb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fae94efb
sw x3, 0(x2) # store x3 (0xfae94efb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000fae94efb from memory into f17
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fsgnj.d f15, f17, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x29, 0x074428b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ab7677d # load x3 with 32 MSBs 0x000000005ab7677d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005ab7677d
sw x3, 0(x2) # store x3 (0x5ab7677d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000005ab7677d from memory into f2
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
fsgnj.d f29, f2, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x7, 0xb237804f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x195227dd # load x3 with 32 MSBs 0x00000000195227dd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000195227dd
sw x3, 0(x2) # store x3 (0x195227dd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000195227dd from memory into f22
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fsgnj.d f7, f22, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x10, 0xf5b991d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bcf0918 # load x3 with 32 MSBs 0x000000002bcf0918
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002bcf0918
sw x3, 0(x2) # store x3 (0x2bcf0918) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000002bcf0918 from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fsgnj.d f10, f6, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x18, 0x5473eccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe149d3b5 # load x3 with 32 MSBs 0x00000000e149d3b5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e149d3b5
sw x3, 0(x2) # store x3 (0xe149d3b5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000e149d3b5 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
fsgnj.d f18, f21, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x2, 0xad5ba40e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6563ad6f # load x3 with 32 MSBs 0x000000006563ad6f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006563ad6f
sw x3, 0(x2) # store x3 (0x6563ad6f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000006563ad6f from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fsgnj.d f2, f23, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x9, 0x0e3d58d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92a3352c # load x3 with 32 MSBs 0x0000000092a3352c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000092a3352c
sw x3, 0(x2) # store x3 (0x92a3352c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000092a3352c from memory into f1
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
fsgnj.d f9, f1, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x27, 0x7d397d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x420f2448 # load x3 with 32 MSBs 0x00000000420f2448
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000420f2448
sw x3, 0(x2) # store x3 (0x420f2448) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000420f2448 from memory into f13
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fsgnj.d f27, f13, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x15, 0xc3937c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8272497 # load x3 with 32 MSBs 0x00000000f8272497
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f8272497
sw x3, 0(x2) # store x3 (0xf8272497) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000f8272497 from memory into f18
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fsgnj.d f15, f18, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x16, 0x4f813cf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b68dff1 # load x3 with 32 MSBs 0x000000003b68dff1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003b68dff1
sw x3, 0(x2) # store x3 (0x3b68dff1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000003b68dff1 from memory into f2
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fsgnj.d f16, f2, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x16, 0x67320575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49e98e8c # load x3 with 32 MSBs 0x0000000049e98e8c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000049e98e8c
sw x3, 0(x2) # store x3 (0x49e98e8c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000049e98e8c from memory into f11
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
fsgnj.d f16, f11, f13 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x4c4f4d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93879977 # load x3 with 32 MSBs 0x0000000093879977
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000093879977
sw x3, 0(x2) # store x3 (0x93879977) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000093879977 from memory into f11
li x3, 0x3b79fe32 # load x3 with 32 MSBs 0x000000003b79fe32
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003b79fe32
sw x3, 0(x2) # store x3 (0x3b79fe32) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003b79fe32 from memory into f6
fsgnj.d f0, f11, f6 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x9682215c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6658405f # load x3 with 32 MSBs 0x000000006658405f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006658405f
sw x3, 0(x2) # store x3 (0x6658405f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000006658405f from memory into f15
li x3, 0xf482113f # load x3 with 32 MSBs 0x00000000f482113f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f482113f
sw x3, 0(x2) # store x3 (0xf482113f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000f482113f from memory into f11
fsgnj.d f1, f15, f11 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x4e72c7fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3bcc44e3 # load x3 with 32 MSBs 0x000000003bcc44e3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003bcc44e3
sw x3, 0(x2) # store x3 (0x3bcc44e3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000003bcc44e3 from memory into f13
li x3, 0x2597eddd # load x3 with 32 MSBs 0x000000002597eddd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002597eddd
sw x3, 0(x2) # store x3 (0x2597eddd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000002597eddd from memory into f21
fsgnj.d f2, f13, f21 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x79fbc566 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5942e548 # load x3 with 32 MSBs 0x000000005942e548
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005942e548
sw x3, 0(x2) # store x3 (0x5942e548) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000005942e548 from memory into f10
li x3, 0x2ecab848 # load x3 with 32 MSBs 0x000000002ecab848
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002ecab848
sw x3, 0(x2) # store x3 (0x2ecab848) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000002ecab848 from memory into f29
fsgnj.d f3, f10, f29 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xec4794c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9107c6a8 # load x3 with 32 MSBs 0x000000009107c6a8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009107c6a8
sw x3, 0(x2) # store x3 (0x9107c6a8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000009107c6a8 from memory into f17
li x3, 0xa0b19e0b # load x3 with 32 MSBs 0x00000000a0b19e0b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a0b19e0b
sw x3, 0(x2) # store x3 (0xa0b19e0b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000a0b19e0b from memory into f2
fsgnj.d f4, f17, f2 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x5ce04570 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x659c1e58 # load x3 with 32 MSBs 0x00000000659c1e58
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000659c1e58
sw x3, 0(x2) # store x3 (0x659c1e58) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000659c1e58 from memory into f27
li x3, 0x97fd44cd # load x3 with 32 MSBs 0x0000000097fd44cd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000097fd44cd
sw x3, 0(x2) # store x3 (0x97fd44cd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000097fd44cd from memory into f5
fsgnj.d f5, f27, f5 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xa48d3071 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x452bae32 # load x3 with 32 MSBs 0x00000000452bae32
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000452bae32
sw x3, 0(x2) # store x3 (0x452bae32) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000452bae32 from memory into f6
li x3, 0xb867cc47 # load x3 with 32 MSBs 0x00000000b867cc47
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b867cc47
sw x3, 0(x2) # store x3 (0xb867cc47) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000b867cc47 from memory into f21
fsgnj.d f6, f6, f21 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x10415a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f4376c3 # load x3 with 32 MSBs 0x000000008f4376c3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008f4376c3
sw x3, 0(x2) # store x3 (0x8f4376c3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000008f4376c3 from memory into f27
li x3, 0xb25d142b # load x3 with 32 MSBs 0x00000000b25d142b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b25d142b
sw x3, 0(x2) # store x3 (0xb25d142b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000b25d142b from memory into f16
fsgnj.d f7, f27, f16 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x3f217e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84423480 # load x3 with 32 MSBs 0x0000000084423480
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000084423480
sw x3, 0(x2) # store x3 (0x84423480) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000084423480 from memory into f10
li x3, 0x39a809d3 # load x3 with 32 MSBs 0x0000000039a809d3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000039a809d3
sw x3, 0(x2) # store x3 (0x39a809d3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000039a809d3 from memory into f1
fsgnj.d f8, f10, f1 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xfabe6b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9a854b6 # load x3 with 32 MSBs 0x00000000b9a854b6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b9a854b6
sw x3, 0(x2) # store x3 (0xb9a854b6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000b9a854b6 from memory into f26
li x3, 0x586a08a2 # load x3 with 32 MSBs 0x00000000586a08a2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000586a08a2
sw x3, 0(x2) # store x3 (0x586a08a2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000586a08a2 from memory into f4
fsgnj.d f9, f26, f4 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xbd8af124 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf52ee79d # load x3 with 32 MSBs 0x00000000f52ee79d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f52ee79d
sw x3, 0(x2) # store x3 (0xf52ee79d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000f52ee79d from memory into f26
li x3, 0xbf6044d7 # load x3 with 32 MSBs 0x00000000bf6044d7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bf6044d7
sw x3, 0(x2) # store x3 (0xbf6044d7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000bf6044d7 from memory into f7
fsgnj.d f10, f26, f7 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xbad3bf90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93144715 # load x3 with 32 MSBs 0x0000000093144715
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000093144715
sw x3, 0(x2) # store x3 (0x93144715) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000093144715 from memory into f8
li x3, 0x33eb48d3 # load x3 with 32 MSBs 0x0000000033eb48d3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000033eb48d3
sw x3, 0(x2) # store x3 (0x33eb48d3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000033eb48d3 from memory into f16
fsgnj.d f11, f8, f16 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x08af4caa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c79b965 # load x3 with 32 MSBs 0x000000003c79b965
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003c79b965
sw x3, 0(x2) # store x3 (0x3c79b965) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003c79b965 from memory into f6
li x3, 0xf43241d2 # load x3 with 32 MSBs 0x00000000f43241d2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f43241d2
sw x3, 0(x2) # store x3 (0xf43241d2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000f43241d2 from memory into f30
fsgnj.d f12, f6, f30 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x8d66b512 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe11f19b8 # load x3 with 32 MSBs 0x00000000e11f19b8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e11f19b8
sw x3, 0(x2) # store x3 (0xe11f19b8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e11f19b8 from memory into f20
li x3, 0x72026a21 # load x3 with 32 MSBs 0x0000000072026a21
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000072026a21
sw x3, 0(x2) # store x3 (0x72026a21) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000072026a21 from memory into f25
fsgnj.d f13, f20, f25 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xad68cd76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x387d8183 # load x3 with 32 MSBs 0x00000000387d8183
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000387d8183
sw x3, 0(x2) # store x3 (0x387d8183) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000387d8183 from memory into f24
li x3, 0xc168752f # load x3 with 32 MSBs 0x00000000c168752f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c168752f
sw x3, 0(x2) # store x3 (0xc168752f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000c168752f from memory into f12
fsgnj.d f14, f24, f12 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x2b680abe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x646274c1 # load x3 with 32 MSBs 0x00000000646274c1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000646274c1
sw x3, 0(x2) # store x3 (0x646274c1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000646274c1 from memory into f11
li x3, 0x02a04786 # load x3 with 32 MSBs 0x0000000002a04786
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000002a04786
sw x3, 0(x2) # store x3 (0x02a04786) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000002a04786 from memory into f13
fsgnj.d f15, f11, f13 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x1697a3da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87048657 # load x3 with 32 MSBs 0x0000000087048657
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000087048657
sw x3, 0(x2) # store x3 (0x87048657) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000087048657 from memory into f4
li x3, 0x422b00e6 # load x3 with 32 MSBs 0x00000000422b00e6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000422b00e6
sw x3, 0(x2) # store x3 (0x422b00e6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000422b00e6 from memory into f22
fsgnj.d f16, f4, f22 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x6e45c12b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e27559a # load x3 with 32 MSBs 0x000000005e27559a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005e27559a
sw x3, 0(x2) # store x3 (0x5e27559a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000005e27559a from memory into f12
li x3, 0x24077d0e # load x3 with 32 MSBs 0x0000000024077d0e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000024077d0e
sw x3, 0(x2) # store x3 (0x24077d0e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000024077d0e from memory into f18
fsgnj.d f17, f12, f18 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xd1e5cd3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85d0ab7d # load x3 with 32 MSBs 0x0000000085d0ab7d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000085d0ab7d
sw x3, 0(x2) # store x3 (0x85d0ab7d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000085d0ab7d from memory into f8
li x3, 0x87977412 # load x3 with 32 MSBs 0x0000000087977412
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000087977412
sw x3, 0(x2) # store x3 (0x87977412) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000087977412 from memory into f11
fsgnj.d f18, f8, f11 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x57b7d6a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bf0254e # load x3 with 32 MSBs 0x000000002bf0254e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002bf0254e
sw x3, 0(x2) # store x3 (0x2bf0254e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000002bf0254e from memory into f13
li x3, 0x195e3ee3 # load x3 with 32 MSBs 0x00000000195e3ee3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000195e3ee3
sw x3, 0(x2) # store x3 (0x195e3ee3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000195e3ee3 from memory into f30
fsgnj.d f19, f13, f30 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xcc0da2f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ada4057 # load x3 with 32 MSBs 0x000000006ada4057
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006ada4057
sw x3, 0(x2) # store x3 (0x6ada4057) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000006ada4057 from memory into f12
li x3, 0x5d0122aa # load x3 with 32 MSBs 0x000000005d0122aa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005d0122aa
sw x3, 0(x2) # store x3 (0x5d0122aa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000005d0122aa from memory into f21
fsgnj.d f20, f12, f21 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x4126e2f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1ef6379 # load x3 with 32 MSBs 0x00000000e1ef6379
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e1ef6379
sw x3, 0(x2) # store x3 (0xe1ef6379) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000e1ef6379 from memory into f9
li x3, 0x0cff27d8 # load x3 with 32 MSBs 0x000000000cff27d8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000cff27d8
sw x3, 0(x2) # store x3 (0x0cff27d8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000cff27d8 from memory into f5
fsgnj.d f21, f9, f5 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x8278c0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa5f8145 # load x3 with 32 MSBs 0x00000000aa5f8145
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000aa5f8145
sw x3, 0(x2) # store x3 (0xaa5f8145) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000aa5f8145 from memory into f16
li x3, 0xff88f853 # load x3 with 32 MSBs 0x00000000ff88f853
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ff88f853
sw x3, 0(x2) # store x3 (0xff88f853) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ff88f853 from memory into f23
fsgnj.d f22, f16, f23 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x42954dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc80978a6 # load x3 with 32 MSBs 0x00000000c80978a6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c80978a6
sw x3, 0(x2) # store x3 (0xc80978a6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000c80978a6 from memory into f17
li x3, 0x95e7a0cf # load x3 with 32 MSBs 0x0000000095e7a0cf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000095e7a0cf
sw x3, 0(x2) # store x3 (0x95e7a0cf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000095e7a0cf from memory into f3
fsgnj.d f23, f17, f3 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x3eb6769c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60bf68ff # load x3 with 32 MSBs 0x0000000060bf68ff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000060bf68ff
sw x3, 0(x2) # store x3 (0x60bf68ff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000060bf68ff from memory into f5
li x3, 0x8d2bbe70 # load x3 with 32 MSBs 0x000000008d2bbe70
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008d2bbe70
sw x3, 0(x2) # store x3 (0x8d2bbe70) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000008d2bbe70 from memory into f20
fsgnj.d f24, f5, f20 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x6e465b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x418a33c7 # load x3 with 32 MSBs 0x00000000418a33c7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000418a33c7
sw x3, 0(x2) # store x3 (0x418a33c7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000418a33c7 from memory into f20
li x3, 0x59a2f630 # load x3 with 32 MSBs 0x0000000059a2f630
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000059a2f630
sw x3, 0(x2) # store x3 (0x59a2f630) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000059a2f630 from memory into f17
fsgnj.d f25, f20, f17 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x90c82e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02896c11 # load x3 with 32 MSBs 0x0000000002896c11
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000002896c11
sw x3, 0(x2) # store x3 (0x02896c11) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000002896c11 from memory into f9
li x3, 0x99286c0e # load x3 with 32 MSBs 0x0000000099286c0e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000099286c0e
sw x3, 0(x2) # store x3 (0x99286c0e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000099286c0e from memory into f2
fsgnj.d f26, f9, f2 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x6755391c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7394c85e # load x3 with 32 MSBs 0x000000007394c85e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007394c85e
sw x3, 0(x2) # store x3 (0x7394c85e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000007394c85e from memory into f9
li x3, 0x0925fa90 # load x3 with 32 MSBs 0x000000000925fa90
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000925fa90
sw x3, 0(x2) # store x3 (0x0925fa90) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000000925fa90 from memory into f3
fsgnj.d f27, f9, f3 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x53a8be06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c254fb0 # load x3 with 32 MSBs 0x000000005c254fb0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005c254fb0
sw x3, 0(x2) # store x3 (0x5c254fb0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000005c254fb0 from memory into f1
li x3, 0x35db30e6 # load x3 with 32 MSBs 0x0000000035db30e6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000035db30e6
sw x3, 0(x2) # store x3 (0x35db30e6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000035db30e6 from memory into f16
fsgnj.d f28, f1, f16 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x38004b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7d675f4 # load x3 with 32 MSBs 0x00000000e7d675f4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e7d675f4
sw x3, 0(x2) # store x3 (0xe7d675f4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000e7d675f4 from memory into f13
li x3, 0xbeed6e64 # load x3 with 32 MSBs 0x00000000beed6e64
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000beed6e64
sw x3, 0(x2) # store x3 (0xbeed6e64) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000beed6e64 from memory into f28
fsgnj.d f29, f13, f28 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x607facd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49aeb8e8 # load x3 with 32 MSBs 0x0000000049aeb8e8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000049aeb8e8
sw x3, 0(x2) # store x3 (0x49aeb8e8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000049aeb8e8 from memory into f7
li x3, 0xe02c5e5e # load x3 with 32 MSBs 0x00000000e02c5e5e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e02c5e5e
sw x3, 0(x2) # store x3 (0xe02c5e5e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e02c5e5e from memory into f20
fsgnj.d f30, f7, f20 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x2927d61d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda29cda3 # load x3 with 32 MSBs 0x00000000da29cda3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000da29cda3
sw x3, 0(x2) # store x3 (0xda29cda3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000da29cda3 from memory into f31
li x3, 0x774742b4 # load x3 with 32 MSBs 0x00000000774742b4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000774742b4
sw x3, 0(x2) # store x3 (0x774742b4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000774742b4 from memory into f28
fsgnj.d f31, f31, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x30, 0x13455814 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19ef1e02 # load x3 with 32 MSBs 0x0000000019ef1e02
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000019ef1e02
sw x3, 0(x2) # store x3 (0x19ef1e02) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x0000000019ef1e02 from memory into f0
li x3, 0x44ce002c # load x3 with 32 MSBs 0x0000000044ce002c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000044ce002c
sw x3, 0(x2) # store x3 (0x44ce002c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000044ce002c from memory into f31
fsgnj.d f30, f0, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x8, 0x7a1fd4ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21c6db0d # load x3 with 32 MSBs 0x0000000021c6db0d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000021c6db0d
sw x3, 0(x2) # store x3 (0x21c6db0d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000021c6db0d from memory into f1
li x3, 0x977be47e # load x3 with 32 MSBs 0x00000000977be47e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000977be47e
sw x3, 0(x2) # store x3 (0x977be47e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000977be47e from memory into f16
fsgnj.d f8, f1, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x27, 0x55add702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61e7a934 # load x3 with 32 MSBs 0x0000000061e7a934
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000061e7a934
sw x3, 0(x2) # store x3 (0x61e7a934) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000061e7a934 from memory into f2
li x3, 0xdf1c2f42 # load x3 with 32 MSBs 0x00000000df1c2f42
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000df1c2f42
sw x3, 0(x2) # store x3 (0xdf1c2f42) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000df1c2f42 from memory into f11
fsgnj.d f27, f2, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x27, 0x0078ff40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd743eb48 # load x3 with 32 MSBs 0x00000000d743eb48
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d743eb48
sw x3, 0(x2) # store x3 (0xd743eb48) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000d743eb48 from memory into f3
li x3, 0x0d2fd897 # load x3 with 32 MSBs 0x000000000d2fd897
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000d2fd897
sw x3, 0(x2) # store x3 (0x0d2fd897) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000000d2fd897 from memory into f19
fsgnj.d f27, f3, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x17, 0x604d9fe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe60b5c03 # load x3 with 32 MSBs 0x00000000e60b5c03
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e60b5c03
sw x3, 0(x2) # store x3 (0xe60b5c03) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000e60b5c03 from memory into f4
li x3, 0x2f2510cf # load x3 with 32 MSBs 0x000000002f2510cf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002f2510cf
sw x3, 0(x2) # store x3 (0x2f2510cf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000002f2510cf from memory into f25
fsgnj.d f17, f4, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x7, 0x4501d87d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x437647b5 # load x3 with 32 MSBs 0x00000000437647b5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000437647b5
sw x3, 0(x2) # store x3 (0x437647b5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000437647b5 from memory into f5
li x3, 0xca3cee29 # load x3 with 32 MSBs 0x00000000ca3cee29
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ca3cee29
sw x3, 0(x2) # store x3 (0xca3cee29) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ca3cee29 from memory into f23
fsgnj.d f7, f5, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x13, 0xe1e8bf29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76ae2595 # load x3 with 32 MSBs 0x0000000076ae2595
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000076ae2595
sw x3, 0(x2) # store x3 (0x76ae2595) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000076ae2595 from memory into f6
li x3, 0x8bba3f70 # load x3 with 32 MSBs 0x000000008bba3f70
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008bba3f70
sw x3, 0(x2) # store x3 (0x8bba3f70) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000008bba3f70 from memory into f4
fsgnj.d f13, f6, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x9, 0x52180dfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x112b5da7 # load x3 with 32 MSBs 0x00000000112b5da7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000112b5da7
sw x3, 0(x2) # store x3 (0x112b5da7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000112b5da7 from memory into f7
li x3, 0xa333c067 # load x3 with 32 MSBs 0x00000000a333c067
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a333c067
sw x3, 0(x2) # store x3 (0xa333c067) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000a333c067 from memory into f5
fsgnj.d f9, f7, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x23, 0x7e698f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91a0857a # load x3 with 32 MSBs 0x0000000091a0857a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000091a0857a
sw x3, 0(x2) # store x3 (0x91a0857a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000091a0857a from memory into f8
li x3, 0x48d3745d # load x3 with 32 MSBs 0x0000000048d3745d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000048d3745d
sw x3, 0(x2) # store x3 (0x48d3745d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000048d3745d from memory into f11
fsgnj.d f23, f8, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x15, 0x3546b090 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7af8962 # load x3 with 32 MSBs 0x00000000a7af8962
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a7af8962
sw x3, 0(x2) # store x3 (0xa7af8962) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000a7af8962 from memory into f9
li x3, 0xd8850650 # load x3 with 32 MSBs 0x00000000d8850650
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d8850650
sw x3, 0(x2) # store x3 (0xd8850650) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000d8850650 from memory into f11
fsgnj.d f15, f9, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x20, 0x0cf70d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccfe1250 # load x3 with 32 MSBs 0x00000000ccfe1250
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ccfe1250
sw x3, 0(x2) # store x3 (0xccfe1250) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000ccfe1250 from memory into f10
li x3, 0x3817264a # load x3 with 32 MSBs 0x000000003817264a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003817264a
sw x3, 0(x2) # store x3 (0x3817264a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000003817264a from memory into f30
fsgnj.d f20, f10, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x20, 0xead61a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ce1b6d3 # load x3 with 32 MSBs 0x000000001ce1b6d3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001ce1b6d3
sw x3, 0(x2) # store x3 (0x1ce1b6d3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000001ce1b6d3 from memory into f11
li x3, 0xd0e3d7ee # load x3 with 32 MSBs 0x00000000d0e3d7ee
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d0e3d7ee
sw x3, 0(x2) # store x3 (0xd0e3d7ee) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000d0e3d7ee from memory into f8
fsgnj.d f20, f11, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x9, 0x23e2caf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7351b45c # load x3 with 32 MSBs 0x000000007351b45c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007351b45c
sw x3, 0(x2) # store x3 (0x7351b45c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000007351b45c from memory into f12
li x3, 0xe2f0e287 # load x3 with 32 MSBs 0x00000000e2f0e287
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e2f0e287
sw x3, 0(x2) # store x3 (0xe2f0e287) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000e2f0e287 from memory into f18
fsgnj.d f9, f12, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x14, 0xd38e843f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1036aacb # load x3 with 32 MSBs 0x000000001036aacb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001036aacb
sw x3, 0(x2) # store x3 (0x1036aacb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000001036aacb from memory into f13
li x3, 0x29a0cd2d # load x3 with 32 MSBs 0x0000000029a0cd2d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000029a0cd2d
sw x3, 0(x2) # store x3 (0x29a0cd2d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000029a0cd2d from memory into f9
fsgnj.d f14, f13, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x13, 0x41b716b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19c7fb60 # load x3 with 32 MSBs 0x0000000019c7fb60
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000019c7fb60
sw x3, 0(x2) # store x3 (0x19c7fb60) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000019c7fb60 from memory into f14
li x3, 0x6cd2fed9 # load x3 with 32 MSBs 0x000000006cd2fed9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006cd2fed9
sw x3, 0(x2) # store x3 (0x6cd2fed9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000006cd2fed9 from memory into f21
fsgnj.d f13, f14, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x3, 0x5b001482 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4996b0ad # load x3 with 32 MSBs 0x000000004996b0ad
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004996b0ad
sw x3, 0(x2) # store x3 (0x4996b0ad) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000004996b0ad from memory into f15
li x3, 0x42c6b80c # load x3 with 32 MSBs 0x0000000042c6b80c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000042c6b80c
sw x3, 0(x2) # store x3 (0x42c6b80c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000042c6b80c from memory into f12
fsgnj.d f3, f15, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x16, 0x7ef97e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4d035b9 # load x3 with 32 MSBs 0x00000000e4d035b9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e4d035b9
sw x3, 0(x2) # store x3 (0xe4d035b9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000e4d035b9 from memory into f16
li x3, 0x2a7d34c8 # load x3 with 32 MSBs 0x000000002a7d34c8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002a7d34c8
sw x3, 0(x2) # store x3 (0x2a7d34c8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000002a7d34c8 from memory into f9
fsgnj.d f16, f16, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x27, 0x322bce9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33ba5d7d # load x3 with 32 MSBs 0x0000000033ba5d7d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000033ba5d7d
sw x3, 0(x2) # store x3 (0x33ba5d7d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000033ba5d7d from memory into f17
li x3, 0x581327fd # load x3 with 32 MSBs 0x00000000581327fd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000581327fd
sw x3, 0(x2) # store x3 (0x581327fd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000581327fd from memory into f14
fsgnj.d f27, f17, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x31, 0x2a447a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf1fc8bd # load x3 with 32 MSBs 0x00000000cf1fc8bd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cf1fc8bd
sw x3, 0(x2) # store x3 (0xcf1fc8bd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000cf1fc8bd from memory into f18
li x3, 0x3bcbe669 # load x3 with 32 MSBs 0x000000003bcbe669
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003bcbe669
sw x3, 0(x2) # store x3 (0x3bcbe669) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000003bcbe669 from memory into f12
fsgnj.d f31, f18, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x1, 0xbc6e7636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd01bcddc # load x3 with 32 MSBs 0x00000000d01bcddc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d01bcddc
sw x3, 0(x2) # store x3 (0xd01bcddc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000d01bcddc from memory into f19
li x3, 0xf26624a5 # load x3 with 32 MSBs 0x00000000f26624a5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f26624a5
sw x3, 0(x2) # store x3 (0xf26624a5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000f26624a5 from memory into f26
fsgnj.d f1, f19, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x30, 0x74dd1c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55519140 # load x3 with 32 MSBs 0x0000000055519140
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000055519140
sw x3, 0(x2) # store x3 (0x55519140) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000055519140 from memory into f20
li x3, 0xc777ac9d # load x3 with 32 MSBs 0x00000000c777ac9d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c777ac9d
sw x3, 0(x2) # store x3 (0xc777ac9d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000c777ac9d from memory into f26
fsgnj.d f30, f20, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x5, 0x8ee60ad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa79ccb11 # load x3 with 32 MSBs 0x00000000a79ccb11
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a79ccb11
sw x3, 0(x2) # store x3 (0xa79ccb11) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000a79ccb11 from memory into f21
li x3, 0x871d2340 # load x3 with 32 MSBs 0x00000000871d2340
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000871d2340
sw x3, 0(x2) # store x3 (0x871d2340) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000871d2340 from memory into f8
fsgnj.d f5, f21, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x31, 0x6562fd22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee6e68bd # load x3 with 32 MSBs 0x00000000ee6e68bd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ee6e68bd
sw x3, 0(x2) # store x3 (0xee6e68bd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ee6e68bd from memory into f22
li x3, 0x4d978f5c # load x3 with 32 MSBs 0x000000004d978f5c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004d978f5c
sw x3, 0(x2) # store x3 (0x4d978f5c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000004d978f5c from memory into f18
fsgnj.d f31, f22, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x22, 0x0834194b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x174fff7e # load x3 with 32 MSBs 0x00000000174fff7e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000174fff7e
sw x3, 0(x2) # store x3 (0x174fff7e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000174fff7e from memory into f23
li x3, 0xf6c077dd # load x3 with 32 MSBs 0x00000000f6c077dd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f6c077dd
sw x3, 0(x2) # store x3 (0xf6c077dd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000f6c077dd from memory into f28
fsgnj.d f22, f23, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x1, 0x8823b3cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb731e10 # load x3 with 32 MSBs 0x00000000db731e10
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000db731e10
sw x3, 0(x2) # store x3 (0xdb731e10) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000db731e10 from memory into f24
li x3, 0x427b7bba # load x3 with 32 MSBs 0x00000000427b7bba
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000427b7bba
sw x3, 0(x2) # store x3 (0x427b7bba) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000427b7bba from memory into f17
fsgnj.d f1, f24, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x14, 0x271299af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf0ffcbb # load x3 with 32 MSBs 0x00000000bf0ffcbb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bf0ffcbb
sw x3, 0(x2) # store x3 (0xbf0ffcbb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000bf0ffcbb from memory into f25
li x3, 0x4a78c400 # load x3 with 32 MSBs 0x000000004a78c400
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004a78c400
sw x3, 0(x2) # store x3 (0x4a78c400) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000004a78c400 from memory into f10
fsgnj.d f14, f25, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x12, 0x40f835a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb87660b4 # load x3 with 32 MSBs 0x00000000b87660b4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b87660b4
sw x3, 0(x2) # store x3 (0xb87660b4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000b87660b4 from memory into f26
li x3, 0x049f7fbc # load x3 with 32 MSBs 0x00000000049f7fbc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000049f7fbc
sw x3, 0(x2) # store x3 (0x049f7fbc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000049f7fbc from memory into f21
fsgnj.d f12, f26, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x26, 0x0d2c80e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f1c5bf5 # load x3 with 32 MSBs 0x000000000f1c5bf5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000f1c5bf5
sw x3, 0(x2) # store x3 (0x0f1c5bf5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000000f1c5bf5 from memory into f27
li x3, 0x2844fd33 # load x3 with 32 MSBs 0x000000002844fd33
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002844fd33
sw x3, 0(x2) # store x3 (0x2844fd33) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000002844fd33 from memory into f23
fsgnj.d f26, f27, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x17, 0xca2fb591 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdef6880a # load x3 with 32 MSBs 0x00000000def6880a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000def6880a
sw x3, 0(x2) # store x3 (0xdef6880a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000def6880a from memory into f28
li x3, 0x1a74f29d # load x3 with 32 MSBs 0x000000001a74f29d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001a74f29d
sw x3, 0(x2) # store x3 (0x1a74f29d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000001a74f29d from memory into f22
fsgnj.d f17, f28, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x7, 0xd9df109c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bcaf3ed # load x3 with 32 MSBs 0x000000001bcaf3ed
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001bcaf3ed
sw x3, 0(x2) # store x3 (0x1bcaf3ed) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000001bcaf3ed from memory into f29
li x3, 0x735cdca0 # load x3 with 32 MSBs 0x00000000735cdca0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000735cdca0
sw x3, 0(x2) # store x3 (0x735cdca0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000735cdca0 from memory into f10
fsgnj.d f7, f29, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x4, 0x42514fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x784102ea # load x3 with 32 MSBs 0x00000000784102ea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000784102ea
sw x3, 0(x2) # store x3 (0x784102ea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000784102ea from memory into f30
li x3, 0xf8ee0a36 # load x3 with 32 MSBs 0x00000000f8ee0a36
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f8ee0a36
sw x3, 0(x2) # store x3 (0xf8ee0a36) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000f8ee0a36 from memory into f12
fsgnj.d f4, f30, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x3, 0x869356cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8581f669 # load x3 with 32 MSBs 0x000000008581f669
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008581f669
sw x3, 0(x2) # store x3 (0x8581f669) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000008581f669 from memory into f31
li x3, 0x06b84ada # load x3 with 32 MSBs 0x0000000006b84ada
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000006b84ada
sw x3, 0(x2) # store x3 (0x06b84ada) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000006b84ada from memory into f30
fsgnj.d f3, f31, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x21, 0x96d261f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47232b5c # load x3 with 32 MSBs 0x0000000047232b5c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000047232b5c
sw x3, 0(x2) # store x3 (0x47232b5c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000047232b5c from memory into f11
li x3, 0x4a2a345e # load x3 with 32 MSBs 0x000000004a2a345e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004a2a345e
sw x3, 0(x2) # store x3 (0x4a2a345e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000004a2a345e from memory into f0
fsgnj.d f21, f11, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x3, 0x5622ba5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ee82460 # load x3 with 32 MSBs 0x000000006ee82460
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006ee82460
sw x3, 0(x2) # store x3 (0x6ee82460) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000006ee82460 from memory into f5
li x3, 0x391d3028 # load x3 with 32 MSBs 0x00000000391d3028
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000391d3028
sw x3, 0(x2) # store x3 (0x391d3028) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000391d3028 from memory into f1
fsgnj.d f3, f5, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x29, 0x812ac5c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08d7aee3 # load x3 with 32 MSBs 0x0000000008d7aee3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000008d7aee3
sw x3, 0(x2) # store x3 (0x08d7aee3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000008d7aee3 from memory into f21
li x3, 0x04b4e531 # load x3 with 32 MSBs 0x0000000004b4e531
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000004b4e531
sw x3, 0(x2) # store x3 (0x04b4e531) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000004b4e531 from memory into f2
fsgnj.d f29, f21, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x26, 0x4f83e4fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd03e8618 # load x3 with 32 MSBs 0x00000000d03e8618
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d03e8618
sw x3, 0(x2) # store x3 (0xd03e8618) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000d03e8618 from memory into f21
li x3, 0xb1ef136e # load x3 with 32 MSBs 0x00000000b1ef136e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b1ef136e
sw x3, 0(x2) # store x3 (0xb1ef136e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b1ef136e from memory into f3
fsgnj.d f26, f21, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x29, 0x82cb2e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa213c59b # load x3 with 32 MSBs 0x00000000a213c59b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a213c59b
sw x3, 0(x2) # store x3 (0xa213c59b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000a213c59b from memory into f7
li x3, 0x3669d2f5 # load x3 with 32 MSBs 0x000000003669d2f5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003669d2f5
sw x3, 0(x2) # store x3 (0x3669d2f5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000003669d2f5 from memory into f4
fsgnj.d f29, f7, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x13, 0x84f573af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f3a8d6d # load x3 with 32 MSBs 0x000000000f3a8d6d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000f3a8d6d
sw x3, 0(x2) # store x3 (0x0f3a8d6d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000000f3a8d6d from memory into f17
li x3, 0xd33e8720 # load x3 with 32 MSBs 0x00000000d33e8720
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d33e8720
sw x3, 0(x2) # store x3 (0xd33e8720) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000d33e8720 from memory into f5
fsgnj.d f13, f17, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x18, 0x9e8f774d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50a5b162 # load x3 with 32 MSBs 0x0000000050a5b162
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000050a5b162
sw x3, 0(x2) # store x3 (0x50a5b162) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000050a5b162 from memory into f2
li x3, 0x423cfe32 # load x3 with 32 MSBs 0x00000000423cfe32
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000423cfe32
sw x3, 0(x2) # store x3 (0x423cfe32) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000423cfe32 from memory into f6
fsgnj.d f18, f2, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x31, 0x213181f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b9388cb # load x3 with 32 MSBs 0x000000001b9388cb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001b9388cb
sw x3, 0(x2) # store x3 (0x1b9388cb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000001b9388cb from memory into f4
li x3, 0x0d914acd # load x3 with 32 MSBs 0x000000000d914acd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000d914acd
sw x3, 0(x2) # store x3 (0x0d914acd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000000d914acd from memory into f7
fsgnj.d f31, f4, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x7, 0xe30440fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd169b09b # load x3 with 32 MSBs 0x00000000d169b09b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d169b09b
sw x3, 0(x2) # store x3 (0xd169b09b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000d169b09b from memory into f28
li x3, 0xba86ffcc # load x3 with 32 MSBs 0x00000000ba86ffcc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ba86ffcc
sw x3, 0(x2) # store x3 (0xba86ffcc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000ba86ffcc from memory into f8
fsgnj.d f7, f28, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x11, 0x1092afc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2455f54 # load x3 with 32 MSBs 0x00000000e2455f54
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e2455f54
sw x3, 0(x2) # store x3 (0xe2455f54) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000e2455f54 from memory into f24
li x3, 0x49d22f5e # load x3 with 32 MSBs 0x0000000049d22f5e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000049d22f5e
sw x3, 0(x2) # store x3 (0x49d22f5e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000049d22f5e from memory into f9
fsgnj.d f11, f24, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x6, 0x5f38edeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9627b542 # load x3 with 32 MSBs 0x000000009627b542
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009627b542
sw x3, 0(x2) # store x3 (0x9627b542) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000009627b542 from memory into f20
li x3, 0xea46e277 # load x3 with 32 MSBs 0x00000000ea46e277
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ea46e277
sw x3, 0(x2) # store x3 (0xea46e277) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000ea46e277 from memory into f10
fsgnj.d f6, f20, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x25, 0x95f216bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40279167 # load x3 with 32 MSBs 0x0000000040279167
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000040279167
sw x3, 0(x2) # store x3 (0x40279167) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000040279167 from memory into f19
li x3, 0x3d87968f # load x3 with 32 MSBs 0x000000003d87968f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003d87968f
sw x3, 0(x2) # store x3 (0x3d87968f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000003d87968f from memory into f11
fsgnj.d f25, f19, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x12, 0x81342e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27f0b2b5 # load x3 with 32 MSBs 0x0000000027f0b2b5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000027f0b2b5
sw x3, 0(x2) # store x3 (0x27f0b2b5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000027f0b2b5 from memory into f17
li x3, 0x93dabb05 # load x3 with 32 MSBs 0x0000000093dabb05
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000093dabb05
sw x3, 0(x2) # store x3 (0x93dabb05) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000093dabb05 from memory into f12
fsgnj.d f12, f17, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x11, 0x9ebc7a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa18e8edd # load x3 with 32 MSBs 0x00000000a18e8edd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a18e8edd
sw x3, 0(x2) # store x3 (0xa18e8edd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000a18e8edd from memory into f20
li x3, 0x9077fa44 # load x3 with 32 MSBs 0x000000009077fa44
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009077fa44
sw x3, 0(x2) # store x3 (0x9077fa44) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000009077fa44 from memory into f13
fsgnj.d f11, f20, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x24, 0x9dd9592f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2b3bfcc # load x3 with 32 MSBs 0x00000000b2b3bfcc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b2b3bfcc
sw x3, 0(x2) # store x3 (0xb2b3bfcc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000b2b3bfcc from memory into f4
li x3, 0x60f6b519 # load x3 with 32 MSBs 0x0000000060f6b519
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000060f6b519
sw x3, 0(x2) # store x3 (0x60f6b519) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000060f6b519 from memory into f14
fsgnj.d f24, f4, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x27, 0x64a5562a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a39c0ad # load x3 with 32 MSBs 0x000000000a39c0ad
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000a39c0ad
sw x3, 0(x2) # store x3 (0x0a39c0ad) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000000a39c0ad from memory into f20
li x3, 0x8369d941 # load x3 with 32 MSBs 0x000000008369d941
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008369d941
sw x3, 0(x2) # store x3 (0x8369d941) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000008369d941 from memory into f15
fsgnj.d f27, f20, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x18, 0x1f98f09b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf919903c # load x3 with 32 MSBs 0x00000000f919903c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f919903c
sw x3, 0(x2) # store x3 (0xf919903c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000f919903c from memory into f9
li x3, 0xd9806ad6 # load x3 with 32 MSBs 0x00000000d9806ad6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d9806ad6
sw x3, 0(x2) # store x3 (0xd9806ad6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000d9806ad6 from memory into f16
fsgnj.d f18, f9, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x26, 0x2e95974b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813c5852 # load x3 with 32 MSBs 0x00000000813c5852
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000813c5852
sw x3, 0(x2) # store x3 (0x813c5852) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000813c5852 from memory into f6
li x3, 0x443fc59f # load x3 with 32 MSBs 0x00000000443fc59f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000443fc59f
sw x3, 0(x2) # store x3 (0x443fc59f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000443fc59f from memory into f17
fsgnj.d f26, f6, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x14, 0xe90fb11a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec1dc88b # load x3 with 32 MSBs 0x00000000ec1dc88b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ec1dc88b
sw x3, 0(x2) # store x3 (0xec1dc88b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000ec1dc88b from memory into f25
li x3, 0x590b5377 # load x3 with 32 MSBs 0x00000000590b5377
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000590b5377
sw x3, 0(x2) # store x3 (0x590b5377) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000590b5377 from memory into f18
fsgnj.d f14, f25, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x24, 0xb66cacbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x842a6eb7 # load x3 with 32 MSBs 0x00000000842a6eb7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000842a6eb7
sw x3, 0(x2) # store x3 (0x842a6eb7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000842a6eb7 from memory into f20
li x3, 0xc319120c # load x3 with 32 MSBs 0x00000000c319120c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c319120c
sw x3, 0(x2) # store x3 (0xc319120c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000c319120c from memory into f19
fsgnj.d f24, f20, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x15, 0xb902ff4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ecdb6b3 # load x3 with 32 MSBs 0x000000000ecdb6b3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000ecdb6b3
sw x3, 0(x2) # store x3 (0x0ecdb6b3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000000ecdb6b3 from memory into f18
li x3, 0xc537c79b # load x3 with 32 MSBs 0x00000000c537c79b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c537c79b
sw x3, 0(x2) # store x3 (0xc537c79b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000c537c79b from memory into f20
fsgnj.d f15, f18, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x14, 0xdb2cf737 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25c2bce5 # load x3 with 32 MSBs 0x0000000025c2bce5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000025c2bce5
sw x3, 0(x2) # store x3 (0x25c2bce5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000025c2bce5 from memory into f11
li x3, 0xc8652ee7 # load x3 with 32 MSBs 0x00000000c8652ee7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c8652ee7
sw x3, 0(x2) # store x3 (0xc8652ee7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000c8652ee7 from memory into f21
fsgnj.d f14, f11, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x2, 0xd1fc2b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb45ea983 # load x3 with 32 MSBs 0x00000000b45ea983
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b45ea983
sw x3, 0(x2) # store x3 (0xb45ea983) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000b45ea983 from memory into f13
li x3, 0x0b612960 # load x3 with 32 MSBs 0x000000000b612960
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000b612960
sw x3, 0(x2) # store x3 (0x0b612960) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000000b612960 from memory into f22
fsgnj.d f2, f13, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x30, 0xe285c3a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6da460e5 # load x3 with 32 MSBs 0x000000006da460e5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006da460e5
sw x3, 0(x2) # store x3 (0x6da460e5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006da460e5 from memory into f19
li x3, 0xe7411b39 # load x3 with 32 MSBs 0x00000000e7411b39
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e7411b39
sw x3, 0(x2) # store x3 (0xe7411b39) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e7411b39 from memory into f23
fsgnj.d f30, f19, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x23, 0xb108f5cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16bfc408 # load x3 with 32 MSBs 0x0000000016bfc408
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000016bfc408
sw x3, 0(x2) # store x3 (0x16bfc408) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000016bfc408 from memory into f8
li x3, 0xef7c3212 # load x3 with 32 MSBs 0x00000000ef7c3212
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ef7c3212
sw x3, 0(x2) # store x3 (0xef7c3212) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000ef7c3212 from memory into f24
fsgnj.d f23, f8, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x9, 0xaa0b0ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2a921f7 # load x3 with 32 MSBs 0x00000000e2a921f7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e2a921f7
sw x3, 0(x2) # store x3 (0xe2a921f7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e2a921f7 from memory into f23
li x3, 0xb15d2369 # load x3 with 32 MSBs 0x00000000b15d2369
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b15d2369
sw x3, 0(x2) # store x3 (0xb15d2369) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000b15d2369 from memory into f25
fsgnj.d f9, f23, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x26, 0x8fe544b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ff2f7e6 # load x3 with 32 MSBs 0x000000004ff2f7e6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004ff2f7e6
sw x3, 0(x2) # store x3 (0x4ff2f7e6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000004ff2f7e6 from memory into f17
li x3, 0xeebadbe9 # load x3 with 32 MSBs 0x00000000eebadbe9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000eebadbe9
sw x3, 0(x2) # store x3 (0xeebadbe9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000eebadbe9 from memory into f26
fsgnj.d f26, f17, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x1, 0x1144d9de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7af7a34e # load x3 with 32 MSBs 0x000000007af7a34e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007af7a34e
sw x3, 0(x2) # store x3 (0x7af7a34e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000007af7a34e from memory into f22
li x3, 0xd73ea44c # load x3 with 32 MSBs 0x00000000d73ea44c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d73ea44c
sw x3, 0(x2) # store x3 (0xd73ea44c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000d73ea44c from memory into f27
fsgnj.d f1, f22, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x10, 0x1b909765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f7422a7 # load x3 with 32 MSBs 0x000000000f7422a7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000f7422a7
sw x3, 0(x2) # store x3 (0x0f7422a7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000000f7422a7 from memory into f14
li x3, 0x332a5122 # load x3 with 32 MSBs 0x00000000332a5122
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000332a5122
sw x3, 0(x2) # store x3 (0x332a5122) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000332a5122 from memory into f28
fsgnj.d f10, f14, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x2, 0xe01a55b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c86933e # load x3 with 32 MSBs 0x000000003c86933e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003c86933e
sw x3, 0(x2) # store x3 (0x3c86933e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000003c86933e from memory into f31
li x3, 0x7e1fdb3b # load x3 with 32 MSBs 0x000000007e1fdb3b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007e1fdb3b
sw x3, 0(x2) # store x3 (0x7e1fdb3b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000007e1fdb3b from memory into f29
fsgnj.d f2, f31, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x6, 0x92dd0f03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b356ff9 # load x3 with 32 MSBs 0x000000009b356ff9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009b356ff9
sw x3, 0(x2) # store x3 (0x9b356ff9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000009b356ff9 from memory into f25
li x3, 0x876e8557 # load x3 with 32 MSBs 0x00000000876e8557
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000876e8557
sw x3, 0(x2) # store x3 (0x876e8557) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000876e8557 from memory into f30
fsgnj.d f6, f25, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x11, 0x87b9586e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc047f92 # load x3 with 32 MSBs 0x00000000cc047f92
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cc047f92
sw x3, 0(x2) # store x3 (0xcc047f92) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000cc047f92 from memory into f9
li x3, 0x27ffbcb2 # load x3 with 32 MSBs 0x0000000027ffbcb2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000027ffbcb2
sw x3, 0(x2) # store x3 (0x27ffbcb2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000027ffbcb2 from memory into f31
fsgnj.d f11, f9, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
