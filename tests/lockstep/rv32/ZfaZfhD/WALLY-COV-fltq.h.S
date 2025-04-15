///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaZfhD/WALLY-COV-fltq.h.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffff00000000 from memory into f5
la x2, scratch
li x3, 0xcc5d6b90 # load x3 with 32 MSBs 0x00000000cc5d6b90
sw x3, 0(x2) # store x3 (0xcc5d6b90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cc5d6b90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000cc5d6b90 from memory into f22
fltq.h x11, f5, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfffffffffffe8000 from memory into f14
la x2, scratch
li x3, 0xe3cea7b3 # load x3 with 32 MSBs 0x00000000e3cea7b3
sw x3, 0(x2) # store x3 (0xe3cea7b3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e3cea7b3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000e3cea7b3 from memory into f25
fltq.h x16, f14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffffffff3c00 from memory into f6
la x2, scratch
li x3, 0x37174331 # load x3 with 32 MSBs 0x0000000037174331
sw x3, 0(x2) # store x3 (0x37174331) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037174331
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000037174331 from memory into f22
fltq.h x1, f6, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfeedbee5beefbc00 from memory into f1
la x2, scratch
li x3, 0x17f01ee5 # load x3 with 32 MSBs 0x0000000017f01ee5
sw x3, 0(x2) # store x3 (0x17f01ee5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000017f01ee5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000017f01ee5 from memory into f29
fltq.h x28, f1, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xffffffefffff0400 from memory into f12
la x2, scratch
li x3, 0x198f18e7 # load x3 with 32 MSBs 0x00000000198f18e7
sw x3, 0(x2) # store x3 (0x198f18e7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000198f18e7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000198f18e7 from memory into f15
fltq.h x24, f12, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000ffff8400 from memory into f18
la x2, scratch
li x3, 0x37bc1d60 # load x3 with 32 MSBs 0x0000000037bc1d60
sw x3, 0(x2) # store x3 (0x37bc1d60) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037bc1d60
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000037bc1d60 from memory into f20
fltq.h x21, f18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xefffffffffff7bff from memory into f9
la x2, scratch
li x3, 0x34b54644 # load x3 with 32 MSBs 0x0000000034b54644
sw x3, 0(x2) # store x3 (0x34b54644) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000034b54644
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000034b54644 from memory into f7
fltq.h x10, f9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xc0dec0dec0defbff from memory into f31
la x2, scratch
li x3, 0x60193b30 # load x3 with 32 MSBs 0x0000000060193b30
sw x3, 0(x2) # store x3 (0x60193b30) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000060193b30
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000060193b30 from memory into f3
fltq.h x22, f31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f17
la x2, scratch
li x3, 0xa284574d # load x3 with 32 MSBs 0x00000000a284574d
sw x3, 0(x2) # store x3 (0xa284574d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a284574d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000a284574d from memory into f20
fltq.h x6, f17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffff0ffffc00 from memory into f5
la x2, scratch
li x3, 0x60b19e1b # load x3 with 32 MSBs 0x0000000060b19e1b
sw x3, 0(x2) # store x3 (0x60b19e1b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000060b19e1b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000060b19e1b from memory into f21
fltq.h x13, f5, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfffeffffffff7e00 from memory into f28
la x2, scratch
li x3, 0xcd709bcc # load x3 with 32 MSBs 0x00000000cd709bcc
sw x3, 0(x2) # store x3 (0xcd709bcc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cd709bcc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000cd709bcc from memory into f15
fltq.h x27, f28, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffefffff7fff from memory into f5
la x2, scratch
li x3, 0xf699e662 # load x3 with 32 MSBs 0x00000000f699e662
sw x3, 0(x2) # store x3 (0xf699e662) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f699e662
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000f699e662 from memory into f16
fltq.h x1, f5, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f8
la x2, scratch
li x3, 0xf82e6b88 # load x3 with 32 MSBs 0x00000000f82e6b88
sw x3, 0(x2) # store x3 (0xf82e6b88) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f82e6b88
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000f82e6b88 from memory into f17
fltq.h x25, f8, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
la x2, scratch
li x3, 0xd059b476 # load x3 with 32 MSBs 0x00000000d059b476
sw x3, 0(x2) # store x3 (0xd059b476) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d059b476
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000d059b476 from memory into f13
fltq.h x5, f26, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x3d35e2d0 # load x3 with 32 MSBs 0x000000003d35e2d0
sw x3, 0(x2) # store x3 (0x3d35e2d0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003d35e2d0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000003d35e2d0 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffff00000000 from memory into f1
fltq.h x6, f2, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xab3871af # load x3 with 32 MSBs 0x00000000ab3871af
sw x3, 0(x2) # store x3 (0xab3871af) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ab3871af
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000ab3871af from memory into f1
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffffffffffe8000 from memory into f7
fltq.h x14, f1, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x1e82e6e3 # load x3 with 32 MSBs 0x000000001e82e6e3
sw x3, 0(x2) # store x3 (0x1e82e6e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001e82e6e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001e82e6e3 from memory into f19
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffffffff3c00 from memory into f6
fltq.h x1, f19, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xaaf4cc92 # load x3 with 32 MSBs 0x00000000aaf4cc92
sw x3, 0(x2) # store x3 (0xaaf4cc92) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aaf4cc92
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000aaf4cc92 from memory into f23
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfeedbee5beefbc00 from memory into f6
fltq.h x26, f23, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x20e76358 # load x3 with 32 MSBs 0x0000000020e76358
sw x3, 0(x2) # store x3 (0x20e76358) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000020e76358
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000020e76358 from memory into f18
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffefffff0400 from memory into f5
fltq.h x1, f18, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x7856885a # load x3 with 32 MSBs 0x000000007856885a
sw x3, 0(x2) # store x3 (0x7856885a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007856885a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000007856885a from memory into f28
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000ffff8400 from memory into f24
fltq.h x9, f28, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x683dcb27 # load x3 with 32 MSBs 0x00000000683dcb27
sw x3, 0(x2) # store x3 (0x683dcb27) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000683dcb27
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000683dcb27 from memory into f31
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xefffffffffff7bff from memory into f29
fltq.h x10, f31, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xfe5a6aad # load x3 with 32 MSBs 0x00000000fe5a6aad
sw x3, 0(x2) # store x3 (0xfe5a6aad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe5a6aad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000fe5a6aad from memory into f12
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xc0dec0dec0defbff from memory into f22
fltq.h x10, f12, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xa70e30fd # load x3 with 32 MSBs 0x00000000a70e30fd
sw x3, 0(x2) # store x3 (0xa70e30fd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a70e30fd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000a70e30fd from memory into f2
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f22
fltq.h x25, f2, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x3ca44f57 # load x3 with 32 MSBs 0x000000003ca44f57
sw x3, 0(x2) # store x3 (0x3ca44f57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ca44f57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000003ca44f57 from memory into f9
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff0ffffc00 from memory into f22
fltq.h x12, f9, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xb57ac4e7 # load x3 with 32 MSBs 0x00000000b57ac4e7
sw x3, 0(x2) # store x3 (0xb57ac4e7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b57ac4e7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000b57ac4e7 from memory into f23
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffeffffffff7e00 from memory into f9
fltq.h x5, f23, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x4790255d # load x3 with 32 MSBs 0x000000004790255d
sw x3, 0(x2) # store x3 (0x4790255d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004790255d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000004790255d from memory into f15
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffefffff7fff from memory into f11
fltq.h x3, f15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x9a42f648 # load x3 with 32 MSBs 0x000000009a42f648
sw x3, 0(x2) # store x3 (0x9a42f648) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009a42f648
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000009a42f648 from memory into f20
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f24
fltq.h x11, f20, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xbfbd7743 # load x3 with 32 MSBs 0x00000000bfbd7743
sw x3, 0(x2) # store x3 (0xbfbd7743) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bfbd7743
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000bfbd7743 from memory into f17
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfffffffcffff7dff from memory into f28
fltq.h x3, f17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 108)

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
