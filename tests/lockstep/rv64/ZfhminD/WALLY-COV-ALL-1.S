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
// Tests from: WALLY-COV-fcvt.s.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
fcvt.s.h f23, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f19, 0(x2) # load 0xfffffffffffe8000 from memory into f19
fcvt.s.h f29, f19 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f23, 0(x2) # load 0x7fffffffffff3c00 from memory into f23
fcvt.s.h f11, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f27, 0(x2) # load 0xfeedbee5beefbc00 from memory into f27
fcvt.s.h f17, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f1, 0(x2) # load 0xffffffefffff0400 from memory into f1
fcvt.s.h f13, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f14, 0(x2) # load 0x00000000ffff8400 from memory into f14
fcvt.s.h f31, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fcvt.s.h f15, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f12, 0(x2) # load 0xc0dec0dec0defbff from memory into f12
fcvt.s.h f2, f12 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f5)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f5, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f5
fcvt.s.h f19, f5 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f9, 0(x2) # load 0xffffffff0ffffc00 from memory into f9
fcvt.s.h f17, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
fcvt.s.h f14, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f8, 0(x2) # load 0xffffffefffff7fff from memory into f8
fcvt.s.h f18, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f2)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f2, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f2
fcvt.s.h f1, f2 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f26)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
fcvt.s.h f24, f26 # perform operation second time to make sure flags don't change

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fmv.x.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
fmv.x.h x6, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f8, 0(x2) # load 0xfffffffffffe8000 from memory into f8
fmv.x.h x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f29, 0(x2) # load 0x7fffffffffff3c00 from memory into f29
fmv.x.h x12, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f13, 0(x2) # load 0xfeedbee5beefbc00 from memory into f13
fmv.x.h x17, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f1, 0(x2) # load 0xffffffefffff0400 from memory into f1
fmv.x.h x15, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f23, 0(x2) # load 0x00000000ffff8400 from memory into f23
fmv.x.h x8, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f9, 0(x2) # load 0xefffffffffff7bff from memory into f9
fmv.x.h x19, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f24, 0(x2) # load 0xc0dec0dec0defbff from memory into f24
fmv.x.h x22, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f30, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f30
fmv.x.h x25, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f1, 0(x2) # load 0xffffffff0ffffc00 from memory into f1
fmv.x.h x5, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f13, 0(x2) # load 0xfffeffffffff7e00 from memory into f13
fmv.x.h x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
fmv.x.h x12, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f16, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f16
fmv.x.h x8, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f1, 0(x2) # load 0xfffffffcffff7dff from memory into f1
fmv.x.h x18, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

#.EQU SIGSIZE,112


// ******************
// Tests from: WALLY-COV-fmv.h.x.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x24, 0xdfe19e2897d83ef0 # load immediate value into integer register
fmv.h.x f26, x24 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fcvt.h.s.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6c403a4467a688d6 # load x3 with value 0x6c403a4467a688d6
sd x3, 0(x2) # store 0x6c403a4467a688d6 in memory
flw f10, 0(x2) # load 0x6c403a4467a688d6 from memory into f10
fcvt.h.s f29, f10 # perform operation second time to make sure flags don't change

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fsh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
la x21, scratch # base address
addi x21, x21, 235 # sub immediate from rs1 to counter offset
fsh f9, -235(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f8, 0(x2) # load 0xfffffffffffe8000 from memory into f8
la x28, scratch # base address
addi x28, x28, -106 # sub immediate from rs1 to counter offset
fsh f8, 106(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f10, 0(x2) # load 0x7fffffffffff3c00 from memory into f10
la x24, scratch # base address
addi x24, x24, 572 # sub immediate from rs1 to counter offset
fsh f10, -572(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f15, 0(x2) # load 0xfeedbee5beefbc00 from memory into f15
la x23, scratch # base address
addi x23, x23, -1632 # sub immediate from rs1 to counter offset
fsh f15, 1632(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f19, 0(x2) # load 0xffffffefffff0400 from memory into f19
la x8, scratch # base address
addi x8, x8, -1541 # sub immediate from rs1 to counter offset
fsh f19, 1541(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f5, 0(x2) # load 0x00000000ffff8400 from memory into f5
la x14, scratch # base address
addi x14, x14, -885 # sub immediate from rs1 to counter offset
fsh f5, 885(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
la x1, scratch # base address
addi x1, x1, 1301 # sub immediate from rs1 to counter offset
fsh f25, -1301(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f13, 0(x2) # load 0xc0dec0dec0defbff from memory into f13
la x24, scratch # base address
addi x24, x24, -1010 # sub immediate from rs1 to counter offset
fsh f13, 1010(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f16, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f16
la x21, scratch # base address
addi x21, x21, 474 # sub immediate from rs1 to counter offset
fsh f16, -474(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f5, 0(x2) # load 0xffffffff0ffffc00 from memory into f5
la x15, scratch # base address
addi x15, x15, -1645 # sub immediate from rs1 to counter offset
fsh f5, 1645(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f3, 0(x2) # load 0xfffeffffffff7e00 from memory into f3
la x19, scratch # base address
addi x19, x19, 1927 # sub immediate from rs1 to counter offset
fsh f3, -1927(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
la x11, scratch # base address
addi x11, x11, -462 # sub immediate from rs1 to counter offset
fsh f13, 462(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f17, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f17
la x6, scratch # base address
addi x6, x6, -1975 # sub immediate from rs1 to counter offset
fsh f17, 1975(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f29, 0(x2) # load 0xfffffffcffff7dff from memory into f29
la x5, scratch # base address
addi x5, x5, 391 # sub immediate from rs1 to counter offset
fsh f29, -391(x5) # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-flh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x17, scratch # base address 
addi x17, x17, 845 # sub immediate from rs1 to counter offset
li x6, 0x248ddfe2eb5488a6 # load x3 with value 0x248ddfe2eb5488a6
sd x6, -845(x17) # store 0x248ddfe2eb5488a6 in memory
flh f20, -845(x17) # perform operation

#.EQU SIGSIZE,0
.EQU SIGSIZE,112 #combined


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
