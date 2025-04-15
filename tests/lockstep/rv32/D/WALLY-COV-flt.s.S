///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-flt.s.S
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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffefff00000000 from memory into f14
la x2, scratch
li x3, 0xc7eb96b3 # load x3 with 32 MSBs 0x00000000c7eb96b3
sw x3, 0(x2) # store x3 (0xc7eb96b3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c7eb96b3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000c7eb96b3 from memory into f5
flt.s x17, f14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xaaaaaaaa80000000 from memory into f23
la x2, scratch
li x3, 0x1e039da6 # load x3 with 32 MSBs 0x000000001e039da6
sw x3, 0(x2) # store x3 (0x1e039da6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001e039da6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000001e039da6 from memory into f17
flt.s x25, f23, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 4)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000003f800000 from memory into f12
la x2, scratch
li x3, 0xdffee9b9 # load x3 with 32 MSBs 0x00000000dffee9b9
sw x3, 0(x2) # store x3 (0xdffee9b9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dffee9b9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000dffee9b9 from memory into f13
flt.s x22, f12, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xdeadbeefbf800000 from memory into f28
la x2, scratch
li x3, 0x9e0b657f # load x3 with 32 MSBs 0x000000009e0b657f
sw x3, 0(x2) # store x3 (0x9e0b657f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009e0b657f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000009e0b657f from memory into f1
flt.s x20, f28, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 12)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa1b2c3d400800000 from memory into f21
la x2, scratch
li x3, 0x5cbc9c19 # load x3 with 32 MSBs 0x000000005cbc9c19
sw x3, 0(x2) # store x3 (0x5cbc9c19) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005cbc9c19
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000005cbc9c19 from memory into f31
flt.s x13, f21, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffef80800000 from memory into f1
la x2, scratch
li x3, 0x97aaa250 # load x3 with 32 MSBs 0x0000000097aaa250
sw x3, 0(x2) # store x3 (0x97aaa250) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000097aaa250
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000097aaa250 from memory into f8
flt.s x20, f1, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 20)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfeffffef7f7fffff from memory into f10
la x2, scratch
li x3, 0x312ddcb8 # load x3 with 32 MSBs 0x00000000312ddcb8
sw x3, 0(x2) # store x3 (0x312ddcb8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000312ddcb8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000312ddcb8 from memory into f15
flt.s x12, f10, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f13
la x2, scratch
li x3, 0x30df1882 # load x3 with 32 MSBs 0x0000000030df1882
sw x3, 0(x2) # store x3 (0x30df1882) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000030df1882
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000030df1882 from memory into f17
flt.s x3, f13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 28)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7fffffff7f800000 from memory into f3
la x2, scratch
li x3, 0xcbaeda93 # load x3 with 32 MSBs 0x00000000cbaeda93
sw x3, 0(x2) # store x3 (0xcbaeda93) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cbaeda93
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000cbaeda93 from memory into f22
flt.s x29, f3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 32)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffffeff800000 from memory into f25
la x2, scratch
li x3, 0x657f4080 # load x3 with 32 MSBs 0x00000000657f4080
sw x3, 0(x2) # store x3 (0x657f4080) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000657f4080
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000657f4080 from memory into f17
flt.s x20, f25, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeedbee57fc00000 from memory into f3
la x2, scratch
li x3, 0xe3a37125 # load x3 with 32 MSBs 0x00000000e3a37125
sw x3, 0(x2) # store x3 (0xe3a37125) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e3a37125
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e3a37125 from memory into f23
flt.s x26, f3, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffc0deff7fffffff from memory into f21
la x2, scratch
li x3, 0x31804c44 # load x3 with 32 MSBs 0x0000000031804c44
sw x3, 0(x2) # store x3 (0x31804c44) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000031804c44
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000031804c44 from memory into f16
flt.s x30, f21, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 44)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfeffffff7f800001 from memory into f29
la x2, scratch
li x3, 0x3d89661b # load x3 with 32 MSBs 0x000000003d89661b
sw x3, 0(x2) # store x3 (0x3d89661b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003d89661b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000003d89661b from memory into f20
flt.s x19, f29, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfffffeff7fbfffff from memory into f24
la x2, scratch
li x3, 0xa392660c # load x3 with 32 MSBs 0x00000000a392660c
sw x3, 0(x2) # store x3 (0xa392660c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a392660c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000a392660c from memory into f2
flt.s x19, f24, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x80783396 # load x3 with 32 MSBs 0x0000000080783396
sw x3, 0(x2) # store x3 (0x80783396) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080783396
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000080783396 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffefff00000000 from memory into f16
flt.s x8, f29, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x2ac72004 # load x3 with 32 MSBs 0x000000002ac72004
sw x3, 0(x2) # store x3 (0x2ac72004) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002ac72004
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000002ac72004 from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xaaaaaaaa80000000 from memory into f29
flt.s x18, f19, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x28b903a4 # load x3 with 32 MSBs 0x0000000028b903a4
sw x3, 0(x2) # store x3 (0x28b903a4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000028b903a4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000028b903a4 from memory into f8
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000003f800000 from memory into f15
flt.s x25, f8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xdfcc55e1 # load x3 with 32 MSBs 0x00000000dfcc55e1
sw x3, 0(x2) # store x3 (0xdfcc55e1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dfcc55e1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000dfcc55e1 from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xdeadbeefbf800000 from memory into f11
flt.s x6, f31, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xab7c7bd0 # load x3 with 32 MSBs 0x00000000ab7c7bd0
sw x3, 0(x2) # store x3 (0xab7c7bd0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ab7c7bd0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000ab7c7bd0 from memory into f17
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xa1b2c3d400800000 from memory into f13
flt.s x14, f17, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x779065d9 # load x3 with 32 MSBs 0x00000000779065d9
sw x3, 0(x2) # store x3 (0x779065d9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000779065d9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000779065d9 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffef80800000 from memory into f29
flt.s x3, f10, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x282d1f76 # load x3 with 32 MSBs 0x00000000282d1f76
sw x3, 0(x2) # store x3 (0x282d1f76) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000282d1f76
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000282d1f76 from memory into f19
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfeffffef7f7fffff from memory into f25
flt.s x16, f19, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xed9f7cdd # load x3 with 32 MSBs 0x00000000ed9f7cdd
sw x3, 0(x2) # store x3 (0xed9f7cdd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ed9f7cdd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000ed9f7cdd from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f30
flt.s x29, f31, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xb5a04a94 # load x3 with 32 MSBs 0x00000000b5a04a94
sw x3, 0(x2) # store x3 (0xb5a04a94) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b5a04a94
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000b5a04a94 from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7fffffff7f800000 from memory into f17
flt.s x23, f31, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x741e356b # load x3 with 32 MSBs 0x00000000741e356b
sw x3, 0(x2) # store x3 (0x741e356b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000741e356b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000741e356b from memory into f3
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfffffffeff800000 from memory into f14
flt.s x24, f3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xf492f2f3 # load x3 with 32 MSBs 0x00000000f492f2f3
sw x3, 0(x2) # store x3 (0xf492f2f3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f492f2f3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000f492f2f3 from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfeedbee57fc00000 from memory into f20
flt.s x14, f29, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x9fe246cd # load x3 with 32 MSBs 0x000000009fe246cd
sw x3, 0(x2) # store x3 (0x9fe246cd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009fe246cd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000009fe246cd from memory into f9
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffc0deff7fffffff from memory into f18
flt.s x6, f9, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xeba377a2 # load x3 with 32 MSBs 0x00000000eba377a2
sw x3, 0(x2) # store x3 (0xeba377a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eba377a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000eba377a2 from memory into f3
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfeffffff7f800001 from memory into f10
flt.s x28, f3, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xaff77a86 # load x3 with 32 MSBs 0x00000000aff77a86
sw x3, 0(x2) # store x3 (0xaff77a86) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aff77a86
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000aff77a86 from memory into f21
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffeff7fbfffff from memory into f20
flt.s x23, f21, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 108)

.EQU SIGSIZE,112


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
