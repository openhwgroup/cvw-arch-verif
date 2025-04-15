///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaZfhD/WALLY-COV-fltq.h.S
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
