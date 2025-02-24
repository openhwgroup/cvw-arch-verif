///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fsgnj.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.373728
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
li x16, 0x4d6a8639 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0xc44ee579 # load x3 with value 0xc44ee579
sw x3, 0(x2) # store 0xc44ee579 in memory
flw f3, 0(x2) # load 0xc44ee579 from memory into f3
fsgnj.s f16, f14, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x18, 0xe7fc8a88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
li x3, 0x0ce25765 # load x3 with value 0x0ce25765
sw x3, 0(x2) # store 0x0ce25765 in memory
flw f5, 0(x2) # load 0x0ce25765 from memory into f5
fsgnj.s f18, f13, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x27, 0x562040ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0xcec3f8fd # load x3 with value 0xcec3f8fd
sw x3, 0(x2) # store 0xcec3f8fd in memory
flw f22, 0(x2) # load 0xcec3f8fd from memory into f22
fsgnj.s f27, f6, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x21, 0xf27671d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x897017b2 # load x3 with value 0x897017b2
sw x3, 0(x2) # store 0x897017b2 in memory
flw f30, 0(x2) # load 0x897017b2 from memory into f30
fsgnj.s f21, f27, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x21, 0x23dc62b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
li x3, 0xfeaf005c # load x3 with value 0xfeaf005c
sw x3, 0(x2) # store 0xfeaf005c in memory
flw f26, 0(x2) # load 0xfeaf005c from memory into f26
fsgnj.s f21, f18, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x14, 0x2afdcde4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
li x3, 0x80775a2d # load x3 with value 0x80775a2d
sw x3, 0(x2) # store 0x80775a2d in memory
flw f28, 0(x2) # load 0x80775a2d from memory into f28
fsgnj.s f14, f21, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x11, 0xc4696075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
li x3, 0x4794547d # load x3 with value 0x4794547d
sw x3, 0(x2) # store 0x4794547d in memory
flw f10, 0(x2) # load 0x4794547d from memory into f10
fsgnj.s f11, f3, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x28, 0xa75611d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
li x3, 0xc5012be4 # load x3 with value 0xc5012be4
sw x3, 0(x2) # store 0xc5012be4 in memory
flw f24, 0(x2) # load 0xc5012be4 from memory into f24
fsgnj.s f28, f9, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x30, 0x15b5286f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
li x3, 0xbe3b57ee # load x3 with value 0xbe3b57ee
sw x3, 0(x2) # store 0xbe3b57ee in memory
flw f28, 0(x2) # load 0xbe3b57ee from memory into f28
fsgnj.s f30, f10, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x24, 0x43b8d17e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
li x3, 0x9e3c464d # load x3 with value 0x9e3c464d
sw x3, 0(x2) # store 0x9e3c464d in memory
flw f1, 0(x2) # load 0x9e3c464d from memory into f1
fsgnj.s f24, f16, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x8, 0xd4cb1ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0x3e1f9f68 # load x3 with value 0x3e1f9f68
sw x3, 0(x2) # store 0x3e1f9f68 in memory
flw f14, 0(x2) # load 0x3e1f9f68 from memory into f14
fsgnj.s f8, f12, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x28, 0x0e8a2a8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0xdb05c73c # load x3 with value 0xdb05c73c
sw x3, 0(x2) # store 0xdb05c73c in memory
flw f21, 0(x2) # load 0xdb05c73c from memory into f21
fsgnj.s f28, f11, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x23, 0x576b93d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
li x3, 0xe5eeb114 # load x3 with value 0xe5eeb114
sw x3, 0(x2) # store 0xe5eeb114 in memory
flw f8, 0(x2) # load 0xe5eeb114 from memory into f8
fsgnj.s f23, f4, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x25, 0x5365f850 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x9c726c2b # load x3 with value 0x9c726c2b
sw x3, 0(x2) # store 0x9c726c2b in memory
flw f23, 0(x2) # load 0x9c726c2b from memory into f23
fsgnj.s f25, f14, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x14, 0xc0a3719c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0x31fecc76 # load x3 with value 0x31fecc76
sw x3, 0(x2) # store 0x31fecc76 in memory
flw f20, 0(x2) # load 0x31fecc76 from memory into f20
fsgnj.s f14, f15, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x24, 0x92a2dfcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0xd642ad99 # load x3 with value 0xd642ad99
sw x3, 0(x2) # store 0xd642ad99 in memory
flw f18, 0(x2) # load 0xd642ad99 from memory into f18
fsgnj.s f24, f10, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x18, 0x09c468e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0xd4df8766 # load x3 with value 0xd4df8766
sw x3, 0(x2) # store 0xd4df8766 in memory
flw f23, 0(x2) # load 0xd4df8766 from memory into f23
fsgnj.s f18, f26, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x3, 0xb910efb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
li x3, 0x389ded9f # load x3 with value 0x389ded9f
sw x3, 0(x2) # store 0x389ded9f in memory
flw f10, 0(x2) # load 0x389ded9f from memory into f10
fsgnj.s f3, f18, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x17, 0xf5a7600d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
li x3, 0xeac6225b # load x3 with value 0xeac6225b
sw x3, 0(x2) # store 0xeac6225b in memory
flw f25, 0(x2) # load 0xeac6225b from memory into f25
fsgnj.s f17, f5, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x13, 0x79a6129c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
li x3, 0xf9d5a805 # load x3 with value 0xf9d5a805
sw x3, 0(x2) # store 0xf9d5a805 in memory
flw f12, 0(x2) # load 0xf9d5a805 from memory into f12
fsgnj.s f13, f7, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x1, 0x4b0e41f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
li x3, 0x959614ef # load x3 with value 0x959614ef
sw x3, 0(x2) # store 0x959614ef in memory
flw f18, 0(x2) # load 0x959614ef from memory into f18
fsgnj.s f1, f29, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x6, 0xd6055cc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x250b9506 # load x3 with value 0x250b9506
sw x3, 0(x2) # store 0x250b9506 in memory
flw f29, 0(x2) # load 0x250b9506 from memory into f29
fsgnj.s f6, f19, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x23, 0x0b806a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
li x3, 0x5e641e56 # load x3 with value 0x5e641e56
sw x3, 0(x2) # store 0x5e641e56 in memory
flw f10, 0(x2) # load 0x5e641e56 from memory into f10
fsgnj.s f23, f11, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x26, 0xb6c43bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
li x3, 0x5f9ffb5c # load x3 with value 0x5f9ffb5c
sw x3, 0(x2) # store 0x5f9ffb5c in memory
flw f3, 0(x2) # load 0x5f9ffb5c from memory into f3
fsgnj.s f26, f18, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x18, 0x419eb56a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
li x3, 0x4a1328d1 # load x3 with value 0x4a1328d1
sw x3, 0(x2) # store 0x4a1328d1 in memory
flw f19, 0(x2) # load 0x4a1328d1 from memory into f19
fsgnj.s f18, f27, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x27, 0x18bb2080 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x0bfd6a7c # load x3 with value 0x0bfd6a7c
sw x3, 0(x2) # store 0x0bfd6a7c in memory
flw f18, 0(x2) # load 0x0bfd6a7c from memory into f18
fsgnj.s f27, f1, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x24, 0x8b9f839b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe696b671 # load x3 with value 0xe696b671
sw x3, 0(x2) # store 0xe696b671 in memory
flw f2, 0(x2) # load 0xe696b671 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fsgnj.s f24, f2, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x25, 0x01aa66cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa02c488 # load x3 with value 0xfa02c488
sw x3, 0(x2) # store 0xfa02c488 in memory
flw f30, 0(x2) # load 0xfa02c488 from memory into f30
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fsgnj.s f25, f30, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x30, 0x01f7b4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58297ac7 # load x3 with value 0x58297ac7
sw x3, 0(x2) # store 0x58297ac7 in memory
flw f28, 0(x2) # load 0x58297ac7 from memory into f28
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fsgnj.s f30, f28, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x13, 0xc484c4d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffcb6e3d # load x3 with value 0xffcb6e3d
sw x3, 0(x2) # store 0xffcb6e3d in memory
flw f29, 0(x2) # load 0xffcb6e3d from memory into f29
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fsgnj.s f13, f29, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x31, 0x58655dda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e986d89 # load x3 with value 0x1e986d89
sw x3, 0(x2) # store 0x1e986d89 in memory
flw f13, 0(x2) # load 0x1e986d89 from memory into f13
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fsgnj.s f31, f13, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x11, 0xdee7ebe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabe5ea2a # load x3 with value 0xabe5ea2a
sw x3, 0(x2) # store 0xabe5ea2a in memory
flw f7, 0(x2) # load 0xabe5ea2a from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fsgnj.s f11, f7, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x11, 0xb0abfff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca57e6fd # load x3 with value 0xca57e6fd
sw x3, 0(x2) # store 0xca57e6fd in memory
flw f3, 0(x2) # load 0xca57e6fd from memory into f3
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fsgnj.s f11, f3, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x28, 0x349c3139 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12cc06f8 # load x3 with value 0x12cc06f8
sw x3, 0(x2) # store 0x12cc06f8 in memory
flw f18, 0(x2) # load 0x12cc06f8 from memory into f18
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fsgnj.s f28, f18, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x12, 0x8af39a93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5dc3f02e # load x3 with value 0x5dc3f02e
sw x3, 0(x2) # store 0x5dc3f02e in memory
flw f21, 0(x2) # load 0x5dc3f02e from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fsgnj.s f12, f21, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x6, 0x39fc2c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29e93927 # load x3 with value 0x29e93927
sw x3, 0(x2) # store 0x29e93927 in memory
flw f16, 0(x2) # load 0x29e93927 from memory into f16
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fsgnj.s f6, f16, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x27, 0x17b348d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x103f4e30 # load x3 with value 0x103f4e30
sw x3, 0(x2) # store 0x103f4e30 in memory
flw f21, 0(x2) # load 0x103f4e30 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fsgnj.s f27, f21, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x19, 0xc6ca9eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x078fea78 # load x3 with value 0x078fea78
sw x3, 0(x2) # store 0x078fea78 in memory
flw f24, 0(x2) # load 0x078fea78 from memory into f24
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fsgnj.s f19, f24, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x16, 0xd88e58d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4c63d7b # load x3 with value 0xa4c63d7b
sw x3, 0(x2) # store 0xa4c63d7b in memory
flw f14, 0(x2) # load 0xa4c63d7b from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fsgnj.s f16, f14, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x21, 0xbadc94c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e5cfb2f # load x3 with value 0x6e5cfb2f
sw x3, 0(x2) # store 0x6e5cfb2f in memory
flw f23, 0(x2) # load 0x6e5cfb2f from memory into f23
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fsgnj.s f21, f23, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x23, 0xf9fb18df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94ea8e57 # load x3 with value 0x94ea8e57
sw x3, 0(x2) # store 0x94ea8e57 in memory
flw f12, 0(x2) # load 0x94ea8e57 from memory into f12
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fsgnj.s f23, f12, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x1, 0xc2602e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x138cd039 # load x3 with value 0x138cd039
sw x3, 0(x2) # store 0x138cd039 in memory
flw f7, 0(x2) # load 0x138cd039 from memory into f7
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fsgnj.s f1, f7, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x10, 0x62fa7d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5de30e68 # load x3 with value 0x5de30e68
sw x3, 0(x2) # store 0x5de30e68 in memory
flw f21, 0(x2) # load 0x5de30e68 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fsgnj.s f10, f21, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x2, 0x7d5a32a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47c387ea # load x3 with value 0x47c387ea
sw x3, 0(x2) # store 0x47c387ea in memory
flw f20, 0(x2) # load 0x47c387ea from memory into f20
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fsgnj.s f2, f20, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x21, 0x495b1497 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37ad4940 # load x3 with value 0x37ad4940
sw x3, 0(x2) # store 0x37ad4940 in memory
flw f19, 0(x2) # load 0x37ad4940 from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fsgnj.s f21, f19, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x7, 0xd21be144 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ac03922 # load x3 with value 0x3ac03922
sw x3, 0(x2) # store 0x3ac03922 in memory
flw f21, 0(x2) # load 0x3ac03922 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fsgnj.s f7, f21, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x22, 0x345776ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x788c2193 # load x3 with value 0x788c2193
sw x3, 0(x2) # store 0x788c2193 in memory
flw f8, 0(x2) # load 0x788c2193 from memory into f8
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fsgnj.s f22, f8, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x20, 0xbfb6c11c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab1c007b # load x3 with value 0xab1c007b
sw x3, 0(x2) # store 0xab1c007b in memory
flw f13, 0(x2) # load 0xab1c007b from memory into f13
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fsgnj.s f20, f13, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x31, 0xd878368a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32523a50 # load x3 with value 0x32523a50
sw x3, 0(x2) # store 0x32523a50 in memory
flw f28, 0(x2) # load 0x32523a50 from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fsgnj.s f31, f28, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x11, 0x7a747c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0c9131e # load x3 with value 0xa0c9131e
sw x3, 0(x2) # store 0xa0c9131e in memory
flw f23, 0(x2) # load 0xa0c9131e from memory into f23
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fsgnj.s f11, f23, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x17, 0x64c165a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a50bd7a # load x3 with value 0x2a50bd7a
sw x3, 0(x2) # store 0x2a50bd7a in memory
flw f14, 0(x2) # load 0x2a50bd7a from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fsgnj.s f17, f14, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x18, 0x864008b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf81294b # load x3 with value 0xcf81294b
sw x3, 0(x2) # store 0xcf81294b in memory
flw f7, 0(x2) # load 0xcf81294b from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fsgnj.s f18, f7, f8 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x8a6f0c5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6ea2031 # load x3 with value 0xb6ea2031
sw x3, 0(x2) # store 0xb6ea2031 in memory
flw f4, 0(x2) # load 0xb6ea2031 from memory into f4
li x3, 0xa0281fca # load x3 with value 0xa0281fca
sw x3, 0(x2) # store 0xa0281fca in memory
flw f15, 0(x2) # load 0xa0281fca from memory into f15
fsgnj.s f0, f4, f15 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x512090f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb85addf6 # load x3 with value 0xb85addf6
sw x3, 0(x2) # store 0xb85addf6 in memory
flw f16, 0(x2) # load 0xb85addf6 from memory into f16
li x3, 0x7c611af3 # load x3 with value 0x7c611af3
sw x3, 0(x2) # store 0x7c611af3 in memory
flw f28, 0(x2) # load 0x7c611af3 from memory into f28
fsgnj.s f1, f16, f28 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x361ba8ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9df20984 # load x3 with value 0x9df20984
sw x3, 0(x2) # store 0x9df20984 in memory
flw f23, 0(x2) # load 0x9df20984 from memory into f23
li x3, 0xce92462a # load x3 with value 0xce92462a
sw x3, 0(x2) # store 0xce92462a in memory
flw f5, 0(x2) # load 0xce92462a from memory into f5
fsgnj.s f2, f23, f5 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x418f2aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2de9e5c # load x3 with value 0xf2de9e5c
sw x3, 0(x2) # store 0xf2de9e5c in memory
flw f19, 0(x2) # load 0xf2de9e5c from memory into f19
li x3, 0x47b14876 # load x3 with value 0x47b14876
sw x3, 0(x2) # store 0x47b14876 in memory
flw f30, 0(x2) # load 0x47b14876 from memory into f30
fsgnj.s f3, f19, f30 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xc9d0bf02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c1ffa98 # load x3 with value 0x9c1ffa98
sw x3, 0(x2) # store 0x9c1ffa98 in memory
flw f20, 0(x2) # load 0x9c1ffa98 from memory into f20
li x3, 0x865eaeba # load x3 with value 0x865eaeba
sw x3, 0(x2) # store 0x865eaeba in memory
flw f4, 0(x2) # load 0x865eaeba from memory into f4
fsgnj.s f4, f20, f4 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x392364d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3218eb70 # load x3 with value 0x3218eb70
sw x3, 0(x2) # store 0x3218eb70 in memory
flw f29, 0(x2) # load 0x3218eb70 from memory into f29
li x3, 0xcb398fb0 # load x3 with value 0xcb398fb0
sw x3, 0(x2) # store 0xcb398fb0 in memory
flw f20, 0(x2) # load 0xcb398fb0 from memory into f20
fsgnj.s f5, f29, f20 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xb7f0f825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x331d2a55 # load x3 with value 0x331d2a55
sw x3, 0(x2) # store 0x331d2a55 in memory
flw f5, 0(x2) # load 0x331d2a55 from memory into f5
li x3, 0xb10fd294 # load x3 with value 0xb10fd294
sw x3, 0(x2) # store 0xb10fd294 in memory
flw f27, 0(x2) # load 0xb10fd294 from memory into f27
fsgnj.s f6, f5, f27 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x6db97b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeae84ede # load x3 with value 0xeae84ede
sw x3, 0(x2) # store 0xeae84ede in memory
flw f12, 0(x2) # load 0xeae84ede from memory into f12
li x3, 0x899b28ed # load x3 with value 0x899b28ed
sw x3, 0(x2) # store 0x899b28ed in memory
flw f9, 0(x2) # load 0x899b28ed from memory into f9
fsgnj.s f7, f12, f9 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xfde9d474 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd05ac833 # load x3 with value 0xd05ac833
sw x3, 0(x2) # store 0xd05ac833 in memory
flw f19, 0(x2) # load 0xd05ac833 from memory into f19
li x3, 0x21cacb48 # load x3 with value 0x21cacb48
sw x3, 0(x2) # store 0x21cacb48 in memory
flw f28, 0(x2) # load 0x21cacb48 from memory into f28
fsgnj.s f8, f19, f28 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xca80eced # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ca89f2e # load x3 with value 0x2ca89f2e
sw x3, 0(x2) # store 0x2ca89f2e in memory
flw f20, 0(x2) # load 0x2ca89f2e from memory into f20
li x3, 0xc3222615 # load x3 with value 0xc3222615
sw x3, 0(x2) # store 0xc3222615 in memory
flw f19, 0(x2) # load 0xc3222615 from memory into f19
fsgnj.s f9, f20, f19 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x4865f24e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x459f08eb # load x3 with value 0x459f08eb
sw x3, 0(x2) # store 0x459f08eb in memory
flw f3, 0(x2) # load 0x459f08eb from memory into f3
li x3, 0xad705df7 # load x3 with value 0xad705df7
sw x3, 0(x2) # store 0xad705df7 in memory
flw f14, 0(x2) # load 0xad705df7 from memory into f14
fsgnj.s f10, f3, f14 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x65ebe0b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe85aaf67 # load x3 with value 0xe85aaf67
sw x3, 0(x2) # store 0xe85aaf67 in memory
flw f24, 0(x2) # load 0xe85aaf67 from memory into f24
li x3, 0x53fe3f7a # load x3 with value 0x53fe3f7a
sw x3, 0(x2) # store 0x53fe3f7a in memory
flw f8, 0(x2) # load 0x53fe3f7a from memory into f8
fsgnj.s f11, f24, f8 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xa5cf2926 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a27a01a # load x3 with value 0x4a27a01a
sw x3, 0(x2) # store 0x4a27a01a in memory
flw f9, 0(x2) # load 0x4a27a01a from memory into f9
li x3, 0xd817e829 # load x3 with value 0xd817e829
sw x3, 0(x2) # store 0xd817e829 in memory
flw f3, 0(x2) # load 0xd817e829 from memory into f3
fsgnj.s f12, f9, f3 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x753da6c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccce6136 # load x3 with value 0xccce6136
sw x3, 0(x2) # store 0xccce6136 in memory
flw f18, 0(x2) # load 0xccce6136 from memory into f18
li x3, 0x722b6b23 # load x3 with value 0x722b6b23
sw x3, 0(x2) # store 0x722b6b23 in memory
flw f14, 0(x2) # load 0x722b6b23 from memory into f14
fsgnj.s f13, f18, f14 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xa85f5270 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9bed8a3a # load x3 with value 0x9bed8a3a
sw x3, 0(x2) # store 0x9bed8a3a in memory
flw f5, 0(x2) # load 0x9bed8a3a from memory into f5
li x3, 0x0c956599 # load x3 with value 0x0c956599
sw x3, 0(x2) # store 0x0c956599 in memory
flw f9, 0(x2) # load 0x0c956599 from memory into f9
fsgnj.s f14, f5, f9 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x404022fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaed87a5d # load x3 with value 0xaed87a5d
sw x3, 0(x2) # store 0xaed87a5d in memory
flw f12, 0(x2) # load 0xaed87a5d from memory into f12
li x3, 0xf74515fe # load x3 with value 0xf74515fe
sw x3, 0(x2) # store 0xf74515fe in memory
flw f10, 0(x2) # load 0xf74515fe from memory into f10
fsgnj.s f15, f12, f10 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x83b14a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73b39897 # load x3 with value 0x73b39897
sw x3, 0(x2) # store 0x73b39897 in memory
flw f6, 0(x2) # load 0x73b39897 from memory into f6
li x3, 0x299e1e22 # load x3 with value 0x299e1e22
sw x3, 0(x2) # store 0x299e1e22 in memory
flw f30, 0(x2) # load 0x299e1e22 from memory into f30
fsgnj.s f16, f6, f30 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xcf7423b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x780b0ea1 # load x3 with value 0x780b0ea1
sw x3, 0(x2) # store 0x780b0ea1 in memory
flw f28, 0(x2) # load 0x780b0ea1 from memory into f28
li x3, 0x5aa9a672 # load x3 with value 0x5aa9a672
sw x3, 0(x2) # store 0x5aa9a672 in memory
flw f15, 0(x2) # load 0x5aa9a672 from memory into f15
fsgnj.s f17, f28, f15 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x45a29f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaebc7cbb # load x3 with value 0xaebc7cbb
sw x3, 0(x2) # store 0xaebc7cbb in memory
flw f3, 0(x2) # load 0xaebc7cbb from memory into f3
li x3, 0xdc68ca98 # load x3 with value 0xdc68ca98
sw x3, 0(x2) # store 0xdc68ca98 in memory
flw f30, 0(x2) # load 0xdc68ca98 from memory into f30
fsgnj.s f18, f3, f30 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x74111c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39bc14be # load x3 with value 0x39bc14be
sw x3, 0(x2) # store 0x39bc14be in memory
flw f27, 0(x2) # load 0x39bc14be from memory into f27
li x3, 0x4a04c4ea # load x3 with value 0x4a04c4ea
sw x3, 0(x2) # store 0x4a04c4ea in memory
flw f24, 0(x2) # load 0x4a04c4ea from memory into f24
fsgnj.s f19, f27, f24 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xcf4482db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cea96b6 # load x3 with value 0x5cea96b6
sw x3, 0(x2) # store 0x5cea96b6 in memory
flw f3, 0(x2) # load 0x5cea96b6 from memory into f3
li x3, 0x39825c63 # load x3 with value 0x39825c63
sw x3, 0(x2) # store 0x39825c63 in memory
flw f2, 0(x2) # load 0x39825c63 from memory into f2
fsgnj.s f20, f3, f2 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xa6bc3a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf26aa2e1 # load x3 with value 0xf26aa2e1
sw x3, 0(x2) # store 0xf26aa2e1 in memory
flw f29, 0(x2) # load 0xf26aa2e1 from memory into f29
li x3, 0x8be85e28 # load x3 with value 0x8be85e28
sw x3, 0(x2) # store 0x8be85e28 in memory
flw f23, 0(x2) # load 0x8be85e28 from memory into f23
fsgnj.s f21, f29, f23 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x301a5b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08f450d0 # load x3 with value 0x08f450d0
sw x3, 0(x2) # store 0x08f450d0 in memory
flw f24, 0(x2) # load 0x08f450d0 from memory into f24
li x3, 0xb207b82d # load x3 with value 0xb207b82d
sw x3, 0(x2) # store 0xb207b82d in memory
flw f17, 0(x2) # load 0xb207b82d from memory into f17
fsgnj.s f22, f24, f17 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xf20dc567 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x693ed11a # load x3 with value 0x693ed11a
sw x3, 0(x2) # store 0x693ed11a in memory
flw f26, 0(x2) # load 0x693ed11a from memory into f26
li x3, 0x07dc357d # load x3 with value 0x07dc357d
sw x3, 0(x2) # store 0x07dc357d in memory
flw f24, 0(x2) # load 0x07dc357d from memory into f24
fsgnj.s f23, f26, f24 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x9919bc9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e0f7bd6 # load x3 with value 0x5e0f7bd6
sw x3, 0(x2) # store 0x5e0f7bd6 in memory
flw f24, 0(x2) # load 0x5e0f7bd6 from memory into f24
li x3, 0x80a63fc5 # load x3 with value 0x80a63fc5
sw x3, 0(x2) # store 0x80a63fc5 in memory
flw f28, 0(x2) # load 0x80a63fc5 from memory into f28
fsgnj.s f24, f24, f28 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xeeaa9e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75255c00 # load x3 with value 0x75255c00
sw x3, 0(x2) # store 0x75255c00 in memory
flw f9, 0(x2) # load 0x75255c00 from memory into f9
li x3, 0x759d683d # load x3 with value 0x759d683d
sw x3, 0(x2) # store 0x759d683d in memory
flw f12, 0(x2) # load 0x759d683d from memory into f12
fsgnj.s f25, f9, f12 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xf79fdaab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35c95c27 # load x3 with value 0x35c95c27
sw x3, 0(x2) # store 0x35c95c27 in memory
flw f2, 0(x2) # load 0x35c95c27 from memory into f2
li x3, 0x51a924b9 # load x3 with value 0x51a924b9
sw x3, 0(x2) # store 0x51a924b9 in memory
flw f21, 0(x2) # load 0x51a924b9 from memory into f21
fsgnj.s f26, f2, f21 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x8c473479 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd057ad6 # load x3 with value 0xcd057ad6
sw x3, 0(x2) # store 0xcd057ad6 in memory
flw f12, 0(x2) # load 0xcd057ad6 from memory into f12
li x3, 0xe32aaced # load x3 with value 0xe32aaced
sw x3, 0(x2) # store 0xe32aaced in memory
flw f7, 0(x2) # load 0xe32aaced from memory into f7
fsgnj.s f27, f12, f7 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xdb35ed22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3238011 # load x3 with value 0xe3238011
sw x3, 0(x2) # store 0xe3238011 in memory
flw f21, 0(x2) # load 0xe3238011 from memory into f21
li x3, 0xbf560bb4 # load x3 with value 0xbf560bb4
sw x3, 0(x2) # store 0xbf560bb4 in memory
flw f1, 0(x2) # load 0xbf560bb4 from memory into f1
fsgnj.s f28, f21, f1 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x7a3b5cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x997d3d72 # load x3 with value 0x997d3d72
sw x3, 0(x2) # store 0x997d3d72 in memory
flw f16, 0(x2) # load 0x997d3d72 from memory into f16
li x3, 0xd5896e0d # load x3 with value 0xd5896e0d
sw x3, 0(x2) # store 0xd5896e0d in memory
flw f3, 0(x2) # load 0xd5896e0d from memory into f3
fsgnj.s f29, f16, f3 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x6cb191c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ce04477 # load x3 with value 0x3ce04477
sw x3, 0(x2) # store 0x3ce04477 in memory
flw f27, 0(x2) # load 0x3ce04477 from memory into f27
li x3, 0xaae47ddd # load x3 with value 0xaae47ddd
sw x3, 0(x2) # store 0xaae47ddd in memory
flw f6, 0(x2) # load 0xaae47ddd from memory into f6
fsgnj.s f30, f27, f6 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x1a619484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x126d76eb # load x3 with value 0x126d76eb
sw x3, 0(x2) # store 0x126d76eb in memory
flw f17, 0(x2) # load 0x126d76eb from memory into f17
li x3, 0x0f5a257a # load x3 with value 0x0f5a257a
sw x3, 0(x2) # store 0x0f5a257a in memory
flw f5, 0(x2) # load 0x0f5a257a from memory into f5
fsgnj.s f31, f17, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x4, 0x7e1bd37a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24597ef7 # load x3 with value 0x24597ef7
sw x3, 0(x2) # store 0x24597ef7 in memory
flw f0, 0(x2) # load 0x24597ef7 from memory into f0
li x3, 0x68ca9cbb # load x3 with value 0x68ca9cbb
sw x3, 0(x2) # store 0x68ca9cbb in memory
flw f14, 0(x2) # load 0x68ca9cbb from memory into f14
fsgnj.s f4, f0, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x1, 0x854ae6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5f4527f # load x3 with value 0xb5f4527f
sw x3, 0(x2) # store 0xb5f4527f in memory
flw f1, 0(x2) # load 0xb5f4527f from memory into f1
li x3, 0x6292aae8 # load x3 with value 0x6292aae8
sw x3, 0(x2) # store 0x6292aae8 in memory
flw f5, 0(x2) # load 0x6292aae8 from memory into f5
fsgnj.s f1, f1, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x1, 0xba5276e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c170c4d # load x3 with value 0x3c170c4d
sw x3, 0(x2) # store 0x3c170c4d in memory
flw f2, 0(x2) # load 0x3c170c4d from memory into f2
li x3, 0xac2a4f3e # load x3 with value 0xac2a4f3e
sw x3, 0(x2) # store 0xac2a4f3e in memory
flw f19, 0(x2) # load 0xac2a4f3e from memory into f19
fsgnj.s f1, f2, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x17, 0x3c2c4dda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd85ec2a2 # load x3 with value 0xd85ec2a2
sw x3, 0(x2) # store 0xd85ec2a2 in memory
flw f3, 0(x2) # load 0xd85ec2a2 from memory into f3
li x3, 0xa6b9f694 # load x3 with value 0xa6b9f694
sw x3, 0(x2) # store 0xa6b9f694 in memory
flw f29, 0(x2) # load 0xa6b9f694 from memory into f29
fsgnj.s f17, f3, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x22, 0xa98fdb24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08c14f08 # load x3 with value 0x08c14f08
sw x3, 0(x2) # store 0x08c14f08 in memory
flw f4, 0(x2) # load 0x08c14f08 from memory into f4
li x3, 0x5707634e # load x3 with value 0x5707634e
sw x3, 0(x2) # store 0x5707634e in memory
flw f18, 0(x2) # load 0x5707634e from memory into f18
fsgnj.s f22, f4, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x17, 0x4b50f0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e9771ac # load x3 with value 0x6e9771ac
sw x3, 0(x2) # store 0x6e9771ac in memory
flw f5, 0(x2) # load 0x6e9771ac from memory into f5
li x3, 0xd1000865 # load x3 with value 0xd1000865
sw x3, 0(x2) # store 0xd1000865 in memory
flw f6, 0(x2) # load 0xd1000865 from memory into f6
fsgnj.s f17, f5, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x8, 0x131008d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c7a6031 # load x3 with value 0x7c7a6031
sw x3, 0(x2) # store 0x7c7a6031 in memory
flw f6, 0(x2) # load 0x7c7a6031 from memory into f6
li x3, 0x4ae4e589 # load x3 with value 0x4ae4e589
sw x3, 0(x2) # store 0x4ae4e589 in memory
flw f31, 0(x2) # load 0x4ae4e589 from memory into f31
fsgnj.s f8, f6, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x23, 0xebe77088 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe536f6b1 # load x3 with value 0xe536f6b1
sw x3, 0(x2) # store 0xe536f6b1 in memory
flw f7, 0(x2) # load 0xe536f6b1 from memory into f7
li x3, 0x9f09f3e5 # load x3 with value 0x9f09f3e5
sw x3, 0(x2) # store 0x9f09f3e5 in memory
flw f5, 0(x2) # load 0x9f09f3e5 from memory into f5
fsgnj.s f23, f7, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x11, 0x4710c5b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0677f723 # load x3 with value 0x0677f723
sw x3, 0(x2) # store 0x0677f723 in memory
flw f8, 0(x2) # load 0x0677f723 from memory into f8
li x3, 0xc7a9b545 # load x3 with value 0xc7a9b545
sw x3, 0(x2) # store 0xc7a9b545 in memory
flw f21, 0(x2) # load 0xc7a9b545 from memory into f21
fsgnj.s f11, f8, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x7, 0x7c5f7daa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf4188ba # load x3 with value 0xdf4188ba
sw x3, 0(x2) # store 0xdf4188ba in memory
flw f9, 0(x2) # load 0xdf4188ba from memory into f9
li x3, 0x1078529f # load x3 with value 0x1078529f
sw x3, 0(x2) # store 0x1078529f in memory
flw f28, 0(x2) # load 0x1078529f from memory into f28
fsgnj.s f7, f9, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x17, 0x8c310eea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21ab87a0 # load x3 with value 0x21ab87a0
sw x3, 0(x2) # store 0x21ab87a0 in memory
flw f10, 0(x2) # load 0x21ab87a0 from memory into f10
li x3, 0x9c350f3e # load x3 with value 0x9c350f3e
sw x3, 0(x2) # store 0x9c350f3e in memory
flw f5, 0(x2) # load 0x9c350f3e from memory into f5
fsgnj.s f17, f10, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x21, 0x6e8371d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78f8aa9f # load x3 with value 0x78f8aa9f
sw x3, 0(x2) # store 0x78f8aa9f in memory
flw f11, 0(x2) # load 0x78f8aa9f from memory into f11
li x3, 0xf7f0200b # load x3 with value 0xf7f0200b
sw x3, 0(x2) # store 0xf7f0200b in memory
flw f23, 0(x2) # load 0xf7f0200b from memory into f23
fsgnj.s f21, f11, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x18, 0x0535337f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x554b3b75 # load x3 with value 0x554b3b75
sw x3, 0(x2) # store 0x554b3b75 in memory
flw f12, 0(x2) # load 0x554b3b75 from memory into f12
li x3, 0x0c23b10d # load x3 with value 0x0c23b10d
sw x3, 0(x2) # store 0x0c23b10d in memory
flw f17, 0(x2) # load 0x0c23b10d from memory into f17
fsgnj.s f18, f12, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x26, 0xf4904934 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x789027bb # load x3 with value 0x789027bb
sw x3, 0(x2) # store 0x789027bb in memory
flw f13, 0(x2) # load 0x789027bb from memory into f13
li x3, 0x09f3e6c8 # load x3 with value 0x09f3e6c8
sw x3, 0(x2) # store 0x09f3e6c8 in memory
flw f16, 0(x2) # load 0x09f3e6c8 from memory into f16
fsgnj.s f26, f13, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x26, 0xe398c5b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2248bccb # load x3 with value 0x2248bccb
sw x3, 0(x2) # store 0x2248bccb in memory
flw f14, 0(x2) # load 0x2248bccb from memory into f14
li x3, 0x258edaa0 # load x3 with value 0x258edaa0
sw x3, 0(x2) # store 0x258edaa0 in memory
flw f31, 0(x2) # load 0x258edaa0 from memory into f31
fsgnj.s f26, f14, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x15, 0x10dfc871 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67bf79a9 # load x3 with value 0x67bf79a9
sw x3, 0(x2) # store 0x67bf79a9 in memory
flw f15, 0(x2) # load 0x67bf79a9 from memory into f15
li x3, 0x59aaa9da # load x3 with value 0x59aaa9da
sw x3, 0(x2) # store 0x59aaa9da in memory
flw f3, 0(x2) # load 0x59aaa9da from memory into f3
fsgnj.s f15, f15, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x3, 0x770cae03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa626830d # load x3 with value 0xa626830d
sw x3, 0(x2) # store 0xa626830d in memory
flw f16, 0(x2) # load 0xa626830d from memory into f16
li x3, 0x8829150c # load x3 with value 0x8829150c
sw x3, 0(x2) # store 0x8829150c in memory
flw f14, 0(x2) # load 0x8829150c from memory into f14
fsgnj.s f3, f16, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x24, 0x3e42a4b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86bec72a # load x3 with value 0x86bec72a
sw x3, 0(x2) # store 0x86bec72a in memory
flw f17, 0(x2) # load 0x86bec72a from memory into f17
li x3, 0xb6c322f4 # load x3 with value 0xb6c322f4
sw x3, 0(x2) # store 0xb6c322f4 in memory
flw f19, 0(x2) # load 0xb6c322f4 from memory into f19
fsgnj.s f24, f17, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x17, 0x94bafe9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66faa20c # load x3 with value 0x66faa20c
sw x3, 0(x2) # store 0x66faa20c in memory
flw f18, 0(x2) # load 0x66faa20c from memory into f18
li x3, 0xfa754869 # load x3 with value 0xfa754869
sw x3, 0(x2) # store 0xfa754869 in memory
flw f7, 0(x2) # load 0xfa754869 from memory into f7
fsgnj.s f17, f18, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x2, 0x7ca8b6d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe84d0a9e # load x3 with value 0xe84d0a9e
sw x3, 0(x2) # store 0xe84d0a9e in memory
flw f19, 0(x2) # load 0xe84d0a9e from memory into f19
li x3, 0xca001aa4 # load x3 with value 0xca001aa4
sw x3, 0(x2) # store 0xca001aa4 in memory
flw f16, 0(x2) # load 0xca001aa4 from memory into f16
fsgnj.s f2, f19, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x2, 0xd8a513dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72fef727 # load x3 with value 0x72fef727
sw x3, 0(x2) # store 0x72fef727 in memory
flw f20, 0(x2) # load 0x72fef727 from memory into f20
li x3, 0xf03e0592 # load x3 with value 0xf03e0592
sw x3, 0(x2) # store 0xf03e0592 in memory
flw f31, 0(x2) # load 0xf03e0592 from memory into f31
fsgnj.s f2, f20, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x5, 0xd041dc32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90999a0d # load x3 with value 0x90999a0d
sw x3, 0(x2) # store 0x90999a0d in memory
flw f21, 0(x2) # load 0x90999a0d from memory into f21
li x3, 0x85937dee # load x3 with value 0x85937dee
sw x3, 0(x2) # store 0x85937dee in memory
flw f18, 0(x2) # load 0x85937dee from memory into f18
fsgnj.s f5, f21, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x30, 0x55dc415c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3322aad8 # load x3 with value 0x3322aad8
sw x3, 0(x2) # store 0x3322aad8 in memory
flw f22, 0(x2) # load 0x3322aad8 from memory into f22
li x3, 0x5e959edc # load x3 with value 0x5e959edc
sw x3, 0(x2) # store 0x5e959edc in memory
flw f29, 0(x2) # load 0x5e959edc from memory into f29
fsgnj.s f30, f22, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x12, 0x0f7678a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcffcbc3b # load x3 with value 0xcffcbc3b
sw x3, 0(x2) # store 0xcffcbc3b in memory
flw f23, 0(x2) # load 0xcffcbc3b from memory into f23
li x3, 0x93b25e9b # load x3 with value 0x93b25e9b
sw x3, 0(x2) # store 0x93b25e9b in memory
flw f15, 0(x2) # load 0x93b25e9b from memory into f15
fsgnj.s f12, f23, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x27, 0x09380ea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8fd6af7 # load x3 with value 0xd8fd6af7
sw x3, 0(x2) # store 0xd8fd6af7 in memory
flw f24, 0(x2) # load 0xd8fd6af7 from memory into f24
li x3, 0xf6c1942c # load x3 with value 0xf6c1942c
sw x3, 0(x2) # store 0xf6c1942c in memory
flw f11, 0(x2) # load 0xf6c1942c from memory into f11
fsgnj.s f27, f24, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x30, 0xfe4db58c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e871ad7 # load x3 with value 0x9e871ad7
sw x3, 0(x2) # store 0x9e871ad7 in memory
flw f25, 0(x2) # load 0x9e871ad7 from memory into f25
li x3, 0xb98026d3 # load x3 with value 0xb98026d3
sw x3, 0(x2) # store 0xb98026d3 in memory
flw f10, 0(x2) # load 0xb98026d3 from memory into f10
fsgnj.s f30, f25, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x2, 0x1dd15d78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb47d0a4 # load x3 with value 0xeb47d0a4
sw x3, 0(x2) # store 0xeb47d0a4 in memory
flw f26, 0(x2) # load 0xeb47d0a4 from memory into f26
li x3, 0x0832b881 # load x3 with value 0x0832b881
sw x3, 0(x2) # store 0x0832b881 in memory
flw f28, 0(x2) # load 0x0832b881 from memory into f28
fsgnj.s f2, f26, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x20, 0xebb7789a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x853bb3a3 # load x3 with value 0x853bb3a3
sw x3, 0(x2) # store 0x853bb3a3 in memory
flw f27, 0(x2) # load 0x853bb3a3 from memory into f27
li x3, 0x191e3e42 # load x3 with value 0x191e3e42
sw x3, 0(x2) # store 0x191e3e42 in memory
flw f7, 0(x2) # load 0x191e3e42 from memory into f7
fsgnj.s f20, f27, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x19, 0x9e51eaec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c8f3434 # load x3 with value 0x6c8f3434
sw x3, 0(x2) # store 0x6c8f3434 in memory
flw f28, 0(x2) # load 0x6c8f3434 from memory into f28
li x3, 0xad26f370 # load x3 with value 0xad26f370
sw x3, 0(x2) # store 0xad26f370 in memory
flw f9, 0(x2) # load 0xad26f370 from memory into f9
fsgnj.s f19, f28, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x3, 0x19a3cf20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b5d5b51 # load x3 with value 0x4b5d5b51
sw x3, 0(x2) # store 0x4b5d5b51 in memory
flw f29, 0(x2) # load 0x4b5d5b51 from memory into f29
li x3, 0x58d2d670 # load x3 with value 0x58d2d670
sw x3, 0(x2) # store 0x58d2d670 in memory
flw f5, 0(x2) # load 0x58d2d670 from memory into f5
fsgnj.s f3, f29, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x17, 0x5c3f69d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77756ac5 # load x3 with value 0x77756ac5
sw x3, 0(x2) # store 0x77756ac5 in memory
flw f30, 0(x2) # load 0x77756ac5 from memory into f30
li x3, 0x0a4f63b9 # load x3 with value 0x0a4f63b9
sw x3, 0(x2) # store 0x0a4f63b9 in memory
flw f12, 0(x2) # load 0x0a4f63b9 from memory into f12
fsgnj.s f17, f30, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x30, 0x2bb0b0d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x881a49fe # load x3 with value 0x881a49fe
sw x3, 0(x2) # store 0x881a49fe in memory
flw f31, 0(x2) # load 0x881a49fe from memory into f31
li x3, 0x77a04520 # load x3 with value 0x77a04520
sw x3, 0(x2) # store 0x77a04520 in memory
flw f14, 0(x2) # load 0x77a04520 from memory into f14
fsgnj.s f30, f31, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x10, 0x07bb6a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f430187 # load x3 with value 0x1f430187
sw x3, 0(x2) # store 0x1f430187 in memory
flw f19, 0(x2) # load 0x1f430187 from memory into f19
li x3, 0x16e984b3 # load x3 with value 0x16e984b3
sw x3, 0(x2) # store 0x16e984b3 in memory
flw f0, 0(x2) # load 0x16e984b3 from memory into f0
fsgnj.s f10, f19, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x20, 0x786733ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42d8e24a # load x3 with value 0x42d8e24a
sw x3, 0(x2) # store 0x42d8e24a in memory
flw f8, 0(x2) # load 0x42d8e24a from memory into f8
li x3, 0x4d71ef77 # load x3 with value 0x4d71ef77
sw x3, 0(x2) # store 0x4d71ef77 in memory
flw f1, 0(x2) # load 0x4d71ef77 from memory into f1
fsgnj.s f20, f8, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x22, 0xf6e6bef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a30ed0a # load x3 with value 0x6a30ed0a
sw x3, 0(x2) # store 0x6a30ed0a in memory
flw f21, 0(x2) # load 0x6a30ed0a from memory into f21
li x3, 0x15ec5151 # load x3 with value 0x15ec5151
sw x3, 0(x2) # store 0x15ec5151 in memory
flw f2, 0(x2) # load 0x15ec5151 from memory into f2
fsgnj.s f22, f21, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x2, 0x89992ee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefa42c83 # load x3 with value 0xefa42c83
sw x3, 0(x2) # store 0xefa42c83 in memory
flw f13, 0(x2) # load 0xefa42c83 from memory into f13
li x3, 0x736aec54 # load x3 with value 0x736aec54
sw x3, 0(x2) # store 0x736aec54 in memory
flw f3, 0(x2) # load 0x736aec54 from memory into f3
fsgnj.s f2, f13, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x7, 0x67c097ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8190035 # load x3 with value 0xe8190035
sw x3, 0(x2) # store 0xe8190035 in memory
flw f12, 0(x2) # load 0xe8190035 from memory into f12
li x3, 0xa01f20db # load x3 with value 0xa01f20db
sw x3, 0(x2) # store 0xa01f20db in memory
flw f4, 0(x2) # load 0xa01f20db from memory into f4
fsgnj.s f7, f12, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x9, 0xf9109e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23b05897 # load x3 with value 0x23b05897
sw x3, 0(x2) # store 0x23b05897 in memory
flw f4, 0(x2) # load 0x23b05897 from memory into f4
li x3, 0x82f70779 # load x3 with value 0x82f70779
sw x3, 0(x2) # store 0x82f70779 in memory
flw f5, 0(x2) # load 0x82f70779 from memory into f5
fsgnj.s f9, f4, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x23, 0x01fb895b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa471a101 # load x3 with value 0xa471a101
sw x3, 0(x2) # store 0xa471a101 in memory
flw f12, 0(x2) # load 0xa471a101 from memory into f12
li x3, 0xfe62a3e1 # load x3 with value 0xfe62a3e1
sw x3, 0(x2) # store 0xfe62a3e1 in memory
flw f6, 0(x2) # load 0xfe62a3e1 from memory into f6
fsgnj.s f23, f12, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x11, 0x2d8db8ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1edd6de # load x3 with value 0xf1edd6de
sw x3, 0(x2) # store 0xf1edd6de in memory
flw f1, 0(x2) # load 0xf1edd6de from memory into f1
li x3, 0x74815ae7 # load x3 with value 0x74815ae7
sw x3, 0(x2) # store 0x74815ae7 in memory
flw f7, 0(x2) # load 0x74815ae7 from memory into f7
fsgnj.s f11, f1, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x22, 0x07cd87c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ef6bd8e # load x3 with value 0x9ef6bd8e
sw x3, 0(x2) # store 0x9ef6bd8e in memory
flw f26, 0(x2) # load 0x9ef6bd8e from memory into f26
li x3, 0x1f8d1c89 # load x3 with value 0x1f8d1c89
sw x3, 0(x2) # store 0x1f8d1c89 in memory
flw f8, 0(x2) # load 0x1f8d1c89 from memory into f8
fsgnj.s f22, f26, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x15, 0x940cba23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58cb4552 # load x3 with value 0x58cb4552
sw x3, 0(x2) # store 0x58cb4552 in memory
flw f6, 0(x2) # load 0x58cb4552 from memory into f6
li x3, 0x28ca4720 # load x3 with value 0x28ca4720
sw x3, 0(x2) # store 0x28ca4720 in memory
flw f9, 0(x2) # load 0x28ca4720 from memory into f9
fsgnj.s f15, f6, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x13, 0x29e05486 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd61e715 # load x3 with value 0xcd61e715
sw x3, 0(x2) # store 0xcd61e715 in memory
flw f25, 0(x2) # load 0xcd61e715 from memory into f25
li x3, 0xc9719151 # load x3 with value 0xc9719151
sw x3, 0(x2) # store 0xc9719151 in memory
flw f10, 0(x2) # load 0xc9719151 from memory into f10
fsgnj.s f13, f25, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x25, 0x901c77b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d26609f # load x3 with value 0x8d26609f
sw x3, 0(x2) # store 0x8d26609f in memory
flw f5, 0(x2) # load 0x8d26609f from memory into f5
li x3, 0x4bc5a715 # load x3 with value 0x4bc5a715
sw x3, 0(x2) # store 0x4bc5a715 in memory
flw f11, 0(x2) # load 0x4bc5a715 from memory into f11
fsgnj.s f25, f5, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x3, 0x514a5dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90f3bd49 # load x3 with value 0x90f3bd49
sw x3, 0(x2) # store 0x90f3bd49 in memory
flw f30, 0(x2) # load 0x90f3bd49 from memory into f30
li x3, 0xc5dcefde # load x3 with value 0xc5dcefde
sw x3, 0(x2) # store 0xc5dcefde in memory
flw f12, 0(x2) # load 0xc5dcefde from memory into f12
fsgnj.s f3, f30, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x10, 0xc5c2af12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5ed05fc # load x3 with value 0xe5ed05fc
sw x3, 0(x2) # store 0xe5ed05fc in memory
flw f21, 0(x2) # load 0xe5ed05fc from memory into f21
li x3, 0xe4d0530f # load x3 with value 0xe4d0530f
sw x3, 0(x2) # store 0xe4d0530f in memory
flw f13, 0(x2) # load 0xe4d0530f from memory into f13
fsgnj.s f10, f21, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x26, 0x5435a069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8cb1207d # load x3 with value 0x8cb1207d
sw x3, 0(x2) # store 0x8cb1207d in memory
flw f25, 0(x2) # load 0x8cb1207d from memory into f25
li x3, 0x5ff93ebc # load x3 with value 0x5ff93ebc
sw x3, 0(x2) # store 0x5ff93ebc in memory
flw f14, 0(x2) # load 0x5ff93ebc from memory into f14
fsgnj.s f26, f25, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x29, 0x299ab25f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfea099f9 # load x3 with value 0xfea099f9
sw x3, 0(x2) # store 0xfea099f9 in memory
flw f13, 0(x2) # load 0xfea099f9 from memory into f13
li x3, 0xc4374c71 # load x3 with value 0xc4374c71
sw x3, 0(x2) # store 0xc4374c71 in memory
flw f15, 0(x2) # load 0xc4374c71 from memory into f15
fsgnj.s f29, f13, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x2, 0x993f4d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14daf523 # load x3 with value 0x14daf523
sw x3, 0(x2) # store 0x14daf523 in memory
flw f30, 0(x2) # load 0x14daf523 from memory into f30
li x3, 0xaee9413f # load x3 with value 0xaee9413f
sw x3, 0(x2) # store 0xaee9413f in memory
flw f16, 0(x2) # load 0xaee9413f from memory into f16
fsgnj.s f2, f30, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x6, 0x12b0d6eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7f651c0 # load x3 with value 0xe7f651c0
sw x3, 0(x2) # store 0xe7f651c0 in memory
flw f31, 0(x2) # load 0xe7f651c0 from memory into f31
li x3, 0xdf031d53 # load x3 with value 0xdf031d53
sw x3, 0(x2) # store 0xdf031d53 in memory
flw f17, 0(x2) # load 0xdf031d53 from memory into f17
fsgnj.s f6, f31, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x13, 0xf50016bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff6cdfad # load x3 with value 0xff6cdfad
sw x3, 0(x2) # store 0xff6cdfad in memory
flw f20, 0(x2) # load 0xff6cdfad from memory into f20
li x3, 0xffa50db9 # load x3 with value 0xffa50db9
sw x3, 0(x2) # store 0xffa50db9 in memory
flw f18, 0(x2) # load 0xffa50db9 from memory into f18
fsgnj.s f13, f20, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x20, 0x4f6dcb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x340db56f # load x3 with value 0x340db56f
sw x3, 0(x2) # store 0x340db56f in memory
flw f14, 0(x2) # load 0x340db56f from memory into f14
li x3, 0xc8a2e293 # load x3 with value 0xc8a2e293
sw x3, 0(x2) # store 0xc8a2e293 in memory
flw f19, 0(x2) # load 0xc8a2e293 from memory into f19
fsgnj.s f20, f14, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x28, 0xb7a7ebef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86afe4d4 # load x3 with value 0x86afe4d4
sw x3, 0(x2) # store 0x86afe4d4 in memory
flw f22, 0(x2) # load 0x86afe4d4 from memory into f22
li x3, 0x73f3aaaa # load x3 with value 0x73f3aaaa
sw x3, 0(x2) # store 0x73f3aaaa in memory
flw f20, 0(x2) # load 0x73f3aaaa from memory into f20
fsgnj.s f28, f22, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x7, 0x12081040 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15e9c03a # load x3 with value 0x15e9c03a
sw x3, 0(x2) # store 0x15e9c03a in memory
flw f23, 0(x2) # load 0x15e9c03a from memory into f23
li x3, 0x95c685fa # load x3 with value 0x95c685fa
sw x3, 0(x2) # store 0x95c685fa in memory
flw f21, 0(x2) # load 0x95c685fa from memory into f21
fsgnj.s f7, f23, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x15, 0x9250b291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17e9a2ed # load x3 with value 0x17e9a2ed
sw x3, 0(x2) # store 0x17e9a2ed in memory
flw f3, 0(x2) # load 0x17e9a2ed from memory into f3
li x3, 0x54462875 # load x3 with value 0x54462875
sw x3, 0(x2) # store 0x54462875 in memory
flw f22, 0(x2) # load 0x54462875 from memory into f22
fsgnj.s f15, f3, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x17, 0x23c7df42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc2047e4 # load x3 with value 0xdc2047e4
sw x3, 0(x2) # store 0xdc2047e4 in memory
flw f15, 0(x2) # load 0xdc2047e4 from memory into f15
li x3, 0x5b961777 # load x3 with value 0x5b961777
sw x3, 0(x2) # store 0x5b961777 in memory
flw f23, 0(x2) # load 0x5b961777 from memory into f23
fsgnj.s f17, f15, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x27, 0xbde51c76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32d84614 # load x3 with value 0x32d84614
sw x3, 0(x2) # store 0x32d84614 in memory
flw f10, 0(x2) # load 0x32d84614 from memory into f10
li x3, 0x73d2a264 # load x3 with value 0x73d2a264
sw x3, 0(x2) # store 0x73d2a264 in memory
flw f24, 0(x2) # load 0x73d2a264 from memory into f24
fsgnj.s f27, f10, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x3, 0x1db06ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa193a1ed # load x3 with value 0xa193a1ed
sw x3, 0(x2) # store 0xa193a1ed in memory
flw f12, 0(x2) # load 0xa193a1ed from memory into f12
li x3, 0x8b035568 # load x3 with value 0x8b035568
sw x3, 0(x2) # store 0x8b035568 in memory
flw f25, 0(x2) # load 0x8b035568 from memory into f25
fsgnj.s f3, f12, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x28, 0x3709a8b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x503e20b3 # load x3 with value 0x503e20b3
sw x3, 0(x2) # store 0x503e20b3 in memory
flw f9, 0(x2) # load 0x503e20b3 from memory into f9
li x3, 0xddc54c47 # load x3 with value 0xddc54c47
sw x3, 0(x2) # store 0xddc54c47 in memory
flw f26, 0(x2) # load 0xddc54c47 from memory into f26
fsgnj.s f28, f9, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x31, 0xeca8be55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4aa4bfa # load x3 with value 0xf4aa4bfa
sw x3, 0(x2) # store 0xf4aa4bfa in memory
flw f19, 0(x2) # load 0xf4aa4bfa from memory into f19
li x3, 0x19965452 # load x3 with value 0x19965452
sw x3, 0(x2) # store 0x19965452 in memory
flw f27, 0(x2) # load 0x19965452 from memory into f27
fsgnj.s f31, f19, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x25, 0x7819a787 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e8eaafb # load x3 with value 0x3e8eaafb
sw x3, 0(x2) # store 0x3e8eaafb in memory
flw f11, 0(x2) # load 0x3e8eaafb from memory into f11
li x3, 0xf9204d5b # load x3 with value 0xf9204d5b
sw x3, 0(x2) # store 0xf9204d5b in memory
flw f28, 0(x2) # load 0xf9204d5b from memory into f28
fsgnj.s f25, f11, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x13, 0x1724196a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdeef769a # load x3 with value 0xdeef769a
sw x3, 0(x2) # store 0xdeef769a in memory
flw f9, 0(x2) # load 0xdeef769a from memory into f9
li x3, 0x91648858 # load x3 with value 0x91648858
sw x3, 0(x2) # store 0x91648858 in memory
flw f29, 0(x2) # load 0x91648858 from memory into f29
fsgnj.s f13, f9, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x23, 0x8f98a402 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4fd616b5 # load x3 with value 0x4fd616b5
sw x3, 0(x2) # store 0x4fd616b5 in memory
flw f19, 0(x2) # load 0x4fd616b5 from memory into f19
li x3, 0xd65dfc02 # load x3 with value 0xd65dfc02
sw x3, 0(x2) # store 0xd65dfc02 in memory
flw f30, 0(x2) # load 0xd65dfc02 from memory into f30
fsgnj.s f23, f19, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x13, 0xa30ea963 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7523afe4 # load x3 with value 0x7523afe4
sw x3, 0(x2) # store 0x7523afe4 in memory
flw f16, 0(x2) # load 0x7523afe4 from memory into f16
li x3, 0x424e720c # load x3 with value 0x424e720c
sw x3, 0(x2) # store 0x424e720c in memory
flw f31, 0(x2) # load 0x424e720c from memory into f31
fsgnj.s f13, f16, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
