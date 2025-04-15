///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fle.s.S
// David_Harris@hmc.edu

 # testgen_header.S
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f19, 0(x2) # load 0xffffefff00000000 from memory into f19
la x2, scratch
li x3, 0x0dd8b68f10170053 # load x3 with value 0x0dd8b68f10170053
sd x3, 0(x2) # store 0x0dd8b68f10170053 in memory
fld f28, 0(x2) # load 0x0dd8b68f10170053 from memory into f28
fle.s x1, f19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f10, 0(x2) # load 0xaaaaaaaa80000000 from memory into f10
la x2, scratch
li x3, 0x12576d31b109c1a6 # load x3 with value 0x12576d31b109c1a6
sd x3, 0(x2) # store 0x12576d31b109c1a6 in memory
fld f8, 0(x2) # load 0x12576d31b109c1a6 from memory into f8
fle.s x19, f10, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f12, 0(x2) # load 0x000000003f800000 from memory into f12
la x2, scratch
li x3, 0x10408acd8c91516f # load x3 with value 0x10408acd8c91516f
sd x3, 0(x2) # store 0x10408acd8c91516f in memory
fld f21, 0(x2) # load 0x10408acd8c91516f from memory into f21
fle.s x14, f12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f13, 0(x2) # load 0xdeadbeefbf800000 from memory into f13
la x2, scratch
li x3, 0xf0e57fa713df1024 # load x3 with value 0xf0e57fa713df1024
sd x3, 0(x2) # store 0xf0e57fa713df1024 in memory
fld f9, 0(x2) # load 0xf0e57fa713df1024 from memory into f9
fle.s x28, f13, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f2, 0(x2) # load 0xa1b2c3d400800000 from memory into f2
la x2, scratch
li x3, 0x821b2e6fb5cebd12 # load x3 with value 0x821b2e6fb5cebd12
sd x3, 0(x2) # store 0x821b2e6fb5cebd12 in memory
fld f23, 0(x2) # load 0x821b2e6fb5cebd12 from memory into f23
fle.s x14, f2, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f16, 0(x2) # load 0xffffffef80800000 from memory into f16
la x2, scratch
li x3, 0x1a5a6e611771b2ca # load x3 with value 0x1a5a6e611771b2ca
sd x3, 0(x2) # store 0x1a5a6e611771b2ca in memory
fld f6, 0(x2) # load 0x1a5a6e611771b2ca from memory into f6
fle.s x11, f16, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f16, 0(x2) # load 0xfeffffef7f7fffff from memory into f16
la x2, scratch
li x3, 0x88f996f6ddab6927 # load x3 with value 0x88f996f6ddab6927
sd x3, 0(x2) # store 0x88f996f6ddab6927 in memory
fld f26, 0(x2) # load 0x88f996f6ddab6927 from memory into f26
fle.s x18, f16, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f10, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f10
la x2, scratch
li x3, 0x179e8fc8250664db # load x3 with value 0x179e8fc8250664db
sd x3, 0(x2) # store 0x179e8fc8250664db in memory
fld f6, 0(x2) # load 0x179e8fc8250664db from memory into f6
fle.s x24, f10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f19, 0(x2) # load 0x7fffffff7f800000 from memory into f19
la x2, scratch
li x3, 0x9d8d6b9a8cb53142 # load x3 with value 0x9d8d6b9a8cb53142
sd x3, 0(x2) # store 0x9d8d6b9a8cb53142 in memory
fld f30, 0(x2) # load 0x9d8d6b9a8cb53142 from memory into f30
fle.s x2, f19, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f27, 0(x2) # load 0xfffffffeff800000 from memory into f27
la x2, scratch
li x3, 0xd0f8e3323aa5950a # load x3 with value 0xd0f8e3323aa5950a
sd x3, 0(x2) # store 0xd0f8e3323aa5950a in memory
fld f20, 0(x2) # load 0xd0f8e3323aa5950a from memory into f20
fle.s x2, f27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f30, 0(x2) # load 0xfeedbee57fc00000 from memory into f30
la x2, scratch
li x3, 0x2d2e2a83803a4c77 # load x3 with value 0x2d2e2a83803a4c77
sd x3, 0(x2) # store 0x2d2e2a83803a4c77 in memory
fld f25, 0(x2) # load 0x2d2e2a83803a4c77 from memory into f25
fle.s x31, f30, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f29, 0(x2) # load 0xffc0deff7fffffff from memory into f29
la x2, scratch
li x3, 0x53f50ff7f6820f92 # load x3 with value 0x53f50ff7f6820f92
sd x3, 0(x2) # store 0x53f50ff7f6820f92 in memory
fld f8, 0(x2) # load 0x53f50ff7f6820f92 from memory into f8
fle.s x20, f29, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f31, 0(x2) # load 0xfeffffff7f800001 from memory into f31
la x2, scratch
li x3, 0x9980aabd63d2962f # load x3 with value 0x9980aabd63d2962f
sd x3, 0(x2) # store 0x9980aabd63d2962f in memory
fld f5, 0(x2) # load 0x9980aabd63d2962f from memory into f5
fle.s x17, f31, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f28, 0(x2) # load 0xfffffeff7fbfffff from memory into f28
la x2, scratch
li x3, 0x373c86ec1b0ca57b # load x3 with value 0x373c86ec1b0ca57b
sd x3, 0(x2) # store 0x373c86ec1b0ca57b in memory
fld f6, 0(x2) # load 0x373c86ec1b0ca57b from memory into f6
fle.s x29, f28, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xb05325b8e677e088 # load x3 with value 0xb05325b8e677e088
sd x3, 0(x2) # store 0xb05325b8e677e088 in memory
fld f9, 0(x2) # load 0xb05325b8e677e088 from memory into f9
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
fle.s x22, f9, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xcca7a1992b7c3cf0 # load x3 with value 0xcca7a1992b7c3cf0
sd x3, 0(x2) # store 0xcca7a1992b7c3cf0 in memory
fld f11, 0(x2) # load 0xcca7a1992b7c3cf0 from memory into f11
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f9, 0(x2) # load 0xaaaaaaaa80000000 from memory into f9
fle.s x24, f11, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x284f69ed85f8d7d0 # load x3 with value 0x284f69ed85f8d7d0
sd x3, 0(x2) # store 0x284f69ed85f8d7d0 in memory
fld f30, 0(x2) # load 0x284f69ed85f8d7d0 from memory into f30
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f1, 0(x2) # load 0x000000003f800000 from memory into f1
fle.s x31, f30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x5eeb3e95d9f17459 # load x3 with value 0x5eeb3e95d9f17459
sd x3, 0(x2) # store 0x5eeb3e95d9f17459 in memory
fld f10, 0(x2) # load 0x5eeb3e95d9f17459 from memory into f10
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f28, 0(x2) # load 0xdeadbeefbf800000 from memory into f28
fle.s x17, f10, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x36f6d64b6530c6f9 # load x3 with value 0x36f6d64b6530c6f9
sd x3, 0(x2) # store 0x36f6d64b6530c6f9 in memory
fld f1, 0(x2) # load 0x36f6d64b6530c6f9 from memory into f1
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f16, 0(x2) # load 0xa1b2c3d400800000 from memory into f16
fle.s x5, f1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xa333d14180f7c9e7 # load x3 with value 0xa333d14180f7c9e7
sd x3, 0(x2) # store 0xa333d14180f7c9e7 in memory
fld f19, 0(x2) # load 0xa333d14180f7c9e7 from memory into f19
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f17, 0(x2) # load 0xffffffef80800000 from memory into f17
fle.s x28, f19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xec92c4fc01d46b0c # load x3 with value 0xec92c4fc01d46b0c
sd x3, 0(x2) # store 0xec92c4fc01d46b0c in memory
fld f3, 0(x2) # load 0xec92c4fc01d46b0c from memory into f3
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f24, 0(x2) # load 0xfeffffef7f7fffff from memory into f24
fle.s x12, f3, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x531c093c0cd99725 # load x3 with value 0x531c093c0cd99725
sd x3, 0(x2) # store 0x531c093c0cd99725 in memory
fld f22, 0(x2) # load 0x531c093c0cd99725 from memory into f22
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f12, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f12
fle.s x1, f22, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xa99db716addf7444 # load x3 with value 0xa99db716addf7444
sd x3, 0(x2) # store 0xa99db716addf7444 in memory
fld f1, 0(x2) # load 0xa99db716addf7444 from memory into f1
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f21, 0(x2) # load 0x7fffffff7f800000 from memory into f21
fle.s x14, f1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xb3a5e1d70b17336a # load x3 with value 0xb3a5e1d70b17336a
sd x3, 0(x2) # store 0xb3a5e1d70b17336a in memory
fld f21, 0(x2) # load 0xb3a5e1d70b17336a from memory into f21
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f22, 0(x2) # load 0xfffffffeff800000 from memory into f22
fle.s x25, f21, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x49afd49c00e230e2 # load x3 with value 0x49afd49c00e230e2
sd x3, 0(x2) # store 0x49afd49c00e230e2 in memory
fld f14, 0(x2) # load 0x49afd49c00e230e2 from memory into f14
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f3, 0(x2) # load 0xfeedbee57fc00000 from memory into f3
fle.s x15, f14, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xb58418812aa16039 # load x3 with value 0xb58418812aa16039
sd x3, 0(x2) # store 0xb58418812aa16039 in memory
fld f21, 0(x2) # load 0xb58418812aa16039 from memory into f21
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f23, 0(x2) # load 0xffc0deff7fffffff from memory into f23
fle.s x20, f21, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xb75616f4866a710a # load x3 with value 0xb75616f4866a710a
sd x3, 0(x2) # store 0xb75616f4866a710a in memory
fld f25, 0(x2) # load 0xb75616f4866a710a from memory into f25
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f28, 0(x2) # load 0xfeffffff7f800001 from memory into f28
fle.s x27, f25, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x482d513dfc118b01 # load x3 with value 0x482d513dfc118b01
sd x3, 0(x2) # store 0x482d513dfc118b01 in memory
fld f1, 0(x2) # load 0x482d513dfc118b01 from memory into f1
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f30, 0(x2) # load 0xfffffeff7fbfffff from memory into f30
fle.s x25, f1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 216)

.EQU SIGSIZE,224


 # testgen_footer.S


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
