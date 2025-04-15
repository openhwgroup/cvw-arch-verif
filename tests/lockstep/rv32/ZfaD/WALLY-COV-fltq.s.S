///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaD/WALLY-COV-fltq.s.S
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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xffffefff00000000 from memory into f12
la x2, scratch
li x3, 0xacf8f683 # load x3 with 32 MSBs 0x00000000acf8f683
sw x3, 0(x2) # store x3 (0xacf8f683) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000acf8f683
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000acf8f683 from memory into f26
fltq.s x6, f12, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xaaaaaaaa80000000 from memory into f7
la x2, scratch
li x3, 0xc42e95d5 # load x3 with 32 MSBs 0x00000000c42e95d5
sw x3, 0(x2) # store x3 (0xc42e95d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c42e95d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000c42e95d5 from memory into f3
fltq.s x12, f7, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 4)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000003f800000 from memory into f20
la x2, scratch
li x3, 0xc359dc66 # load x3 with 32 MSBs 0x00000000c359dc66
sw x3, 0(x2) # store x3 (0xc359dc66) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c359dc66
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000c359dc66 from memory into f31
fltq.s x28, f20, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xdeadbeefbf800000 from memory into f19
la x2, scratch
li x3, 0xafbc0641 # load x3 with 32 MSBs 0x00000000afbc0641
sw x3, 0(x2) # store x3 (0xafbc0641) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000afbc0641
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000afbc0641 from memory into f9
fltq.s x12, f19, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 12)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa1b2c3d400800000 from memory into f8
la x2, scratch
li x3, 0xedbe4525 # load x3 with 32 MSBs 0x00000000edbe4525
sw x3, 0(x2) # store x3 (0xedbe4525) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000edbe4525
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000edbe4525 from memory into f15
fltq.s x10, f8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffef80800000 from memory into f27
la x2, scratch
li x3, 0x27c059c3 # load x3 with 32 MSBs 0x0000000027c059c3
sw x3, 0(x2) # store x3 (0x27c059c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027c059c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000027c059c3 from memory into f26
fltq.s x10, f27, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 20)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfeffffef7f7fffff from memory into f16
la x2, scratch
li x3, 0x8b38d851 # load x3 with 32 MSBs 0x000000008b38d851
sw x3, 0(x2) # store x3 (0x8b38d851) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008b38d851
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000008b38d851 from memory into f2
fltq.s x3, f16, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f3
la x2, scratch
li x3, 0xa73624c9 # load x3 with 32 MSBs 0x00000000a73624c9
sw x3, 0(x2) # store x3 (0xa73624c9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a73624c9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000a73624c9 from memory into f1
fltq.s x5, f3, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 28)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7fffffff7f800000 from memory into f15
la x2, scratch
li x3, 0x9cfe2cd0 # load x3 with 32 MSBs 0x000000009cfe2cd0
sw x3, 0(x2) # store x3 (0x9cfe2cd0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009cfe2cd0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000009cfe2cd0 from memory into f19
fltq.s x17, f15, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 32)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfffffffeff800000 from memory into f15
la x2, scratch
li x3, 0x38e5f617 # load x3 with 32 MSBs 0x0000000038e5f617
sw x3, 0(x2) # store x3 (0x38e5f617) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000038e5f617
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000038e5f617 from memory into f12
fltq.s x25, f15, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfeedbee57fc00000 from memory into f7
la x2, scratch
li x3, 0x239473e4 # load x3 with 32 MSBs 0x00000000239473e4
sw x3, 0(x2) # store x3 (0x239473e4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000239473e4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000239473e4 from memory into f20
fltq.s x28, f7, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffc0deff7fffffff from memory into f11
la x2, scratch
li x3, 0x9e92ff48 # load x3 with 32 MSBs 0x000000009e92ff48
sw x3, 0(x2) # store x3 (0x9e92ff48) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009e92ff48
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000009e92ff48 from memory into f19
fltq.s x15, f11, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfeffffff7f800001 from memory into f9
la x2, scratch
li x3, 0xf1fdf26e # load x3 with 32 MSBs 0x00000000f1fdf26e
sw x3, 0(x2) # store x3 (0xf1fdf26e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f1fdf26e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000f1fdf26e from memory into f29
fltq.s x11, f9, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffeff7fbfffff from memory into f8
la x2, scratch
li x3, 0x6a22a99d # load x3 with 32 MSBs 0x000000006a22a99d
sw x3, 0(x2) # store x3 (0x6a22a99d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006a22a99d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000006a22a99d from memory into f9
fltq.s x7, f8, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xdd4f335c # load x3 with 32 MSBs 0x00000000dd4f335c
sw x3, 0(x2) # store x3 (0xdd4f335c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dd4f335c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000dd4f335c from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
fltq.s x5, f28, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x9bce4c34 # load x3 with 32 MSBs 0x000000009bce4c34
sw x3, 0(x2) # store x3 (0x9bce4c34) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009bce4c34
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000009bce4c34 from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xaaaaaaaa80000000 from memory into f19
fltq.s x25, f23, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xf5003814 # load x3 with 32 MSBs 0x00000000f5003814
sw x3, 0(x2) # store x3 (0xf5003814) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f5003814
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000f5003814 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000003f800000 from memory into f22
fltq.s x12, f17, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x0e8e0f04 # load x3 with 32 MSBs 0x000000000e8e0f04
sw x3, 0(x2) # store x3 (0x0e8e0f04) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000e8e0f04
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000000e8e0f04 from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xdeadbeefbf800000 from memory into f21
fltq.s x27, f1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x45a515ff # load x3 with 32 MSBs 0x0000000045a515ff
sw x3, 0(x2) # store x3 (0x45a515ff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000045a515ff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000045a515ff from memory into f8
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xa1b2c3d400800000 from memory into f29
fltq.s x3, f8, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x7f8818f5 # load x3 with 32 MSBs 0x000000007f8818f5
sw x3, 0(x2) # store x3 (0x7f8818f5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007f8818f5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000007f8818f5 from memory into f11
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffffffef80800000 from memory into f13
fltq.s x6, f11, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x707d3221 # load x3 with 32 MSBs 0x00000000707d3221
sw x3, 0(x2) # store x3 (0x707d3221) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000707d3221
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000707d3221 from memory into f7
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeffffef7f7fffff from memory into f26
fltq.s x17, f7, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x5a68ade9 # load x3 with 32 MSBs 0x000000005a68ade9
sw x3, 0(x2) # store x3 (0x5a68ade9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005a68ade9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000005a68ade9 from memory into f25
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f23
fltq.s x1, f25, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x52f22661 # load x3 with 32 MSBs 0x0000000052f22661
sw x3, 0(x2) # store x3 (0x52f22661) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000052f22661
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000052f22661 from memory into f9
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fffffff7f800000 from memory into f2
fltq.s x21, f9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x0fa9cb8b # load x3 with 32 MSBs 0x000000000fa9cb8b
sw x3, 0(x2) # store x3 (0x0fa9cb8b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000fa9cb8b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000000fa9cb8b from memory into f21
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffffffeff800000 from memory into f12
fltq.s x19, f21, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xa293fa41 # load x3 with 32 MSBs 0x00000000a293fa41
sw x3, 0(x2) # store x3 (0xa293fa41) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a293fa41
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000a293fa41 from memory into f13
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfeedbee57fc00000 from memory into f27
fltq.s x7, f13, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xa05eb95f # load x3 with 32 MSBs 0x00000000a05eb95f
sw x3, 0(x2) # store x3 (0xa05eb95f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a05eb95f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000a05eb95f from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffc0deff7fffffff from memory into f22
fltq.s x3, f14, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x8065088f # load x3 with 32 MSBs 0x000000008065088f
sw x3, 0(x2) # store x3 (0x8065088f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008065088f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000008065088f from memory into f29
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfeffffff7f800001 from memory into f13
fltq.s x5, f29, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xc6f24eb0 # load x3 with 32 MSBs 0x00000000c6f24eb0
sw x3, 0(x2) # store x3 (0xc6f24eb0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c6f24eb0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000c6f24eb0 from memory into f21
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfffffeff7fbfffff from memory into f15
fltq.s x7, f21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 108)

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
