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
fli.h f7, 8.0 # perform operation

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
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f5, 0(x2) # load 0xffffffff00000000 from memory into f5
la x2, scratch
li x3, 0xcf01acf7568507a6 # load x3 with value 0xcf01acf7568507a6
sd x3, 0(x2) # store 0xcf01acf7568507a6 in memory
fld f22, 0(x2) # load 0xcf01acf7568507a6 from memory into f22
fltq.h x18, f5, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f20, 0(x2) # load 0xfffffffffffe8000 from memory into f20
la x2, scratch
li x3, 0x9ebcb4e0f39cfe74 # load x3 with value 0x9ebcb4e0f39cfe74
sd x3, 0(x2) # store 0x9ebcb4e0f39cfe74 in memory
fld f29, 0(x2) # load 0x9ebcb4e0f39cfe74 from memory into f29
fltq.h x3, f20, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f28, 0(x2) # load 0x7fffffffffff3c00 from memory into f28
la x2, scratch
li x3, 0x0d79feb6dfe105fd # load x3 with value 0x0d79feb6dfe105fd
sd x3, 0(x2) # store 0x0d79feb6dfe105fd in memory
fld f18, 0(x2) # load 0x0d79feb6dfe105fd from memory into f18
fltq.h x29, f28, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f7, 0(x2) # load 0xfeedbee5beefbc00 from memory into f7
la x2, scratch
li x3, 0x1dcfb15d6a50e976 # load x3 with value 0x1dcfb15d6a50e976
sd x3, 0(x2) # store 0x1dcfb15d6a50e976 in memory
fld f5, 0(x2) # load 0x1dcfb15d6a50e976 from memory into f5
fltq.h x30, f7, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
la x2, scratch
li x3, 0x53c65246f54c81c6 # load x3 with value 0x53c65246f54c81c6
sd x3, 0(x2) # store 0x53c65246f54c81c6 in memory
fld f22, 0(x2) # load 0x53c65246f54c81c6 from memory into f22
fltq.h x26, f23, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f7, 0(x2) # load 0x00000000ffff8400 from memory into f7
la x2, scratch
li x3, 0x374065f2e7eb5abb # load x3 with value 0x374065f2e7eb5abb
sd x3, 0(x2) # store 0x374065f2e7eb5abb in memory
fld f1, 0(x2) # load 0x374065f2e7eb5abb from memory into f1
fltq.h x17, f7, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f21, 0(x2) # load 0xefffffffffff7bff from memory into f21
la x2, scratch
li x3, 0x80845fa7a51b13f8 # load x3 with value 0x80845fa7a51b13f8
sd x3, 0(x2) # store 0x80845fa7a51b13f8 in memory
fld f6, 0(x2) # load 0x80845fa7a51b13f8 from memory into f6
fltq.h x26, f21, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f13, 0(x2) # load 0xc0dec0dec0defbff from memory into f13
la x2, scratch
li x3, 0xf74dc168f074ed1b # load x3 with value 0xf74dc168f074ed1b
sd x3, 0(x2) # store 0xf74dc168f074ed1b in memory
fld f10, 0(x2) # load 0xf74dc168f074ed1b from memory into f10
fltq.h x24, f13, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f25, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f25
la x2, scratch
li x3, 0x6ac6550a1f3d4c92 # load x3 with value 0x6ac6550a1f3d4c92
sd x3, 0(x2) # store 0x6ac6550a1f3d4c92 in memory
fld f18, 0(x2) # load 0x6ac6550a1f3d4c92 from memory into f18
fltq.h x26, f25, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f15, 0(x2) # load 0xffffffff0ffffc00 from memory into f15
la x2, scratch
li x3, 0x45c460489980d971 # load x3 with value 0x45c460489980d971
sd x3, 0(x2) # store 0x45c460489980d971 in memory
fld f31, 0(x2) # load 0x45c460489980d971 from memory into f31
fltq.h x26, f15, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f9, 0(x2) # load 0xfffeffffffff7e00 from memory into f9
la x2, scratch
li x3, 0x2290267893ac7426 # load x3 with value 0x2290267893ac7426
sd x3, 0(x2) # store 0x2290267893ac7426 in memory
fld f21, 0(x2) # load 0x2290267893ac7426 from memory into f21
fltq.h x5, f9, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
la x2, scratch
li x3, 0x5fd48d2acf97aec5 # load x3 with value 0x5fd48d2acf97aec5
sd x3, 0(x2) # store 0x5fd48d2acf97aec5 in memory
fld f18, 0(x2) # load 0x5fd48d2acf97aec5 from memory into f18
fltq.h x9, f13, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f13, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f13
la x2, scratch
li x3, 0x390f6145bc1fcbf0 # load x3 with value 0x390f6145bc1fcbf0
sd x3, 0(x2) # store 0x390f6145bc1fcbf0 in memory
fld f26, 0(x2) # load 0x390f6145bc1fcbf0 from memory into f26
fltq.h x15, f13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f14, 0(x2) # load 0xfffffffcffff7dff from memory into f14
la x2, scratch
li x3, 0x99b4ca49eea0ac23 # load x3 with value 0x99b4ca49eea0ac23
sd x3, 0(x2) # store 0x99b4ca49eea0ac23 in memory
fld f23, 0(x2) # load 0x99b4ca49eea0ac23 from memory into f23
fltq.h x24, f14, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x153416a111cd05e8 # load x3 with value 0x153416a111cd05e8
sd x3, 0(x2) # store 0x153416a111cd05e8 in memory
fld f2, 0(x2) # load 0x153416a111cd05e8 from memory into f2
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f1, 0(x2) # load 0xffffffff00000000 from memory into f1
fltq.h x8, f2, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x08724c16fe00573a # load x3 with value 0x08724c16fe00573a
sd x3, 0(x2) # store 0x08724c16fe00573a in memory
fld f9, 0(x2) # load 0x08724c16fe00573a from memory into f9
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f21, 0(x2) # load 0xfffffffffffe8000 from memory into f21
fltq.h x12, f9, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x5ebb65af6725896b # load x3 with value 0x5ebb65af6725896b
sd x3, 0(x2) # store 0x5ebb65af6725896b in memory
fld f15, 0(x2) # load 0x5ebb65af6725896b from memory into f15
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f23, 0(x2) # load 0x7fffffffffff3c00 from memory into f23
fltq.h x9, f15, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x17a6190cd3df3a4d # load x3 with value 0x17a6190cd3df3a4d
sd x3, 0(x2) # store 0x17a6190cd3df3a4d in memory
fld f1, 0(x2) # load 0x17a6190cd3df3a4d from memory into f1
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f5, 0(x2) # load 0xfeedbee5beefbc00 from memory into f5
fltq.h x2, f1, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xe7ddcd45f2c0ef08 # load x3 with value 0xe7ddcd45f2c0ef08
sd x3, 0(x2) # store 0xe7ddcd45f2c0ef08 in memory
fld f24, 0(x2) # load 0xe7ddcd45f2c0ef08 from memory into f24
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
fltq.h x14, f24, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x0f8bfa12f427e45f # load x3 with value 0x0f8bfa12f427e45f
sd x3, 0(x2) # store 0x0f8bfa12f427e45f in memory
fld f29, 0(x2) # load 0x0f8bfa12f427e45f from memory into f29
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f11, 0(x2) # load 0x00000000ffff8400 from memory into f11
fltq.h x6, f29, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xa40ed8a5cff50810 # load x3 with value 0xa40ed8a5cff50810
sd x3, 0(x2) # store 0xa40ed8a5cff50810 in memory
fld f23, 0(x2) # load 0xa40ed8a5cff50810 from memory into f23
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f10, 0(x2) # load 0xefffffffffff7bff from memory into f10
fltq.h x2, f23, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x3fa302dcd7c8136a # load x3 with value 0x3fa302dcd7c8136a
sd x3, 0(x2) # store 0x3fa302dcd7c8136a in memory
fld f12, 0(x2) # load 0x3fa302dcd7c8136a from memory into f12
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f10, 0(x2) # load 0xc0dec0dec0defbff from memory into f10
fltq.h x23, f12, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xc5ea26f0af22af90 # load x3 with value 0xc5ea26f0af22af90
sd x3, 0(x2) # store 0xc5ea26f0af22af90 in memory
fld f25, 0(x2) # load 0xc5ea26f0af22af90 from memory into f25
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f19, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f19
fltq.h x5, f25, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x3473cd4dfc215ade # load x3 with value 0x3473cd4dfc215ade
sd x3, 0(x2) # store 0x3473cd4dfc215ade in memory
fld f27, 0(x2) # load 0x3473cd4dfc215ade from memory into f27
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f19, 0(x2) # load 0xffffffff0ffffc00 from memory into f19
fltq.h x22, f27, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xb7b0f33027900ba3 # load x3 with value 0xb7b0f33027900ba3
sd x3, 0(x2) # store 0xb7b0f33027900ba3 in memory
fld f18, 0(x2) # load 0xb7b0f33027900ba3 from memory into f18
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f16, 0(x2) # load 0xfffeffffffff7e00 from memory into f16
fltq.h x28, f18, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xcabe7e3c0f51ad51 # load x3 with value 0xcabe7e3c0f51ad51
sd x3, 0(x2) # store 0xcabe7e3c0f51ad51 in memory
fld f9, 0(x2) # load 0xcabe7e3c0f51ad51 from memory into f9
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f27, 0(x2) # load 0xffffffefffff7fff from memory into f27
fltq.h x29, f9, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x630c71d71cd83a97 # load x3 with value 0x630c71d71cd83a97
sd x3, 0(x2) # store 0x630c71d71cd83a97 in memory
fld f24, 0(x2) # load 0x630c71d71cd83a97 from memory into f24
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f5, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f5
fltq.h x31, f24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x29af2f78ea53e8b7 # load x3 with value 0x29af2f78ea53e8b7
sd x3, 0(x2) # store 0x29af2f78ea53e8b7 in memory
fld f10, 0(x2) # load 0x29af2f78ea53e8b7 from memory into f10
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f17, 0(x2) # load 0xfffffffcffff7dff from memory into f17
fltq.h x25, f10, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 216)

