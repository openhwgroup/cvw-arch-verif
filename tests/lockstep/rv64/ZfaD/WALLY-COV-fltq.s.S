///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaD/WALLY-COV-fltq.s.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f12, 0(x2) # load 0xffffefff00000000 from memory into f12
la x2, scratch
li x3, 0xacf8f683b10d58ee # load x3 with value 0xacf8f683b10d58ee
sd x3, 0(x2) # store 0xacf8f683b10d58ee in memory
fld f26, 0(x2) # load 0xacf8f683b10d58ee from memory into f26
fltq.s x6, f12, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f3, 0(x2) # load 0xaaaaaaaa80000000 from memory into f3
la x2, scratch
li x3, 0xc697509bfa9e6dbc # load x3 with value 0xc697509bfa9e6dbc
sd x3, 0(x2) # store 0xc697509bfa9e6dbc in memory
fld f19, 0(x2) # load 0xc697509bfa9e6dbc from memory into f19
fltq.s x15, f3, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f28, 0(x2) # load 0x000000003f800000 from memory into f28
la x2, scratch
li x3, 0xe616eda4653859cb # load x3 with value 0xe616eda4653859cb
sd x3, 0(x2) # store 0xe616eda4653859cb in memory
fld f5, 0(x2) # load 0xe616eda4653859cb from memory into f5
fltq.s x25, f28, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 16)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f2, 0(x2) # load 0xdeadbeefbf800000 from memory into f2
la x2, scratch
li x3, 0x7b2e0bea4447ee54 # load x3 with value 0x7b2e0bea4447ee54
sd x3, 0(x2) # store 0x7b2e0bea4447ee54 in memory
fld f8, 0(x2) # load 0x7b2e0bea4447ee54 from memory into f8
fltq.s x1, f2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 24)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f27, 0(x2) # load 0xa1b2c3d400800000 from memory into f27
la x2, scratch
li x3, 0x27c059c34bd7d7e1 # load x3 with value 0x27c059c34bd7d7e1
sd x3, 0(x2) # store 0x27c059c34bd7d7e1 in memory
fld f26, 0(x2) # load 0x27c059c34bd7d7e1 from memory into f26
fltq.s x15, f27, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f2, 0(x2) # load 0xffffffef80800000 from memory into f2
la x2, scratch
li x3, 0x8b38d851fe7d8612 # load x3 with value 0x8b38d851fe7d8612
sd x3, 0(x2) # store 0x8b38d851fe7d8612 in memory
fld f21, 0(x2) # load 0x8b38d851fe7d8612 from memory into f21
fltq.s x14, f2, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f5, 0(x2) # load 0xfeffffef7f7fffff from memory into f5
la x2, scratch
li x3, 0xaca19d17b078b141 # load x3 with value 0xaca19d17b078b141
sd x3, 0(x2) # store 0xaca19d17b078b141 in memory
fld f23, 0(x2) # load 0xaca19d17b078b141 from memory into f23
fltq.s x29, f5, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f19, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f19
la x2, scratch
li x3, 0x244f02bc581b44f5 # load x3 with value 0x244f02bc581b44f5
sd x3, 0(x2) # store 0x244f02bc581b44f5 in memory
fld f23, 0(x2) # load 0x244f02bc581b44f5 from memory into f23
fltq.s x6, f19, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f12, 0(x2) # load 0x7fffffff7f800000 from memory into f12
la x2, scratch
li x3, 0x853d043d2bcc9560 # load x3 with value 0x853d043d2bcc9560
sd x3, 0(x2) # store 0x853d043d2bcc9560 in memory
fld f29, 0(x2) # load 0x853d043d2bcc9560 from memory into f29
fltq.s x10, f12, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f28, 0(x2) # load 0xfffffffeff800000 from memory into f28
la x2, scratch
li x3, 0x4e2cc065704fd04b # load x3 with value 0x4e2cc065704fd04b
sd x3, 0(x2) # store 0x4e2cc065704fd04b in memory
fld f19, 0(x2) # load 0x4e2cc065704fd04b from memory into f19
fltq.s x13, f28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f15, 0(x2) # load 0xfeedbee57fc00000 from memory into f15
la x2, scratch
li x3, 0x5d6b26c4cfe2260e # load x3 with value 0x5d6b26c4cfe2260e
sd x3, 0(x2) # store 0x5d6b26c4cfe2260e in memory
fld f25, 0(x2) # load 0x5d6b26c4cfe2260e from memory into f25
fltq.s x29, f15, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f12, 0(x2) # load 0xffc0deff7fffffff from memory into f12
la x2, scratch
li x3, 0x6a22a99d1b08ec6d # load x3 with value 0x6a22a99d1b08ec6d
sd x3, 0(x2) # store 0x6a22a99d1b08ec6d in memory
fld f5, 0(x2) # load 0x6a22a99d1b08ec6d from memory into f5
fltq.s x3, f12, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f24, 0(x2) # load 0xfeffffff7f800001 from memory into f24
la x2, scratch
li x3, 0xb794cfb3d286a0c7 # load x3 with value 0xb794cfb3d286a0c7
sd x3, 0(x2) # store 0xb794cfb3d286a0c7 in memory
fld f6, 0(x2) # load 0xb794cfb3d286a0c7 from memory into f6
fltq.s x5, f24, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f29, 0(x2) # load 0xfffffeff7fbfffff from memory into f29
la x2, scratch
li x3, 0x3f18e1f85e4aa17c # load x3 with value 0x3f18e1f85e4aa17c
sd x3, 0(x2) # store 0x3f18e1f85e4aa17c in memory
fld f9, 0(x2) # load 0x3f18e1f85e4aa17c from memory into f9
fltq.s x14, f29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x64dacbb51bb9d7ca # load x3 with value 0x64dacbb51bb9d7ca
sd x3, 0(x2) # store 0x64dacbb51bb9d7ca in memory
fld f28, 0(x2) # load 0x64dacbb51bb9d7ca from memory into f28
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
fltq.s x18, f28, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xd6b9e5fe7a08dea3 # load x3 with value 0xd6b9e5fe7a08dea3
sd x3, 0(x2) # store 0xd6b9e5fe7a08dea3 in memory
fld f16, 0(x2) # load 0xd6b9e5fe7a08dea3 from memory into f16
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f28, 0(x2) # load 0xaaaaaaaa80000000 from memory into f28
fltq.s x12, f16, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x443cfa5b2a5d2748 # load x3 with value 0x443cfa5b2a5d2748
sd x3, 0(x2) # store 0x443cfa5b2a5d2748 in memory
fld f29, 0(x2) # load 0x443cfa5b2a5d2748 from memory into f29
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f25, 0(x2) # load 0x000000003f800000 from memory into f25
fltq.s x9, f29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xddbac4fb710ad1ed # load x3 with value 0xddbac4fb710ad1ed
sd x3, 0(x2) # store 0xddbac4fb710ad1ed in memory
fld f12, 0(x2) # load 0xddbac4fb710ad1ed from memory into f12
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f21, 0(x2) # load 0xdeadbeefbf800000 from memory into f21
fltq.s x6, f12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xb7640c78d32e87fd # load x3 with value 0xb7640c78d32e87fd
sd x3, 0(x2) # store 0xb7640c78d32e87fd in memory
fld f7, 0(x2) # load 0xb7640c78d32e87fd from memory into f7
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f17, 0(x2) # load 0xa1b2c3d400800000 from memory into f17
fltq.s x20, f7, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x106a1ce20cca1dcb # load x3 with value 0x106a1ce20cca1dcb
sd x3, 0(x2) # store 0x106a1ce20cca1dcb in memory
fld f21, 0(x2) # load 0x106a1ce20cca1dcb from memory into f21
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f29, 0(x2) # load 0xffffffef80800000 from memory into f29
fltq.s x5, f21, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xdd6e19a3a11372b3 # load x3 with value 0xdd6e19a3a11372b3
sd x3, 0(x2) # store 0xdd6e19a3a11372b3 in memory
fld f19, 0(x2) # load 0xdd6e19a3a11372b3 from memory into f19
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f3, 0(x2) # load 0xfeffffef7f7fffff from memory into f3
fltq.s x1, f19, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xada80d20cf111c76 # load x3 with value 0xada80d20cf111c76
sd x3, 0(x2) # store 0xada80d20cf111c76 in memory
fld f9, 0(x2) # load 0xada80d20cf111c76 from memory into f9
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f3, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f3
fltq.s x16, f9, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x7793aa498065088f # load x3 with value 0x7793aa498065088f
sd x3, 0(x2) # store 0x7793aa498065088f in memory
fld f15, 0(x2) # load 0x7793aa498065088f from memory into f15
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f29, 0(x2) # load 0x7fffffff7f800000 from memory into f29
fltq.s x5, f15, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xf37c99c96aa068ca # load x3 with value 0xf37c99c96aa068ca
sd x3, 0(x2) # store 0xf37c99c96aa068ca in memory
fld f6, 0(x2) # load 0xf37c99c96aa068ca from memory into f6
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f7, 0(x2) # load 0xfffffffeff800000 from memory into f7
fltq.s x23, f6, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x5b0a7d067dfde2d8 # load x3 with value 0x5b0a7d067dfde2d8
sd x3, 0(x2) # store 0x5b0a7d067dfde2d8 in memory
fld f1, 0(x2) # load 0x5b0a7d067dfde2d8 from memory into f1
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f9, 0(x2) # load 0xfeedbee57fc00000 from memory into f9
fltq.s x23, f1, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x10a1517515db6847 # load x3 with value 0x10a1517515db6847
sd x3, 0(x2) # store 0x10a1517515db6847 in memory
fld f23, 0(x2) # load 0x10a1517515db6847 from memory into f23
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f6, 0(x2) # load 0xffc0deff7fffffff from memory into f6
fltq.s x20, f23, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xee9b5f0e1784723a # load x3 with value 0xee9b5f0e1784723a
sd x3, 0(x2) # store 0xee9b5f0e1784723a in memory
fld f27, 0(x2) # load 0xee9b5f0e1784723a from memory into f27
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f13, 0(x2) # load 0xfeffffff7f800001 from memory into f13
fltq.s x3, f27, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x8f258088a992bc98 # load x3 with value 0x8f258088a992bc98
sd x3, 0(x2) # store 0x8f258088a992bc98 in memory
fld f21, 0(x2) # load 0x8f258088a992bc98 from memory into f21
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f29, 0(x2) # load 0xfffffeff7fbfffff from memory into f29
fltq.s x25, f21, f29 # perform operation
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
