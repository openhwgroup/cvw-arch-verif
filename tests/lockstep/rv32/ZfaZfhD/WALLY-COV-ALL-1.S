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

    

// ******************
// Tests from: WALLY-COV-fli.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
fli.h f20, 8.0 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fltq.h.S
// ******************


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

#.EQU SIGSIZE,112


// ******************
// Tests from: WALLY-COV-fleq.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffff00000000 from memory into f26
la x2, scratch
li x3, 0xf92e4ae0 # load x3 with 32 MSBs 0x00000000f92e4ae0
sw x3, 0(x2) # store x3 (0xf92e4ae0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f92e4ae0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000f92e4ae0 from memory into f10
fleq.h x23, f26, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffffffffe8000 from memory into f18
la x2, scratch
li x3, 0x14e46ccd # load x3 with 32 MSBs 0x0000000014e46ccd
sw x3, 0(x2) # store x3 (0x14e46ccd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000014e46ccd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000014e46ccd from memory into f13
fleq.h x24, f18, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fffffffffff3c00 from memory into f27
la x2, scratch
li x3, 0x30e21776 # load x3 with 32 MSBs 0x0000000030e21776
sw x3, 0(x2) # store x3 (0x30e21776) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000030e21776
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000030e21776 from memory into f5
fleq.h x3, f27, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfeedbee5beefbc00 from memory into f13
la x2, scratch
li x3, 0x0158e93f # load x3 with 32 MSBs 0x000000000158e93f
sw x3, 0(x2) # store x3 (0x0158e93f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000158e93f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000000158e93f from memory into f9
fleq.h x30, f13, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
la x2, scratch
li x3, 0x05d0cf89 # load x3 with 32 MSBs 0x0000000005d0cf89
sw x3, 0(x2) # store x3 (0x05d0cf89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000005d0cf89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000005d0cf89 from memory into f17
fleq.h x30, f26, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ffff8400 from memory into f11
la x2, scratch
li x3, 0x9bbbf39b # load x3 with 32 MSBs 0x000000009bbbf39b
sw x3, 0(x2) # store x3 (0x9bbbf39b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009bbbf39b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000009bbbf39b from memory into f15
fleq.h x3, f11, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xefffffffffff7bff from memory into f15
la x2, scratch
li x3, 0xb9112dc2 # load x3 with 32 MSBs 0x00000000b9112dc2
sw x3, 0(x2) # store x3 (0xb9112dc2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b9112dc2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000b9112dc2 from memory into f21
fleq.h x29, f15, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc0dec0dec0defbff from memory into f8
la x2, scratch
li x3, 0xea057713 # load x3 with 32 MSBs 0x00000000ea057713
sw x3, 0(x2) # store x3 (0xea057713) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea057713
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ea057713 from memory into f11
fleq.h x6, f8, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f1
la x2, scratch
li x3, 0x08821db4 # load x3 with 32 MSBs 0x0000000008821db4
sw x3, 0(x2) # store x3 (0x08821db4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000008821db4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000008821db4 from memory into f21
fleq.h x2, f1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffff0ffffc00 from memory into f31
la x2, scratch
li x3, 0x43e9a810 # load x3 with 32 MSBs 0x0000000043e9a810
sw x3, 0(x2) # store x3 (0x43e9a810) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000043e9a810
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000043e9a810 from memory into f8
fleq.h x24, f31, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffeffffffff7e00 from memory into f18
la x2, scratch
li x3, 0x5fab045f # load x3 with 32 MSBs 0x000000005fab045f
sw x3, 0(x2) # store x3 (0x5fab045f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005fab045f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000005fab045f from memory into f27
fleq.h x29, f18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffefffff7fff from memory into f7
la x2, scratch
li x3, 0xaa254939 # load x3 with 32 MSBs 0x00000000aa254939
sw x3, 0(x2) # store x3 (0xaa254939) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa254939
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000aa254939 from memory into f18
fleq.h x23, f7, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f21
la x2, scratch
li x3, 0xff7c578d # load x3 with 32 MSBs 0x00000000ff7c578d
sw x3, 0(x2) # store x3 (0xff7c578d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ff7c578d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000ff7c578d from memory into f30
fleq.h x22, f21, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffffffcffff7dff from memory into f23
la x2, scratch
li x3, 0x13c0851c # load x3 with 32 MSBs 0x0000000013c0851c
sw x3, 0(x2) # store x3 (0x13c0851c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000013c0851c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000013c0851c from memory into f13
fleq.h x18, f23, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x302bdcb8 # load x3 with 32 MSBs 0x00000000302bdcb8
sw x3, 0(x2) # store x3 (0x302bdcb8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000302bdcb8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000302bdcb8 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
fleq.h x21, f18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x706b42ba # load x3 with 32 MSBs 0x00000000706b42ba
sw x3, 0(x2) # store x3 (0x706b42ba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000706b42ba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000706b42ba from memory into f21
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffffffffe8000 from memory into f25
fleq.h x6, f21, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x46aec1c9 # load x3 with 32 MSBs 0x0000000046aec1c9
sw x3, 0(x2) # store x3 (0x46aec1c9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000046aec1c9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000046aec1c9 from memory into f23
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fffffffffff3c00 from memory into f22
fleq.h x26, f23, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x6b328380 # load x3 with 32 MSBs 0x000000006b328380
sw x3, 0(x2) # store x3 (0x6b328380) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b328380
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000006b328380 from memory into f10
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfeedbee5beefbc00 from memory into f25
fleq.h x22, f10, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xe6c7fe18 # load x3 with 32 MSBs 0x00000000e6c7fe18
sw x3, 0(x2) # store x3 (0xe6c7fe18) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e6c7fe18
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e6c7fe18 from memory into f23
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffefffff0400 from memory into f7
fleq.h x28, f23, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x2717006b # load x3 with 32 MSBs 0x000000002717006b
sw x3, 0(x2) # store x3 (0x2717006b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002717006b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000002717006b from memory into f5
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ffff8400 from memory into f26
fleq.h x24, f5, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x3f06e58a # load x3 with 32 MSBs 0x000000003f06e58a
sw x3, 0(x2) # store x3 (0x3f06e58a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f06e58a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000003f06e58a from memory into f7
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fleq.h x28, f7, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xea525105 # load x3 with 32 MSBs 0x00000000ea525105
sw x3, 0(x2) # store x3 (0xea525105) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea525105
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000ea525105 from memory into f18
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xc0dec0dec0defbff from memory into f28
fleq.h x31, f18, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xbaa77801 # load x3 with 32 MSBs 0x00000000baa77801
sw x3, 0(x2) # store x3 (0xbaa77801) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000baa77801
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000baa77801 from memory into f12
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f28
fleq.h x6, f12, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x17e584fc # load x3 with 32 MSBs 0x0000000017e584fc
sw x3, 0(x2) # store x3 (0x17e584fc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000017e584fc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000017e584fc from memory into f19
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffff0ffffc00 from memory into f3
fleq.h x16, f19, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xfc388e42 # load x3 with 32 MSBs 0x00000000fc388e42
sw x3, 0(x2) # store x3 (0xfc388e42) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc388e42
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000fc388e42 from memory into f26
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffeffffffff7e00 from memory into f3
fleq.h x12, f26, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xcc3cc885 # load x3 with 32 MSBs 0x00000000cc3cc885
sw x3, 0(x2) # store x3 (0xcc3cc885) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cc3cc885
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000cc3cc885 from memory into f29
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffefffff7fff from memory into f26
fleq.h x28, f29, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x681cbfa6 # load x3 with 32 MSBs 0x00000000681cbfa6
sw x3, 0(x2) # store x3 (0x681cbfa6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000681cbfa6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000681cbfa6 from memory into f17
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f6
fleq.h x29, f17, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xc237b003 # load x3 with 32 MSBs 0x00000000c237b003
sw x3, 0(x2) # store x3 (0xc237b003) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c237b003
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000c237b003 from memory into f7
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
fleq.h x30, f7, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 108)