#.EQU SIGSIZE,224


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
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f26, 0(x2) # load 0xffffffff00000000 from memory into f26
la x2, scratch
li x3, 0x76f2e238a4b7038d # load x3 with value 0x76f2e238a4b7038d
sd x3, 0(x2) # store 0x76f2e238a4b7038d in memory
fld f10, 0(x2) # load 0x76f2e238a4b7038d from memory into f10
fleq.h x30, f26, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f3, 0(x2) # load 0xfffffffffffe8000 from memory into f3
la x2, scratch
li x3, 0x388213d0138b2ef1 # load x3 with value 0x388213d0138b2ef1
sd x3, 0(x2) # store 0x388213d0138b2ef1 in memory
fld f30, 0(x2) # load 0x388213d0138b2ef1 from memory into f30
fleq.h x29, f3, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
la x2, scratch
li x3, 0x01b106bcc4dcd140 # load x3 with value 0x01b106bcc4dcd140
sd x3, 0(x2) # store 0x01b106bcc4dcd140 in memory
fld f31, 0(x2) # load 0x01b106bcc4dcd140 from memory into f31
fleq.h x9, f30, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f10, 0(x2) # load 0xfeedbee5beefbc00 from memory into f10
la x2, scratch
li x3, 0xdb02a5e7fe6e8731 # load x3 with value 0xdb02a5e7fe6e8731
sd x3, 0(x2) # store 0xdb02a5e7fe6e8731 in memory
fld f12, 0(x2) # load 0xdb02a5e7fe6e8731 from memory into f12
fleq.h x16, f10, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f15, 0(x2) # load 0xffffffefffff0400 from memory into f15
la x2, scratch
li x3, 0x136616b8a6061ad1 # load x3 with value 0x136616b8a6061ad1
sd x3, 0(x2) # store 0x136616b8a6061ad1 in memory
fld f12, 0(x2) # load 0x136616b8a6061ad1 from memory into f12
fleq.h x3, f15, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f18, 0(x2) # load 0x00000000ffff8400 from memory into f18
la x2, scratch
li x3, 0xf3ac6bf3ab83de0e # load x3 with value 0xf3ac6bf3ab83de0e
sd x3, 0(x2) # store 0xf3ac6bf3ab83de0e in memory
fld f27, 0(x2) # load 0xf3ac6bf3ab83de0e from memory into f27
fleq.h x11, f18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f6, 0(x2) # load 0xefffffffffff7bff from memory into f6
la x2, scratch
li x3, 0x1a04b81608756c7e # load x3 with value 0x1a04b81608756c7e
sd x3, 0(x2) # store 0x1a04b81608756c7e in memory
fld f14, 0(x2) # load 0x1a04b81608756c7e from memory into f14
fleq.h x25, f6, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f2, 0(x2) # load 0xc0dec0dec0defbff from memory into f2
la x2, scratch
li x3, 0x4e8b360ca3090f88 # load x3 with value 0x4e8b360ca3090f88
sd x3, 0(x2) # store 0x4e8b360ca3090f88 in memory
fld f12, 0(x2) # load 0x4e8b360ca3090f88 from memory into f12
fleq.h x24, f2, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f17, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f17
la x2, scratch
li x3, 0xb1f9085917917f5d # load x3 with value 0xb1f9085917917f5d
sd x3, 0(x2) # store 0xb1f9085917917f5d in memory
fld f6, 0(x2) # load 0xb1f9085917917f5d from memory into f6
fleq.h x7, f17, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f29, 0(x2) # load 0xffffffff0ffffc00 from memory into f29
la x2, scratch
li x3, 0x13c0851c220cdde2 # load x3 with value 0x13c0851c220cdde2
sd x3, 0(x2) # store 0x13c0851c220cdde2 in memory
fld f19, 0(x2) # load 0x13c0851c220cdde2 from memory into f19
fleq.h x8, f29, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f6, 0(x2) # load 0xfffeffffffff7e00 from memory into f6
la x2, scratch
li x3, 0x4d60fb43fa55d527 # load x3 with value 0x4d60fb43fa55d527
sd x3, 0(x2) # store 0x4d60fb43fa55d527 in memory
fld f14, 0(x2) # load 0x4d60fb43fa55d527 from memory into f14
fleq.h x8, f6, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f17, 0(x2) # load 0xffffffefffff7fff from memory into f17
la x2, scratch
li x3, 0x1e7bd66ab2db7d2e # load x3 with value 0x1e7bd66ab2db7d2e
sd x3, 0(x2) # store 0x1e7bd66ab2db7d2e in memory
fld f21, 0(x2) # load 0x1e7bd66ab2db7d2e from memory into f21
fleq.h x16, f17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f17, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f17
la x2, scratch
li x3, 0x3203ba8d24b12c2e # load x3 with value 0x3203ba8d24b12c2e
sd x3, 0(x2) # store 0x3203ba8d24b12c2e in memory
fld f12, 0(x2) # load 0x3203ba8d24b12c2e from memory into f12
fleq.h x15, f17, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f28, 0(x2) # load 0xfffffffcffff7dff from memory into f28
la x2, scratch
li x3, 0x70c2bc138dd554be # load x3 with value 0x70c2bc138dd554be
sd x3, 0(x2) # store 0x70c2bc138dd554be in memory
fld f24, 0(x2) # load 0x70c2bc138dd554be from memory into f24
fleq.h x2, f28, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xb886344198e2563e # load x3 with value 0xb886344198e2563e
sd x3, 0(x2) # store 0xb886344198e2563e in memory
fld f18, 0(x2) # load 0xb886344198e2563e from memory into f18
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
fleq.h x16, f18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xa81a02d9b7d555e2 # load x3 with value 0xa81a02d9b7d555e2
sd x3, 0(x2) # store 0xa81a02d9b7d555e2 in memory
fld f26, 0(x2) # load 0xa81a02d9b7d555e2 from memory into f26
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f15, 0(x2) # load 0xfffffffffffe8000 from memory into f15
fleq.h x3, f26, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xc311722790e5b90e # load x3 with value 0xc311722790e5b90e
sd x3, 0(x2) # store 0xc311722790e5b90e in memory
fld f21, 0(x2) # load 0xc311722790e5b90e from memory into f21
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f2, 0(x2) # load 0x7fffffffffff3c00 from memory into f2
fleq.h x22, f21, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x5007708a9b2d2447 # load x3 with value 0x5007708a9b2d2447
sd x3, 0(x2) # store 0x5007708a9b2d2447 in memory
fld f28, 0(x2) # load 0x5007708a9b2d2447 from memory into f28
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f16, 0(x2) # load 0xfeedbee5beefbc00 from memory into f16
fleq.h x26, f28, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x466c907c3f06e58a # load x3 with value 0x466c907c3f06e58a
sd x3, 0(x2) # store 0x466c907c3f06e58a in memory
fld f5, 0(x2) # load 0x466c907c3f06e58a from memory into f5
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f11, 0(x2) # load 0xffffffefffff0400 from memory into f11
fleq.h x28, f5, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xf05cb004ad0c6bd2 # load x3 with value 0xf05cb004ad0c6bd2
sd x3, 0(x2) # store 0xf05cb004ad0c6bd2 in memory
fld f5, 0(x2) # load 0xf05cb004ad0c6bd2 from memory into f5
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f24, 0(x2) # load 0x00000000ffff8400 from memory into f24
fleq.h x15, f5, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xd044979d521e56cc # load x3 with value 0xd044979d521e56cc
sd x3, 0(x2) # store 0xd044979d521e56cc in memory
fld f2, 0(x2) # load 0xd044979d521e56cc from memory into f2
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
fleq.h x21, f2, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xea275bf519128ac2 # load x3 with value 0xea275bf519128ac2
sd x3, 0(x2) # store 0xea275bf519128ac2 in memory
fld f24, 0(x2) # load 0xea275bf519128ac2 from memory into f24
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f3, 0(x2) # load 0xc0dec0dec0defbff from memory into f3
fleq.h x27, f24, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xa26302f5ccbbabdf # load x3 with value 0xa26302f5ccbbabdf
sd x3, 0(x2) # store 0xa26302f5ccbbabdf in memory
fld f26, 0(x2) # load 0xa26302f5ccbbabdf from memory into f26
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f12, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f12
fleq.h x29, f26, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xf5c5f89d7130c531 # load x3 with value 0xf5c5f89d7130c531
sd x3, 0(x2) # store 0xf5c5f89d7130c531 in memory
fld f29, 0(x2) # load 0xf5c5f89d7130c531 from memory into f29
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f24, 0(x2) # load 0xffffffff0ffffc00 from memory into f24
fleq.h x13, f29, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x9768c1d44a824a56 # load x3 with value 0x9768c1d44a824a56
sd x3, 0(x2) # store 0x9768c1d44a824a56 in memory
fld f25, 0(x2) # load 0x9768c1d44a824a56 from memory into f25
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f13, 0(x2) # load 0xfffeffffffff7e00 from memory into f13
fleq.h x20, f25, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xf5178fda5488c4f7 # load x3 with value 0xf5178fda5488c4f7
sd x3, 0(x2) # store 0xf5178fda5488c4f7 in memory
fld f28, 0(x2) # load 0xf5178fda5488c4f7 from memory into f28
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f9, 0(x2) # load 0xffffffefffff7fff from memory into f9
fleq.h x30, f28, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x9fda369fd28db10f # load x3 with value 0x9fda369fd28db10f
sd x3, 0(x2) # store 0x9fda369fd28db10f in memory
fld f31, 0(x2) # load 0x9fda369fd28db10f from memory into f31
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f29, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f29
fleq.h x14, f31, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x33db8593081623ce # load x3 with value 0x33db8593081623ce
sd x3, 0(x2) # store 0x33db8593081623ce in memory
fld f6, 0(x2) # load 0x33db8593081623ce from memory into f6
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f18, 0(x2) # load 0xfffffffcffff7dff from memory into f18
fleq.h x24, f6, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

