///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-flt.s.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f14, 0(x2) # load 0xffffefff00000000 from memory into f14
la x2, scratch
li x3, 0x6cdf213b4131ea2c # load x3 with value 0x6cdf213b4131ea2c
sd x3, 0(x2) # store 0x6cdf213b4131ea2c in memory
fld f5, 0(x2) # load 0x6cdf213b4131ea2c from memory into f5
flt.s x30, f14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f13, 0(x2) # load 0xaaaaaaaa80000000 from memory into f13
la x2, scratch
li x3, 0x0f8d68a1ac3f374f # load x3 with value 0x0f8d68a1ac3f374f
sd x3, 0(x2) # store 0x0f8d68a1ac3f374f in memory
fld f25, 0(x2) # load 0x0f8d68a1ac3f374f from memory into f25
flt.s x22, f13, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f9, 0(x2) # load 0x000000003f800000 from memory into f9
la x2, scratch
li x3, 0xb4217740c4dfcbf6 # load x3 with value 0xb4217740c4dfcbf6
sd x3, 0(x2) # store 0xb4217740c4dfcbf6 in memory
fld f20, 0(x2) # load 0xb4217740c4dfcbf6 from memory into f20
flt.s x8, f9, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f1, 0(x2) # load 0xdeadbeefbf800000 from memory into f1
la x2, scratch
li x3, 0xe8a27cd0b729737c # load x3 with value 0xe8a27cd0b729737c
sd x3, 0(x2) # store 0xe8a27cd0b729737c in memory
fld f12, 0(x2) # load 0xe8a27cd0b729737c from memory into f12
flt.s x8, f1, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f30, 0(x2) # load 0xa1b2c3d400800000 from memory into f30
la x2, scratch
li x3, 0x95fb76802b4eee65 # load x3 with value 0x95fb76802b4eee65
sd x3, 0(x2) # store 0x95fb76802b4eee65 in memory
fld f14, 0(x2) # load 0x95fb76802b4eee65 from memory into f14
flt.s x18, f30, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f3, 0(x2) # load 0xffffffef80800000 from memory into f3
la x2, scratch
li x3, 0x58fae8321a0d805b # load x3 with value 0x58fae8321a0d805b
sd x3, 0(x2) # store 0x58fae8321a0d805b in memory
fld f21, 0(x2) # load 0x58fae8321a0d805b from memory into f21
flt.s x7, f3, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f3, 0(x2) # load 0xfeffffef7f7fffff from memory into f3
la x2, scratch
li x3, 0x0c1e9aa8ef1a7522 # load x3 with value 0x0c1e9aa8ef1a7522
sd x3, 0(x2) # store 0x0c1e9aa8ef1a7522 in memory
fld f22, 0(x2) # load 0x0c1e9aa8ef1a7522 from memory into f22
flt.s x26, f3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f15, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f15
la x2, scratch
li x3, 0xe83e6dc1a903f60e # load x3 with value 0xe83e6dc1a903f60e
sd x3, 0(x2) # store 0xe83e6dc1a903f60e in memory
fld f6, 0(x2) # load 0xe83e6dc1a903f60e from memory into f6
flt.s x26, f15, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f14, 0(x2) # load 0x7fffffff7f800000 from memory into f14
la x2, scratch
li x3, 0x4546ff8a9dd43cd5 # load x3 with value 0x4546ff8a9dd43cd5
sd x3, 0(x2) # store 0x4546ff8a9dd43cd5 in memory
fld f16, 0(x2) # load 0x4546ff8a9dd43cd5 from memory into f16
flt.s x12, f14, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f13, 0(x2) # load 0xfffffffeff800000 from memory into f13
la x2, scratch
li x3, 0xb22f5959d25f1732 # load x3 with value 0xb22f5959d25f1732
sd x3, 0(x2) # store 0xb22f5959d25f1732 in memory
fld f8, 0(x2) # load 0xb22f5959d25f1732 from memory into f8
flt.s x11, f13, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f13, 0(x2) # load 0xfeedbee57fc00000 from memory into f13
la x2, scratch
li x3, 0x07d0a3f64ba6542b # load x3 with value 0x07d0a3f64ba6542b
sd x3, 0(x2) # store 0x07d0a3f64ba6542b in memory
fld f29, 0(x2) # load 0x07d0a3f64ba6542b from memory into f29
flt.s x9, f13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f21, 0(x2) # load 0xffc0deff7fffffff from memory into f21
la x2, scratch
li x3, 0x64f0fbd3dcdc2fbe # load x3 with value 0x64f0fbd3dcdc2fbe
sd x3, 0(x2) # store 0x64f0fbd3dcdc2fbe in memory
fld f22, 0(x2) # load 0x64f0fbd3dcdc2fbe from memory into f22
flt.s x16, f21, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f14, 0(x2) # load 0xfeffffff7f800001 from memory into f14
la x2, scratch
li x3, 0x0028f171f5f09d60 # load x3 with value 0x0028f171f5f09d60
sd x3, 0(x2) # store 0x0028f171f5f09d60 in memory
fld f30, 0(x2) # load 0x0028f171f5f09d60 from memory into f30
flt.s x11, f14, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f28, 0(x2) # load 0xfffffeff7fbfffff from memory into f28
la x2, scratch
li x3, 0xcd196c4ad9bf4c79 # load x3 with value 0xcd196c4ad9bf4c79
sd x3, 0(x2) # store 0xcd196c4ad9bf4c79 in memory
fld f1, 0(x2) # load 0xcd196c4ad9bf4c79 from memory into f1
flt.s x14, f28, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xb7bd50d62a0a6c46 # load x3 with value 0xb7bd50d62a0a6c46
sd x3, 0(x2) # store 0xb7bd50d62a0a6c46 in memory
fld f29, 0(x2) # load 0xb7bd50d62a0a6c46 from memory into f29
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f17, 0(x2) # load 0xffffefff00000000 from memory into f17
flt.s x3, f29, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x98316491b1d96345 # load x3 with value 0x98316491b1d96345
sd x3, 0(x2) # store 0x98316491b1d96345 in memory
fld f22, 0(x2) # load 0x98316491b1d96345 from memory into f22
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f25, 0(x2) # load 0xaaaaaaaa80000000 from memory into f25
flt.s x14, f22, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x2b13aebd39df5de0 # load x3 with value 0x2b13aebd39df5de0
sd x3, 0(x2) # store 0x2b13aebd39df5de0 in memory
fld f7, 0(x2) # load 0x2b13aebd39df5de0 from memory into f7
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f3, 0(x2) # load 0x000000003f800000 from memory into f3
flt.s x23, f7, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x5eee9614c5b3c5ac # load x3 with value 0x5eee9614c5b3c5ac
sd x3, 0(x2) # store 0x5eee9614c5b3c5ac in memory
fld f17, 0(x2) # load 0x5eee9614c5b3c5ac from memory into f17
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f23, 0(x2) # load 0xdeadbeefbf800000 from memory into f23
flt.s x19, f17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xd17370b1ef2b6193 # load x3 with value 0xd17370b1ef2b6193
sd x3, 0(x2) # store 0xd17370b1ef2b6193 in memory
fld f1, 0(x2) # load 0xd17370b1ef2b6193 from memory into f1
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f27, 0(x2) # load 0xa1b2c3d400800000 from memory into f27
flt.s x30, f1, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xb93546ee75fcb694 # load x3 with value 0xb93546ee75fcb694
sd x3, 0(x2) # store 0xb93546ee75fcb694 in memory
fld f22, 0(x2) # load 0xb93546ee75fcb694 from memory into f22
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f17, 0(x2) # load 0xffffffef80800000 from memory into f17
flt.s x13, f22, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xc375b5c89dbbbf1f # load x3 with value 0xc375b5c89dbbbf1f
sd x3, 0(x2) # store 0xc375b5c89dbbbf1f in memory
fld f23, 0(x2) # load 0xc375b5c89dbbbf1f from memory into f23
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f18, 0(x2) # load 0xfeffffef7f7fffff from memory into f18
flt.s x13, f23, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xd90ef8a87afd77e5 # load x3 with value 0xd90ef8a87afd77e5
sd x3, 0(x2) # store 0xd90ef8a87afd77e5 in memory
fld f5, 0(x2) # load 0xd90ef8a87afd77e5 from memory into f5
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f29, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f29
flt.s x14, f5, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xe0ebc863f70e894c # load x3 with value 0xe0ebc863f70e894c
sd x3, 0(x2) # store 0xe0ebc863f70e894c in memory
fld f21, 0(x2) # load 0xe0ebc863f70e894c from memory into f21
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f26, 0(x2) # load 0x7fffffff7f800000 from memory into f26
flt.s x10, f21, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x928f659b40bf5566 # load x3 with value 0x928f659b40bf5566
sd x3, 0(x2) # store 0x928f659b40bf5566 in memory
fld f20, 0(x2) # load 0x928f659b40bf5566 from memory into f20
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f17, 0(x2) # load 0xfffffffeff800000 from memory into f17
flt.s x5, f20, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x64aaa25d9542bfa3 # load x3 with value 0x64aaa25d9542bfa3
sd x3, 0(x2) # store 0x64aaa25d9542bfa3 in memory
fld f1, 0(x2) # load 0x64aaa25d9542bfa3 from memory into f1
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f5, 0(x2) # load 0xfeedbee57fc00000 from memory into f5
flt.s x17, f1, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x0ca6af9a32bf7f07 # load x3 with value 0x0ca6af9a32bf7f07
sd x3, 0(x2) # store 0x0ca6af9a32bf7f07 in memory
fld f10, 0(x2) # load 0x0ca6af9a32bf7f07 from memory into f10
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f9, 0(x2) # load 0xffc0deff7fffffff from memory into f9
flt.s x29, f10, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xc869e4b13affd589 # load x3 with value 0xc869e4b13affd589
sd x3, 0(x2) # store 0xc869e4b13affd589 in memory
fld f2, 0(x2) # load 0xc869e4b13affd589 from memory into f2
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f29, 0(x2) # load 0xfeffffff7f800001 from memory into f29
flt.s x27, f2, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x9ba2c1d4b1216e7c # load x3 with value 0x9ba2c1d4b1216e7c
sd x3, 0(x2) # store 0x9ba2c1d4b1216e7c in memory
fld f12, 0(x2) # load 0x9ba2c1d4b1216e7c from memory into f12
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f24, 0(x2) # load 0xfffffeff7fbfffff from memory into f24
flt.s x27, f12, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

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