#.EQU SIGSIZE,112


// ******************
// Tests from: WALLY-COV-fminm.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x00000000d53ceed2 # load x3 with value 0x00000000d53ceed2
sw x3, 0(x2) # store 0x00000000d53ceed2 in memory
flh f22, 0(x2) # load 0x00000000d53ceed2 from memory into f22
la x2, scratch
li x3, 0x000000006dc16993 # load x3 with value 0x000000006dc16993
sw x3, 0(x2) # store 0x000000006dc16993 in memory
flh f13, 0(x2) # load 0x000000006dc16993 from memory into f13
fminm.h f19, f22, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffff00000000 from memory into f26
la x2, scratch
li x3, 0xbd27a2bc # load x3 with 32 MSBs 0x00000000bd27a2bc
sw x3, 0(x2) # store x3 (0xbd27a2bc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bd27a2bc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000bd27a2bc from memory into f17
fminm.h f6, f26, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffffffffe8000 from memory into f25
la x2, scratch
li x3, 0xe3dc531b # load x3 with 32 MSBs 0x00000000e3dc531b
sw x3, 0(x2) # store x3 (0xe3dc531b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e3dc531b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000e3dc531b from memory into f24
fminm.h f13, f25, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7fffffffffff3c00 from memory into f11
la x2, scratch
li x3, 0x31c36a55 # load x3 with 32 MSBs 0x0000000031c36a55
sw x3, 0(x2) # store x3 (0x31c36a55) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000031c36a55
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000031c36a55 from memory into f21
fminm.h f27, f11, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfeedbee5beefbc00 from memory into f30
la x2, scratch
li x3, 0xc6c56aac # load x3 with 32 MSBs 0x00000000c6c56aac
sw x3, 0(x2) # store x3 (0xc6c56aac) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c6c56aac
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000c6c56aac from memory into f31
fminm.h f1, f30, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffefffff0400 from memory into f3
la x2, scratch
li x3, 0x64b5bfe2 # load x3 with 32 MSBs 0x0000000064b5bfe2
sw x3, 0(x2) # store x3 (0x64b5bfe2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000064b5bfe2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000064b5bfe2 from memory into f6
fminm.h f24, f3, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
la x2, scratch
li x3, 0x62c986a3 # load x3 with 32 MSBs 0x0000000062c986a3
sw x3, 0(x2) # store x3 (0x62c986a3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000062c986a3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000062c986a3 from memory into f2
fminm.h f30, f19, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xefffffffffff7bff from memory into f17
la x2, scratch
li x3, 0xff40e7ed # load x3 with 32 MSBs 0x00000000ff40e7ed
sw x3, 0(x2) # store x3 (0xff40e7ed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ff40e7ed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000ff40e7ed from memory into f27
fminm.h f8, f17, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xc0dec0dec0defbff from memory into f12
la x2, scratch
li x3, 0x3366ad5a # load x3 with 32 MSBs 0x000000003366ad5a
sw x3, 0(x2) # store x3 (0x3366ad5a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003366ad5a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000003366ad5a from memory into f23
fminm.h f30, f12, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f19
la x2, scratch
li x3, 0x8a9567c7 # load x3 with 32 MSBs 0x000000008a9567c7
sw x3, 0(x2) # store x3 (0x8a9567c7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008a9567c7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000008a9567c7 from memory into f8
fminm.h f23, f19, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffff0ffffc00 from memory into f16
la x2, scratch
li x3, 0xd6095844 # load x3 with 32 MSBs 0x00000000d6095844
sw x3, 0(x2) # store x3 (0xd6095844) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d6095844
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000d6095844 from memory into f20
fminm.h f29, f16, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffeffffffff7e00 from memory into f7
la x2, scratch
li x3, 0x66fbc2d7 # load x3 with 32 MSBs 0x0000000066fbc2d7
sw x3, 0(x2) # store x3 (0x66fbc2d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000066fbc2d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000066fbc2d7 from memory into f9
fminm.h f24, f7, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
la x2, scratch
li x3, 0xda1a55af # load x3 with 32 MSBs 0x00000000da1a55af
sw x3, 0(x2) # store x3 (0xda1a55af) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da1a55af
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000da1a55af from memory into f24
fminm.h f12, f31, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f21
la x2, scratch
li x3, 0x4cae6c16 # load x3 with 32 MSBs 0x000000004cae6c16
sw x3, 0(x2) # store x3 (0x4cae6c16) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004cae6c16
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000004cae6c16 from memory into f25
fminm.h f11, f21, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffcffff7dff from memory into f20
la x2, scratch
li x3, 0xbf79ff82 # load x3 with 32 MSBs 0x00000000bf79ff82
sw x3, 0(x2) # store x3 (0xbf79ff82) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf79ff82
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000bf79ff82 from memory into f14
fminm.h f22, f20, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xd9271087 # load x3 with 32 MSBs 0x00000000d9271087
sw x3, 0(x2) # store x3 (0xd9271087) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d9271087
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000d9271087 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff00000000 from memory into f22
fminm.h f30, f21, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xb3fd9e77 # load x3 with 32 MSBs 0x00000000b3fd9e77
sw x3, 0(x2) # store x3 (0xb3fd9e77) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b3fd9e77
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000b3fd9e77 from memory into f5
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffffffffffe8000 from memory into f29
fminm.h f6, f5, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xf8376cf6 # load x3 with 32 MSBs 0x00000000f8376cf6
sw x3, 0(x2) # store x3 (0xf8376cf6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f8376cf6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000f8376cf6 from memory into f5
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fffffffffff3c00 from memory into f24
fminm.h f31, f5, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x678570de # load x3 with 32 MSBs 0x00000000678570de
sw x3, 0(x2) # store x3 (0x678570de) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000678570de
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000678570de from memory into f11
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfeedbee5beefbc00 from memory into f22
fminm.h f24, f11, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xd94d6e14 # load x3 with 32 MSBs 0x00000000d94d6e14
sw x3, 0(x2) # store x3 (0xd94d6e14) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d94d6e14
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000d94d6e14 from memory into f25
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffefffff0400 from memory into f9
fminm.h f28, f25, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xc73f99e6 # load x3 with 32 MSBs 0x00000000c73f99e6
sw x3, 0(x2) # store x3 (0xc73f99e6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c73f99e6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000c73f99e6 from memory into f20
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000ffff8400 from memory into f10
fminm.h f12, f20, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x7335ac24 # load x3 with 32 MSBs 0x000000007335ac24
sw x3, 0(x2) # store x3 (0x7335ac24) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007335ac24
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000007335ac24 from memory into f20
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xefffffffffff7bff from memory into f10
fminm.h f6, f20, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xb75dbed5 # load x3 with 32 MSBs 0x00000000b75dbed5
sw x3, 0(x2) # store x3 (0xb75dbed5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b75dbed5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000b75dbed5 from memory into f11
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xc0dec0dec0defbff from memory into f5
fminm.h f20, f11, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x3b99310a # load x3 with 32 MSBs 0x000000003b99310a
sw x3, 0(x2) # store x3 (0x3b99310a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b99310a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003b99310a from memory into f29
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f21
fminm.h f9, f29, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xbb37197e # load x3 with 32 MSBs 0x00000000bb37197e
sw x3, 0(x2) # store x3 (0xbb37197e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bb37197e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000bb37197e from memory into f20
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffff0ffffc00 from memory into f16
fminm.h f12, f20, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x0802b4a1 # load x3 with 32 MSBs 0x000000000802b4a1
sw x3, 0(x2) # store x3 (0x0802b4a1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000802b4a1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000000802b4a1 from memory into f8
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfffeffffffff7e00 from memory into f31
fminm.h f2, f8, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xe77440d5 # load x3 with 32 MSBs 0x00000000e77440d5
sw x3, 0(x2) # store x3 (0xe77440d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e77440d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000e77440d5 from memory into f11
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffffefffff7fff from memory into f24
fminm.h f10, f11, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x05d35b11 # load x3 with 32 MSBs 0x0000000005d35b11
sw x3, 0(x2) # store x3 (0x05d35b11) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000005d35b11
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000005d35b11 from memory into f7
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f31
fminm.h f8, f7, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x98c438d7 # load x3 with 32 MSBs 0x0000000098c438d7
sw x3, 0(x2) # store x3 (0x98c438d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000098c438d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000098c438d7 from memory into f16
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfffffffcffff7dff from memory into f22
fminm.h f12, f16, f22 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fround.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000026a88930 # load x3 with value 0x0000000026a88930
sw x3, 0(x2) # store 0x0000000026a88930 in memory
flh f14, 0(x2) # load 0x0000000026a88930 from memory into f14
fround.h f16, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sw x3, 0(x2) # store 0x0000000000000000 in memory
flw f11, 0(x2) # load 0x0000000000000000 from memory into f11
fround.h f20, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000fffe8000 # load x3 with value 0x00000000fffe8000
sw x3, 0(x2) # store 0x00000000fffe8000 in memory
flw f20, 0(x2) # load 0x00000000fffe8000 from memory into f20
fround.h f19, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007fff3c00 # load x3 with value 0x000000007fff3c00
sw x3, 0(x2) # store 0x000000007fff3c00 in memory
flw f29, 0(x2) # load 0x000000007fff3c00 from memory into f29
fround.h f27, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000beefbc00 # load x3 with value 0x00000000beefbc00
sw x3, 0(x2) # store 0x00000000beefbc00 in memory
flw f22, 0(x2) # load 0x00000000beefbc00 from memory into f22
fround.h f15, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000feff0400 # load x3 with value 0x00000000feff0400
sw x3, 0(x2) # store 0x00000000feff0400 in memory
flw f8, 0(x2) # load 0x00000000feff0400 from memory into f8
fround.h f26, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000fff8400 # load x3 with value 0x000000000fff8400
sw x3, 0(x2) # store 0x000000000fff8400 in memory
flw f20, 0(x2) # load 0x000000000fff8400 from memory into f20
fround.h f16, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000efff7bff # load x3 with value 0x00000000efff7bff
sw x3, 0(x2) # store 0x00000000efff7bff in memory
flw f17, 0(x2) # load 0x00000000efff7bff from memory into f17
fround.h f12, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c0defbff # load x3 with value 0x00000000c0defbff
sw x3, 0(x2) # store 0x00000000c0defbff in memory
flw f22, 0(x2) # load 0x00000000c0defbff from memory into f22
fround.h f21, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004f1a7c00 # load x3 with value 0x000000004f1a7c00
sw x3, 0(x2) # store 0x000000004f1a7c00 in memory
flw f17, 0(x2) # load 0x000000004f1a7c00 from memory into f17
fround.h f13, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000ffffc00 # load x3 with value 0x000000000ffffc00
sw x3, 0(x2) # store 0x000000000ffffc00 in memory
flw f27, 0(x2) # load 0x000000000ffffc00 from memory into f27
fround.h f19, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffef7e00 # load x3 with value 0x00000000ffef7e00
sw x3, 0(x2) # store 0x00000000ffef7e00 in memory
flw f9, 0(x2) # load 0x00000000ffef7e00 from memory into f9
fround.h f15, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000feef7fff # load x3 with value 0x00000000feef7fff
sw x3, 0(x2) # store 0x00000000feef7fff in memory
flw f11, 0(x2) # load 0x00000000feef7fff from memory into f11
fround.h f30, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f24)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a1b27c01 # load x3 with value 0x00000000a1b27c01
sw x3, 0(x2) # store 0x00000000a1b27c01 in memory
flw f24, 0(x2) # load 0x00000000a1b27c01 from memory into f24
fround.h f18, f24 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004fd77dff # load x3 with value 0x000000004fd77dff
sw x3, 0(x2) # store 0x000000004fd77dff in memory
flw f6, 0(x2) # load 0x000000004fd77dff from memory into f6
fround.h f28, f6 # perform operation second time to make sure flags don't change

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-froundnx.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004dfdac31 # load x3 with value 0x000000004dfdac31
sw x3, 0(x2) # store 0x000000004dfdac31 in memory
flh f1, 0(x2) # load 0x000000004dfdac31 from memory into f1
froundnx.h f6, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
froundnx.h f6, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f2)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffffffffffe8000 from memory into f2
froundnx.h f24, f2 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f5)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fffffffffff3c00 from memory into f5
froundnx.h f13, f5 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
froundnx.h f29, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffefffff0400 from memory into f7
froundnx.h f23, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ffff8400 from memory into f23
froundnx.h f10, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xefffffffffff7bff from memory into f13
froundnx.h f17, f13 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xc0dec0dec0defbff from memory into f28
froundnx.h f7, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f2)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f2
froundnx.h f11, f2 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffff0ffffc00 from memory into f11
froundnx.h f3, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfffeffffffff7e00 from memory into f1
froundnx.h f22, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f31)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
froundnx.h f3, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f25)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f25
froundnx.h f28, f25 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f25)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffffcffff7dff from memory into f25
froundnx.h f16, f25 # perform operation second time to make sure flags don't change

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fmaxm.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x0000000006b89031 # load x3 with value 0x0000000006b89031
sw x3, 0(x2) # store 0x0000000006b89031 in memory
flh f9, 0(x2) # load 0x0000000006b89031 from memory into f9
la x2, scratch
li x3, 0x000000008f0624eb # load x3 with value 0x000000008f0624eb
sw x3, 0(x2) # store 0x000000008f0624eb in memory
flh f19, 0(x2) # load 0x000000008f0624eb from memory into f19
fmaxm.h f18, f9, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffffffff00000000 from memory into f18
la x2, scratch
li x3, 0xc849ef32 # load x3 with 32 MSBs 0x00000000c849ef32
sw x3, 0(x2) # store x3 (0xc849ef32) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c849ef32
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000c849ef32 from memory into f26
fmaxm.h f9, f18, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfffffffffffe8000 from memory into f21
la x2, scratch
li x3, 0x95b97a22 # load x3 with 32 MSBs 0x0000000095b97a22
sw x3, 0(x2) # store x3 (0x95b97a22) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000095b97a22
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000095b97a22 from memory into f8
fmaxm.h f12, f21, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
la x2, scratch
li x3, 0x2bfc42d0 # load x3 with 32 MSBs 0x000000002bfc42d0
sw x3, 0(x2) # store x3 (0x2bfc42d0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002bfc42d0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000002bfc42d0 from memory into f2
fmaxm.h f15, f13, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfeedbee5beefbc00 from memory into f10
la x2, scratch
li x3, 0x8162739a # load x3 with 32 MSBs 0x000000008162739a
sw x3, 0(x2) # store x3 (0x8162739a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008162739a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000008162739a from memory into f31
fmaxm.h f9, f10, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffffffefffff0400 from memory into f19
la x2, scratch
li x3, 0x8959e39f # load x3 with 32 MSBs 0x000000008959e39f
sw x3, 0(x2) # store x3 (0x8959e39f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008959e39f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008959e39f from memory into f16
fmaxm.h f10, f19, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ffff8400 from memory into f23
la x2, scratch
li x3, 0xff48bf53 # load x3 with 32 MSBs 0x00000000ff48bf53
sw x3, 0(x2) # store x3 (0xff48bf53) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ff48bf53
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000ff48bf53 from memory into f28
fmaxm.h f6, f23, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xefffffffffff7bff from memory into f7
la x2, scratch
li x3, 0x2b2b0759 # load x3 with 32 MSBs 0x000000002b2b0759
sw x3, 0(x2) # store x3 (0x2b2b0759) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002b2b0759
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000002b2b0759 from memory into f6
fmaxm.h f13, f7, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xc0dec0dec0defbff from memory into f22
la x2, scratch
li x3, 0x999b06fb # load x3 with 32 MSBs 0x00000000999b06fb
sw x3, 0(x2) # store x3 (0x999b06fb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000999b06fb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000999b06fb from memory into f29
fmaxm.h f9, f22, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f31
la x2, scratch
li x3, 0xbb2720c0 # load x3 with 32 MSBs 0x00000000bb2720c0
sw x3, 0(x2) # store x3 (0xbb2720c0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bb2720c0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000bb2720c0 from memory into f13
fmaxm.h f5, f31, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffffffff0ffffc00 from memory into f8
la x2, scratch
li x3, 0x238140d5 # load x3 with 32 MSBs 0x00000000238140d5
sw x3, 0(x2) # store x3 (0x238140d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000238140d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000238140d5 from memory into f3
fmaxm.h f13, f8, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
la x2, scratch
li x3, 0x0c91f4ac # load x3 with 32 MSBs 0x000000000c91f4ac
sw x3, 0(x2) # store x3 (0x0c91f4ac) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000c91f4ac
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000000c91f4ac from memory into f19
fmaxm.h f24, f20, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffefffff7fff from memory into f9
la x2, scratch
li x3, 0xa5169136 # load x3 with 32 MSBs 0x00000000a5169136
sw x3, 0(x2) # store x3 (0xa5169136) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a5169136
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000a5169136 from memory into f15
fmaxm.h f22, f9, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f7
la x2, scratch
li x3, 0x18e7b509 # load x3 with 32 MSBs 0x0000000018e7b509
sw x3, 0(x2) # store x3 (0x18e7b509) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000018e7b509
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000018e7b509 from memory into f13
fmaxm.h f12, f7, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfffffffcffff7dff from memory into f22
la x2, scratch
li x3, 0x263086c6 # load x3 with 32 MSBs 0x00000000263086c6
sw x3, 0(x2) # store x3 (0x263086c6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000263086c6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000263086c6 from memory into f28
fmaxm.h f1, f22, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xb1316b79 # load x3 with 32 MSBs 0x00000000b1316b79
sw x3, 0(x2) # store x3 (0xb1316b79) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b1316b79
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000b1316b79 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
fmaxm.h f27, f12, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xf585739b # load x3 with 32 MSBs 0x00000000f585739b
sw x3, 0(x2) # store x3 (0xf585739b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f585739b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000f585739b from memory into f31
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffffffffffe8000 from memory into f2
fmaxm.h f24, f31, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xe1d055bc # load x3 with 32 MSBs 0x00000000e1d055bc
sw x3, 0(x2) # store x3 (0xe1d055bc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e1d055bc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000e1d055bc from memory into f27
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffffffff3c00 from memory into f25
fmaxm.h f30, f27, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x99e2e2df # load x3 with 32 MSBs 0x0000000099e2e2df
sw x3, 0(x2) # store x3 (0x99e2e2df) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000099e2e2df
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000099e2e2df from memory into f19
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfeedbee5beefbc00 from memory into f17
fmaxm.h f15, f19, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x9e8f8445 # load x3 with 32 MSBs 0x000000009e8f8445
sw x3, 0(x2) # store x3 (0x9e8f8445) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009e8f8445
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000009e8f8445 from memory into f31
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffefffff0400 from memory into f10
fmaxm.h f12, f31, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x84f6730e # load x3 with 32 MSBs 0x0000000084f6730e
sw x3, 0(x2) # store x3 (0x84f6730e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000084f6730e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000084f6730e from memory into f17
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ffff8400 from memory into f2
fmaxm.h f25, f17, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x685687a2 # load x3 with 32 MSBs 0x00000000685687a2
sw x3, 0(x2) # store x3 (0x685687a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000685687a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000685687a2 from memory into f23
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xefffffffffff7bff from memory into f21
fmaxm.h f24, f23, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xe68b0e3f # load x3 with 32 MSBs 0x00000000e68b0e3f
sw x3, 0(x2) # store x3 (0xe68b0e3f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e68b0e3f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000e68b0e3f from memory into f5
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xc0dec0dec0defbff from memory into f13
fmaxm.h f20, f5, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xbd363050 # load x3 with 32 MSBs 0x00000000bd363050
sw x3, 0(x2) # store x3 (0xbd363050) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bd363050
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000bd363050 from memory into f15
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f30
fmaxm.h f11, f15, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x053b4fac # load x3 with 32 MSBs 0x00000000053b4fac
sw x3, 0(x2) # store x3 (0x053b4fac) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000053b4fac
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000053b4fac from memory into f10
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffffff0ffffc00 from memory into f24
fmaxm.h f30, f10, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x11f1a76c # load x3 with 32 MSBs 0x0000000011f1a76c
sw x3, 0(x2) # store x3 (0x11f1a76c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000011f1a76c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000011f1a76c from memory into f28
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffeffffffff7e00 from memory into f9
fmaxm.h f12, f28, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x4f4fc292 # load x3 with 32 MSBs 0x000000004f4fc292
sw x3, 0(x2) # store x3 (0x4f4fc292) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004f4fc292
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000004f4fc292 from memory into f5
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffffffefffff7fff from memory into f18
fmaxm.h f9, f5, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xfc07bafb # load x3 with 32 MSBs 0x00000000fc07bafb
sw x3, 0(x2) # store x3 (0xfc07bafb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc07bafb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000fc07bafb from memory into f10
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f8
fmaxm.h f29, f10, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x823653c1 # load x3 with 32 MSBs 0x00000000823653c1
sw x3, 0(x2) # store x3 (0x823653c1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000823653c1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000823653c1 from memory into f13
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffffcffff7dff from memory into f8
fmaxm.h f16, f13, f8 # perform operation

#.EQU SIGSIZE,0
.EQU SIGSIZE,224 #combined


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