#.EQU SIGSIZE,224


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
li x3, 0xf43d633f45d8f959 # load x3 with value 0xf43d633f45d8f959
sd x3, 0(x2) # store 0xf43d633f45d8f959 in memory
flh f22, 0(x2) # load 0xf43d633f45d8f959 from memory into f22
la x2, scratch
li x3, 0xafb5f74cd67fd01e # load x3 with value 0xafb5f74cd67fd01e
sd x3, 0(x2) # store 0xafb5f74cd67fd01e in memory
flh f13, 0(x2) # load 0xafb5f74cd67fd01e from memory into f13
fminm.h f2, f22, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f26, 0(x2) # load 0xffffffff00000000 from memory into f26
la x2, scratch
li x3, 0x5b3230b0cc76c2e9 # load x3 with value 0x5b3230b0cc76c2e9
sd x3, 0(x2) # store 0x5b3230b0cc76c2e9 in memory
fld f17, 0(x2) # load 0x5b3230b0cc76c2e9 from memory into f17
fminm.h f21, f26, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f13, 0(x2) # load 0xfffffffffffe8000 from memory into f13
la x2, scratch
li x3, 0x47c2408198ef7793 # load x3 with value 0x47c2408198ef7793
sd x3, 0(x2) # store 0x47c2408198ef7793 in memory
fld f31, 0(x2) # load 0x47c2408198ef7793 from memory into f31
fminm.h f29, f13, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f20, 0(x2) # load 0x7fffffffffff3c00 from memory into f20
la x2, scratch
li x3, 0xdbf32ad40530bcab # load x3 with value 0xdbf32ad40530bcab
sd x3, 0(x2) # store 0xdbf32ad40530bcab in memory
fld f13, 0(x2) # load 0xdbf32ad40530bcab from memory into f13
fminm.h f2, f20, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f3, 0(x2) # load 0xfeedbee5beefbc00 from memory into f3
la x2, scratch
li x3, 0x94255f8e426612c8 # load x3 with value 0x94255f8e426612c8
sd x3, 0(x2) # store 0x94255f8e426612c8 in memory
fld f6, 0(x2) # load 0x94255f8e426612c8 from memory into f6
fminm.h f24, f3, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f30, 0(x2) # load 0xffffffefffff0400 from memory into f30
la x2, scratch
li x3, 0x945dca2d775d4fc8 # load x3 with value 0x945dca2d775d4fc8
sd x3, 0(x2) # store 0x945dca2d775d4fc8 in memory
fld f29, 0(x2) # load 0x945dca2d775d4fc8 from memory into f29
fminm.h f2, f30, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f12, 0(x2) # load 0x00000000ffff8400 from memory into f12
la x2, scratch
li x3, 0xdcee1d7f28c28a0b # load x3 with value 0xdcee1d7f28c28a0b
sd x3, 0(x2) # store 0xdcee1d7f28c28a0b in memory
fld f23, 0(x2) # load 0xdcee1d7f28c28a0b from memory into f23
fminm.h f18, f12, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f2, 0(x2) # load 0xefffffffffff7bff from memory into f2
la x2, scratch
li x3, 0xac69c2e6e1e82382 # load x3 with value 0xac69c2e6e1e82382
sd x3, 0(x2) # store 0xac69c2e6e1e82382 in memory
fld f26, 0(x2) # load 0xac69c2e6e1e82382 from memory into f26
fminm.h f5, f2, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f9, 0(x2) # load 0xc0dec0dec0defbff from memory into f9
la x2, scratch
li x3, 0xa22492c0193f5657 # load x3 with value 0xa22492c0193f5657
sd x3, 0(x2) # store 0xa22492c0193f5657 in memory
fld f18, 0(x2) # load 0xa22492c0193f5657 from memory into f18
fminm.h f16, f9, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f12, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f12
la x2, scratch
li x3, 0x4cae6c16bd78966c # load x3 with value 0x4cae6c16bd78966c
sd x3, 0(x2) # store 0x4cae6c16bd78966c in memory
fld f22, 0(x2) # load 0x4cae6c16bd78966c from memory into f22
fminm.h f8, f12, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f26, 0(x2) # load 0xffffffff0ffffc00 from memory into f26
la x2, scratch
li x3, 0xbe08ff7df9f05c95 # load x3 with value 0xbe08ff7df9f05c95
sd x3, 0(x2) # store 0xbe08ff7df9f05c95 in memory
fld f7, 0(x2) # load 0xbe08ff7df9f05c95 from memory into f7
fminm.h f8, f26, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f1, 0(x2) # load 0xfffeffffffff7e00 from memory into f1
la x2, scratch
li x3, 0xa0fc255c556814f3 # load x3 with value 0xa0fc255c556814f3
sd x3, 0(x2) # store 0xa0fc255c556814f3 in memory
fld f17, 0(x2) # load 0xa0fc255c556814f3 from memory into f17
fminm.h f18, f1, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f28, 0(x2) # load 0xffffffefffff7fff from memory into f28
la x2, scratch
li x3, 0x2808ba8c7cdf8e3c # load x3 with value 0x2808ba8c7cdf8e3c
sd x3, 0(x2) # store 0x2808ba8c7cdf8e3c in memory
fld f1, 0(x2) # load 0x2808ba8c7cdf8e3c from memory into f1
fminm.h f24, f28, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f23, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f23
la x2, scratch
li x3, 0x28fd202d879c0c14 # load x3 with value 0x28fd202d879c0c14
sd x3, 0(x2) # store 0x28fd202d879c0c14 in memory
fld f12, 0(x2) # load 0x28fd202d879c0c14 from memory into f12
fminm.h f26, f23, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f14, 0(x2) # load 0xfffffffcffff7dff from memory into f14
la x2, scratch
li x3, 0x71d56840e81cdad7 # load x3 with value 0x71d56840e81cdad7
sd x3, 0(x2) # store 0x71d56840e81cdad7 in memory
fld f8, 0(x2) # load 0x71d56840e81cdad7 from memory into f8
fminm.h f17, f14, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xd9271087f6ed6efd # load x3 with value 0xd9271087f6ed6efd
sd x3, 0(x2) # store 0xd9271087f6ed6efd in memory
fld f21, 0(x2) # load 0xd9271087f6ed6efd from memory into f21
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f22, 0(x2) # load 0xffffffff00000000 from memory into f22
fminm.h f26, f21, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x5898914dbe9075ec # load x3 with value 0x5898914dbe9075ec
sd x3, 0(x2) # store 0x5898914dbe9075ec in memory
fld f8, 0(x2) # load 0x5898914dbe9075ec from memory into f8
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f19, 0(x2) # load 0xfffffffffffe8000 from memory into f19
fminm.h f5, f8, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x42531a7f83cf5b19 # load x3 with value 0x42531a7f83cf5b19
sd x3, 0(x2) # store 0x42531a7f83cf5b19 in memory
fld f28, 0(x2) # load 0x42531a7f83cf5b19 from memory into f28
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
fminm.h f3, f28, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x7a85dcadec6c83aa # load x3 with value 0x7a85dcadec6c83aa
sd x3, 0(x2) # store 0x7a85dcadec6c83aa in memory
fld f11, 0(x2) # load 0x7a85dcadec6c83aa from memory into f11
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f5, 0(x2) # load 0xfeedbee5beefbc00 from memory into f5
fminm.h f8, f11, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xc725fe93ba98a72f # load x3 with value 0xc725fe93ba98a72f
sd x3, 0(x2) # store 0xc725fe93ba98a72f in memory
fld f11, 0(x2) # load 0xc725fe93ba98a72f from memory into f11
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f5, 0(x2) # load 0xffffffefffff0400 from memory into f5
fminm.h f31, f11, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x530021c4438f70ca # load x3 with value 0x530021c4438f70ca
sd x3, 0(x2) # store 0x530021c4438f70ca in memory
fld f20, 0(x2) # load 0x530021c4438f70ca from memory into f20
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f28, 0(x2) # load 0x00000000ffff8400 from memory into f28
fminm.h f16, f20, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xc1d906fc982ed80a # load x3 with value 0xc1d906fc982ed80a
sd x3, 0(x2) # store 0xc1d906fc982ed80a in memory
fld f15, 0(x2) # load 0xc1d906fc982ed80a from memory into f15
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f27, 0(x2) # load 0xefffffffffff7bff from memory into f27
fminm.h f2, f15, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xc4fb4658a512de8b # load x3 with value 0xc4fb4658a512de8b
sd x3, 0(x2) # store 0xc4fb4658a512de8b in memory
fld f11, 0(x2) # load 0xc4fb4658a512de8b from memory into f11
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f24, 0(x2) # load 0xc0dec0dec0defbff from memory into f24
fminm.h f10, f11, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xd11f889e0305ddcb # load x3 with value 0xd11f889e0305ddcb
sd x3, 0(x2) # store 0xd11f889e0305ddcb in memory
fld f5, 0(x2) # load 0xd11f889e0305ddcb from memory into f5
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f13, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f13
fminm.h f30, f5, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x1ff8acbec9826689 # load x3 with value 0x1ff8acbec9826689
sd x3, 0(x2) # store 0x1ff8acbec9826689 in memory
fld f8, 0(x2) # load 0x1ff8acbec9826689 from memory into f8
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f2, 0(x2) # load 0xffffffff0ffffc00 from memory into f2
fminm.h f3, f8, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x802c7da79ad3c3fb # load x3 with value 0x802c7da79ad3c3fb
sd x3, 0(x2) # store 0x802c7da79ad3c3fb in memory
fld f19, 0(x2) # load 0x802c7da79ad3c3fb from memory into f19
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
fminm.h f27, f19, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xf5adc4189402d931 # load x3 with value 0xf5adc4189402d931
sd x3, 0(x2) # store 0xf5adc4189402d931 in memory
fld f28, 0(x2) # load 0xf5adc4189402d931 from memory into f28
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f17, 0(x2) # load 0xffffffefffff7fff from memory into f17
fminm.h f10, f28, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xf0a5c37a972d9df1 # load x3 with value 0xf0a5c37a972d9df1
sd x3, 0(x2) # store 0xf0a5c37a972d9df1 in memory
fld f19, 0(x2) # load 0xf0a5c37a972d9df1 from memory into f19
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f23, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f23
fminm.h f16, f19, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x957c6bf3aaa630c0 # load x3 with value 0x957c6bf3aaa630c0
sd x3, 0(x2) # store 0x957c6bf3aaa630c0 in memory
fld f12, 0(x2) # load 0x957c6bf3aaa630c0 from memory into f12
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f28, 0(x2) # load 0xfffffffcffff7dff from memory into f28
fminm.h f17, f12, f28 # perform operation

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
li x3, 0xe9a228db652c8d8c # load x3 with value 0xe9a228db652c8d8c
sd x3, 0(x2) # store 0xe9a228db652c8d8c in memory
flh f14, 0(x2) # load 0xe9a228db652c8d8c from memory into f14
fround.h f1, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
flw f11, 0(x2) # load 0x0000000000000000 from memory into f11
fround.h f28, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000fffe8000 # load x3 with value 0x00000000fffe8000
sd x3, 0(x2) # store 0x00000000fffe8000 in memory
flw f19, 0(x2) # load 0x00000000fffe8000 from memory into f19
fround.h f30, f19 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007fff3c00 # load x3 with value 0x000000007fff3c00
sd x3, 0(x2) # store 0x000000007fff3c00 in memory
flw f10, 0(x2) # load 0x000000007fff3c00 from memory into f10
fround.h f8, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000beefbc00 # load x3 with value 0x00000000beefbc00
sd x3, 0(x2) # store 0x00000000beefbc00 in memory
flw f13, 0(x2) # load 0x00000000beefbc00 from memory into f13
fround.h f26, f13 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000feff0400 # load x3 with value 0x00000000feff0400
sd x3, 0(x2) # store 0x00000000feff0400 in memory
flw f12, 0(x2) # load 0x00000000feff0400 from memory into f12
fround.h f26, f12 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000fff8400 # load x3 with value 0x000000000fff8400
sd x3, 0(x2) # store 0x000000000fff8400 in memory
flw f6, 0(x2) # load 0x000000000fff8400 from memory into f6
fround.h f31, f6 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000efff7bff # load x3 with value 0x00000000efff7bff
sd x3, 0(x2) # store 0x00000000efff7bff in memory
flw f3, 0(x2) # load 0x00000000efff7bff from memory into f3
fround.h f16, f3 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c0defbff # load x3 with value 0x00000000c0defbff
sd x3, 0(x2) # store 0x00000000c0defbff in memory
flw f7, 0(x2) # load 0x00000000c0defbff from memory into f7
fround.h f2, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004f1a7c00 # load x3 with value 0x000000004f1a7c00
sd x3, 0(x2) # store 0x000000004f1a7c00 in memory
flw f28, 0(x2) # load 0x000000004f1a7c00 from memory into f28
fround.h f24, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000ffffc00 # load x3 with value 0x000000000ffffc00
sd x3, 0(x2) # store 0x000000000ffffc00 in memory
flw f6, 0(x2) # load 0x000000000ffffc00 from memory into f6
fround.h f29, f6 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffef7e00 # load x3 with value 0x00000000ffef7e00
sd x3, 0(x2) # store 0x00000000ffef7e00 in memory
flw f9, 0(x2) # load 0x00000000ffef7e00 from memory into f9
fround.h f2, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000feef7fff # load x3 with value 0x00000000feef7fff
sd x3, 0(x2) # store 0x00000000feef7fff in memory
flw f8, 0(x2) # load 0x00000000feef7fff from memory into f8
fround.h f17, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a1b27c01 # load x3 with value 0x00000000a1b27c01
sd x3, 0(x2) # store 0x00000000a1b27c01 in memory
flw f18, 0(x2) # load 0x00000000a1b27c01 from memory into f18
fround.h f14, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004fd77dff # load x3 with value 0x000000004fd77dff
sd x3, 0(x2) # store 0x000000004fd77dff in memory
flw f12, 0(x2) # load 0x000000004fd77dff from memory into f12
fround.h f9, f12 # perform operation second time to make sure flags don't change

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
li x3, 0xbb513d802e40bf5e # load x3 with value 0xbb513d802e40bf5e
sd x3, 0(x2) # store 0xbb513d802e40bf5e in memory
flh f1, 0(x2) # load 0xbb513d802e40bf5e from memory into f1
froundnx.h f6, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
froundnx.h f25, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f23, 0(x2) # load 0xfffffffffffe8000 from memory into f23
froundnx.h f24, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f18, 0(x2) # load 0x7fffffffffff3c00 from memory into f18
froundnx.h f2, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f21, 0(x2) # load 0xfeedbee5beefbc00 from memory into f21
froundnx.h f14, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f16)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f16, 0(x2) # load 0xffffffefffff0400 from memory into f16
froundnx.h f17, f16 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f7, 0(x2) # load 0x00000000ffff8400 from memory into f7
froundnx.h f25, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f31)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f31, 0(x2) # load 0xefffffffffff7bff from memory into f31
froundnx.h f1, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f21, 0(x2) # load 0xc0dec0dec0defbff from memory into f21
froundnx.h f2, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f26)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f26, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f26
froundnx.h f5, f26 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f25)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f25, 0(x2) # load 0xffffffff0ffffc00 from memory into f25
froundnx.h f12, f25 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f5)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f5, 0(x2) # load 0xfffeffffffff7e00 from memory into f5
froundnx.h f7, f5 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f10, 0(x2) # load 0xffffffefffff7fff from memory into f10
froundnx.h f16, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f26)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f26, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f26
froundnx.h f12, f26 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f30)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f30, 0(x2) # load 0xfffffffcffff7dff from memory into f30
froundnx.h f25, f30 # perform operation second time to make sure flags don't change

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
li x3, 0x06b890318e838e20 # load x3 with value 0x06b890318e838e20
sd x3, 0(x2) # store 0x06b890318e838e20 in memory
flh f9, 0(x2) # load 0x06b890318e838e20 from memory into f9
la x2, scratch
li x3, 0x8796af8a59f9efe8 # load x3 with value 0x8796af8a59f9efe8
sd x3, 0(x2) # store 0x8796af8a59f9efe8 in memory
flh f19, 0(x2) # load 0x8796af8a59f9efe8 from memory into f19
fmaxm.h f6, f9, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f18, 0(x2) # load 0xffffffff00000000 from memory into f18
la x2, scratch
li x3, 0xf60e2e93e4843a6b # load x3 with value 0xf60e2e93e4843a6b
sd x3, 0(x2) # store 0xf60e2e93e4843a6b in memory
fld f26, 0(x2) # load 0xf60e2e93e4843a6b from memory into f26
fmaxm.h f17, f18, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f16, 0(x2) # load 0xfffffffffffe8000 from memory into f16
la x2, scratch
li x3, 0x730bb1198dfec017 # load x3 with value 0x730bb1198dfec017
sd x3, 0(x2) # store 0x730bb1198dfec017 in memory
fld f24, 0(x2) # load 0x730bb1198dfec017 from memory into f24
fmaxm.h f7, f16, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f24, 0(x2) # load 0x7fffffffffff3c00 from memory into f24
la x2, scratch
li x3, 0x99f40e080f7f43e6 # load x3 with value 0x99f40e080f7f43e6
sd x3, 0(x2) # store 0x99f40e080f7f43e6 in memory
fld f8, 0(x2) # load 0x99f40e080f7f43e6 from memory into f8
fmaxm.h f23, f24, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f19, 0(x2) # load 0xfeedbee5beefbc00 from memory into f19
la x2, scratch
li x3, 0xf2586b6fb875b092 # load x3 with value 0xf2586b6fb875b092
sd x3, 0(x2) # store 0xf2586b6fb875b092 in memory
fld f20, 0(x2) # load 0xf2586b6fb875b092 from memory into f20
fmaxm.h f13, f19, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f24, 0(x2) # load 0xffffffefffff0400 from memory into f24
la x2, scratch
li x3, 0xe3fc6c36d6033e00 # load x3 with value 0xe3fc6c36d6033e00
sd x3, 0(x2) # store 0xe3fc6c36d6033e00 in memory
fld f18, 0(x2) # load 0xe3fc6c36d6033e00 from memory into f18
fmaxm.h f10, f24, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f22, 0(x2) # load 0x00000000ffff8400 from memory into f22
la x2, scratch
li x3, 0x08e642679982ccc0 # load x3 with value 0x08e642679982ccc0
sd x3, 0(x2) # store 0x08e642679982ccc0 in memory
fld f12, 0(x2) # load 0x08e642679982ccc0 from memory into f12
fmaxm.h f11, f22, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f22, 0(x2) # load 0xefffffffffff7bff from memory into f22
la x2, scratch
li x3, 0x999b06fb9360ec88 # load x3 with value 0x999b06fb9360ec88
sd x3, 0(x2) # store 0x999b06fb9360ec88 in memory
fld f29, 0(x2) # load 0x999b06fb9360ec88 from memory into f29
fmaxm.h f25, f22, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
la x2, scratch
li x3, 0x433e9cc32600ad28 # load x3 with value 0x433e9cc32600ad28
sd x3, 0(x2) # store 0x433e9cc32600ad28 in memory
fld f23, 0(x2) # load 0x433e9cc32600ad28 from memory into f23
fmaxm.h f8, f25, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f13, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f13
la x2, scratch
li x3, 0x53dbb0897b56026f # load x3 with value 0x53dbb0897b56026f
sd x3, 0(x2) # store 0x53dbb0897b56026f in memory
fld f21, 0(x2) # load 0x53dbb0897b56026f from memory into f21
fmaxm.h f16, f13, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f17, 0(x2) # load 0xffffffff0ffffc00 from memory into f17
la x2, scratch
li x3, 0xb40034720cd0b1e8 # load x3 with value 0xb40034720cd0b1e8
sd x3, 0(x2) # store 0xb40034720cd0b1e8 in memory
fld f31, 0(x2) # load 0xb40034720cd0b1e8 from memory into f31
fmaxm.h f13, f17, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f22, 0(x2) # load 0xfffeffffffff7e00 from memory into f22
la x2, scratch
li x3, 0xb121eb9558c6dfd4 # load x3 with value 0xb121eb9558c6dfd4
sd x3, 0(x2) # store 0xb121eb9558c6dfd4 in memory
fld f15, 0(x2) # load 0xb121eb9558c6dfd4 from memory into f15
fmaxm.h f11, f22, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f18, 0(x2) # load 0xffffffefffff7fff from memory into f18
la x2, scratch
li x3, 0x770df5e99feb220b # load x3 with value 0x770df5e99feb220b
sd x3, 0(x2) # store 0x770df5e99feb220b in memory
fld f12, 0(x2) # load 0x770df5e99feb220b from memory into f12
fmaxm.h f11, f18, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f28, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f28
la x2, scratch
li x3, 0x7c3cfda35f44eb6f # load x3 with value 0x7c3cfda35f44eb6f
sd x3, 0(x2) # store 0x7c3cfda35f44eb6f in memory
fld f29, 0(x2) # load 0x7c3cfda35f44eb6f from memory into f29
fmaxm.h f18, f28, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f28, 0(x2) # load 0xfffffffcffff7dff from memory into f28
la x2, scratch
li x3, 0x42a2a25cb730d71e # load x3 with value 0x42a2a25cb730d71e
sd x3, 0(x2) # store 0x42a2a25cb730d71e in memory
fld f5, 0(x2) # load 0x42a2a25cb730d71e from memory into f5
fmaxm.h f2, f28, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x165e497c108d9781 # load x3 with value 0x165e497c108d9781
sd x3, 0(x2) # store 0x165e497c108d9781 in memory
fld f12, 0(x2) # load 0x165e497c108d9781 from memory into f12
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
fmaxm.h f7, f12, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x610dc8c9e1d055bc # load x3 with value 0x610dc8c9e1d055bc
sd x3, 0(x2) # store 0x610dc8c9e1d055bc in memory
fld f27, 0(x2) # load 0x610dc8c9e1d055bc from memory into f27
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f24, 0(x2) # load 0xfffffffffffe8000 from memory into f24
fmaxm.h f30, f27, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x7e006cf89e8f8445 # load x3 with value 0x7e006cf89e8f8445
sd x3, 0(x2) # store 0x7e006cf89e8f8445 in memory
fld f8, 0(x2) # load 0x7e006cf89e8f8445 from memory into f8
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
fmaxm.h f12, f8, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xf7b1534ca9d7393e # load x3 with value 0xf7b1534ca9d7393e
sd x3, 0(x2) # store 0xf7b1534ca9d7393e in memory
fld f29, 0(x2) # load 0xf7b1534ca9d7393e from memory into f29
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f13, 0(x2) # load 0xfeedbee5beefbc00 from memory into f13
fmaxm.h f15, f29, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xb067e71d602db102 # load x3 with value 0xb067e71d602db102
sd x3, 0(x2) # store 0xb067e71d602db102 in memory
fld f14, 0(x2) # load 0xb067e71d602db102 from memory into f14
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f25, 0(x2) # load 0xffffffefffff0400 from memory into f25
fmaxm.h f9, f14, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xbdbe5320376b7abc # load x3 with value 0xbdbe5320376b7abc
sd x3, 0(x2) # store 0xbdbe5320376b7abc in memory
fld f31, 0(x2) # load 0xbdbe5320376b7abc from memory into f31
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f29, 0(x2) # load 0x00000000ffff8400 from memory into f29
fmaxm.h f19, f31, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x5fa892968b2cf1dd # load x3 with value 0x5fa892968b2cf1dd
sd x3, 0(x2) # store 0x5fa892968b2cf1dd in memory
fld f17, 0(x2) # load 0x5fa892968b2cf1dd from memory into f17
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fmaxm.h f15, f17, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x5b427e4b53c58a86 # load x3 with value 0x5b427e4b53c58a86
sd x3, 0(x2) # store 0x5b427e4b53c58a86 in memory
fld f25, 0(x2) # load 0x5b427e4b53c58a86 from memory into f25
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
fmaxm.h f23, f25, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xed1bdac2fb8d1191 # load x3 with value 0xed1bdac2fb8d1191
sd x3, 0(x2) # store 0xed1bdac2fb8d1191 in memory
fld f1, 0(x2) # load 0xed1bdac2fb8d1191 from memory into f1
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f14, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f14
fmaxm.h f2, f1, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x0387febfa668980e # load x3 with value 0x0387febfa668980e
sd x3, 0(x2) # store 0x0387febfa668980e in memory
fld f11, 0(x2) # load 0x0387febfa668980e from memory into f11
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f24, 0(x2) # load 0xffffffff0ffffc00 from memory into f24
fmaxm.h f30, f11, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x1315d73c774d1f04 # load x3 with value 0x1315d73c774d1f04
sd x3, 0(x2) # store 0x1315d73c774d1f04 in memory
fld f15, 0(x2) # load 0x1315d73c774d1f04 from memory into f15
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f30, 0(x2) # load 0xfffeffffffff7e00 from memory into f30
fmaxm.h f12, f15, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x13c8f76209ad13f1 # load x3 with value 0x13c8f76209ad13f1
sd x3, 0(x2) # store 0x13c8f76209ad13f1 in memory
fld f11, 0(x2) # load 0x13c8f76209ad13f1 from memory into f11
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f21, 0(x2) # load 0xffffffefffff7fff from memory into f21
fmaxm.h f5, f11, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x8d4504cbb576a306 # load x3 with value 0x8d4504cbb576a306
sd x3, 0(x2) # store 0x8d4504cbb576a306 in memory
fld f18, 0(x2) # load 0x8d4504cbb576a306 from memory into f18
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f30, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f30
fmaxm.h f14, f18, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x7e7754d369ec0532 # load x3 with value 0x7e7754d369ec0532
sd x3, 0(x2) # store 0x7e7754d369ec0532 in memory
fld f21, 0(x2) # load 0x7e7754d369ec0532 from memory into f21
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f3, 0(x2) # load 0xfffffffcffff7dff from memory into f3
fmaxm.h f10, f21, f3 # perform operation

#.EQU SIGSIZE,0
.EQU SIGSIZE,448 #combined


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
