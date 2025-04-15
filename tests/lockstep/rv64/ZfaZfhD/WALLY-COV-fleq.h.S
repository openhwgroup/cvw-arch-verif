///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaZfhD/WALLY-COV-fleq.h.S
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
