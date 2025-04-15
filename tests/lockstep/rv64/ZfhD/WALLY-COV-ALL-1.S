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


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x86d07ef0f9f6b1d4 # load x3 with value 0x86d07ef0f9f6b1d4
sd x3, 0(x2) # store 0x86d07ef0f9f6b1d4 in memory
flh f30, 0(x2) # load 0x86d07ef0f9f6b1d4 from memory into f30
fcvt.s.h f19, f30 # perform operation second time to make sure flags don't change

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
// Tests from: WALLY-COV-fcvt.d.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x9, x23 # perform first operation
fcvt.d.h f13, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x10, x28 # perform first operation
fcvt.d.h f1, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x2, x11 # perform first operation
fcvt.d.h f6, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f15, f1, f14 # perform first operation
fcvt.d.h f6, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x28, x21 # perform first operation
fcvt.d.h f28, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x10, x2 # perform first operation
fcvt.d.h f1, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f6, f18, f12 # perform first operation
fcvt.d.h f6, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f25, f15, f11 # perform first operation
fcvt.d.h f25, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f30, f29 # perform first operation
fcvt.d.h f27, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f9, f15, f30 # perform first operation
fcvt.d.h f15, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f31, f25, f27 # perform first operation
fcvt.d.h f27, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f19, f31, f23 # perform first operation
fcvt.d.h f2, f6 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x95913341caff791e # load x3 with value 0x95913341caff791e
sd x3, 0(x2) # store 0x95913341caff791e in memory
flh f0, 0(x2) # load 0x95913341caff791e from memory into f0
fcvt.d.h f19, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee74f3557d9e68ba # load x3 with value 0xee74f3557d9e68ba
sd x3, 0(x2) # store 0xee74f3557d9e68ba in memory
flh f1, 0(x2) # load 0xee74f3557d9e68ba from memory into f1
fcvt.d.h f21, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0da8cd89ba2a8377 # load x3 with value 0x0da8cd89ba2a8377
sd x3, 0(x2) # store 0x0da8cd89ba2a8377 in memory
flh f2, 0(x2) # load 0x0da8cd89ba2a8377 from memory into f2
fcvt.d.h f24, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5cfdbe16a787e2ee # load x3 with value 0x5cfdbe16a787e2ee
sd x3, 0(x2) # store 0x5cfdbe16a787e2ee in memory
flh f3, 0(x2) # load 0x5cfdbe16a787e2ee from memory into f3
fcvt.d.h f16, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec5ffa8332ce1ea0 # load x3 with value 0xec5ffa8332ce1ea0
sd x3, 0(x2) # store 0xec5ffa8332ce1ea0 in memory
flh f4, 0(x2) # load 0xec5ffa8332ce1ea0 from memory into f4
fcvt.d.h f18, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x66408476e679731b # load x3 with value 0x66408476e679731b
sd x3, 0(x2) # store 0x66408476e679731b in memory
flh f5, 0(x2) # load 0x66408476e679731b from memory into f5
fcvt.d.h f8, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd17bac4b84822118 # load x3 with value 0xd17bac4b84822118
sd x3, 0(x2) # store 0xd17bac4b84822118 in memory
flh f6, 0(x2) # load 0xd17bac4b84822118 from memory into f6
fcvt.d.h f14, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x47ac70bef53a15af # load x3 with value 0x47ac70bef53a15af
sd x3, 0(x2) # store 0x47ac70bef53a15af in memory
flh f7, 0(x2) # load 0x47ac70bef53a15af from memory into f7
fcvt.d.h f23, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5b7bd97176bf822 # load x3 with value 0xd5b7bd97176bf822
sd x3, 0(x2) # store 0xd5b7bd97176bf822 in memory
flh f8, 0(x2) # load 0xd5b7bd97176bf822 from memory into f8
fcvt.d.h f18, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9fd72510f12134d8 # load x3 with value 0x9fd72510f12134d8
sd x3, 0(x2) # store 0x9fd72510f12134d8 in memory
flh f9, 0(x2) # load 0x9fd72510f12134d8 from memory into f9
fcvt.d.h f29, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x117d822023bfb786 # load x3 with value 0x117d822023bfb786
sd x3, 0(x2) # store 0x117d822023bfb786 in memory
flh f10, 0(x2) # load 0x117d822023bfb786 from memory into f10
fcvt.d.h f19, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x52b959d4bda6a7ba # load x3 with value 0x52b959d4bda6a7ba
sd x3, 0(x2) # store 0x52b959d4bda6a7ba in memory
flh f11, 0(x2) # load 0x52b959d4bda6a7ba from memory into f11
fcvt.d.h f25, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5731b64d640ca39 # load x3 with value 0xb5731b64d640ca39
sd x3, 0(x2) # store 0xb5731b64d640ca39 in memory
flh f12, 0(x2) # load 0xb5731b64d640ca39 from memory into f12
fcvt.d.h f2, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0887c767a5a7bc06 # load x3 with value 0x0887c767a5a7bc06
sd x3, 0(x2) # store 0x0887c767a5a7bc06 in memory
flh f13, 0(x2) # load 0x0887c767a5a7bc06 from memory into f13
fcvt.d.h f10, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2dc4ebc3bfeba46d # load x3 with value 0x2dc4ebc3bfeba46d
sd x3, 0(x2) # store 0x2dc4ebc3bfeba46d in memory
flh f14, 0(x2) # load 0x2dc4ebc3bfeba46d from memory into f14
fcvt.d.h f16, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x24d73847f002ea53 # load x3 with value 0x24d73847f002ea53
sd x3, 0(x2) # store 0x24d73847f002ea53 in memory
flh f15, 0(x2) # load 0x24d73847f002ea53 from memory into f15
fcvt.d.h f1, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfb70baf8661eef7b # load x3 with value 0xfb70baf8661eef7b
sd x3, 0(x2) # store 0xfb70baf8661eef7b in memory
flh f16, 0(x2) # load 0xfb70baf8661eef7b from memory into f16
fcvt.d.h f25, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x58855e16d4aadf60 # load x3 with value 0x58855e16d4aadf60
sd x3, 0(x2) # store 0x58855e16d4aadf60 in memory
flh f17, 0(x2) # load 0x58855e16d4aadf60 from memory into f17
fcvt.d.h f8, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2eae23f3ff70c262 # load x3 with value 0x2eae23f3ff70c262
sd x3, 0(x2) # store 0x2eae23f3ff70c262 in memory
flh f18, 0(x2) # load 0x2eae23f3ff70c262 from memory into f18
fcvt.d.h f21, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x586ffcebc10a538d # load x3 with value 0x586ffcebc10a538d
sd x3, 0(x2) # store 0x586ffcebc10a538d in memory
flh f19, 0(x2) # load 0x586ffcebc10a538d from memory into f19
fcvt.d.h f7, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf89ac16811e24c0b # load x3 with value 0xf89ac16811e24c0b
sd x3, 0(x2) # store 0xf89ac16811e24c0b in memory
flh f20, 0(x2) # load 0xf89ac16811e24c0b from memory into f20
fcvt.d.h f8, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa60f311003f94bd3 # load x3 with value 0xa60f311003f94bd3
sd x3, 0(x2) # store 0xa60f311003f94bd3 in memory
flh f21, 0(x2) # load 0xa60f311003f94bd3 from memory into f21
fcvt.d.h f29, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1b898283ba3ad98d # load x3 with value 0x1b898283ba3ad98d
sd x3, 0(x2) # store 0x1b898283ba3ad98d in memory
flh f22, 0(x2) # load 0x1b898283ba3ad98d from memory into f22
fcvt.d.h f14, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd8a9a0b3020dcbbd # load x3 with value 0xd8a9a0b3020dcbbd
sd x3, 0(x2) # store 0xd8a9a0b3020dcbbd in memory
flh f23, 0(x2) # load 0xd8a9a0b3020dcbbd from memory into f23
fcvt.d.h f21, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8aa10c5530899d4 # load x3 with value 0xa8aa10c5530899d4
sd x3, 0(x2) # store 0xa8aa10c5530899d4 in memory
flh f24, 0(x2) # load 0xa8aa10c5530899d4 from memory into f24
fcvt.d.h f27, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f01673fb49d5858 # load x3 with value 0x7f01673fb49d5858
sd x3, 0(x2) # store 0x7f01673fb49d5858 in memory
flh f25, 0(x2) # load 0x7f01673fb49d5858 from memory into f25
fcvt.d.h f30, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e4229e66c333065 # load x3 with value 0x8e4229e66c333065
sd x3, 0(x2) # store 0x8e4229e66c333065 in memory
flh f26, 0(x2) # load 0x8e4229e66c333065 from memory into f26
fcvt.d.h f23, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00bbdc0c5be0a861 # load x3 with value 0x00bbdc0c5be0a861
sd x3, 0(x2) # store 0x00bbdc0c5be0a861 in memory
flh f27, 0(x2) # load 0x00bbdc0c5be0a861 from memory into f27
fcvt.d.h f14, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcc90df927374e461 # load x3 with value 0xcc90df927374e461
sd x3, 0(x2) # store 0xcc90df927374e461 in memory
flh f28, 0(x2) # load 0xcc90df927374e461 from memory into f28
fcvt.d.h f14, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6db99820004bb470 # load x3 with value 0x6db99820004bb470
sd x3, 0(x2) # store 0x6db99820004bb470 in memory
flh f29, 0(x2) # load 0x6db99820004bb470 from memory into f29
fcvt.d.h f2, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbcca858b5728e443 # load x3 with value 0xbcca858b5728e443
sd x3, 0(x2) # store 0xbcca858b5728e443 in memory
flh f30, 0(x2) # load 0xbcca858b5728e443 from memory into f30
fcvt.d.h f2, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe20d135321710274 # load x3 with value 0xe20d135321710274
sd x3, 0(x2) # store 0xe20d135321710274 in memory
flh f31, 0(x2) # load 0xe20d135321710274 from memory into f31
fcvt.d.h f6, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x51db593f91664c0a # load x3 with value 0x51db593f91664c0a
sd x3, 0(x2) # store 0x51db593f91664c0a in memory
flh f27, 0(x2) # load 0x51db593f91664c0a from memory into f27
fcvt.d.h f0, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa4972fe414a694cb # load x3 with value 0xa4972fe414a694cb
sd x3, 0(x2) # store 0xa4972fe414a694cb in memory
flh f10, 0(x2) # load 0xa4972fe414a694cb from memory into f10
fcvt.d.h f1, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x73f78e71181281ff # load x3 with value 0x73f78e71181281ff
sd x3, 0(x2) # store 0x73f78e71181281ff in memory
flh f9, 0(x2) # load 0x73f78e71181281ff from memory into f9
fcvt.d.h f2, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5b77b56bb815b87 # load x3 with value 0xb5b77b56bb815b87
sd x3, 0(x2) # store 0xb5b77b56bb815b87 in memory
flh f9, 0(x2) # load 0xb5b77b56bb815b87 from memory into f9
fcvt.d.h f3, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x59692723e60fe5bc # load x3 with value 0x59692723e60fe5bc
sd x3, 0(x2) # store 0x59692723e60fe5bc in memory
flh f26, 0(x2) # load 0x59692723e60fe5bc from memory into f26
fcvt.d.h f4, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x04aeed8368579c17 # load x3 with value 0x04aeed8368579c17
sd x3, 0(x2) # store 0x04aeed8368579c17 in memory
flh f3, 0(x2) # load 0x04aeed8368579c17 from memory into f3
fcvt.d.h f5, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe94d937d63d4697f # load x3 with value 0xe94d937d63d4697f
sd x3, 0(x2) # store 0xe94d937d63d4697f in memory
flh f21, 0(x2) # load 0xe94d937d63d4697f from memory into f21
fcvt.d.h f6, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe3e3a3febc1dea40 # load x3 with value 0xe3e3a3febc1dea40
sd x3, 0(x2) # store 0xe3e3a3febc1dea40 in memory
flh f20, 0(x2) # load 0xe3e3a3febc1dea40 from memory into f20
fcvt.d.h f7, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaedfa7182843f1db # load x3 with value 0xaedfa7182843f1db
sd x3, 0(x2) # store 0xaedfa7182843f1db in memory
flh f20, 0(x2) # load 0xaedfa7182843f1db from memory into f20
fcvt.d.h f8, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe52df51ff563bbb8 # load x3 with value 0xe52df51ff563bbb8
sd x3, 0(x2) # store 0xe52df51ff563bbb8 in memory
flh f26, 0(x2) # load 0xe52df51ff563bbb8 from memory into f26
fcvt.d.h f9, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7801b41a2990c470 # load x3 with value 0x7801b41a2990c470
sd x3, 0(x2) # store 0x7801b41a2990c470 in memory
flh f19, 0(x2) # load 0x7801b41a2990c470 from memory into f19
fcvt.d.h f10, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8395582bdddb1b28 # load x3 with value 0x8395582bdddb1b28
sd x3, 0(x2) # store 0x8395582bdddb1b28 in memory
flh f29, 0(x2) # load 0x8395582bdddb1b28 from memory into f29
fcvt.d.h f11, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdfbab71874576bff # load x3 with value 0xdfbab71874576bff
sd x3, 0(x2) # store 0xdfbab71874576bff in memory
flh f5, 0(x2) # load 0xdfbab71874576bff from memory into f5
fcvt.d.h f12, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdf92adfcda691a3c # load x3 with value 0xdf92adfcda691a3c
sd x3, 0(x2) # store 0xdf92adfcda691a3c in memory
flh f10, 0(x2) # load 0xdf92adfcda691a3c from memory into f10
fcvt.d.h f13, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeba66b9bbeb4cfc # load x3 with value 0xbeba66b9bbeb4cfc
sd x3, 0(x2) # store 0xbeba66b9bbeb4cfc in memory
flh f26, 0(x2) # load 0xbeba66b9bbeb4cfc from memory into f26
fcvt.d.h f14, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb0e61d6fa95b5d08 # load x3 with value 0xb0e61d6fa95b5d08
sd x3, 0(x2) # store 0xb0e61d6fa95b5d08 in memory
flh f25, 0(x2) # load 0xb0e61d6fa95b5d08 from memory into f25
fcvt.d.h f15, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x212327bb31948bd3 # load x3 with value 0x212327bb31948bd3
sd x3, 0(x2) # store 0x212327bb31948bd3 in memory
flh f19, 0(x2) # load 0x212327bb31948bd3 from memory into f19
fcvt.d.h f16, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc80d5c32a35ac387 # load x3 with value 0xc80d5c32a35ac387
sd x3, 0(x2) # store 0xc80d5c32a35ac387 in memory
flh f12, 0(x2) # load 0xc80d5c32a35ac387 from memory into f12
fcvt.d.h f17, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5879d68ef0d4a667 # load x3 with value 0x5879d68ef0d4a667
sd x3, 0(x2) # store 0x5879d68ef0d4a667 in memory
flh f31, 0(x2) # load 0x5879d68ef0d4a667 from memory into f31
fcvt.d.h f18, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8bc78dc3c2647aca # load x3 with value 0x8bc78dc3c2647aca
sd x3, 0(x2) # store 0x8bc78dc3c2647aca in memory
flh f17, 0(x2) # load 0x8bc78dc3c2647aca from memory into f17
fcvt.d.h f19, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x04604c0355677e19 # load x3 with value 0x04604c0355677e19
sd x3, 0(x2) # store 0x04604c0355677e19 in memory
flh f29, 0(x2) # load 0x04604c0355677e19 from memory into f29
fcvt.d.h f20, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc8562456f6234b0a # load x3 with value 0xc8562456f6234b0a
sd x3, 0(x2) # store 0xc8562456f6234b0a in memory
flh f18, 0(x2) # load 0xc8562456f6234b0a from memory into f18
fcvt.d.h f21, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5fe3c72474747af8 # load x3 with value 0x5fe3c72474747af8
sd x3, 0(x2) # store 0x5fe3c72474747af8 in memory
flh f31, 0(x2) # load 0x5fe3c72474747af8 from memory into f31
fcvt.d.h f22, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x56d5ddf315bd3913 # load x3 with value 0x56d5ddf315bd3913
sd x3, 0(x2) # store 0x56d5ddf315bd3913 in memory
flh f2, 0(x2) # load 0x56d5ddf315bd3913 from memory into f2
fcvt.d.h f23, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9d90e157ac7380c4 # load x3 with value 0x9d90e157ac7380c4
sd x3, 0(x2) # store 0x9d90e157ac7380c4 in memory
flh f30, 0(x2) # load 0x9d90e157ac7380c4 from memory into f30
fcvt.d.h f24, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb9896ee407eed619 # load x3 with value 0xb9896ee407eed619
sd x3, 0(x2) # store 0xb9896ee407eed619 in memory
flh f5, 0(x2) # load 0xb9896ee407eed619 from memory into f5
fcvt.d.h f25, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd7826e2004d3bf7a # load x3 with value 0xd7826e2004d3bf7a
sd x3, 0(x2) # store 0xd7826e2004d3bf7a in memory
flh f7, 0(x2) # load 0xd7826e2004d3bf7a from memory into f7
fcvt.d.h f26, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8ceb1d2e487fef1 # load x3 with value 0xa8ceb1d2e487fef1
sd x3, 0(x2) # store 0xa8ceb1d2e487fef1 in memory
flh f20, 0(x2) # load 0xa8ceb1d2e487fef1 from memory into f20
fcvt.d.h f27, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf0173c48b4d261d9 # load x3 with value 0xf0173c48b4d261d9
sd x3, 0(x2) # store 0xf0173c48b4d261d9 in memory
flh f13, 0(x2) # load 0xf0173c48b4d261d9 from memory into f13
fcvt.d.h f28, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd6f31c7b2e61629 # load x3 with value 0xfd6f31c7b2e61629
sd x3, 0(x2) # store 0xfd6f31c7b2e61629 in memory
flh f17, 0(x2) # load 0xfd6f31c7b2e61629 from memory into f17
fcvt.d.h f29, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf6f69a511c1c330e # load x3 with value 0xf6f69a511c1c330e
sd x3, 0(x2) # store 0xf6f69a511c1c330e in memory
flh f11, 0(x2) # load 0xf6f69a511c1c330e from memory into f11
fcvt.d.h f30, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0400f2e6608d5d40 # load x3 with value 0x0400f2e6608d5d40
sd x3, 0(x2) # store 0x0400f2e6608d5d40 in memory
flh f18, 0(x2) # load 0x0400f2e6608d5d40 from memory into f18
fcvt.d.h f31, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
flh f13, 0(x2) # load 0x0000000000000000 from memory into f13
fcvt.d.h f11, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008000 # load x3 with value 0x0000000000008000
sd x3, 0(x2) # store 0x0000000000008000 in memory
flh f30, 0(x2) # load 0x0000000000008000 from memory into f30
fcvt.d.h f17, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000003c00 # load x3 with value 0x0000000000003c00
sd x3, 0(x2) # store 0x0000000000003c00 in memory
flh f6, 0(x2) # load 0x0000000000003c00 from memory into f6
fcvt.d.h f30, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000bc00 # load x3 with value 0x000000000000bc00
sd x3, 0(x2) # store 0x000000000000bc00 in memory
flh f11, 0(x2) # load 0x000000000000bc00 from memory into f11
fcvt.d.h f19, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000003e00 # load x3 with value 0x0000000000003e00
sd x3, 0(x2) # store 0x0000000000003e00 in memory
flh f22, 0(x2) # load 0x0000000000003e00 from memory into f22
fcvt.d.h f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000be00 # load x3 with value 0x000000000000be00
sd x3, 0(x2) # store 0x000000000000be00 in memory
flh f21, 0(x2) # load 0x000000000000be00 from memory into f21
fcvt.d.h f3, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000004000 # load x3 with value 0x0000000000004000
sd x3, 0(x2) # store 0x0000000000004000 in memory
flh f11, 0(x2) # load 0x0000000000004000 from memory into f11
fcvt.d.h f10, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000c000 # load x3 with value 0x000000000000c000
sd x3, 0(x2) # store 0x000000000000c000 in memory
flh f14, 0(x2) # load 0x000000000000c000 from memory into f14
fcvt.d.h f5, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000400 # load x3 with value 0x0000000000000400
sd x3, 0(x2) # store 0x0000000000000400 in memory
flh f18, 0(x2) # load 0x0000000000000400 from memory into f18
fcvt.d.h f24, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008400 # load x3 with value 0x0000000000008400
sd x3, 0(x2) # store 0x0000000000008400 in memory
flh f5, 0(x2) # load 0x0000000000008400 from memory into f5
fcvt.d.h f8, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007bff # load x3 with value 0x0000000000007bff
sd x3, 0(x2) # store 0x0000000000007bff in memory
flh f11, 0(x2) # load 0x0000000000007bff from memory into f11
fcvt.d.h f12, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fbff # load x3 with value 0x000000000000fbff
sd x3, 0(x2) # store 0x000000000000fbff in memory
flh f25, 0(x2) # load 0x000000000000fbff from memory into f25
fcvt.d.h f29, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000003ff # load x3 with value 0x00000000000003ff
sd x3, 0(x2) # store 0x00000000000003ff in memory
flh f3, 0(x2) # load 0x00000000000003ff from memory into f3
fcvt.d.h f8, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000083ff # load x3 with value 0x00000000000083ff
sd x3, 0(x2) # store 0x00000000000083ff in memory
flh f28, 0(x2) # load 0x00000000000083ff from memory into f28
fcvt.d.h f24, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000200 # load x3 with value 0x0000000000000200
sd x3, 0(x2) # store 0x0000000000000200 in memory
flh f31, 0(x2) # load 0x0000000000000200 from memory into f31
fcvt.d.h f5, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008200 # load x3 with value 0x0000000000008200
sd x3, 0(x2) # store 0x0000000000008200 in memory
flh f10, 0(x2) # load 0x0000000000008200 from memory into f10
fcvt.d.h f12, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
flh f2, 0(x2) # load 0x0000000000000001 from memory into f2
fcvt.d.h f9, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008001 # load x3 with value 0x0000000000008001
sd x3, 0(x2) # store 0x0000000000008001 in memory
flh f10, 0(x2) # load 0x0000000000008001 from memory into f10
fcvt.d.h f28, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007c00 # load x3 with value 0x0000000000007c00
sd x3, 0(x2) # store 0x0000000000007c00 in memory
flh f11, 0(x2) # load 0x0000000000007c00 from memory into f11
fcvt.d.h f19, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fc00 # load x3 with value 0x000000000000fc00
sd x3, 0(x2) # store 0x000000000000fc00 in memory
flh f20, 0(x2) # load 0x000000000000fc00 from memory into f20
fcvt.d.h f6, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007e00 # load x3 with value 0x0000000000007e00
sd x3, 0(x2) # store 0x0000000000007e00 in memory
flh f14, 0(x2) # load 0x0000000000007e00 from memory into f14
fcvt.d.h f30, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007fff # load x3 with value 0x0000000000007fff
sd x3, 0(x2) # store 0x0000000000007fff in memory
flh f8, 0(x2) # load 0x0000000000007fff from memory into f8
fcvt.d.h f6, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fe00 # load x3 with value 0x000000000000fe00
sd x3, 0(x2) # store 0x000000000000fe00 in memory
flh f17, 0(x2) # load 0x000000000000fe00 from memory into f17
fcvt.d.h f10, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007c01 # load x3 with value 0x0000000000007c01
sd x3, 0(x2) # store 0x0000000000007c01 in memory
flh f10, 0(x2) # load 0x0000000000007c01 from memory into f10
fcvt.d.h f2, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007dff # load x3 with value 0x0000000000007dff
sd x3, 0(x2) # store 0x0000000000007dff in memory
flh f22, 0(x2) # load 0x0000000000007dff from memory into f22
fcvt.d.h f17, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fc01 # load x3 with value 0x000000000000fc01
sd x3, 0(x2) # store 0x000000000000fc01 in memory
flh f7, 0(x2) # load 0x000000000000fc01 from memory into f7
fcvt.d.h f16, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000058b4 # load x3 with value 0x00000000000058b4
sd x3, 0(x2) # store 0x00000000000058b4 in memory
flh f23, 0(x2) # load 0x00000000000058b4 from memory into f23
fcvt.d.h f2, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000c93a # load x3 with value 0x000000000000c93a
sd x3, 0(x2) # store 0x000000000000c93a in memory
flh f21, 0(x2) # load 0x000000000000c93a from memory into f21
fcvt.d.h f11, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb205c6fd06d14b5b # load x3 with value 0xb205c6fd06d14b5b
sd x3, 0(x2) # store 0xb205c6fd06d14b5b in memory
flh f0, 0(x2) # load 0xb205c6fd06d14b5b from memory into f0
fcvt.d.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb3e7a65e1539a76d # load x3 with value 0xb3e7a65e1539a76d
sd x3, 0(x2) # store 0xb3e7a65e1539a76d in memory
flh f1, 0(x2) # load 0xb3e7a65e1539a76d from memory into f1
fcvt.d.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x935f891eb5d2d022 # load x3 with value 0x935f891eb5d2d022
sd x3, 0(x2) # store 0x935f891eb5d2d022 in memory
flh f2, 0(x2) # load 0x935f891eb5d2d022 from memory into f2
fcvt.d.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x06a7255223e2b88b # load x3 with value 0x06a7255223e2b88b
sd x3, 0(x2) # store 0x06a7255223e2b88b in memory
flh f3, 0(x2) # load 0x06a7255223e2b88b from memory into f3
fcvt.d.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5c58c066700621aa # load x3 with value 0x5c58c066700621aa
sd x3, 0(x2) # store 0x5c58c066700621aa in memory
flh f4, 0(x2) # load 0x5c58c066700621aa from memory into f4
fcvt.d.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x340f0db85ff33cdc # load x3 with value 0x340f0db85ff33cdc
sd x3, 0(x2) # store 0x340f0db85ff33cdc in memory
flh f5, 0(x2) # load 0x340f0db85ff33cdc from memory into f5
fcvt.d.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40fdedca8db32810 # load x3 with value 0x40fdedca8db32810
sd x3, 0(x2) # store 0x40fdedca8db32810 in memory
flh f6, 0(x2) # load 0x40fdedca8db32810 from memory into f6
fcvt.d.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5382bb75d5393c21 # load x3 with value 0x5382bb75d5393c21
sd x3, 0(x2) # store 0x5382bb75d5393c21 in memory
flh f7, 0(x2) # load 0x5382bb75d5393c21 from memory into f7
fcvt.d.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x155d28088311d4d6 # load x3 with value 0x155d28088311d4d6
sd x3, 0(x2) # store 0x155d28088311d4d6 in memory
flh f8, 0(x2) # load 0x155d28088311d4d6 from memory into f8
fcvt.d.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb24df53fc5e8433b # load x3 with value 0xb24df53fc5e8433b
sd x3, 0(x2) # store 0xb24df53fc5e8433b in memory
flh f9, 0(x2) # load 0xb24df53fc5e8433b from memory into f9
fcvt.d.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x70f3614d1068514a # load x3 with value 0x70f3614d1068514a
sd x3, 0(x2) # store 0x70f3614d1068514a in memory
flh f10, 0(x2) # load 0x70f3614d1068514a from memory into f10
fcvt.d.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe4e4355fbf948d9b # load x3 with value 0xe4e4355fbf948d9b
sd x3, 0(x2) # store 0xe4e4355fbf948d9b in memory
flh f11, 0(x2) # load 0xe4e4355fbf948d9b from memory into f11
fcvt.d.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x74609710f29f387f # load x3 with value 0x74609710f29f387f
sd x3, 0(x2) # store 0x74609710f29f387f in memory
flh f12, 0(x2) # load 0x74609710f29f387f from memory into f12
fcvt.d.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x35a4b07a6a669930 # load x3 with value 0x35a4b07a6a669930
sd x3, 0(x2) # store 0x35a4b07a6a669930 in memory
flh f13, 0(x2) # load 0x35a4b07a6a669930 from memory into f13
fcvt.d.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x739c43a6fa4d03eb # load x3 with value 0x739c43a6fa4d03eb
sd x3, 0(x2) # store 0x739c43a6fa4d03eb in memory
flh f14, 0(x2) # load 0x739c43a6fa4d03eb from memory into f14
fcvt.d.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x635bf6f00a999336 # load x3 with value 0x635bf6f00a999336
sd x3, 0(x2) # store 0x635bf6f00a999336 in memory
flh f15, 0(x2) # load 0x635bf6f00a999336 from memory into f15
fcvt.d.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcace83edddd712d5 # load x3 with value 0xcace83edddd712d5
sd x3, 0(x2) # store 0xcace83edddd712d5 in memory
flh f16, 0(x2) # load 0xcace83edddd712d5 from memory into f16
fcvt.d.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e049fcde4e62b69 # load x3 with value 0x5e049fcde4e62b69
sd x3, 0(x2) # store 0x5e049fcde4e62b69 in memory
flh f17, 0(x2) # load 0x5e049fcde4e62b69 from memory into f17
fcvt.d.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6d50c8ec87ebdb0 # load x3 with value 0xa6d50c8ec87ebdb0
sd x3, 0(x2) # store 0xa6d50c8ec87ebdb0 in memory
flh f18, 0(x2) # load 0xa6d50c8ec87ebdb0 from memory into f18
fcvt.d.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd4e8db448d846d39 # load x3 with value 0xd4e8db448d846d39
sd x3, 0(x2) # store 0xd4e8db448d846d39 in memory
flh f19, 0(x2) # load 0xd4e8db448d846d39 from memory into f19
fcvt.d.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc1ed1dcad7f316e7 # load x3 with value 0xc1ed1dcad7f316e7
sd x3, 0(x2) # store 0xc1ed1dcad7f316e7 in memory
flh f20, 0(x2) # load 0xc1ed1dcad7f316e7 from memory into f20
fcvt.d.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4ab7e14741aaa9f6 # load x3 with value 0x4ab7e14741aaa9f6
sd x3, 0(x2) # store 0x4ab7e14741aaa9f6 in memory
flh f21, 0(x2) # load 0x4ab7e14741aaa9f6 from memory into f21
fcvt.d.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf6c146642e8a7552 # load x3 with value 0xf6c146642e8a7552
sd x3, 0(x2) # store 0xf6c146642e8a7552 in memory
flh f22, 0(x2) # load 0xf6c146642e8a7552 from memory into f22
fcvt.d.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1e849b189c9bfe8a # load x3 with value 0x1e849b189c9bfe8a
sd x3, 0(x2) # store 0x1e849b189c9bfe8a in memory
flh f23, 0(x2) # load 0x1e849b189c9bfe8a from memory into f23
fcvt.d.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfaa84b4a466e512 # load x3 with value 0xbfaa84b4a466e512
sd x3, 0(x2) # store 0xbfaa84b4a466e512 in memory
flh f24, 0(x2) # load 0xbfaa84b4a466e512 from memory into f24
fcvt.d.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdf4d1796ac4bc2bb # load x3 with value 0xdf4d1796ac4bc2bb
sd x3, 0(x2) # store 0xdf4d1796ac4bc2bb in memory
flh f25, 0(x2) # load 0xdf4d1796ac4bc2bb from memory into f25
fcvt.d.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x356336ba87057e1c # load x3 with value 0x356336ba87057e1c
sd x3, 0(x2) # store 0x356336ba87057e1c in memory
flh f26, 0(x2) # load 0x356336ba87057e1c from memory into f26
fcvt.d.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd975f19b2fb3ddd6 # load x3 with value 0xd975f19b2fb3ddd6
sd x3, 0(x2) # store 0xd975f19b2fb3ddd6 in memory
flh f27, 0(x2) # load 0xd975f19b2fb3ddd6 from memory into f27
fcvt.d.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00758167d6f462c0 # load x3 with value 0x00758167d6f462c0
sd x3, 0(x2) # store 0x00758167d6f462c0 in memory
flh f28, 0(x2) # load 0x00758167d6f462c0 from memory into f28
fcvt.d.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcd7379dcf4e13dc2 # load x3 with value 0xcd7379dcf4e13dc2
sd x3, 0(x2) # store 0xcd7379dcf4e13dc2 in memory
flh f29, 0(x2) # load 0xcd7379dcf4e13dc2 from memory into f29
fcvt.d.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x32c093331c30974e # load x3 with value 0x32c093331c30974e
sd x3, 0(x2) # store 0x32c093331c30974e in memory
flh f30, 0(x2) # load 0x32c093331c30974e from memory into f30
fcvt.d.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xef26456432d26ad3 # load x3 with value 0xef26456432d26ad3
sd x3, 0(x2) # store 0xef26456432d26ad3 in memory
flh f31, 0(x2) # load 0xef26456432d26ad3 from memory into f31
fcvt.d.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
fcvt.d.h f13, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f3, 0(x2) # load 0xfffffffffffe8000 from memory into f3
fcvt.d.h f24, f3 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f18, 0(x2) # load 0x7fffffffffff3c00 from memory into f18
fcvt.d.h f20, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f26)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
fcvt.d.h f28, f26 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f8, 0(x2) # load 0xffffffefffff0400 from memory into f8
fcvt.d.h f11, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
fcvt.d.h f12, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f9, 0(x2) # load 0xefffffffffff7bff from memory into f9
fcvt.d.h f1, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f20, 0(x2) # load 0xc0dec0dec0defbff from memory into f20
fcvt.d.h f9, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f29, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f29
fcvt.d.h f5, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f30)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
fcvt.d.h f13, f30 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f13, 0(x2) # load 0xfffeffffffff7e00 from memory into f13
fcvt.d.h f1, f13 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f18, 0(x2) # load 0xffffffefffff7fff from memory into f18
fcvt.d.h f25, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
fcvt.d.h f25, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f9, 0(x2) # load 0xfffffffcffff7dff from memory into f9
fcvt.d.h f27, f9 # perform operation second time to make sure flags don't change

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
// Tests from: WALLY-COV-fdiv.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x7b6a3624c094c229 # load x3 with value 0x7b6a3624c094c229
sd x3, 0(x2) # store 0x7b6a3624c094c229 in memory
flh f8, 0(x2) # load 0x7b6a3624c094c229 from memory into f8
la x2, scratch
li x3, 0xbc2540d939760695 # load x3 with value 0xbc2540d939760695
sd x3, 0(x2) # store 0xbc2540d939760695 in memory
flh f12, 0(x2) # load 0xbc2540d939760695 from memory into f12
fdiv.h f27, f8, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
la x2, scratch
li x3, 0x2bfd961bbd46c28d # load x3 with value 0x2bfd961bbd46c28d
sd x3, 0(x2) # store 0x2bfd961bbd46c28d in memory
fld f22, 0(x2) # load 0x2bfd961bbd46c28d from memory into f22
fdiv.h f9, f29, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f10, 0(x2) # load 0xfffffffffffe8000 from memory into f10
la x2, scratch
li x3, 0x35da5779ca0c66fd # load x3 with value 0x35da5779ca0c66fd
sd x3, 0(x2) # store 0x35da5779ca0c66fd in memory
fld f30, 0(x2) # load 0x35da5779ca0c66fd from memory into f30
fdiv.h f15, f10, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f11, 0(x2) # load 0x7fffffffffff3c00 from memory into f11
la x2, scratch
li x3, 0xabf0a92a297dd08f # load x3 with value 0xabf0a92a297dd08f
sd x3, 0(x2) # store 0xabf0a92a297dd08f in memory
fld f13, 0(x2) # load 0xabf0a92a297dd08f from memory into f13
fdiv.h f29, f11, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f9, 0(x2) # load 0xfeedbee5beefbc00 from memory into f9
la x2, scratch
li x3, 0xbd39652ed24b7871 # load x3 with value 0xbd39652ed24b7871
sd x3, 0(x2) # store 0xbd39652ed24b7871 in memory
fld f14, 0(x2) # load 0xbd39652ed24b7871 from memory into f14
fdiv.h f15, f9, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f7, 0(x2) # load 0xffffffefffff0400 from memory into f7
la x2, scratch
li x3, 0x637182f9bc3b152a # load x3 with value 0x637182f9bc3b152a
sd x3, 0(x2) # store 0x637182f9bc3b152a in memory
fld f21, 0(x2) # load 0x637182f9bc3b152a from memory into f21
fdiv.h f28, f7, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f16, 0(x2) # load 0x00000000ffff8400 from memory into f16
la x2, scratch
li x3, 0xb404930ed24102f7 # load x3 with value 0xb404930ed24102f7
sd x3, 0(x2) # store 0xb404930ed24102f7 in memory
fld f25, 0(x2) # load 0xb404930ed24102f7 from memory into f25
fdiv.h f2, f16, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f1, 0(x2) # load 0xefffffffffff7bff from memory into f1
la x2, scratch
li x3, 0x8d608aa2c98367f5 # load x3 with value 0x8d608aa2c98367f5
sd x3, 0(x2) # store 0x8d608aa2c98367f5 in memory
fld f21, 0(x2) # load 0x8d608aa2c98367f5 from memory into f21
fdiv.h f10, f1, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f12, 0(x2) # load 0xc0dec0dec0defbff from memory into f12
la x2, scratch
li x3, 0x8dd6f45a9240708d # load x3 with value 0x8dd6f45a9240708d
sd x3, 0(x2) # store 0x8dd6f45a9240708d in memory
fld f20, 0(x2) # load 0x8dd6f45a9240708d from memory into f20
fdiv.h f19, f12, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f26, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f26
la x2, scratch
li x3, 0x16b68e7e08d849db # load x3 with value 0x16b68e7e08d849db
sd x3, 0(x2) # store 0x16b68e7e08d849db in memory
fld f9, 0(x2) # load 0x16b68e7e08d849db from memory into f9
fdiv.h f13, f26, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f5, 0(x2) # load 0xffffffff0ffffc00 from memory into f5
la x2, scratch
li x3, 0x0c3bde1dd6d4c133 # load x3 with value 0x0c3bde1dd6d4c133
sd x3, 0(x2) # store 0x0c3bde1dd6d4c133 in memory
fld f30, 0(x2) # load 0x0c3bde1dd6d4c133 from memory into f30
fdiv.h f15, f5, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f8, 0(x2) # load 0xfffeffffffff7e00 from memory into f8
la x2, scratch
li x3, 0x3fa1be53a74532a5 # load x3 with value 0x3fa1be53a74532a5
sd x3, 0(x2) # store 0x3fa1be53a74532a5 in memory
fld f21, 0(x2) # load 0x3fa1be53a74532a5 from memory into f21
fdiv.h f9, f8, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f17, 0(x2) # load 0xffffffefffff7fff from memory into f17
la x2, scratch
li x3, 0xd7a242bdaad15ab8 # load x3 with value 0xd7a242bdaad15ab8
sd x3, 0(x2) # store 0xd7a242bdaad15ab8 in memory
fld f5, 0(x2) # load 0xd7a242bdaad15ab8 from memory into f5
fdiv.h f26, f17, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f22, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f22
la x2, scratch
li x3, 0xb976ed85363dff21 # load x3 with value 0xb976ed85363dff21
sd x3, 0(x2) # store 0xb976ed85363dff21 in memory
fld f9, 0(x2) # load 0xb976ed85363dff21 from memory into f9
fdiv.h f11, f22, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f22, 0(x2) # load 0xfffffffcffff7dff from memory into f22
la x2, scratch
li x3, 0xa08f8fb447e84ac5 # load x3 with value 0xa08f8fb447e84ac5
sd x3, 0(x2) # store 0xa08f8fb447e84ac5 in memory
fld f31, 0(x2) # load 0xa08f8fb447e84ac5 from memory into f31
fdiv.h f26, f22, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe585b772abb179f0 # load x3 with value 0xe585b772abb179f0
sd x3, 0(x2) # store 0xe585b772abb179f0 in memory
fld f7, 0(x2) # load 0xe585b772abb179f0 from memory into f7
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f12, 0(x2) # load 0xffffffff00000000 from memory into f12
fdiv.h f8, f7, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x371ea331cac9d4c5 # load x3 with value 0x371ea331cac9d4c5
sd x3, 0(x2) # store 0x371ea331cac9d4c5 in memory
fld f23, 0(x2) # load 0x371ea331cac9d4c5 from memory into f23
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f13, 0(x2) # load 0xfffffffffffe8000 from memory into f13
fdiv.h f17, f23, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x9d4dbb4c46f58a64 # load x3 with value 0x9d4dbb4c46f58a64
sd x3, 0(x2) # store 0x9d4dbb4c46f58a64 in memory
fld f24, 0(x2) # load 0x9d4dbb4c46f58a64 from memory into f24
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
fdiv.h f28, f24, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x46ebeee513f68934 # load x3 with value 0x46ebeee513f68934
sd x3, 0(x2) # store 0x46ebeee513f68934 in memory
fld f18, 0(x2) # load 0x46ebeee513f68934 from memory into f18
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
fdiv.h f15, f18, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xad9eabc1e57513af # load x3 with value 0xad9eabc1e57513af
sd x3, 0(x2) # store 0xad9eabc1e57513af in memory
fld f11, 0(x2) # load 0xad9eabc1e57513af from memory into f11
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
fdiv.h f14, f11, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x77909545fa82be4b # load x3 with value 0x77909545fa82be4b
sd x3, 0(x2) # store 0x77909545fa82be4b in memory
fld f22, 0(x2) # load 0x77909545fa82be4b from memory into f22
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f17, 0(x2) # load 0x00000000ffff8400 from memory into f17
fdiv.h f25, f22, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x7a7376dd182cbf18 # load x3 with value 0x7a7376dd182cbf18
sd x3, 0(x2) # store 0x7a7376dd182cbf18 in memory
fld f14, 0(x2) # load 0x7a7376dd182cbf18 from memory into f14
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f6, 0(x2) # load 0xefffffffffff7bff from memory into f6
fdiv.h f25, f14, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x391bf4213153b1a5 # load x3 with value 0x391bf4213153b1a5
sd x3, 0(x2) # store 0x391bf4213153b1a5 in memory
fld f16, 0(x2) # load 0x391bf4213153b1a5 from memory into f16
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
fdiv.h f5, f16, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xa000af1b11257800 # load x3 with value 0xa000af1b11257800
sd x3, 0(x2) # store 0xa000af1b11257800 in memory
fld f14, 0(x2) # load 0xa000af1b11257800 from memory into f14
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f23, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f23
fdiv.h f7, f14, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x5141a6d1b98fc583 # load x3 with value 0x5141a6d1b98fc583
sd x3, 0(x2) # store 0x5141a6d1b98fc583 in memory
fld f26, 0(x2) # load 0x5141a6d1b98fc583 from memory into f26
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f28, 0(x2) # load 0xffffffff0ffffc00 from memory into f28
fdiv.h f3, f26, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x266c32ce1ee08f86 # load x3 with value 0x266c32ce1ee08f86
sd x3, 0(x2) # store 0x266c32ce1ee08f86 in memory
fld f26, 0(x2) # load 0x266c32ce1ee08f86 from memory into f26
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f16, 0(x2) # load 0xfffeffffffff7e00 from memory into f16
fdiv.h f15, f26, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xbe056036be402a6d # load x3 with value 0xbe056036be402a6d
sd x3, 0(x2) # store 0xbe056036be402a6d in memory
fld f17, 0(x2) # load 0xbe056036be402a6d from memory into f17
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f24, 0(x2) # load 0xffffffefffff7fff from memory into f24
fdiv.h f16, f17, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x9e33f00cf3720a91 # load x3 with value 0x9e33f00cf3720a91
sd x3, 0(x2) # store 0x9e33f00cf3720a91 in memory
fld f2, 0(x2) # load 0x9e33f00cf3720a91 from memory into f2
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f26, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f26
fdiv.h f6, f2, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x8abfb802b92b12d0 # load x3 with value 0x8abfb802b92b12d0
sd x3, 0(x2) # store 0x8abfb802b92b12d0 in memory
fld f13, 0(x2) # load 0x8abfb802b92b12d0 from memory into f13
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f8, 0(x2) # load 0xfffffffcffff7dff from memory into f8
fdiv.h f22, f13, f8 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fcvt.wu.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f22, 0(x2) # load 0xffffffff00000000 from memory into f22
fcvt.wu.h x25, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f10, 0(x2) # load 0xfffffffffffe8000 from memory into f10
fcvt.wu.h x11, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f11, 0(x2) # load 0x7fffffffffff3c00 from memory into f11
fcvt.wu.h x9, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f2, 0(x2) # load 0xfeedbee5beefbc00 from memory into f2
fcvt.wu.h x23, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
fcvt.wu.h x13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
fcvt.wu.h x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f2, 0(x2) # load 0xefffffffffff7bff from memory into f2
fcvt.wu.h x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f26, 0(x2) # load 0xc0dec0dec0defbff from memory into f26
fcvt.wu.h x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f9, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f9
fcvt.wu.h x21, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f14, 0(x2) # load 0xffffffff0ffffc00 from memory into f14
fcvt.wu.h x17, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f3, 0(x2) # load 0xfffeffffffff7e00 from memory into f3
fcvt.wu.h x15, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f22, 0(x2) # load 0xffffffefffff7fff from memory into f22
fcvt.wu.h x23, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f14, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f14
fcvt.wu.h x13, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f13, 0(x2) # load 0xfffffffcffff7dff from memory into f13
fcvt.wu.h x2, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

#.EQU SIGSIZE,112


// ******************
// Tests from: WALLY-COV-fle.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f22, 0(x2) # load 0xffffffff00000000 from memory into f22
la x2, scratch
li x3, 0x7d8335168aa19bdc # load x3 with value 0x7d8335168aa19bdc
sd x3, 0(x2) # store 0x7d8335168aa19bdc in memory
fld f13, 0(x2) # load 0x7d8335168aa19bdc from memory into f13
fle.h x17, f22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f14, 0(x2) # load 0xfffffffffffe8000 from memory into f14
la x2, scratch
li x3, 0x62bd1e093e0bc523 # load x3 with value 0x62bd1e093e0bc523
sd x3, 0(x2) # store 0x62bd1e093e0bc523 in memory
fld f26, 0(x2) # load 0x62bd1e093e0bc523 from memory into f26
fle.h x30, f14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f24, 0(x2) # load 0x7fffffffffff3c00 from memory into f24
la x2, scratch
li x3, 0xa8068b6ce36e7699 # load x3 with value 0xa8068b6ce36e7699
sd x3, 0(x2) # store 0xa8068b6ce36e7699 in memory
fld f26, 0(x2) # load 0xa8068b6ce36e7699 from memory into f26
fle.h x2, f24, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f12, 0(x2) # load 0xfeedbee5beefbc00 from memory into f12
la x2, scratch
li x3, 0xb2a599f045bbe814 # load x3 with value 0xb2a599f045bbe814
sd x3, 0(x2) # store 0xb2a599f045bbe814 in memory
fld f3, 0(x2) # load 0xb2a599f045bbe814 from memory into f3
fle.h x6, f12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f3, 0(x2) # load 0xffffffefffff0400 from memory into f3
la x2, scratch
li x3, 0xdfdbefd15c2016cc # load x3 with value 0xdfdbefd15c2016cc
sd x3, 0(x2) # store 0xdfdbefd15c2016cc in memory
fld f24, 0(x2) # load 0xdfdbefd15c2016cc from memory into f24
fle.h x2, f3, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f24, 0(x2) # load 0x00000000ffff8400 from memory into f24
la x2, scratch
li x3, 0xbaaaa37ddb5d3a68 # load x3 with value 0xbaaaa37ddb5d3a68
sd x3, 0(x2) # store 0xbaaaa37ddb5d3a68 in memory
fld f5, 0(x2) # load 0xbaaaa37ddb5d3a68 from memory into f5
fle.h x21, f24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0xb25d0d359488cec5 # load x3 with value 0xb25d0d359488cec5
sd x3, 0(x2) # store 0xb25d0d359488cec5 in memory
fld f17, 0(x2) # load 0xb25d0d359488cec5 from memory into f17
fle.h x2, f12, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
la x2, scratch
li x3, 0xba42d50196e98016 # load x3 with value 0xba42d50196e98016
sd x3, 0(x2) # store 0xba42d50196e98016 in memory
fld f22, 0(x2) # load 0xba42d50196e98016 from memory into f22
fle.h x14, f16, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f1, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f1
la x2, scratch
li x3, 0x04cecdca4a1aa5d8 # load x3 with value 0x04cecdca4a1aa5d8
sd x3, 0(x2) # store 0x04cecdca4a1aa5d8 in memory
fld f21, 0(x2) # load 0x04cecdca4a1aa5d8 from memory into f21
fle.h x17, f1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f10, 0(x2) # load 0xffffffff0ffffc00 from memory into f10
la x2, scratch
li x3, 0x0cdecea4f612f81d # load x3 with value 0x0cdecea4f612f81d
sd x3, 0(x2) # store 0x0cdecea4f612f81d in memory
fld f24, 0(x2) # load 0x0cdecea4f612f81d from memory into f24
fle.h x7, f10, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
la x2, scratch
li x3, 0x92e5de2d864038ea # load x3 with value 0x92e5de2d864038ea
sd x3, 0(x2) # store 0x92e5de2d864038ea in memory
fld f30, 0(x2) # load 0x92e5de2d864038ea from memory into f30
fle.h x20, f2, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f19, 0(x2) # load 0xffffffefffff7fff from memory into f19
la x2, scratch
li x3, 0x6c3ff94a90c9362d # load x3 with value 0x6c3ff94a90c9362d
sd x3, 0(x2) # store 0x6c3ff94a90c9362d in memory
fld f13, 0(x2) # load 0x6c3ff94a90c9362d from memory into f13
fle.h x7, f19, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f1, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f1
la x2, scratch
li x3, 0xc398c14e7a628f4b # load x3 with value 0xc398c14e7a628f4b
sd x3, 0(x2) # store 0xc398c14e7a628f4b in memory
fld f7, 0(x2) # load 0xc398c14e7a628f4b from memory into f7
fle.h x21, f1, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f22, 0(x2) # load 0xfffffffcffff7dff from memory into f22
la x2, scratch
li x3, 0x953bdddb32a2d3d8 # load x3 with value 0x953bdddb32a2d3d8
sd x3, 0(x2) # store 0x953bdddb32a2d3d8 in memory
fld f25, 0(x2) # load 0x953bdddb32a2d3d8 from memory into f25
fle.h x5, f22, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xac55a88da2f6d83e # load x3 with value 0xac55a88da2f6d83e
sd x3, 0(x2) # store 0xac55a88da2f6d83e in memory
fld f29, 0(x2) # load 0xac55a88da2f6d83e from memory into f29
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
fle.h x15, f29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x350ec8b3b194556d # load x3 with value 0x350ec8b3b194556d
sd x3, 0(x2) # store 0x350ec8b3b194556d in memory
fld f2, 0(x2) # load 0x350ec8b3b194556d from memory into f2
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f20, 0(x2) # load 0xfffffffffffe8000 from memory into f20
fle.h x19, f2, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xdf34d6e6e6aba91b # load x3 with value 0xdf34d6e6e6aba91b
sd x3, 0(x2) # store 0xdf34d6e6e6aba91b in memory
fld f18, 0(x2) # load 0xdf34d6e6e6aba91b from memory into f18
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f26, 0(x2) # load 0x7fffffffffff3c00 from memory into f26
fle.h x27, f18, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xe536d082b5f575d9 # load x3 with value 0xe536d082b5f575d9
sd x3, 0(x2) # store 0xe536d082b5f575d9 in memory
fld f1, 0(x2) # load 0xe536d082b5f575d9 from memory into f1
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
fle.h x5, f1, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x69378d6f7bce2428 # load x3 with value 0x69378d6f7bce2428
sd x3, 0(x2) # store 0x69378d6f7bce2428 in memory
fld f29, 0(x2) # load 0x69378d6f7bce2428 from memory into f29
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f18, 0(x2) # load 0xffffffefffff0400 from memory into f18
fle.h x30, f29, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x9c1f21d3a64bc7f4 # load x3 with value 0x9c1f21d3a64bc7f4
sd x3, 0(x2) # store 0x9c1f21d3a64bc7f4 in memory
fld f15, 0(x2) # load 0x9c1f21d3a64bc7f4 from memory into f15
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
fle.h x1, f15, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x48e8183239fb662d # load x3 with value 0x48e8183239fb662d
sd x3, 0(x2) # store 0x48e8183239fb662d in memory
fld f29, 0(x2) # load 0x48e8183239fb662d from memory into f29
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f27, 0(x2) # load 0xefffffffffff7bff from memory into f27
fle.h x24, f29, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x620ba1de6ad7143f # load x3 with value 0x620ba1de6ad7143f
sd x3, 0(x2) # store 0x620ba1de6ad7143f in memory
fld f28, 0(x2) # load 0x620ba1de6ad7143f from memory into f28
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f17, 0(x2) # load 0xc0dec0dec0defbff from memory into f17
fle.h x16, f28, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x038820ccf2c8f356 # load x3 with value 0x038820ccf2c8f356
sd x3, 0(x2) # store 0x038820ccf2c8f356 in memory
fld f19, 0(x2) # load 0x038820ccf2c8f356 from memory into f19
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f26, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f26
fle.h x1, f19, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x4be24d071a0a2295 # load x3 with value 0x4be24d071a0a2295
sd x3, 0(x2) # store 0x4be24d071a0a2295 in memory
fld f24, 0(x2) # load 0x4be24d071a0a2295 from memory into f24
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f26, 0(x2) # load 0xffffffff0ffffc00 from memory into f26
fle.h x29, f24, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x45c6ea9f9c13c443 # load x3 with value 0x45c6ea9f9c13c443
sd x3, 0(x2) # store 0x45c6ea9f9c13c443 in memory
fld f6, 0(x2) # load 0x45c6ea9f9c13c443 from memory into f6
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f14, 0(x2) # load 0xfffeffffffff7e00 from memory into f14
fle.h x22, f6, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xd1bf8dfb5694e02a # load x3 with value 0xd1bf8dfb5694e02a
sd x3, 0(x2) # store 0xd1bf8dfb5694e02a in memory
fld f9, 0(x2) # load 0xd1bf8dfb5694e02a from memory into f9
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f25, 0(x2) # load 0xffffffefffff7fff from memory into f25
fle.h x7, f9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x78911ec2a8701d40 # load x3 with value 0x78911ec2a8701d40
sd x3, 0(x2) # store 0x78911ec2a8701d40 in memory
fld f15, 0(x2) # load 0x78911ec2a8701d40 from memory into f15
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f29, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f29
fle.h x1, f15, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x735d1d6ae3219005 # load x3 with value 0x735d1d6ae3219005
sd x3, 0(x2) # store 0x735d1d6ae3219005 in memory
fld f25, 0(x2) # load 0x735d1d6ae3219005 from memory into f25
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
fle.h x19, f25, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

#.EQU SIGSIZE,224


// ******************
// Tests from: WALLY-COV-fcvt.l.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f31, 0(x2) # load 0xffffffff00000000 from memory into f31
fcvt.l.h x24, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f11, 0(x2) # load 0xfffffffffffe8000 from memory into f11
fcvt.l.h x30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f14, 0(x2) # load 0x7fffffffffff3c00 from memory into f14
fcvt.l.h x24, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f16, 0(x2) # load 0xfeedbee5beefbc00 from memory into f16
fcvt.l.h x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f25, 0(x2) # load 0xffffffefffff0400 from memory into f25
fcvt.l.h x12, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f8, 0(x2) # load 0x00000000ffff8400 from memory into f8
fcvt.l.h x5, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f29, 0(x2) # load 0xefffffffffff7bff from memory into f29
fcvt.l.h x23, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
fcvt.l.h x18, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f9, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f9
fcvt.l.h x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f13, 0(x2) # load 0xffffffff0ffffc00 from memory into f13
fcvt.l.h x21, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f21, 0(x2) # load 0xfffeffffffff7e00 from memory into f21
fcvt.l.h x8, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f25, 0(x2) # load 0xffffffefffff7fff from memory into f25
fcvt.l.h x26, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
fcvt.l.h x23, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f23, 0(x2) # load 0xfffffffcffff7dff from memory into f23
fcvt.l.h x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

#.EQU SIGSIZE,112


// ******************
// Tests from: WALLY-COV-fmsub.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x4a40844bfee47e3f # load x3 with value 0x4a40844bfee47e3f
sd x3, 0(x2) # store 0x4a40844bfee47e3f in memory
flh f3, 0(x2) # load 0x4a40844bfee47e3f from memory into f3
la x2, scratch
li x3, 0xca20f63c87d84451 # load x3 with value 0xca20f63c87d84451
sd x3, 0(x2) # store 0xca20f63c87d84451 in memory
flh f23, 0(x2) # load 0xca20f63c87d84451 from memory into f23
la x2, scratch
li x3, 0xc2d60e4ff03c5f77 # load x3 with value 0xc2d60e4ff03c5f77
sd x3, 0(x2) # store 0xc2d60e4ff03c5f77 in memory
flh f30, 0(x2) # load 0xc2d60e4ff03c5f77 from memory into f30
fmsub.h f29, f3, f23, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f5, 0(x2) # load 0xffffffff00000000 from memory into f5
la x2, scratch
li x3, 0x0ae2b1cbde7d61a5 # load x3 with value 0x0ae2b1cbde7d61a5
sd x3, 0(x2) # store 0x0ae2b1cbde7d61a5 in memory
fld f2, 0(x2) # load 0x0ae2b1cbde7d61a5 from memory into f2
la x2, scratch
li x3, 0x379823c7636d1a66 # load x3 with value 0x379823c7636d1a66
sd x3, 0(x2) # store 0x379823c7636d1a66 in memory
fld f26, 0(x2) # load 0x379823c7636d1a66 from memory into f26
fmsub.h f13, f5, f2, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f26, 0(x2) # load 0xfffffffffffe8000 from memory into f26
la x2, scratch
li x3, 0xebe70f794f672b06 # load x3 with value 0xebe70f794f672b06
sd x3, 0(x2) # store 0xebe70f794f672b06 in memory
fld f8, 0(x2) # load 0xebe70f794f672b06 from memory into f8
la x2, scratch
li x3, 0x1c25dc10adc8d72f # load x3 with value 0x1c25dc10adc8d72f
sd x3, 0(x2) # store 0x1c25dc10adc8d72f in memory
fld f7, 0(x2) # load 0x1c25dc10adc8d72f from memory into f7
fmsub.h f16, f26, f8, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f23, 0(x2) # load 0x7fffffffffff3c00 from memory into f23
la x2, scratch
li x3, 0x974bc512b83df2b6 # load x3 with value 0x974bc512b83df2b6
sd x3, 0(x2) # store 0x974bc512b83df2b6 in memory
fld f2, 0(x2) # load 0x974bc512b83df2b6 from memory into f2
la x2, scratch
li x3, 0xfdcba924eb649fb3 # load x3 with value 0xfdcba924eb649fb3
sd x3, 0(x2) # store 0xfdcba924eb649fb3 in memory
fld f19, 0(x2) # load 0xfdcba924eb649fb3 from memory into f19
fmsub.h f29, f23, f2, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
la x2, scratch
li x3, 0xf644ee7db5234bfd # load x3 with value 0xf644ee7db5234bfd
sd x3, 0(x2) # store 0xf644ee7db5234bfd in memory
fld f12, 0(x2) # load 0xf644ee7db5234bfd from memory into f12
la x2, scratch
li x3, 0xeb4329feca0be5f1 # load x3 with value 0xeb4329feca0be5f1
sd x3, 0(x2) # store 0xeb4329feca0be5f1 in memory
fld f24, 0(x2) # load 0xeb4329feca0be5f1 from memory into f24
fmsub.h f6, f14, f12, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f13, 0(x2) # load 0xffffffefffff0400 from memory into f13
la x2, scratch
li x3, 0xa5532038d616516d # load x3 with value 0xa5532038d616516d
sd x3, 0(x2) # store 0xa5532038d616516d in memory
fld f1, 0(x2) # load 0xa5532038d616516d from memory into f1
la x2, scratch
li x3, 0x0679429a1f6c3189 # load x3 with value 0x0679429a1f6c3189
sd x3, 0(x2) # store 0x0679429a1f6c3189 in memory
fld f12, 0(x2) # load 0x0679429a1f6c3189 from memory into f12
fmsub.h f2, f13, f1, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f3, 0(x2) # load 0x00000000ffff8400 from memory into f3
la x2, scratch
li x3, 0xde75ce8c137660c6 # load x3 with value 0xde75ce8c137660c6
sd x3, 0(x2) # store 0xde75ce8c137660c6 in memory
fld f11, 0(x2) # load 0xde75ce8c137660c6 from memory into f11
la x2, scratch
li x3, 0x89298adc7ccd1a6a # load x3 with value 0x89298adc7ccd1a6a
sd x3, 0(x2) # store 0x89298adc7ccd1a6a in memory
fld f22, 0(x2) # load 0x89298adc7ccd1a6a from memory into f22
fmsub.h f8, f3, f11, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f2, 0(x2) # load 0xefffffffffff7bff from memory into f2
la x2, scratch
li x3, 0x980d14af310b1d42 # load x3 with value 0x980d14af310b1d42
sd x3, 0(x2) # store 0x980d14af310b1d42 in memory
fld f22, 0(x2) # load 0x980d14af310b1d42 from memory into f22
la x2, scratch
li x3, 0x9ec0e14f917ac2a5 # load x3 with value 0x9ec0e14f917ac2a5
sd x3, 0(x2) # store 0x9ec0e14f917ac2a5 in memory
fld f3, 0(x2) # load 0x9ec0e14f917ac2a5 from memory into f3
fmsub.h f1, f2, f22, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f15, 0(x2) # load 0xc0dec0dec0defbff from memory into f15
la x2, scratch
li x3, 0x7ee60e8b41f6d3de # load x3 with value 0x7ee60e8b41f6d3de
sd x3, 0(x2) # store 0x7ee60e8b41f6d3de in memory
fld f16, 0(x2) # load 0x7ee60e8b41f6d3de from memory into f16
la x2, scratch
li x3, 0xa6d3fcf7da53c1bd # load x3 with value 0xa6d3fcf7da53c1bd
sd x3, 0(x2) # store 0xa6d3fcf7da53c1bd in memory
fld f28, 0(x2) # load 0xa6d3fcf7da53c1bd from memory into f28
fmsub.h f7, f15, f16, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f24, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f24
la x2, scratch
li x3, 0xf301535149cb9260 # load x3 with value 0xf301535149cb9260
sd x3, 0(x2) # store 0xf301535149cb9260 in memory
fld f3, 0(x2) # load 0xf301535149cb9260 from memory into f3
la x2, scratch
li x3, 0x1d4f79a650b69307 # load x3 with value 0x1d4f79a650b69307
sd x3, 0(x2) # store 0x1d4f79a650b69307 in memory
fld f27, 0(x2) # load 0x1d4f79a650b69307 from memory into f27
fmsub.h f9, f24, f3, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f21, 0(x2) # load 0xffffffff0ffffc00 from memory into f21
la x2, scratch
li x3, 0x4c68233abcf067bd # load x3 with value 0x4c68233abcf067bd
sd x3, 0(x2) # store 0x4c68233abcf067bd in memory
fld f16, 0(x2) # load 0x4c68233abcf067bd from memory into f16
la x2, scratch
li x3, 0xec5c4acb69a99039 # load x3 with value 0xec5c4acb69a99039
sd x3, 0(x2) # store 0xec5c4acb69a99039 in memory
fld f5, 0(x2) # load 0xec5c4acb69a99039 from memory into f5
fmsub.h f8, f21, f16, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f16, 0(x2) # load 0xfffeffffffff7e00 from memory into f16
la x2, scratch
li x3, 0x4462e357d81e20cc # load x3 with value 0x4462e357d81e20cc
sd x3, 0(x2) # store 0x4462e357d81e20cc in memory
fld f7, 0(x2) # load 0x4462e357d81e20cc from memory into f7
la x2, scratch
li x3, 0xa4949342787bc4cd # load x3 with value 0xa4949342787bc4cd
sd x3, 0(x2) # store 0xa4949342787bc4cd in memory
fld f21, 0(x2) # load 0xa4949342787bc4cd from memory into f21
fmsub.h f13, f16, f7, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f6, 0(x2) # load 0xffffffefffff7fff from memory into f6
la x2, scratch
li x3, 0x1b623ebc3751e2fb # load x3 with value 0x1b623ebc3751e2fb
sd x3, 0(x2) # store 0x1b623ebc3751e2fb in memory
fld f5, 0(x2) # load 0x1b623ebc3751e2fb from memory into f5
la x2, scratch
li x3, 0x4ed923fec56e2a53 # load x3 with value 0x4ed923fec56e2a53
sd x3, 0(x2) # store 0x4ed923fec56e2a53 in memory
fld f11, 0(x2) # load 0x4ed923fec56e2a53 from memory into f11
fmsub.h f27, f6, f5, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f14, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f14
la x2, scratch
li x3, 0x376d07f1b48f4a39 # load x3 with value 0x376d07f1b48f4a39
sd x3, 0(x2) # store 0x376d07f1b48f4a39 in memory
fld f22, 0(x2) # load 0x376d07f1b48f4a39 from memory into f22
la x2, scratch
li x3, 0xe0e240ccec2c6309 # load x3 with value 0xe0e240ccec2c6309
sd x3, 0(x2) # store 0xe0e240ccec2c6309 in memory
fld f2, 0(x2) # load 0xe0e240ccec2c6309 from memory into f2
fmsub.h f23, f14, f22, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f24, 0(x2) # load 0xfffffffcffff7dff from memory into f24
la x2, scratch
li x3, 0x3e4bd4b1ec7b8a85 # load x3 with value 0x3e4bd4b1ec7b8a85
sd x3, 0(x2) # store 0x3e4bd4b1ec7b8a85 in memory
fld f2, 0(x2) # load 0x3e4bd4b1ec7b8a85 from memory into f2
la x2, scratch
li x3, 0x76b58ab705c5e04c # load x3 with value 0x76b58ab705c5e04c
sd x3, 0(x2) # store 0x76b58ab705c5e04c in memory
fld f23, 0(x2) # load 0x76b58ab705c5e04c from memory into f23
fmsub.h f27, f24, f2, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x016cd0db63efee9e # load x3 with value 0x016cd0db63efee9e
sd x3, 0(x2) # store 0x016cd0db63efee9e in memory
fld f13, 0(x2) # load 0x016cd0db63efee9e from memory into f13
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f1, 0(x2) # load 0xffffffff00000000 from memory into f1
la x2, scratch
li x3, 0xf028c0d303aa749d # load x3 with value 0xf028c0d303aa749d
sd x3, 0(x2) # store 0xf028c0d303aa749d in memory
fld f12, 0(x2) # load 0xf028c0d303aa749d from memory into f12
fmsub.h f5, f13, f1, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x5be5d7aace992141 # load x3 with value 0x5be5d7aace992141
sd x3, 0(x2) # store 0x5be5d7aace992141 in memory
fld f16, 0(x2) # load 0x5be5d7aace992141 from memory into f16
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f15, 0(x2) # load 0xfffffffffffe8000 from memory into f15
la x2, scratch
li x3, 0x63ebd19d4be40625 # load x3 with value 0x63ebd19d4be40625
sd x3, 0(x2) # store 0x63ebd19d4be40625 in memory
fld f29, 0(x2) # load 0x63ebd19d4be40625 from memory into f29
fmsub.h f24, f16, f15, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x7a3dff147d5f827b # load x3 with value 0x7a3dff147d5f827b
sd x3, 0(x2) # store 0x7a3dff147d5f827b in memory
fld f25, 0(x2) # load 0x7a3dff147d5f827b from memory into f25
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f5, 0(x2) # load 0x7fffffffffff3c00 from memory into f5
la x2, scratch
li x3, 0xb6035a4564195f7a # load x3 with value 0xb6035a4564195f7a
sd x3, 0(x2) # store 0xb6035a4564195f7a in memory
fld f22, 0(x2) # load 0xb6035a4564195f7a from memory into f22
fmsub.h f11, f25, f5, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xa683020c7f8d9a41 # load x3 with value 0xa683020c7f8d9a41
sd x3, 0(x2) # store 0xa683020c7f8d9a41 in memory
fld f10, 0(x2) # load 0xa683020c7f8d9a41 from memory into f10
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f18, 0(x2) # load 0xfeedbee5beefbc00 from memory into f18
la x2, scratch
li x3, 0x18264b813ec1ae05 # load x3 with value 0x18264b813ec1ae05
sd x3, 0(x2) # store 0x18264b813ec1ae05 in memory
fld f22, 0(x2) # load 0x18264b813ec1ae05 from memory into f22
fmsub.h f26, f10, f18, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xaeb6f6297b600fd9 # load x3 with value 0xaeb6f6297b600fd9
sd x3, 0(x2) # store 0xaeb6f6297b600fd9 in memory
fld f5, 0(x2) # load 0xaeb6f6297b600fd9 from memory into f5
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f29, 0(x2) # load 0xffffffefffff0400 from memory into f29
la x2, scratch
li x3, 0x9d361fbac135a490 # load x3 with value 0x9d361fbac135a490
sd x3, 0(x2) # store 0x9d361fbac135a490 in memory
fld f25, 0(x2) # load 0x9d361fbac135a490 from memory into f25
fmsub.h f27, f5, f29, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x477ee07169bc1aaf # load x3 with value 0x477ee07169bc1aaf
sd x3, 0(x2) # store 0x477ee07169bc1aaf in memory
fld f2, 0(x2) # load 0x477ee07169bc1aaf from memory into f2
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f15, 0(x2) # load 0x00000000ffff8400 from memory into f15
la x2, scratch
li x3, 0x50658dceb5608479 # load x3 with value 0x50658dceb5608479
sd x3, 0(x2) # store 0x50658dceb5608479 in memory
fld f3, 0(x2) # load 0x50658dceb5608479 from memory into f3
fmsub.h f21, f2, f15, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x095230fcec26b844 # load x3 with value 0x095230fcec26b844
sd x3, 0(x2) # store 0x095230fcec26b844 in memory
fld f20, 0(x2) # load 0x095230fcec26b844 from memory into f20
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f22, 0(x2) # load 0xefffffffffff7bff from memory into f22
la x2, scratch
li x3, 0x3477ae1b8e9c78a4 # load x3 with value 0x3477ae1b8e9c78a4
sd x3, 0(x2) # store 0x3477ae1b8e9c78a4 in memory
fld f19, 0(x2) # load 0x3477ae1b8e9c78a4 from memory into f19
fmsub.h f5, f20, f22, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x24f0bb2bf7853fe4 # load x3 with value 0x24f0bb2bf7853fe4
sd x3, 0(x2) # store 0x24f0bb2bf7853fe4 in memory
fld f23, 0(x2) # load 0x24f0bb2bf7853fe4 from memory into f23
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f18, 0(x2) # load 0xc0dec0dec0defbff from memory into f18
la x2, scratch
li x3, 0xc9356562c227f103 # load x3 with value 0xc9356562c227f103
sd x3, 0(x2) # store 0xc9356562c227f103 in memory
fld f1, 0(x2) # load 0xc9356562c227f103 from memory into f1
fmsub.h f24, f23, f18, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x70a36f1fc8d15a07 # load x3 with value 0x70a36f1fc8d15a07
sd x3, 0(x2) # store 0x70a36f1fc8d15a07 in memory
fld f15, 0(x2) # load 0x70a36f1fc8d15a07 from memory into f15
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f20, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f20
la x2, scratch
li x3, 0x597276fb6baacb53 # load x3 with value 0x597276fb6baacb53
sd x3, 0(x2) # store 0x597276fb6baacb53 in memory
fld f1, 0(x2) # load 0x597276fb6baacb53 from memory into f1
fmsub.h f22, f15, f20, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x5ae5060868d5b535 # load x3 with value 0x5ae5060868d5b535
sd x3, 0(x2) # store 0x5ae5060868d5b535 in memory
fld f23, 0(x2) # load 0x5ae5060868d5b535 from memory into f23
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f20, 0(x2) # load 0xffffffff0ffffc00 from memory into f20
la x2, scratch
li x3, 0xb3b8014b4415d5b6 # load x3 with value 0xb3b8014b4415d5b6
sd x3, 0(x2) # store 0xb3b8014b4415d5b6 in memory
fld f21, 0(x2) # load 0xb3b8014b4415d5b6 from memory into f21
fmsub.h f14, f23, f20, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xb740e952508aa8d4 # load x3 with value 0xb740e952508aa8d4
sd x3, 0(x2) # store 0xb740e952508aa8d4 in memory
fld f15, 0(x2) # load 0xb740e952508aa8d4 from memory into f15
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f29, 0(x2) # load 0xfffeffffffff7e00 from memory into f29
la x2, scratch
li x3, 0x78c062b5318cd05a # load x3 with value 0x78c062b5318cd05a
sd x3, 0(x2) # store 0x78c062b5318cd05a in memory
fld f7, 0(x2) # load 0x78c062b5318cd05a from memory into f7
fmsub.h f25, f15, f29, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x962cbe8272dcb64c # load x3 with value 0x962cbe8272dcb64c
sd x3, 0(x2) # store 0x962cbe8272dcb64c in memory
fld f30, 0(x2) # load 0x962cbe8272dcb64c from memory into f30
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f20, 0(x2) # load 0xffffffefffff7fff from memory into f20
la x2, scratch
li x3, 0x9dc287480804b80b # load x3 with value 0x9dc287480804b80b
sd x3, 0(x2) # store 0x9dc287480804b80b in memory
fld f27, 0(x2) # load 0x9dc287480804b80b from memory into f27
fmsub.h f10, f30, f20, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x91494efd29f00799 # load x3 with value 0x91494efd29f00799
sd x3, 0(x2) # store 0x91494efd29f00799 in memory
fld f30, 0(x2) # load 0x91494efd29f00799 from memory into f30
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f16, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f16
la x2, scratch
li x3, 0xaeb7491989dda9f2 # load x3 with value 0xaeb7491989dda9f2
sd x3, 0(x2) # store 0xaeb7491989dda9f2 in memory
fld f3, 0(x2) # load 0xaeb7491989dda9f2 from memory into f3
fmsub.h f20, f30, f16, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x802decd9a668f81f # load x3 with value 0x802decd9a668f81f
sd x3, 0(x2) # store 0x802decd9a668f81f in memory
fld f21, 0(x2) # load 0x802decd9a668f81f from memory into f21
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f6, 0(x2) # load 0xfffffffcffff7dff from memory into f6
la x2, scratch
li x3, 0xa2f99970a313602e # load x3 with value 0xa2f99970a313602e
sd x3, 0(x2) # store 0xa2f99970a313602e in memory
fld f16, 0(x2) # load 0xa2f99970a313602e from memory into f16
fmsub.h f12, f21, f6, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x825cfb4d0897dbda # load x3 with value 0x825cfb4d0897dbda
sd x3, 0(x2) # store 0x825cfb4d0897dbda in memory
fld f14, 0(x2) # load 0x825cfb4d0897dbda from memory into f14
la x2, scratch
li x3, 0xc5b0607a1644c6f9 # load x3 with value 0xc5b0607a1644c6f9
sd x3, 0(x2) # store 0xc5b0607a1644c6f9 in memory
fld f11, 0(x2) # load 0xc5b0607a1644c6f9 from memory into f11
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f25, 0(x2) # load 0xffffffff00000000 from memory into f25
fmsub.h f17, f14, f11, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x9fc59115d555fcbc # load x3 with value 0x9fc59115d555fcbc
sd x3, 0(x2) # store 0x9fc59115d555fcbc in memory
fld f8, 0(x2) # load 0x9fc59115d555fcbc from memory into f8
la x2, scratch
li x3, 0xad09a1ff809b4645 # load x3 with value 0xad09a1ff809b4645
sd x3, 0(x2) # store 0xad09a1ff809b4645 in memory
fld f12, 0(x2) # load 0xad09a1ff809b4645 from memory into f12
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f1, 0(x2) # load 0xfffffffffffe8000 from memory into f1
fmsub.h f16, f8, f12, f1 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xc08d71e0c0c0ff8f # load x3 with value 0xc08d71e0c0c0ff8f
sd x3, 0(x2) # store 0xc08d71e0c0c0ff8f in memory
fld f10, 0(x2) # load 0xc08d71e0c0c0ff8f from memory into f10
la x2, scratch
li x3, 0xd673718cb367182e # load x3 with value 0xd673718cb367182e
sd x3, 0(x2) # store 0xd673718cb367182e in memory
fld f12, 0(x2) # load 0xd673718cb367182e from memory into f12
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f11, 0(x2) # load 0x7fffffffffff3c00 from memory into f11
fmsub.h f29, f10, f12, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xaef8aa1f6af6f384 # load x3 with value 0xaef8aa1f6af6f384
sd x3, 0(x2) # store 0xaef8aa1f6af6f384 in memory
fld f2, 0(x2) # load 0xaef8aa1f6af6f384 from memory into f2
la x2, scratch
li x3, 0x9b87985d11a1314b # load x3 with value 0x9b87985d11a1314b
sd x3, 0(x2) # store 0x9b87985d11a1314b in memory
fld f3, 0(x2) # load 0x9b87985d11a1314b from memory into f3
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f6, 0(x2) # load 0xfeedbee5beefbc00 from memory into f6
fmsub.h f20, f2, f3, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xf0edbb97cbeb5f3a # load x3 with value 0xf0edbb97cbeb5f3a
sd x3, 0(x2) # store 0xf0edbb97cbeb5f3a in memory
fld f7, 0(x2) # load 0xf0edbb97cbeb5f3a from memory into f7
la x2, scratch
li x3, 0x6c5d190238ebdc6e # load x3 with value 0x6c5d190238ebdc6e
sd x3, 0(x2) # store 0x6c5d190238ebdc6e in memory
fld f5, 0(x2) # load 0x6c5d190238ebdc6e from memory into f5
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f15, 0(x2) # load 0xffffffefffff0400 from memory into f15
fmsub.h f9, f7, f5, f15 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0xa06cefc2d374d864 # load x3 with value 0xa06cefc2d374d864
sd x3, 0(x2) # store 0xa06cefc2d374d864 in memory
fld f21, 0(x2) # load 0xa06cefc2d374d864 from memory into f21
la x2, scratch
li x3, 0x343515cdd6445be8 # load x3 with value 0x343515cdd6445be8
sd x3, 0(x2) # store 0x343515cdd6445be8 in memory
fld f17, 0(x2) # load 0x343515cdd6445be8 from memory into f17
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f11, 0(x2) # load 0x00000000ffff8400 from memory into f11
fmsub.h f5, f21, f17, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x1551292f19a56e55 # load x3 with value 0x1551292f19a56e55
sd x3, 0(x2) # store 0x1551292f19a56e55 in memory
fld f15, 0(x2) # load 0x1551292f19a56e55 from memory into f15
la x2, scratch
li x3, 0xc034447138943f17 # load x3 with value 0xc034447138943f17
sd x3, 0(x2) # store 0xc034447138943f17 in memory
fld f5, 0(x2) # load 0xc034447138943f17 from memory into f5
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fmsub.h f21, f15, f5, f8 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x78206c4e4ad74aa6 # load x3 with value 0x78206c4e4ad74aa6
sd x3, 0(x2) # store 0x78206c4e4ad74aa6 in memory
fld f25, 0(x2) # load 0x78206c4e4ad74aa6 from memory into f25
la x2, scratch
li x3, 0xe4a756232d6a6c3b # load x3 with value 0xe4a756232d6a6c3b
sd x3, 0(x2) # store 0xe4a756232d6a6c3b in memory
fld f28, 0(x2) # load 0xe4a756232d6a6c3b from memory into f28
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f20, 0(x2) # load 0xc0dec0dec0defbff from memory into f20
fmsub.h f27, f25, f28, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xa9b0245f1074818c # load x3 with value 0xa9b0245f1074818c
sd x3, 0(x2) # store 0xa9b0245f1074818c in memory
fld f17, 0(x2) # load 0xa9b0245f1074818c from memory into f17
la x2, scratch
li x3, 0x40e876f905c70181 # load x3 with value 0x40e876f905c70181
sd x3, 0(x2) # store 0x40e876f905c70181 in memory
fld f15, 0(x2) # load 0x40e876f905c70181 from memory into f15
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f22, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f22
fmsub.h f5, f17, f15, f22 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xc94bba9c74404959 # load x3 with value 0xc94bba9c74404959
sd x3, 0(x2) # store 0xc94bba9c74404959 in memory
fld f26, 0(x2) # load 0xc94bba9c74404959 from memory into f26
la x2, scratch
li x3, 0xbc37ae26f249f523 # load x3 with value 0xbc37ae26f249f523
sd x3, 0(x2) # store 0xbc37ae26f249f523 in memory
fld f15, 0(x2) # load 0xbc37ae26f249f523 from memory into f15
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f3, 0(x2) # load 0xffffffff0ffffc00 from memory into f3
fmsub.h f11, f26, f15, f3 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x64a82f51d36365c0 # load x3 with value 0x64a82f51d36365c0
sd x3, 0(x2) # store 0x64a82f51d36365c0 in memory
fld f10, 0(x2) # load 0x64a82f51d36365c0 from memory into f10
la x2, scratch
li x3, 0xff5be03ff02b5148 # load x3 with value 0xff5be03ff02b5148
sd x3, 0(x2) # store 0xff5be03ff02b5148 in memory
fld f3, 0(x2) # load 0xff5be03ff02b5148 from memory into f3
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f6, 0(x2) # load 0xfffeffffffff7e00 from memory into f6
fmsub.h f15, f10, f3, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x3ab00870850c17c7 # load x3 with value 0x3ab00870850c17c7
sd x3, 0(x2) # store 0x3ab00870850c17c7 in memory
fld f9, 0(x2) # load 0x3ab00870850c17c7 from memory into f9
la x2, scratch
li x3, 0x6d36a12d04e44d50 # load x3 with value 0x6d36a12d04e44d50
sd x3, 0(x2) # store 0x6d36a12d04e44d50 in memory
fld f19, 0(x2) # load 0x6d36a12d04e44d50 from memory into f19
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f12, 0(x2) # load 0xffffffefffff7fff from memory into f12
fmsub.h f14, f9, f19, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xae8e722862ef19ab # load x3 with value 0xae8e722862ef19ab
sd x3, 0(x2) # store 0xae8e722862ef19ab in memory
fld f26, 0(x2) # load 0xae8e722862ef19ab from memory into f26
la x2, scratch
li x3, 0x92a8a5ddd0bf2000 # load x3 with value 0x92a8a5ddd0bf2000
sd x3, 0(x2) # store 0x92a8a5ddd0bf2000 in memory
fld f29, 0(x2) # load 0x92a8a5ddd0bf2000 from memory into f29
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f28, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f28
fmsub.h f17, f26, f29, f28 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x42344d9f00d02849 # load x3 with value 0x42344d9f00d02849
sd x3, 0(x2) # store 0x42344d9f00d02849 in memory
fld f21, 0(x2) # load 0x42344d9f00d02849 from memory into f21
la x2, scratch
li x3, 0x6b1d3d9db4c6556d # load x3 with value 0x6b1d3d9db4c6556d
sd x3, 0(x2) # store 0x6b1d3d9db4c6556d in memory
fld f27, 0(x2) # load 0x6b1d3d9db4c6556d from memory into f27
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f11, 0(x2) # load 0xfffffffcffff7dff from memory into f11
fmsub.h f17, f21, f27, f11 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fcvt.lu.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
fcvt.lu.h x27, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f24, 0(x2) # load 0xfffffffffffe8000 from memory into f24
fcvt.lu.h x16, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f28, 0(x2) # load 0x7fffffffffff3c00 from memory into f28
fcvt.lu.h x19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f21, 0(x2) # load 0xfeedbee5beefbc00 from memory into f21
fcvt.lu.h x23, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f21, 0(x2) # load 0xffffffefffff0400 from memory into f21
fcvt.lu.h x5, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f3, 0(x2) # load 0x00000000ffff8400 from memory into f3
fcvt.lu.h x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fcvt.lu.h x9, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f1, 0(x2) # load 0xc0dec0dec0defbff from memory into f1
fcvt.lu.h x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f22, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f22
fcvt.lu.h x9, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f23, 0(x2) # load 0xffffffff0ffffc00 from memory into f23
fcvt.lu.h x28, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f14, 0(x2) # load 0xfffeffffffff7e00 from memory into f14
fcvt.lu.h x24, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f9, 0(x2) # load 0xffffffefffff7fff from memory into f9
fcvt.lu.h x29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f5, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f5
fcvt.lu.h x7, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f5, 0(x2) # load 0xfffffffcffff7dff from memory into f5
fcvt.lu.h x21, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

#.EQU SIGSIZE,112


// ******************
// Tests from: WALLY-COV-fcvt.h.l.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x26, 0x7a770a5dc9dbfc82 # load immediate value into integer register
fcvt.h.l f10, x26 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fnmadd.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0xb8a05293a4f82113 # load x3 with value 0xb8a05293a4f82113
sd x3, 0(x2) # store 0xb8a05293a4f82113 in memory
flh f22, 0(x2) # load 0xb8a05293a4f82113 from memory into f22
la x2, scratch
li x3, 0x438809c30a5902fe # load x3 with value 0x438809c30a5902fe
sd x3, 0(x2) # store 0x438809c30a5902fe in memory
flh f19, 0(x2) # load 0x438809c30a5902fe from memory into f19
la x2, scratch
li x3, 0x3529410efaa3dd9e # load x3 with value 0x3529410efaa3dd9e
sd x3, 0(x2) # store 0x3529410efaa3dd9e in memory
flh f18, 0(x2) # load 0x3529410efaa3dd9e from memory into f18
fnmadd.h f3, f22, f19, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f10, 0(x2) # load 0xffffffff00000000 from memory into f10
la x2, scratch
li x3, 0x000a3ca356daf007 # load x3 with value 0x000a3ca356daf007
sd x3, 0(x2) # store 0x000a3ca356daf007 in memory
fld f1, 0(x2) # load 0x000a3ca356daf007 from memory into f1
la x2, scratch
li x3, 0x31395dea21d2f251 # load x3 with value 0x31395dea21d2f251
sd x3, 0(x2) # store 0x31395dea21d2f251 in memory
fld f9, 0(x2) # load 0x31395dea21d2f251 from memory into f9
fnmadd.h f21, f10, f1, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f10, 0(x2) # load 0xfffffffffffe8000 from memory into f10
la x2, scratch
li x3, 0x4e0e8ad93aa19031 # load x3 with value 0x4e0e8ad93aa19031
sd x3, 0(x2) # store 0x4e0e8ad93aa19031 in memory
fld f3, 0(x2) # load 0x4e0e8ad93aa19031 from memory into f3
la x2, scratch
li x3, 0xb39e823e75660dcb # load x3 with value 0xb39e823e75660dcb
sd x3, 0(x2) # store 0xb39e823e75660dcb in memory
fld f24, 0(x2) # load 0xb39e823e75660dcb from memory into f24
fnmadd.h f23, f10, f3, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f18, 0(x2) # load 0x7fffffffffff3c00 from memory into f18
la x2, scratch
li x3, 0xf4f54ec45b8ae757 # load x3 with value 0xf4f54ec45b8ae757
sd x3, 0(x2) # store 0xf4f54ec45b8ae757 in memory
fld f7, 0(x2) # load 0xf4f54ec45b8ae757 from memory into f7
la x2, scratch
li x3, 0x56aef7a07c1970ed # load x3 with value 0x56aef7a07c1970ed
sd x3, 0(x2) # store 0x56aef7a07c1970ed in memory
fld f6, 0(x2) # load 0x56aef7a07c1970ed from memory into f6
fnmadd.h f28, f18, f7, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f31, 0(x2) # load 0xfeedbee5beefbc00 from memory into f31
la x2, scratch
li x3, 0x18bc762673044991 # load x3 with value 0x18bc762673044991
sd x3, 0(x2) # store 0x18bc762673044991 in memory
fld f11, 0(x2) # load 0x18bc762673044991 from memory into f11
la x2, scratch
li x3, 0x292bb3d127010fd7 # load x3 with value 0x292bb3d127010fd7
sd x3, 0(x2) # store 0x292bb3d127010fd7 in memory
fld f6, 0(x2) # load 0x292bb3d127010fd7 from memory into f6
fnmadd.h f13, f31, f11, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f3, 0(x2) # load 0xffffffefffff0400 from memory into f3
la x2, scratch
li x3, 0x61627f29e8f62680 # load x3 with value 0x61627f29e8f62680
sd x3, 0(x2) # store 0x61627f29e8f62680 in memory
fld f17, 0(x2) # load 0x61627f29e8f62680 from memory into f17
la x2, scratch
li x3, 0x88f56eea05bb8953 # load x3 with value 0x88f56eea05bb8953
sd x3, 0(x2) # store 0x88f56eea05bb8953 in memory
fld f25, 0(x2) # load 0x88f56eea05bb8953 from memory into f25
fnmadd.h f31, f3, f17, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f6, 0(x2) # load 0x00000000ffff8400 from memory into f6
la x2, scratch
li x3, 0x39e24b1f072c5127 # load x3 with value 0x39e24b1f072c5127
sd x3, 0(x2) # store 0x39e24b1f072c5127 in memory
fld f20, 0(x2) # load 0x39e24b1f072c5127 from memory into f20
la x2, scratch
li x3, 0xd84b3bbf43ad17ec # load x3 with value 0xd84b3bbf43ad17ec
sd x3, 0(x2) # store 0xd84b3bbf43ad17ec in memory
fld f2, 0(x2) # load 0xd84b3bbf43ad17ec from memory into f2
fnmadd.h f14, f6, f20, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f3, 0(x2) # load 0xefffffffffff7bff from memory into f3
la x2, scratch
li x3, 0xdb0b2548e7dbc582 # load x3 with value 0xdb0b2548e7dbc582
sd x3, 0(x2) # store 0xdb0b2548e7dbc582 in memory
fld f11, 0(x2) # load 0xdb0b2548e7dbc582 from memory into f11
la x2, scratch
li x3, 0x5a47bd8b730fa5f2 # load x3 with value 0x5a47bd8b730fa5f2
sd x3, 0(x2) # store 0x5a47bd8b730fa5f2 in memory
fld f2, 0(x2) # load 0x5a47bd8b730fa5f2 from memory into f2
fnmadd.h f24, f3, f11, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f30, 0(x2) # load 0xc0dec0dec0defbff from memory into f30
la x2, scratch
li x3, 0xe35a80cb0c5332d0 # load x3 with value 0xe35a80cb0c5332d0
sd x3, 0(x2) # store 0xe35a80cb0c5332d0 in memory
fld f29, 0(x2) # load 0xe35a80cb0c5332d0 from memory into f29
la x2, scratch
li x3, 0xe9ffc8b416292ecd # load x3 with value 0xe9ffc8b416292ecd
sd x3, 0(x2) # store 0xe9ffc8b416292ecd in memory
fld f9, 0(x2) # load 0xe9ffc8b416292ecd from memory into f9
fnmadd.h f19, f30, f29, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f13, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f13
la x2, scratch
li x3, 0x7ebbef000ea70c6f # load x3 with value 0x7ebbef000ea70c6f
sd x3, 0(x2) # store 0x7ebbef000ea70c6f in memory
fld f31, 0(x2) # load 0x7ebbef000ea70c6f from memory into f31
la x2, scratch
li x3, 0x64c09c3c26db1479 # load x3 with value 0x64c09c3c26db1479
sd x3, 0(x2) # store 0x64c09c3c26db1479 in memory
fld f23, 0(x2) # load 0x64c09c3c26db1479 from memory into f23
fnmadd.h f19, f13, f31, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f11, 0(x2) # load 0xffffffff0ffffc00 from memory into f11
la x2, scratch
li x3, 0x008a6181b3c9a739 # load x3 with value 0x008a6181b3c9a739
sd x3, 0(x2) # store 0x008a6181b3c9a739 in memory
fld f25, 0(x2) # load 0x008a6181b3c9a739 from memory into f25
la x2, scratch
li x3, 0xa7ccb6607243b94d # load x3 with value 0xa7ccb6607243b94d
sd x3, 0(x2) # store 0xa7ccb6607243b94d in memory
fld f7, 0(x2) # load 0xa7ccb6607243b94d from memory into f7
fnmadd.h f1, f11, f25, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f25, 0(x2) # load 0xfffeffffffff7e00 from memory into f25
la x2, scratch
li x3, 0xc9dd8a7333692044 # load x3 with value 0xc9dd8a7333692044
sd x3, 0(x2) # store 0xc9dd8a7333692044 in memory
fld f13, 0(x2) # load 0xc9dd8a7333692044 from memory into f13
la x2, scratch
li x3, 0xa90a67e06c9edaf4 # load x3 with value 0xa90a67e06c9edaf4
sd x3, 0(x2) # store 0xa90a67e06c9edaf4 in memory
fld f31, 0(x2) # load 0xa90a67e06c9edaf4 from memory into f31
fnmadd.h f17, f25, f13, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f25, 0(x2) # load 0xffffffefffff7fff from memory into f25
la x2, scratch
li x3, 0x9fe2ac60cf61b473 # load x3 with value 0x9fe2ac60cf61b473
sd x3, 0(x2) # store 0x9fe2ac60cf61b473 in memory
fld f11, 0(x2) # load 0x9fe2ac60cf61b473 from memory into f11
la x2, scratch
li x3, 0x840c373753f8481b # load x3 with value 0x840c373753f8481b
sd x3, 0(x2) # store 0x840c373753f8481b in memory
fld f28, 0(x2) # load 0x840c373753f8481b from memory into f28
fnmadd.h f30, f25, f11, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f15, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f15
la x2, scratch
li x3, 0xc3b84455e7f936a4 # load x3 with value 0xc3b84455e7f936a4
sd x3, 0(x2) # store 0xc3b84455e7f936a4 in memory
fld f22, 0(x2) # load 0xc3b84455e7f936a4 from memory into f22
la x2, scratch
li x3, 0xae1af19fa7cf531c # load x3 with value 0xae1af19fa7cf531c
sd x3, 0(x2) # store 0xae1af19fa7cf531c in memory
fld f20, 0(x2) # load 0xae1af19fa7cf531c from memory into f20
fnmadd.h f3, f15, f22, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f7, 0(x2) # load 0xfffffffcffff7dff from memory into f7
la x2, scratch
li x3, 0x17cba7c23804e487 # load x3 with value 0x17cba7c23804e487
sd x3, 0(x2) # store 0x17cba7c23804e487 in memory
fld f1, 0(x2) # load 0x17cba7c23804e487 from memory into f1
la x2, scratch
li x3, 0x98e6853e579605ef # load x3 with value 0x98e6853e579605ef
sd x3, 0(x2) # store 0x98e6853e579605ef in memory
fld f29, 0(x2) # load 0x98e6853e579605ef from memory into f29
fnmadd.h f17, f7, f1, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x5346d91d40d93686 # load x3 with value 0x5346d91d40d93686
sd x3, 0(x2) # store 0x5346d91d40d93686 in memory
fld f10, 0(x2) # load 0x5346d91d40d93686 from memory into f10
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f19, 0(x2) # load 0xffffffff00000000 from memory into f19
la x2, scratch
li x3, 0xbf669d907b1bdb4f # load x3 with value 0xbf669d907b1bdb4f
sd x3, 0(x2) # store 0xbf669d907b1bdb4f in memory
fld f8, 0(x2) # load 0xbf669d907b1bdb4f from memory into f8
fnmadd.h f2, f10, f19, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xd759308189cd55dd # load x3 with value 0xd759308189cd55dd
sd x3, 0(x2) # store 0xd759308189cd55dd in memory
fld f14, 0(x2) # load 0xd759308189cd55dd from memory into f14
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f8, 0(x2) # load 0xfffffffffffe8000 from memory into f8
la x2, scratch
li x3, 0x3e6c5784aa67750c # load x3 with value 0x3e6c5784aa67750c
sd x3, 0(x2) # store 0x3e6c5784aa67750c in memory
fld f7, 0(x2) # load 0x3e6c5784aa67750c from memory into f7
fnmadd.h f21, f14, f8, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xba0141f26e60e41e # load x3 with value 0xba0141f26e60e41e
sd x3, 0(x2) # store 0xba0141f26e60e41e in memory
fld f21, 0(x2) # load 0xba0141f26e60e41e from memory into f21
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f16, 0(x2) # load 0x7fffffffffff3c00 from memory into f16
la x2, scratch
li x3, 0xc99345f15052a3ce # load x3 with value 0xc99345f15052a3ce
sd x3, 0(x2) # store 0xc99345f15052a3ce in memory
fld f5, 0(x2) # load 0xc99345f15052a3ce from memory into f5
fnmadd.h f13, f21, f16, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x908739503d54e6fd # load x3 with value 0x908739503d54e6fd
sd x3, 0(x2) # store 0x908739503d54e6fd in memory
fld f21, 0(x2) # load 0x908739503d54e6fd from memory into f21
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f10, 0(x2) # load 0xfeedbee5beefbc00 from memory into f10
la x2, scratch
li x3, 0x0905634410ba25de # load x3 with value 0x0905634410ba25de
sd x3, 0(x2) # store 0x0905634410ba25de in memory
fld f11, 0(x2) # load 0x0905634410ba25de from memory into f11
fnmadd.h f26, f21, f10, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x3bd5c7980ce7147e # load x3 with value 0x3bd5c7980ce7147e
sd x3, 0(x2) # store 0x3bd5c7980ce7147e in memory
fld f17, 0(x2) # load 0x3bd5c7980ce7147e from memory into f17
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f5, 0(x2) # load 0xffffffefffff0400 from memory into f5
la x2, scratch
li x3, 0x25875c3d984434c8 # load x3 with value 0x25875c3d984434c8
sd x3, 0(x2) # store 0x25875c3d984434c8 in memory
fld f28, 0(x2) # load 0x25875c3d984434c8 from memory into f28
fnmadd.h f29, f17, f5, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xa8e762c0099f9ab2 # load x3 with value 0xa8e762c0099f9ab2
sd x3, 0(x2) # store 0xa8e762c0099f9ab2 in memory
fld f6, 0(x2) # load 0xa8e762c0099f9ab2 from memory into f6
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f20, 0(x2) # load 0x00000000ffff8400 from memory into f20
la x2, scratch
li x3, 0xe99c6a0aae4c35cf # load x3 with value 0xe99c6a0aae4c35cf
sd x3, 0(x2) # store 0xe99c6a0aae4c35cf in memory
fld f21, 0(x2) # load 0xe99c6a0aae4c35cf from memory into f21
fnmadd.h f12, f6, f20, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x7a6c31a5e3124fc9 # load x3 with value 0x7a6c31a5e3124fc9
sd x3, 0(x2) # store 0x7a6c31a5e3124fc9 in memory
fld f23, 0(x2) # load 0x7a6c31a5e3124fc9 from memory into f23
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f1, 0(x2) # load 0xefffffffffff7bff from memory into f1
la x2, scratch
li x3, 0x69787cdcfd3e5fef # load x3 with value 0x69787cdcfd3e5fef
sd x3, 0(x2) # store 0x69787cdcfd3e5fef in memory
fld f15, 0(x2) # load 0x69787cdcfd3e5fef from memory into f15
fnmadd.h f29, f23, f1, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x4b58456313466636 # load x3 with value 0x4b58456313466636
sd x3, 0(x2) # store 0x4b58456313466636 in memory
fld f24, 0(x2) # load 0x4b58456313466636 from memory into f24
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f11, 0(x2) # load 0xc0dec0dec0defbff from memory into f11
la x2, scratch
li x3, 0x40aad06ab8354d1b # load x3 with value 0x40aad06ab8354d1b
sd x3, 0(x2) # store 0x40aad06ab8354d1b in memory
fld f31, 0(x2) # load 0x40aad06ab8354d1b from memory into f31
fnmadd.h f25, f24, f11, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x66cd4b4dc1889de9 # load x3 with value 0x66cd4b4dc1889de9
sd x3, 0(x2) # store 0x66cd4b4dc1889de9 in memory
fld f29, 0(x2) # load 0x66cd4b4dc1889de9 from memory into f29
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f25, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f25
la x2, scratch
li x3, 0x233b308869f703ee # load x3 with value 0x233b308869f703ee
sd x3, 0(x2) # store 0x233b308869f703ee in memory
fld f17, 0(x2) # load 0x233b308869f703ee from memory into f17
fnmadd.h f15, f29, f25, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x1fa920518ae41884 # load x3 with value 0x1fa920518ae41884
sd x3, 0(x2) # store 0x1fa920518ae41884 in memory
fld f17, 0(x2) # load 0x1fa920518ae41884 from memory into f17
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f3, 0(x2) # load 0xffffffff0ffffc00 from memory into f3
la x2, scratch
li x3, 0xd7a90847af22c8f6 # load x3 with value 0xd7a90847af22c8f6
sd x3, 0(x2) # store 0xd7a90847af22c8f6 in memory
fld f20, 0(x2) # load 0xd7a90847af22c8f6 from memory into f20
fnmadd.h f19, f17, f3, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xcdcad91296ee42f3 # load x3 with value 0xcdcad91296ee42f3
sd x3, 0(x2) # store 0xcdcad91296ee42f3 in memory
fld f5, 0(x2) # load 0xcdcad91296ee42f3 from memory into f5
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f8, 0(x2) # load 0xfffeffffffff7e00 from memory into f8
la x2, scratch
li x3, 0x606e363d65bb38e7 # load x3 with value 0x606e363d65bb38e7
sd x3, 0(x2) # store 0x606e363d65bb38e7 in memory
fld f21, 0(x2) # load 0x606e363d65bb38e7 from memory into f21
fnmadd.h f16, f5, f8, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x391456f25f1d79ff # load x3 with value 0x391456f25f1d79ff
sd x3, 0(x2) # store 0x391456f25f1d79ff in memory
fld f10, 0(x2) # load 0x391456f25f1d79ff from memory into f10
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f19, 0(x2) # load 0xffffffefffff7fff from memory into f19
la x2, scratch
li x3, 0xa47a9e0a2abee765 # load x3 with value 0xa47a9e0a2abee765
sd x3, 0(x2) # store 0xa47a9e0a2abee765 in memory
fld f30, 0(x2) # load 0xa47a9e0a2abee765 from memory into f30
fnmadd.h f20, f10, f19, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x7375a5b1913fb623 # load x3 with value 0x7375a5b1913fb623
sd x3, 0(x2) # store 0x7375a5b1913fb623 in memory
fld f12, 0(x2) # load 0x7375a5b1913fb623 from memory into f12
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f7, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f7
la x2, scratch
li x3, 0xb75046c685693d28 # load x3 with value 0xb75046c685693d28
sd x3, 0(x2) # store 0xb75046c685693d28 in memory
fld f21, 0(x2) # load 0xb75046c685693d28 from memory into f21
fnmadd.h f9, f12, f7, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xda52670dce73d5d1 # load x3 with value 0xda52670dce73d5d1
sd x3, 0(x2) # store 0xda52670dce73d5d1 in memory
fld f27, 0(x2) # load 0xda52670dce73d5d1 from memory into f27
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f12, 0(x2) # load 0xfffffffcffff7dff from memory into f12
la x2, scratch
li x3, 0x0aa9d9c7a0750cc7 # load x3 with value 0x0aa9d9c7a0750cc7
sd x3, 0(x2) # store 0x0aa9d9c7a0750cc7 in memory
fld f20, 0(x2) # load 0x0aa9d9c7a0750cc7 from memory into f20
fnmadd.h f13, f27, f12, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x300312e53edf156a # load x3 with value 0x300312e53edf156a
sd x3, 0(x2) # store 0x300312e53edf156a in memory
fld f19, 0(x2) # load 0x300312e53edf156a from memory into f19
la x2, scratch
li x3, 0x5dc216c58c2d2e13 # load x3 with value 0x5dc216c58c2d2e13
sd x3, 0(x2) # store 0x5dc216c58c2d2e13 in memory
fld f7, 0(x2) # load 0x5dc216c58c2d2e13 from memory into f7
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f10, 0(x2) # load 0xffffffff00000000 from memory into f10
fnmadd.h f17, f19, f7, f10 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xb366fdd05117021d # load x3 with value 0xb366fdd05117021d
sd x3, 0(x2) # store 0xb366fdd05117021d in memory
fld f3, 0(x2) # load 0xb366fdd05117021d from memory into f3
la x2, scratch
li x3, 0x18e561f18c904ea4 # load x3 with value 0x18e561f18c904ea4
sd x3, 0(x2) # store 0x18e561f18c904ea4 in memory
fld f18, 0(x2) # load 0x18e561f18c904ea4 from memory into f18
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f25, 0(x2) # load 0xfffffffffffe8000 from memory into f25
fnmadd.h f8, f3, f18, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xed62d0a2d0d6fd62 # load x3 with value 0xed62d0a2d0d6fd62
sd x3, 0(x2) # store 0xed62d0a2d0d6fd62 in memory
fld f10, 0(x2) # load 0xed62d0a2d0d6fd62 from memory into f10
la x2, scratch
li x3, 0x4172fe2cfaff69b4 # load x3 with value 0x4172fe2cfaff69b4
sd x3, 0(x2) # store 0x4172fe2cfaff69b4 in memory
fld f17, 0(x2) # load 0x4172fe2cfaff69b4 from memory into f17
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f21, 0(x2) # load 0x7fffffffffff3c00 from memory into f21
fnmadd.h f3, f10, f17, f21 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x5bcd449fa7802e2a # load x3 with value 0x5bcd449fa7802e2a
sd x3, 0(x2) # store 0x5bcd449fa7802e2a in memory
fld f28, 0(x2) # load 0x5bcd449fa7802e2a from memory into f28
la x2, scratch
li x3, 0x6f2c2e941870fc4d # load x3 with value 0x6f2c2e941870fc4d
sd x3, 0(x2) # store 0x6f2c2e941870fc4d in memory
fld f7, 0(x2) # load 0x6f2c2e941870fc4d from memory into f7
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f5, 0(x2) # load 0xfeedbee5beefbc00 from memory into f5
fnmadd.h f18, f28, f7, f5 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x118b130732d401e1 # load x3 with value 0x118b130732d401e1
sd x3, 0(x2) # store 0x118b130732d401e1 in memory
fld f9, 0(x2) # load 0x118b130732d401e1 from memory into f9
la x2, scratch
li x3, 0x3a1db5d82bd2b383 # load x3 with value 0x3a1db5d82bd2b383
sd x3, 0(x2) # store 0x3a1db5d82bd2b383 in memory
fld f6, 0(x2) # load 0x3a1db5d82bd2b383 from memory into f6
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f22, 0(x2) # load 0xffffffefffff0400 from memory into f22
fnmadd.h f7, f9, f6, f22 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0x24009f6de10ef3fa # load x3 with value 0x24009f6de10ef3fa
sd x3, 0(x2) # store 0x24009f6de10ef3fa in memory
fld f30, 0(x2) # load 0x24009f6de10ef3fa from memory into f30
la x2, scratch
li x3, 0x4922140e2222619b # load x3 with value 0x4922140e2222619b
sd x3, 0(x2) # store 0x4922140e2222619b in memory
fld f27, 0(x2) # load 0x4922140e2222619b from memory into f27
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
fnmadd.h f22, f30, f27, f21 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xc082b67d81f077bf # load x3 with value 0xc082b67d81f077bf
sd x3, 0(x2) # store 0xc082b67d81f077bf in memory
fld f16, 0(x2) # load 0xc082b67d81f077bf from memory into f16
la x2, scratch
li x3, 0xf3f69264b71d45ca # load x3 with value 0xf3f69264b71d45ca
sd x3, 0(x2) # store 0xf3f69264b71d45ca in memory
fld f31, 0(x2) # load 0xf3f69264b71d45ca from memory into f31
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f18, 0(x2) # load 0xefffffffffff7bff from memory into f18
fnmadd.h f7, f16, f31, f18 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xf589b126c6fa926f # load x3 with value 0xf589b126c6fa926f
sd x3, 0(x2) # store 0xf589b126c6fa926f in memory
fld f15, 0(x2) # load 0xf589b126c6fa926f from memory into f15
la x2, scratch
li x3, 0x04168f44a5f98205 # load x3 with value 0x04168f44a5f98205
sd x3, 0(x2) # store 0x04168f44a5f98205 in memory
fld f13, 0(x2) # load 0x04168f44a5f98205 from memory into f13
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f24, 0(x2) # load 0xc0dec0dec0defbff from memory into f24
fnmadd.h f31, f15, f13, f24 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x2e6daeedeb4aaf2e # load x3 with value 0x2e6daeedeb4aaf2e
sd x3, 0(x2) # store 0x2e6daeedeb4aaf2e in memory
fld f25, 0(x2) # load 0x2e6daeedeb4aaf2e from memory into f25
la x2, scratch
li x3, 0xddfe52eeedd8691f # load x3 with value 0xddfe52eeedd8691f
sd x3, 0(x2) # store 0xddfe52eeedd8691f in memory
fld f6, 0(x2) # load 0xddfe52eeedd8691f from memory into f6
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f29, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f29
fnmadd.h f8, f25, f6, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x2ec719a29b9095ee # load x3 with value 0x2ec719a29b9095ee
sd x3, 0(x2) # store 0x2ec719a29b9095ee in memory
fld f5, 0(x2) # load 0x2ec719a29b9095ee from memory into f5
la x2, scratch
li x3, 0x0a74aa9ca8fcad80 # load x3 with value 0x0a74aa9ca8fcad80
sd x3, 0(x2) # store 0x0a74aa9ca8fcad80 in memory
fld f22, 0(x2) # load 0x0a74aa9ca8fcad80 from memory into f22
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f15, 0(x2) # load 0xffffffff0ffffc00 from memory into f15
fnmadd.h f21, f5, f22, f15 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x5f31c9b89050dfd7 # load x3 with value 0x5f31c9b89050dfd7
sd x3, 0(x2) # store 0x5f31c9b89050dfd7 in memory
fld f25, 0(x2) # load 0x5f31c9b89050dfd7 from memory into f25
la x2, scratch
li x3, 0x8c26128e0ab5ccac # load x3 with value 0x8c26128e0ab5ccac
sd x3, 0(x2) # store 0x8c26128e0ab5ccac in memory
fld f13, 0(x2) # load 0x8c26128e0ab5ccac from memory into f13
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f21, 0(x2) # load 0xfffeffffffff7e00 from memory into f21
fnmadd.h f30, f25, f13, f21 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xbc8aee1ceeb54d8b # load x3 with value 0xbc8aee1ceeb54d8b
sd x3, 0(x2) # store 0xbc8aee1ceeb54d8b in memory
fld f8, 0(x2) # load 0xbc8aee1ceeb54d8b from memory into f8
la x2, scratch
li x3, 0x89fd7b5d64c7421e # load x3 with value 0x89fd7b5d64c7421e
sd x3, 0(x2) # store 0x89fd7b5d64c7421e in memory
fld f16, 0(x2) # load 0x89fd7b5d64c7421e from memory into f16
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f27, 0(x2) # load 0xffffffefffff7fff from memory into f27
fnmadd.h f7, f8, f16, f27 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x80fe12aba98aa6b0 # load x3 with value 0x80fe12aba98aa6b0
sd x3, 0(x2) # store 0x80fe12aba98aa6b0 in memory
fld f16, 0(x2) # load 0x80fe12aba98aa6b0 from memory into f16
la x2, scratch
li x3, 0x574b86afed898694 # load x3 with value 0x574b86afed898694
sd x3, 0(x2) # store 0x574b86afed898694 in memory
fld f31, 0(x2) # load 0x574b86afed898694 from memory into f31
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f28, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f28
fnmadd.h f12, f16, f31, f28 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x87f27371b5515084 # load x3 with value 0x87f27371b5515084
sd x3, 0(x2) # store 0x87f27371b5515084 in memory
fld f18, 0(x2) # load 0x87f27371b5515084 from memory into f18
la x2, scratch
li x3, 0x6ac1572e4d793a6e # load x3 with value 0x6ac1572e4d793a6e
sd x3, 0(x2) # store 0x6ac1572e4d793a6e in memory
fld f15, 0(x2) # load 0x6ac1572e4d793a6e from memory into f15
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f11, 0(x2) # load 0xfffffffcffff7dff from memory into f11
fnmadd.h f10, f18, f15, f11 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fcvt.h.d.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x12, x18 # perform first operation
fcvt.h.d f10, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x17, x27 # perform first operation
fcvt.h.d f7, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x1, x17 # perform first operation
fcvt.h.d f22, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f2, f27, f12 # perform first operation
fcvt.h.d f27, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x9, x27 # perform first operation
fcvt.h.d f9, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x15, x5 # perform first operation
fcvt.h.d f15, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f18, f28, f1 # perform first operation
fcvt.h.d f18, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f13, f15 # perform first operation
fcvt.h.d f20, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f25, f5, f7 # perform first operation
fcvt.h.d f25, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f3, f31, f21 # perform first operation
fcvt.h.d f31, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f5, f25, f9 # perform first operation
fcvt.h.d f9, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f27, f21, f24 # perform first operation
fcvt.h.d f23, f19 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7d75e7fed8731beb # load x3 with value 0x7d75e7fed8731beb
sd x3, 0(x2) # store 0x7d75e7fed8731beb in memory
fld f0, 0(x2) # load 0x7d75e7fed8731beb from memory into f0
fcvt.h.d f12, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x28f3f7725644e051 # load x3 with value 0x28f3f7725644e051
sd x3, 0(x2) # store 0x28f3f7725644e051 in memory
fld f1, 0(x2) # load 0x28f3f7725644e051 from memory into f1
fcvt.h.d f23, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa848354c3657eda2 # load x3 with value 0xa848354c3657eda2
sd x3, 0(x2) # store 0xa848354c3657eda2 in memory
fld f2, 0(x2) # load 0xa848354c3657eda2 from memory into f2
fcvt.h.d f6, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0b2f3a88372d211f # load x3 with value 0x0b2f3a88372d211f
sd x3, 0(x2) # store 0x0b2f3a88372d211f in memory
fld f3, 0(x2) # load 0x0b2f3a88372d211f from memory into f3
fcvt.h.d f19, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf632c063b5f4738a # load x3 with value 0xf632c063b5f4738a
sd x3, 0(x2) # store 0xf632c063b5f4738a in memory
fld f4, 0(x2) # load 0xf632c063b5f4738a from memory into f4
fcvt.h.d f18, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5af6279b034baab9 # load x3 with value 0x5af6279b034baab9
sd x3, 0(x2) # store 0x5af6279b034baab9 in memory
fld f5, 0(x2) # load 0x5af6279b034baab9 from memory into f5
fcvt.h.d f17, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8c395183bb5e0c9f # load x3 with value 0x8c395183bb5e0c9f
sd x3, 0(x2) # store 0x8c395183bb5e0c9f in memory
fld f6, 0(x2) # load 0x8c395183bb5e0c9f from memory into f6
fcvt.h.d f20, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x98a8820e0d0e0987 # load x3 with value 0x98a8820e0d0e0987
sd x3, 0(x2) # store 0x98a8820e0d0e0987 in memory
fld f7, 0(x2) # load 0x98a8820e0d0e0987 from memory into f7
fcvt.h.d f2, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc1cd3a9f1979816d # load x3 with value 0xc1cd3a9f1979816d
sd x3, 0(x2) # store 0xc1cd3a9f1979816d in memory
fld f8, 0(x2) # load 0xc1cd3a9f1979816d from memory into f8
fcvt.h.d f17, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb53b9a205006d3e # load x3 with value 0xeb53b9a205006d3e
sd x3, 0(x2) # store 0xeb53b9a205006d3e in memory
fld f9, 0(x2) # load 0xeb53b9a205006d3e from memory into f9
fcvt.h.d f28, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe09b9e033b84e2db # load x3 with value 0xe09b9e033b84e2db
sd x3, 0(x2) # store 0xe09b9e033b84e2db in memory
fld f10, 0(x2) # load 0xe09b9e033b84e2db from memory into f10
fcvt.h.d f15, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5c1cb53bb6095c93 # load x3 with value 0x5c1cb53bb6095c93
sd x3, 0(x2) # store 0x5c1cb53bb6095c93 in memory
fld f11, 0(x2) # load 0x5c1cb53bb6095c93 from memory into f11
fcvt.h.d f17, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb77f91d2c2cbfe98 # load x3 with value 0xb77f91d2c2cbfe98
sd x3, 0(x2) # store 0xb77f91d2c2cbfe98 in memory
fld f12, 0(x2) # load 0xb77f91d2c2cbfe98 from memory into f12
fcvt.h.d f25, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c847aafc777efc8 # load x3 with value 0x9c847aafc777efc8
sd x3, 0(x2) # store 0x9c847aafc777efc8 in memory
fld f13, 0(x2) # load 0x9c847aafc777efc8 from memory into f13
fcvt.h.d f23, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfbb685bfd151f61c # load x3 with value 0xfbb685bfd151f61c
sd x3, 0(x2) # store 0xfbb685bfd151f61c in memory
fld f14, 0(x2) # load 0xfbb685bfd151f61c from memory into f14
fcvt.h.d f8, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x414de0bd0ecc602e # load x3 with value 0x414de0bd0ecc602e
sd x3, 0(x2) # store 0x414de0bd0ecc602e in memory
fld f15, 0(x2) # load 0x414de0bd0ecc602e from memory into f15
fcvt.h.d f17, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf7dddca1ba6ff315 # load x3 with value 0xf7dddca1ba6ff315
sd x3, 0(x2) # store 0xf7dddca1ba6ff315 in memory
fld f16, 0(x2) # load 0xf7dddca1ba6ff315 from memory into f16
fcvt.h.d f15, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x25483b57dc7d4180 # load x3 with value 0x25483b57dc7d4180
sd x3, 0(x2) # store 0x25483b57dc7d4180 in memory
fld f17, 0(x2) # load 0x25483b57dc7d4180 from memory into f17
fcvt.h.d f13, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3953983e4d237835 # load x3 with value 0x3953983e4d237835
sd x3, 0(x2) # store 0x3953983e4d237835 in memory
fld f18, 0(x2) # load 0x3953983e4d237835 from memory into f18
fcvt.h.d f3, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3dbf42ea7f1786dd # load x3 with value 0x3dbf42ea7f1786dd
sd x3, 0(x2) # store 0x3dbf42ea7f1786dd in memory
fld f19, 0(x2) # load 0x3dbf42ea7f1786dd from memory into f19
fcvt.h.d f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbca31557df27552f # load x3 with value 0xbca31557df27552f
sd x3, 0(x2) # store 0xbca31557df27552f in memory
fld f20, 0(x2) # load 0xbca31557df27552f from memory into f20
fcvt.h.d f12, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd931f5ab74c7167 # load x3 with value 0xfd931f5ab74c7167
sd x3, 0(x2) # store 0xfd931f5ab74c7167 in memory
fld f21, 0(x2) # load 0xfd931f5ab74c7167 from memory into f21
fcvt.h.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x52091a9a6e775503 # load x3 with value 0x52091a9a6e775503
sd x3, 0(x2) # store 0x52091a9a6e775503 in memory
fld f22, 0(x2) # load 0x52091a9a6e775503 from memory into f22
fcvt.h.d f2, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd4200688e63dd1f8 # load x3 with value 0xd4200688e63dd1f8
sd x3, 0(x2) # store 0xd4200688e63dd1f8 in memory
fld f23, 0(x2) # load 0xd4200688e63dd1f8 from memory into f23
fcvt.h.d f18, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf7ac402f0fe662a # load x3 with value 0xbf7ac402f0fe662a
sd x3, 0(x2) # store 0xbf7ac402f0fe662a in memory
fld f24, 0(x2) # load 0xbf7ac402f0fe662a from memory into f24
fcvt.h.d f28, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb3b88b6d4200244d # load x3 with value 0xb3b88b6d4200244d
sd x3, 0(x2) # store 0xb3b88b6d4200244d in memory
fld f25, 0(x2) # load 0xb3b88b6d4200244d from memory into f25
fcvt.h.d f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5fc56489bdfaf3c # load x3 with value 0xb5fc56489bdfaf3c
sd x3, 0(x2) # store 0xb5fc56489bdfaf3c in memory
fld f26, 0(x2) # load 0xb5fc56489bdfaf3c from memory into f26
fcvt.h.d f22, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x95d19453d23ead8f # load x3 with value 0x95d19453d23ead8f
sd x3, 0(x2) # store 0x95d19453d23ead8f in memory
fld f27, 0(x2) # load 0x95d19453d23ead8f from memory into f27
fcvt.h.d f5, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x166c50a421d9bc37 # load x3 with value 0x166c50a421d9bc37
sd x3, 0(x2) # store 0x166c50a421d9bc37 in memory
fld f28, 0(x2) # load 0x166c50a421d9bc37 from memory into f28
fcvt.h.d f25, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f5f6f07dfe02f3a # load x3 with value 0x0f5f6f07dfe02f3a
sd x3, 0(x2) # store 0x0f5f6f07dfe02f3a in memory
fld f29, 0(x2) # load 0x0f5f6f07dfe02f3a from memory into f29
fcvt.h.d f10, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2ed59318c5ca3346 # load x3 with value 0x2ed59318c5ca3346
sd x3, 0(x2) # store 0x2ed59318c5ca3346 in memory
fld f30, 0(x2) # load 0x2ed59318c5ca3346 from memory into f30
fcvt.h.d f26, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2d23e5012a9cef6e # load x3 with value 0x2d23e5012a9cef6e
sd x3, 0(x2) # store 0x2d23e5012a9cef6e in memory
fld f31, 0(x2) # load 0x2d23e5012a9cef6e from memory into f31
fcvt.h.d f17, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd230167e7cf69b1b # load x3 with value 0xd230167e7cf69b1b
sd x3, 0(x2) # store 0xd230167e7cf69b1b in memory
fld f24, 0(x2) # load 0xd230167e7cf69b1b from memory into f24
fcvt.h.d f0, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a348a221a662382 # load x3 with value 0x7a348a221a662382
sd x3, 0(x2) # store 0x7a348a221a662382 in memory
fld f2, 0(x2) # load 0x7a348a221a662382 from memory into f2
fcvt.h.d f1, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe68b5c716b4a030b # load x3 with value 0xe68b5c716b4a030b
sd x3, 0(x2) # store 0xe68b5c716b4a030b in memory
fld f27, 0(x2) # load 0xe68b5c716b4a030b from memory into f27
fcvt.h.d f2, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xef6e17714c375667 # load x3 with value 0xef6e17714c375667
sd x3, 0(x2) # store 0xef6e17714c375667 in memory
fld f21, 0(x2) # load 0xef6e17714c375667 from memory into f21
fcvt.h.d f3, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x17981521b8b51d98 # load x3 with value 0x17981521b8b51d98
sd x3, 0(x2) # store 0x17981521b8b51d98 in memory
fld f25, 0(x2) # load 0x17981521b8b51d98 from memory into f25
fcvt.h.d f4, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec55e585365bb3ec # load x3 with value 0xec55e585365bb3ec
sd x3, 0(x2) # store 0xec55e585365bb3ec in memory
fld f11, 0(x2) # load 0xec55e585365bb3ec from memory into f11
fcvt.h.d f5, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e76b1bfc42ee1e1 # load x3 with value 0x5e76b1bfc42ee1e1
sd x3, 0(x2) # store 0x5e76b1bfc42ee1e1 in memory
fld f5, 0(x2) # load 0x5e76b1bfc42ee1e1 from memory into f5
fcvt.h.d f6, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a7187fdc3823f5e # load x3 with value 0x2a7187fdc3823f5e
sd x3, 0(x2) # store 0x2a7187fdc3823f5e in memory
fld f13, 0(x2) # load 0x2a7187fdc3823f5e from memory into f13
fcvt.h.d f7, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x79e50c63038cca85 # load x3 with value 0x79e50c63038cca85
sd x3, 0(x2) # store 0x79e50c63038cca85 in memory
fld f14, 0(x2) # load 0x79e50c63038cca85 from memory into f14
fcvt.h.d f8, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd12c9edbd8bd65ce # load x3 with value 0xd12c9edbd8bd65ce
sd x3, 0(x2) # store 0xd12c9edbd8bd65ce in memory
fld f18, 0(x2) # load 0xd12c9edbd8bd65ce from memory into f18
fcvt.h.d f9, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe4d452defc2d723d # load x3 with value 0xe4d452defc2d723d
sd x3, 0(x2) # store 0xe4d452defc2d723d in memory
fld f17, 0(x2) # load 0xe4d452defc2d723d from memory into f17
fcvt.h.d f10, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x64d185d43d9bb833 # load x3 with value 0x64d185d43d9bb833
sd x3, 0(x2) # store 0x64d185d43d9bb833 in memory
fld f6, 0(x2) # load 0x64d185d43d9bb833 from memory into f6
fcvt.h.d f11, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x893070f94f3fc64e # load x3 with value 0x893070f94f3fc64e
sd x3, 0(x2) # store 0x893070f94f3fc64e in memory
fld f21, 0(x2) # load 0x893070f94f3fc64e from memory into f21
fcvt.h.d f12, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc2eb12efaa77fd3a # load x3 with value 0xc2eb12efaa77fd3a
sd x3, 0(x2) # store 0xc2eb12efaa77fd3a in memory
fld f24, 0(x2) # load 0xc2eb12efaa77fd3a from memory into f24
fcvt.h.d f13, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaa13189841f91077 # load x3 with value 0xaa13189841f91077
sd x3, 0(x2) # store 0xaa13189841f91077 in memory
fld f10, 0(x2) # load 0xaa13189841f91077 from memory into f10
fcvt.h.d f14, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e62497e5499ef7a # load x3 with value 0x8e62497e5499ef7a
sd x3, 0(x2) # store 0x8e62497e5499ef7a in memory
fld f24, 0(x2) # load 0x8e62497e5499ef7a from memory into f24
fcvt.h.d f15, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x94c799b504a9ca30 # load x3 with value 0x94c799b504a9ca30
sd x3, 0(x2) # store 0x94c799b504a9ca30 in memory
fld f31, 0(x2) # load 0x94c799b504a9ca30 from memory into f31
fcvt.h.d f16, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12168fcb8ec5ef09 # load x3 with value 0x12168fcb8ec5ef09
sd x3, 0(x2) # store 0x12168fcb8ec5ef09 in memory
fld f28, 0(x2) # load 0x12168fcb8ec5ef09 from memory into f28
fcvt.h.d f17, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc079de15649caa5a # load x3 with value 0xc079de15649caa5a
sd x3, 0(x2) # store 0xc079de15649caa5a in memory
fld f17, 0(x2) # load 0xc079de15649caa5a from memory into f17
fcvt.h.d f18, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ae3f11fd86d83ee # load x3 with value 0x8ae3f11fd86d83ee
sd x3, 0(x2) # store 0x8ae3f11fd86d83ee in memory
fld f2, 0(x2) # load 0x8ae3f11fd86d83ee from memory into f2
fcvt.h.d f19, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9f197fa331ef938d # load x3 with value 0x9f197fa331ef938d
sd x3, 0(x2) # store 0x9f197fa331ef938d in memory
fld f18, 0(x2) # load 0x9f197fa331ef938d from memory into f18
fcvt.h.d f20, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2ccd44f35c167ea7 # load x3 with value 0x2ccd44f35c167ea7
sd x3, 0(x2) # store 0x2ccd44f35c167ea7 in memory
fld f26, 0(x2) # load 0x2ccd44f35c167ea7 from memory into f26
fcvt.h.d f21, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x71afef85bd9b3fca # load x3 with value 0x71afef85bd9b3fca
sd x3, 0(x2) # store 0x71afef85bd9b3fca in memory
fld f30, 0(x2) # load 0x71afef85bd9b3fca from memory into f30
fcvt.h.d f22, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x600c24f8119575b3 # load x3 with value 0x600c24f8119575b3
sd x3, 0(x2) # store 0x600c24f8119575b3 in memory
fld f17, 0(x2) # load 0x600c24f8119575b3 from memory into f17
fcvt.h.d f23, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x19774bdfbc399d8e # load x3 with value 0x19774bdfbc399d8e
sd x3, 0(x2) # store 0x19774bdfbc399d8e in memory
fld f3, 0(x2) # load 0x19774bdfbc399d8e from memory into f3
fcvt.h.d f24, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee465fe369e3b7bb # load x3 with value 0xee465fe369e3b7bb
sd x3, 0(x2) # store 0xee465fe369e3b7bb in memory
fld f11, 0(x2) # load 0xee465fe369e3b7bb from memory into f11
fcvt.h.d f25, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x42fa3aeb9c8084dd # load x3 with value 0x42fa3aeb9c8084dd
sd x3, 0(x2) # store 0x42fa3aeb9c8084dd in memory
fld f5, 0(x2) # load 0x42fa3aeb9c8084dd from memory into f5
fcvt.h.d f26, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23b7a0d8440863bb # load x3 with value 0x23b7a0d8440863bb
sd x3, 0(x2) # store 0x23b7a0d8440863bb in memory
fld f29, 0(x2) # load 0x23b7a0d8440863bb from memory into f29
fcvt.h.d f27, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa944f0aa693e4961 # load x3 with value 0xa944f0aa693e4961
sd x3, 0(x2) # store 0xa944f0aa693e4961 in memory
fld f9, 0(x2) # load 0xa944f0aa693e4961 from memory into f9
fcvt.h.d f28, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x60a5cba9672b2afc # load x3 with value 0x60a5cba9672b2afc
sd x3, 0(x2) # store 0x60a5cba9672b2afc in memory
fld f2, 0(x2) # load 0x60a5cba9672b2afc from memory into f2
fcvt.h.d f29, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9457c6b8431e66d7 # load x3 with value 0x9457c6b8431e66d7
sd x3, 0(x2) # store 0x9457c6b8431e66d7 in memory
fld f1, 0(x2) # load 0x9457c6b8431e66d7 from memory into f1
fcvt.h.d f30, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe99fbd8d3e6d0b2b # load x3 with value 0xe99fbd8d3e6d0b2b
sd x3, 0(x2) # store 0xe99fbd8d3e6d0b2b in memory
fld f13, 0(x2) # load 0xe99fbd8d3e6d0b2b from memory into f13
fcvt.h.d f31, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fcvt.h.d f1, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
fcvt.h.d f27, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
fcvt.h.d f27, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fcvt.h.d f8, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fcvt.h.d f22, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fcvt.h.d f27, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fcvt.h.d f27, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
fcvt.h.d f20, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fcvt.h.d f19, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fcvt.h.d f13, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fcvt.h.d f26, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fcvt.h.d f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fcvt.h.d f28, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fcvt.h.d f16, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fcvt.h.d f15, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fcvt.h.d f22, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fcvt.h.d f15, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
fcvt.h.d f10, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
fcvt.h.d f6, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fcvt.h.d f12, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
fcvt.h.d f13, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
fcvt.h.d f12, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f7, 0(x2) # load 0xfff8000000000000 from memory into f7
fcvt.h.d f11, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
fcvt.h.d f8, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fcvt.h.d f28, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f16, 0(x2) # load 0xfff0000000000001 from memory into f16
fcvt.h.d f29, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fcvt.h.d f26, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
fcvt.h.d f24, f16 # perform operation second time to make sure flags don't change

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fcvt.h.d f19, f15, dyn # perform operation
fcvt.h.d f19, f15, rdn # perform operation
fcvt.h.d f19, f15, rmm # perform operation
fcvt.h.d f19, f15, rne # perform operation
fcvt.h.d f19, f15, rtz # perform operation
fcvt.h.d f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f19, f15 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fcvt.h.d f27, f20, dyn # perform operation
fcvt.h.d f27, f20, rdn # perform operation
fcvt.h.d f27, f20, rmm # perform operation
fcvt.h.d f27, f20, rne # perform operation
fcvt.h.d f27, f20, rtz # perform operation
fcvt.h.d f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f27, f20 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
fcvt.h.d f19, f12, dyn # perform operation
fcvt.h.d f19, f12, rdn # perform operation
fcvt.h.d f19, f12, rmm # perform operation
fcvt.h.d f19, f12, rne # perform operation
fcvt.h.d f19, f12, rtz # perform operation
fcvt.h.d f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f19, f12 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
fcvt.h.d f26, f10, dyn # perform operation
fcvt.h.d f26, f10, rdn # perform operation
fcvt.h.d f26, f10, rmm # perform operation
fcvt.h.d f26, f10, rne # perform operation
fcvt.h.d f26, f10, rtz # perform operation
fcvt.h.d f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f26, f10 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
fcvt.h.d f6, f18, dyn # perform operation
fcvt.h.d f6, f18, rdn # perform operation
fcvt.h.d f6, f18, rmm # perform operation
fcvt.h.d f6, f18, rne # perform operation
fcvt.h.d f6, f18, rtz # perform operation
fcvt.h.d f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f6, f18 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fcvt.h.d f26, f3, dyn # perform operation
fcvt.h.d f26, f3, rdn # perform operation
fcvt.h.d f26, f3, rmm # perform operation
fcvt.h.d f26, f3, rne # perform operation
fcvt.h.d f26, f3, rtz # perform operation
fcvt.h.d f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f26, f3 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
fcvt.h.d f22, f15, dyn # perform operation
fcvt.h.d f22, f15, rdn # perform operation
fcvt.h.d f22, f15, rmm # perform operation
fcvt.h.d f22, f15, rne # perform operation
fcvt.h.d f22, f15, rtz # perform operation
fcvt.h.d f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f22, f15 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fcvt.h.d f22, f25, dyn # perform operation
fcvt.h.d f22, f25, rdn # perform operation
fcvt.h.d f22, f25, rmm # perform operation
fcvt.h.d f22, f25, rne # perform operation
fcvt.h.d f22, f25, rtz # perform operation
fcvt.h.d f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f22, f25 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fcvt.h.d f29, f24, dyn # perform operation
fcvt.h.d f29, f24, rdn # perform operation
fcvt.h.d f29, f24, rmm # perform operation
fcvt.h.d f29, f24, rne # perform operation
fcvt.h.d f29, f24, rtz # perform operation
fcvt.h.d f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f29, f24 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
fcvt.h.d f10, f6, dyn # perform operation
fcvt.h.d f10, f6, rdn # perform operation
fcvt.h.d f10, f6, rmm # perform operation
fcvt.h.d f10, f6, rne # perform operation
fcvt.h.d f10, f6, rtz # perform operation
fcvt.h.d f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f10, f6 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
fcvt.h.d f12, f9, dyn # perform operation
fcvt.h.d f12, f9, rdn # perform operation
fcvt.h.d f12, f9, rmm # perform operation
fcvt.h.d f12, f9, rne # perform operation
fcvt.h.d f12, f9, rtz # perform operation
fcvt.h.d f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f12, f9 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
fcvt.h.d f25, f10, dyn # perform operation
fcvt.h.d f25, f10, rdn # perform operation
fcvt.h.d f25, f10, rmm # perform operation
fcvt.h.d f25, f10, rne # perform operation
fcvt.h.d f25, f10, rtz # perform operation
fcvt.h.d f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f25, f10 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
fcvt.h.d f18, f14, dyn # perform operation
fcvt.h.d f18, f14, rdn # perform operation
fcvt.h.d f18, f14, rmm # perform operation
fcvt.h.d f18, f14, rne # perform operation
fcvt.h.d f18, f14, rtz # perform operation
fcvt.h.d f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f18, f14 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
fcvt.h.d f21, f12, dyn # perform operation
fcvt.h.d f21, f12, rdn # perform operation
fcvt.h.d f21, f12, rmm # perform operation
fcvt.h.d f21, f12, rne # perform operation
fcvt.h.d f21, f12, rtz # perform operation
fcvt.h.d f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f21, f12 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fcvt.h.d f16, f31, dyn # perform operation
fcvt.h.d f16, f31, rdn # perform operation
fcvt.h.d f16, f31, rmm # perform operation
fcvt.h.d f16, f31, rne # perform operation
fcvt.h.d f16, f31, rtz # perform operation
fcvt.h.d f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f16, f31 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fcvt.h.d f24, f29, dyn # perform operation
fcvt.h.d f24, f29, rdn # perform operation
fcvt.h.d f24, f29, rmm # perform operation
fcvt.h.d f24, f29, rne # perform operation
fcvt.h.d f24, f29, rtz # perform operation
fcvt.h.d f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f24, f29 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
fcvt.h.d f24, f28, dyn # perform operation
fcvt.h.d f24, f28, rdn # perform operation
fcvt.h.d f24, f28, rmm # perform operation
fcvt.h.d f24, f28, rne # perform operation
fcvt.h.d f24, f28, rtz # perform operation
fcvt.h.d f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f24, f28 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
fcvt.h.d f30, f3, dyn # perform operation
fcvt.h.d f30, f3, rdn # perform operation
fcvt.h.d f30, f3, rmm # perform operation
fcvt.h.d f30, f3, rne # perform operation
fcvt.h.d f30, f3, rtz # perform operation
fcvt.h.d f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f30, f3 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
fcvt.h.d f11, f24, dyn # perform operation
fcvt.h.d f11, f24, rdn # perform operation
fcvt.h.d f11, f24, rmm # perform operation
fcvt.h.d f11, f24, rne # perform operation
fcvt.h.d f11, f24, rtz # perform operation
fcvt.h.d f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f11, f24 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fcvt.h.d f15, f3, dyn # perform operation
fcvt.h.d f15, f3, rdn # perform operation
fcvt.h.d f15, f3, rmm # perform operation
fcvt.h.d f15, f3, rne # perform operation
fcvt.h.d f15, f3, rtz # perform operation
fcvt.h.d f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f15, f3 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
fcvt.h.d f22, f31, dyn # perform operation
fcvt.h.d f22, f31, rdn # perform operation
fcvt.h.d f22, f31, rmm # perform operation
fcvt.h.d f22, f31, rne # perform operation
fcvt.h.d f22, f31, rtz # perform operation
fcvt.h.d f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f22, f31 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
fcvt.h.d f21, f11, dyn # perform operation
fcvt.h.d f21, f11, rdn # perform operation
fcvt.h.d f21, f11, rmm # perform operation
fcvt.h.d f21, f11, rne # perform operation
fcvt.h.d f21, f11, rtz # perform operation
fcvt.h.d f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f21, f11 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f30, 0(x2) # load 0xfff8000000000000 from memory into f30
fcvt.h.d f17, f30, dyn # perform operation
fcvt.h.d f17, f30, rdn # perform operation
fcvt.h.d f17, f30, rmm # perform operation
fcvt.h.d f17, f30, rne # perform operation
fcvt.h.d f17, f30, rtz # perform operation
fcvt.h.d f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f17, f30 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fcvt.h.d f22, f12, dyn # perform operation
fcvt.h.d f22, f12, rdn # perform operation
fcvt.h.d f22, f12, rmm # perform operation
fcvt.h.d f22, f12, rne # perform operation
fcvt.h.d f22, f12, rtz # perform operation
fcvt.h.d f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f22, f12 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
fcvt.h.d f3, f23, dyn # perform operation
fcvt.h.d f3, f23, rdn # perform operation
fcvt.h.d f3, f23, rmm # perform operation
fcvt.h.d f3, f23, rne # perform operation
fcvt.h.d f3, f23, rtz # perform operation
fcvt.h.d f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f3, f23 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f14, 0(x2) # load 0xfff0000000000001 from memory into f14
fcvt.h.d f11, f14, dyn # perform operation
fcvt.h.d f11, f14, rdn # perform operation
fcvt.h.d f11, f14, rmm # perform operation
fcvt.h.d f11, f14, rne # perform operation
fcvt.h.d f11, f14, rtz # perform operation
fcvt.h.d f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f11, f14 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f3, 0(x2) # load 0x5a392534a57711ad from memory into f3
fcvt.h.d f5, f3, dyn # perform operation
fcvt.h.d f5, f3, rdn # perform operation
fcvt.h.d f5, f3, rmm # perform operation
fcvt.h.d f5, f3, rne # perform operation
fcvt.h.d f5, f3, rtz # perform operation
fcvt.h.d f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f5, f3 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
fcvt.h.d f24, f25, dyn # perform operation
fcvt.h.d f24, f25, rdn # perform operation
fcvt.h.d f24, f25, rmm # perform operation
fcvt.h.d f24, f25, rne # perform operation
fcvt.h.d f24, f25, rtz # perform operation
fcvt.h.d f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f24, f25 # perform operation


# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x90d6f7a6f5e177fe # load x3 with value 0x90d6f7a6f5e177fe
sd x3, 0(x2) # store 0x90d6f7a6f5e177fe in memory
fld f0, 0(x2) # load 0x90d6f7a6f5e177fe from memory into f0
fcvt.h.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xae69ef4c9c406866 # load x3 with value 0xae69ef4c9c406866
sd x3, 0(x2) # store 0xae69ef4c9c406866 in memory
fld f1, 0(x2) # load 0xae69ef4c9c406866 from memory into f1
fcvt.h.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x646682ae9483491b # load x3 with value 0x646682ae9483491b
sd x3, 0(x2) # store 0x646682ae9483491b in memory
fld f2, 0(x2) # load 0x646682ae9483491b from memory into f2
fcvt.h.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6ddd81e8acbd2382 # load x3 with value 0x6ddd81e8acbd2382
sd x3, 0(x2) # store 0x6ddd81e8acbd2382 in memory
fld f3, 0(x2) # load 0x6ddd81e8acbd2382 from memory into f3
fcvt.h.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x100b90a2b98f32ff # load x3 with value 0x100b90a2b98f32ff
sd x3, 0(x2) # store 0x100b90a2b98f32ff in memory
fld f4, 0(x2) # load 0x100b90a2b98f32ff from memory into f4
fcvt.h.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8f7b272ac22d1317 # load x3 with value 0x8f7b272ac22d1317
sd x3, 0(x2) # store 0x8f7b272ac22d1317 in memory
fld f5, 0(x2) # load 0x8f7b272ac22d1317 from memory into f5
fcvt.h.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2e915d92918a5f4f # load x3 with value 0x2e915d92918a5f4f
sd x3, 0(x2) # store 0x2e915d92918a5f4f in memory
fld f6, 0(x2) # load 0x2e915d92918a5f4f from memory into f6
fcvt.h.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xac79b1b89a62ef79 # load x3 with value 0xac79b1b89a62ef79
sd x3, 0(x2) # store 0xac79b1b89a62ef79 in memory
fld f7, 0(x2) # load 0xac79b1b89a62ef79 from memory into f7
fcvt.h.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0a7bbdc7ce3dc4e2 # load x3 with value 0x0a7bbdc7ce3dc4e2
sd x3, 0(x2) # store 0x0a7bbdc7ce3dc4e2 in memory
fld f8, 0(x2) # load 0x0a7bbdc7ce3dc4e2 from memory into f8
fcvt.h.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa2768ab8bc2cde2e # load x3 with value 0xa2768ab8bc2cde2e
sd x3, 0(x2) # store 0xa2768ab8bc2cde2e in memory
fld f9, 0(x2) # load 0xa2768ab8bc2cde2e from memory into f9
fcvt.h.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1ae2b11689061531 # load x3 with value 0x1ae2b11689061531
sd x3, 0(x2) # store 0x1ae2b11689061531 in memory
fld f10, 0(x2) # load 0x1ae2b11689061531 from memory into f10
fcvt.h.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf90c6deb5d2d606f # load x3 with value 0xf90c6deb5d2d606f
sd x3, 0(x2) # store 0xf90c6deb5d2d606f in memory
fld f11, 0(x2) # load 0xf90c6deb5d2d606f from memory into f11
fcvt.h.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec1ebca14fa4e04e # load x3 with value 0xec1ebca14fa4e04e
sd x3, 0(x2) # store 0xec1ebca14fa4e04e in memory
fld f12, 0(x2) # load 0xec1ebca14fa4e04e from memory into f12
fcvt.h.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e4642d73891c56d # load x3 with value 0x7e4642d73891c56d
sd x3, 0(x2) # store 0x7e4642d73891c56d in memory
fld f13, 0(x2) # load 0x7e4642d73891c56d from memory into f13
fcvt.h.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4caabbc860a9db5a # load x3 with value 0x4caabbc860a9db5a
sd x3, 0(x2) # store 0x4caabbc860a9db5a in memory
fld f14, 0(x2) # load 0x4caabbc860a9db5a from memory into f14
fcvt.h.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2c488ec54d3c9667 # load x3 with value 0x2c488ec54d3c9667
sd x3, 0(x2) # store 0x2c488ec54d3c9667 in memory
fld f15, 0(x2) # load 0x2c488ec54d3c9667 from memory into f15
fcvt.h.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x269ef05552deed4f # load x3 with value 0x269ef05552deed4f
sd x3, 0(x2) # store 0x269ef05552deed4f in memory
fld f16, 0(x2) # load 0x269ef05552deed4f from memory into f16
fcvt.h.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a1c3d6ae487f47b # load x3 with value 0x3a1c3d6ae487f47b
sd x3, 0(x2) # store 0x3a1c3d6ae487f47b in memory
fld f17, 0(x2) # load 0x3a1c3d6ae487f47b from memory into f17
fcvt.h.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x472cb9dc2b37e798 # load x3 with value 0x472cb9dc2b37e798
sd x3, 0(x2) # store 0x472cb9dc2b37e798 in memory
fld f18, 0(x2) # load 0x472cb9dc2b37e798 from memory into f18
fcvt.h.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x38f26cad55a4a7fc # load x3 with value 0x38f26cad55a4a7fc
sd x3, 0(x2) # store 0x38f26cad55a4a7fc in memory
fld f19, 0(x2) # load 0x38f26cad55a4a7fc from memory into f19
fcvt.h.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x07cf344cc9e706f8 # load x3 with value 0x07cf344cc9e706f8
sd x3, 0(x2) # store 0x07cf344cc9e706f8 in memory
fld f20, 0(x2) # load 0x07cf344cc9e706f8 from memory into f20
fcvt.h.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe773431dac992845 # load x3 with value 0xe773431dac992845
sd x3, 0(x2) # store 0xe773431dac992845 in memory
fld f21, 0(x2) # load 0xe773431dac992845 from memory into f21
fcvt.h.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4d34f13e2de55106 # load x3 with value 0x4d34f13e2de55106
sd x3, 0(x2) # store 0x4d34f13e2de55106 in memory
fld f22, 0(x2) # load 0x4d34f13e2de55106 from memory into f22
fcvt.h.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x096ca126b50901b2 # load x3 with value 0x096ca126b50901b2
sd x3, 0(x2) # store 0x096ca126b50901b2 in memory
fld f23, 0(x2) # load 0x096ca126b50901b2 from memory into f23
fcvt.h.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6df0ded48a5f88b2 # load x3 with value 0x6df0ded48a5f88b2
sd x3, 0(x2) # store 0x6df0ded48a5f88b2 in memory
fld f24, 0(x2) # load 0x6df0ded48a5f88b2 from memory into f24
fcvt.h.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x97777e94a35a274d # load x3 with value 0x97777e94a35a274d
sd x3, 0(x2) # store 0x97777e94a35a274d in memory
fld f25, 0(x2) # load 0x97777e94a35a274d from memory into f25
fcvt.h.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f0b41ad7f9d35da # load x3 with value 0x0f0b41ad7f9d35da
sd x3, 0(x2) # store 0x0f0b41ad7f9d35da in memory
fld f26, 0(x2) # load 0x0f0b41ad7f9d35da from memory into f26
fcvt.h.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf855dc194d316fe5 # load x3 with value 0xf855dc194d316fe5
sd x3, 0(x2) # store 0xf855dc194d316fe5 in memory
fld f27, 0(x2) # load 0xf855dc194d316fe5 from memory into f27
fcvt.h.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x763ac878aa4d70c2 # load x3 with value 0x763ac878aa4d70c2
sd x3, 0(x2) # store 0x763ac878aa4d70c2 in memory
fld f28, 0(x2) # load 0x763ac878aa4d70c2 from memory into f28
fcvt.h.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23dc136bcddeaf38 # load x3 with value 0x23dc136bcddeaf38
sd x3, 0(x2) # store 0x23dc136bcddeaf38 in memory
fld f29, 0(x2) # load 0x23dc136bcddeaf38 from memory into f29
fcvt.h.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8111ae0dbdd2f0f3 # load x3 with value 0x8111ae0dbdd2f0f3
sd x3, 0(x2) # store 0x8111ae0dbdd2f0f3 in memory
fld f30, 0(x2) # load 0x8111ae0dbdd2f0f3 from memory into f30
fcvt.h.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1b659d07776574ad # load x3 with value 0x1b659d07776574ad
sd x3, 0(x2) # store 0x1b659d07776574ad in memory
fld f31, 0(x2) # load 0x1b659d07776574ad from memory into f31
fcvt.h.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c42952d324195bc # load x3 with value 0x1c42952d324195bc
sd x3, 0(x2) # store 0x1c42952d324195bc in memory
fld f26, 0(x2) # load 0x1c42952d324195bc from memory into f26
fcvt.h.d f9, f26, dyn # perform operation
fcvt.h.d f9, f26, rdn # perform operation
fcvt.h.d f9, f26, rmm # perform operation
fcvt.h.d f9, f26, rne # perform operation
fcvt.h.d f9, f26, rtz # perform operation
fcvt.h.d f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f9, f26 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x86f659b6a15bcf51 # load x3 with value 0x86f659b6a15bcf51
sd x3, 0(x2) # store 0x86f659b6a15bcf51 in memory
fld f25, 0(x2) # load 0x86f659b6a15bcf51 from memory into f25
fcvt.h.d f5, f25 # perform operation second time to make sure flags don't change

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fsgnj.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0xe5048d20f6e03cc7 # load x3 with value 0xe5048d20f6e03cc7
sd x3, 0(x2) # store 0xe5048d20f6e03cc7 in memory
flh f26, 0(x2) # load 0xe5048d20f6e03cc7 from memory into f26
la x2, scratch
li x3, 0x4fd8a4a40bc15dc7 # load x3 with value 0x4fd8a4a40bc15dc7
sd x3, 0(x2) # store 0x4fd8a4a40bc15dc7 in memory
flh f12, 0(x2) # load 0x4fd8a4a40bc15dc7 from memory into f12
fsgnj.h f20, f26, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
la x2, scratch
li x3, 0x37b1cd62e6bc65e1 # load x3 with value 0x37b1cd62e6bc65e1
sd x3, 0(x2) # store 0x37b1cd62e6bc65e1 in memory
fld f10, 0(x2) # load 0x37b1cd62e6bc65e1 from memory into f10
fsgnj.h f13, f21, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f27, 0(x2) # load 0xfffffffffffe8000 from memory into f27
la x2, scratch
li x3, 0x0e5a2d4b9ad5275c # load x3 with value 0x0e5a2d4b9ad5275c
sd x3, 0(x2) # store 0x0e5a2d4b9ad5275c in memory
fld f23, 0(x2) # load 0x0e5a2d4b9ad5275c from memory into f23
fsgnj.h f24, f27, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f8, 0(x2) # load 0x7fffffffffff3c00 from memory into f8
la x2, scratch
li x3, 0xe97f48c6d7d9bd22 # load x3 with value 0xe97f48c6d7d9bd22
sd x3, 0(x2) # store 0xe97f48c6d7d9bd22 in memory
fld f28, 0(x2) # load 0xe97f48c6d7d9bd22 from memory into f28
fsgnj.h f9, f8, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f7, 0(x2) # load 0xfeedbee5beefbc00 from memory into f7
la x2, scratch
li x3, 0xd907ae9860388b88 # load x3 with value 0xd907ae9860388b88
sd x3, 0(x2) # store 0xd907ae9860388b88 in memory
fld f20, 0(x2) # load 0xd907ae9860388b88 from memory into f20
fsgnj.h f15, f7, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f18, 0(x2) # load 0xffffffefffff0400 from memory into f18
la x2, scratch
li x3, 0xc15976fd5fa88698 # load x3 with value 0xc15976fd5fa88698
sd x3, 0(x2) # store 0xc15976fd5fa88698 in memory
fld f1, 0(x2) # load 0xc15976fd5fa88698 from memory into f1
fsgnj.h f30, f18, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f7, 0(x2) # load 0x00000000ffff8400 from memory into f7
la x2, scratch
li x3, 0x80a93d66f8915ec1 # load x3 with value 0x80a93d66f8915ec1
sd x3, 0(x2) # store 0x80a93d66f8915ec1 in memory
fld f30, 0(x2) # load 0x80a93d66f8915ec1 from memory into f30
fsgnj.h f22, f7, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0xb9cc07d9fe04b086 # load x3 with value 0xb9cc07d9fe04b086
sd x3, 0(x2) # store 0xb9cc07d9fe04b086 in memory
fld f1, 0(x2) # load 0xb9cc07d9fe04b086 from memory into f1
fsgnj.h f31, f12, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f15, 0(x2) # load 0xc0dec0dec0defbff from memory into f15
la x2, scratch
li x3, 0x45a005ea4b0d6ce2 # load x3 with value 0x45a005ea4b0d6ce2
sd x3, 0(x2) # store 0x45a005ea4b0d6ce2 in memory
fld f6, 0(x2) # load 0x45a005ea4b0d6ce2 from memory into f6
fsgnj.h f9, f15, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f5, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f5
la x2, scratch
li x3, 0xf362d61fbdcacd34 # load x3 with value 0xf362d61fbdcacd34
sd x3, 0(x2) # store 0xf362d61fbdcacd34 in memory
fld f13, 0(x2) # load 0xf362d61fbdcacd34 from memory into f13
fsgnj.h f20, f5, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f13, 0(x2) # load 0xffffffff0ffffc00 from memory into f13
la x2, scratch
li x3, 0x4438250f71eec13a # load x3 with value 0x4438250f71eec13a
sd x3, 0(x2) # store 0x4438250f71eec13a in memory
fld f21, 0(x2) # load 0x4438250f71eec13a from memory into f21
fsgnj.h f24, f13, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f19, 0(x2) # load 0xfffeffffffff7e00 from memory into f19
la x2, scratch
li x3, 0x59cd6f743a465e46 # load x3 with value 0x59cd6f743a465e46
sd x3, 0(x2) # store 0x59cd6f743a465e46 in memory
fld f13, 0(x2) # load 0x59cd6f743a465e46 from memory into f13
fsgnj.h f1, f19, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
la x2, scratch
li x3, 0x6b7798689e553d52 # load x3 with value 0x6b7798689e553d52
sd x3, 0(x2) # store 0x6b7798689e553d52 in memory
fld f2, 0(x2) # load 0x6b7798689e553d52 from memory into f2
fsgnj.h f27, f31, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f18, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f18
la x2, scratch
li x3, 0x0db7a2e2cde648ab # load x3 with value 0x0db7a2e2cde648ab
sd x3, 0(x2) # store 0x0db7a2e2cde648ab in memory
fld f22, 0(x2) # load 0x0db7a2e2cde648ab from memory into f22
fsgnj.h f30, f18, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f7, 0(x2) # load 0xfffffffcffff7dff from memory into f7
la x2, scratch
li x3, 0x536a881e0f462fe3 # load x3 with value 0x536a881e0f462fe3
sd x3, 0(x2) # store 0x536a881e0f462fe3 in memory
fld f25, 0(x2) # load 0x536a881e0f462fe3 from memory into f25
fsgnj.h f16, f7, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xd99e98d86306614a # load x3 with value 0xd99e98d86306614a
sd x3, 0(x2) # store 0xd99e98d86306614a in memory
fld f8, 0(x2) # load 0xd99e98d86306614a from memory into f8
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f30, 0(x2) # load 0xffffffff00000000 from memory into f30
fsgnj.h f22, f8, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x1792af4331eb285b # load x3 with value 0x1792af4331eb285b
sd x3, 0(x2) # store 0x1792af4331eb285b in memory
fld f8, 0(x2) # load 0x1792af4331eb285b from memory into f8
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f6, 0(x2) # load 0xfffffffffffe8000 from memory into f6
fsgnj.h f28, f8, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x2279667912652fc9 # load x3 with value 0x2279667912652fc9
sd x3, 0(x2) # store 0x2279667912652fc9 in memory
fld f15, 0(x2) # load 0x2279667912652fc9 from memory into f15
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f26, 0(x2) # load 0x7fffffffffff3c00 from memory into f26
fsgnj.h f11, f15, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x91086349c41eb2a2 # load x3 with value 0x91086349c41eb2a2
sd x3, 0(x2) # store 0x91086349c41eb2a2 in memory
fld f11, 0(x2) # load 0x91086349c41eb2a2 from memory into f11
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f29, 0(x2) # load 0xfeedbee5beefbc00 from memory into f29
fsgnj.h f6, f11, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xb5dd930edbe1ac6c # load x3 with value 0xb5dd930edbe1ac6c
sd x3, 0(x2) # store 0xb5dd930edbe1ac6c in memory
fld f7, 0(x2) # load 0xb5dd930edbe1ac6c from memory into f7
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
fsgnj.h f14, f7, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x8424f1a88ce1cc22 # load x3 with value 0x8424f1a88ce1cc22
sd x3, 0(x2) # store 0x8424f1a88ce1cc22 in memory
fld f15, 0(x2) # load 0x8424f1a88ce1cc22 from memory into f15
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f23, 0(x2) # load 0x00000000ffff8400 from memory into f23
fsgnj.h f28, f15, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xedacebf8cd7244cd # load x3 with value 0xedacebf8cd7244cd
sd x3, 0(x2) # store 0xedacebf8cd7244cd in memory
fld f22, 0(x2) # load 0xedacebf8cd7244cd from memory into f22
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fsgnj.h f1, f22, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x0a6a3bba24250281 # load x3 with value 0x0a6a3bba24250281
sd x3, 0(x2) # store 0x0a6a3bba24250281 in memory
fld f21, 0(x2) # load 0x0a6a3bba24250281 from memory into f21
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f31, 0(x2) # load 0xc0dec0dec0defbff from memory into f31
fsgnj.h f27, f21, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x465091af7de0d0d5 # load x3 with value 0x465091af7de0d0d5
sd x3, 0(x2) # store 0x465091af7de0d0d5 in memory
fld f21, 0(x2) # load 0x465091af7de0d0d5 from memory into f21
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f26, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f26
fsgnj.h f7, f21, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xad7162718c702283 # load x3 with value 0xad7162718c702283
sd x3, 0(x2) # store 0xad7162718c702283 in memory
fld f14, 0(x2) # load 0xad7162718c702283 from memory into f14
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f20, 0(x2) # load 0xffffffff0ffffc00 from memory into f20
fsgnj.h f19, f14, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x104466d0a42dd7cc # load x3 with value 0x104466d0a42dd7cc
sd x3, 0(x2) # store 0x104466d0a42dd7cc in memory
fld f12, 0(x2) # load 0x104466d0a42dd7cc from memory into f12
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f26, 0(x2) # load 0xfffeffffffff7e00 from memory into f26
fsgnj.h f18, f12, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x99b77adf87ae9664 # load x3 with value 0x99b77adf87ae9664
sd x3, 0(x2) # store 0x99b77adf87ae9664 in memory
fld f2, 0(x2) # load 0x99b77adf87ae9664 from memory into f2
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f3, 0(x2) # load 0xffffffefffff7fff from memory into f3
fsgnj.h f8, f2, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x9fd29e8c76221fac # load x3 with value 0x9fd29e8c76221fac
sd x3, 0(x2) # store 0x9fd29e8c76221fac in memory
fld f21, 0(x2) # load 0x9fd29e8c76221fac from memory into f21
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f15, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f15
fsgnj.h f23, f21, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xbc7319491e4e51a5 # load x3 with value 0xbc7319491e4e51a5
sd x3, 0(x2) # store 0xbc7319491e4e51a5 in memory
fld f2, 0(x2) # load 0xbc7319491e4e51a5 from memory into f2
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f18, 0(x2) # load 0xfffffffcffff7dff from memory into f18
fsgnj.h f15, f2, f18 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fclass.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f18, 0(x2) # load 0xffffffff00000000 from memory into f18
fclass.h x24, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f16, 0(x2) # load 0xfffffffffffe8000 from memory into f16
fclass.h x1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f22, 0(x2) # load 0x7fffffffffff3c00 from memory into f22
fclass.h x20, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f23, 0(x2) # load 0xfeedbee5beefbc00 from memory into f23
fclass.h x24, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f25, 0(x2) # load 0xffffffefffff0400 from memory into f25
fclass.h x21, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f7, 0(x2) # load 0x00000000ffff8400 from memory into f7
fclass.h x18, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fclass.h x24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f29, 0(x2) # load 0xc0dec0dec0defbff from memory into f29
fclass.h x16, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f24, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f24
fclass.h x7, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f19, 0(x2) # load 0xffffffff0ffffc00 from memory into f19
fclass.h x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f27, 0(x2) # load 0xfffeffffffff7e00 from memory into f27
fclass.h x25, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f6, 0(x2) # load 0xffffffefffff7fff from memory into f6
fclass.h x9, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f19, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f19
fclass.h x11, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f7, 0(x2) # load 0xfffffffcffff7dff from memory into f7
fclass.h x14, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

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

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f25)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f25, 0(x2) # load 0xffffffff00000000 from memory into f25
fcvt.h.s f20, f25 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f17, 0(x2) # load 0xfffffffffffe8000 from memory into f17
fcvt.h.s f7, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f23, 0(x2) # load 0x7fffffffffff3c00 from memory into f23
fcvt.h.s f1, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f21, 0(x2) # load 0xfeedbee5beefbc00 from memory into f21
fcvt.h.s f5, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f20, 0(x2) # load 0xffffffefffff0400 from memory into f20
fcvt.h.s f14, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f23, 0(x2) # load 0x00000000ffff8400 from memory into f23
fcvt.h.s f16, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f9, 0(x2) # load 0xefffffffffff7bff from memory into f9
fcvt.h.s f26, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f3, 0(x2) # load 0xc0dec0dec0defbff from memory into f3
fcvt.h.s f31, f3 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f10, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f10
fcvt.h.s f16, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f30)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
fcvt.h.s f3, f30 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f22, 0(x2) # load 0xfffeffffffff7e00 from memory into f22
fcvt.h.s f12, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f26)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f26, 0(x2) # load 0xffffffefffff7fff from memory into f26
fcvt.h.s f13, f26 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f27, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f27
fcvt.h.s f2, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f10, 0(x2) # load 0xfffffffcffff7dff from memory into f10
fcvt.h.s f6, f10 # perform operation second time to make sure flags don't change

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fsgnjx.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x7e1f6660d3bd69fb # load x3 with value 0x7e1f6660d3bd69fb
sd x3, 0(x2) # store 0x7e1f6660d3bd69fb in memory
flh f6, 0(x2) # load 0x7e1f6660d3bd69fb from memory into f6
la x2, scratch
li x3, 0x4d3aebff8ef289d0 # load x3 with value 0x4d3aebff8ef289d0
sd x3, 0(x2) # store 0x4d3aebff8ef289d0 in memory
flh f23, 0(x2) # load 0x4d3aebff8ef289d0 from memory into f23
fsgnjx.h f26, f6, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f8, 0(x2) # load 0xffffffff00000000 from memory into f8
la x2, scratch
li x3, 0xc6d71b9630449f8a # load x3 with value 0xc6d71b9630449f8a
sd x3, 0(x2) # store 0xc6d71b9630449f8a in memory
fld f26, 0(x2) # load 0xc6d71b9630449f8a from memory into f26
fsgnjx.h f10, f8, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f27, 0(x2) # load 0xfffffffffffe8000 from memory into f27
la x2, scratch
li x3, 0x0ac8ce17f27a1f0e # load x3 with value 0x0ac8ce17f27a1f0e
sd x3, 0(x2) # store 0x0ac8ce17f27a1f0e in memory
fld f12, 0(x2) # load 0x0ac8ce17f27a1f0e from memory into f12
fsgnjx.h f6, f27, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f5, 0(x2) # load 0x7fffffffffff3c00 from memory into f5
la x2, scratch
li x3, 0x3b2e988f827f8d60 # load x3 with value 0x3b2e988f827f8d60
sd x3, 0(x2) # store 0x3b2e988f827f8d60 in memory
fld f28, 0(x2) # load 0x3b2e988f827f8d60 from memory into f28
fsgnjx.h f25, f5, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f20, 0(x2) # load 0xfeedbee5beefbc00 from memory into f20
la x2, scratch
li x3, 0x6373ef885a88f073 # load x3 with value 0x6373ef885a88f073
sd x3, 0(x2) # store 0x6373ef885a88f073 in memory
fld f13, 0(x2) # load 0x6373ef885a88f073 from memory into f13
fsgnjx.h f19, f20, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f18, 0(x2) # load 0xffffffefffff0400 from memory into f18
la x2, scratch
li x3, 0xb67b8584af26f878 # load x3 with value 0xb67b8584af26f878
sd x3, 0(x2) # store 0xb67b8584af26f878 in memory
fld f3, 0(x2) # load 0xb67b8584af26f878 from memory into f3
fsgnjx.h f17, f18, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f11, 0(x2) # load 0x00000000ffff8400 from memory into f11
la x2, scratch
li x3, 0x5d6a3692a9f5f720 # load x3 with value 0x5d6a3692a9f5f720
sd x3, 0(x2) # store 0x5d6a3692a9f5f720 in memory
fld f31, 0(x2) # load 0x5d6a3692a9f5f720 from memory into f31
fsgnjx.h f9, f11, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f7, 0(x2) # load 0xefffffffffff7bff from memory into f7
la x2, scratch
li x3, 0xf828159d933c1e15 # load x3 with value 0xf828159d933c1e15
sd x3, 0(x2) # store 0xf828159d933c1e15 in memory
fld f12, 0(x2) # load 0xf828159d933c1e15 from memory into f12
fsgnjx.h f19, f7, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f29, 0(x2) # load 0xc0dec0dec0defbff from memory into f29
la x2, scratch
li x3, 0xf0a9c49797534a43 # load x3 with value 0xf0a9c49797534a43
sd x3, 0(x2) # store 0xf0a9c49797534a43 in memory
fld f6, 0(x2) # load 0xf0a9c49797534a43 from memory into f6
fsgnjx.h f31, f29, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f8, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f8
la x2, scratch
li x3, 0x8426631ff4aa52bc # load x3 with value 0x8426631ff4aa52bc
sd x3, 0(x2) # store 0x8426631ff4aa52bc in memory
fld f10, 0(x2) # load 0x8426631ff4aa52bc from memory into f10
fsgnjx.h f28, f8, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f15, 0(x2) # load 0xffffffff0ffffc00 from memory into f15
la x2, scratch
li x3, 0x2fe6ccc60c3e382e # load x3 with value 0x2fe6ccc60c3e382e
sd x3, 0(x2) # store 0x2fe6ccc60c3e382e in memory
fld f11, 0(x2) # load 0x2fe6ccc60c3e382e from memory into f11
fsgnjx.h f5, f15, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f18, 0(x2) # load 0xfffeffffffff7e00 from memory into f18
la x2, scratch
li x3, 0x31341599c323f675 # load x3 with value 0x31341599c323f675
sd x3, 0(x2) # store 0x31341599c323f675 in memory
fld f6, 0(x2) # load 0x31341599c323f675 from memory into f6
fsgnjx.h f22, f18, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f23, 0(x2) # load 0xffffffefffff7fff from memory into f23
la x2, scratch
li x3, 0x39c5579ed8a8436d # load x3 with value 0x39c5579ed8a8436d
sd x3, 0(x2) # store 0x39c5579ed8a8436d in memory
fld f13, 0(x2) # load 0x39c5579ed8a8436d from memory into f13
fsgnjx.h f2, f23, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
la x2, scratch
li x3, 0xb50cd28419d8137d # load x3 with value 0xb50cd28419d8137d
sd x3, 0(x2) # store 0xb50cd28419d8137d in memory
fld f13, 0(x2) # load 0xb50cd28419d8137d from memory into f13
fsgnjx.h f24, f10, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f2, 0(x2) # load 0xfffffffcffff7dff from memory into f2
la x2, scratch
li x3, 0x461d0c9c179e7c15 # load x3 with value 0x461d0c9c179e7c15
sd x3, 0(x2) # store 0x461d0c9c179e7c15 in memory
fld f27, 0(x2) # load 0x461d0c9c179e7c15 from memory into f27
fsgnjx.h f15, f2, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xfb314758c337a94e # load x3 with value 0xfb314758c337a94e
sd x3, 0(x2) # store 0xfb314758c337a94e in memory
fld f29, 0(x2) # load 0xfb314758c337a94e from memory into f29
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f2, 0(x2) # load 0xffffffff00000000 from memory into f2
fsgnjx.h f17, f29, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xe57d773737b6ce14 # load x3 with value 0xe57d773737b6ce14
sd x3, 0(x2) # store 0xe57d773737b6ce14 in memory
fld f8, 0(x2) # load 0xe57d773737b6ce14 from memory into f8
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f2, 0(x2) # load 0xfffffffffffe8000 from memory into f2
fsgnjx.h f6, f8, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x36b1fafc5a9ed779 # load x3 with value 0x36b1fafc5a9ed779
sd x3, 0(x2) # store 0x36b1fafc5a9ed779 in memory
fld f11, 0(x2) # load 0x36b1fafc5a9ed779 from memory into f11
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f8, 0(x2) # load 0x7fffffffffff3c00 from memory into f8
fsgnjx.h f5, f11, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x2a37d27494847bde # load x3 with value 0x2a37d27494847bde
sd x3, 0(x2) # store 0x2a37d27494847bde in memory
fld f27, 0(x2) # load 0x2a37d27494847bde from memory into f27
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f2, 0(x2) # load 0xfeedbee5beefbc00 from memory into f2
fsgnjx.h f5, f27, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x68b6809788e222fd # load x3 with value 0x68b6809788e222fd
sd x3, 0(x2) # store 0x68b6809788e222fd in memory
fld f10, 0(x2) # load 0x68b6809788e222fd from memory into f10
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f30, 0(x2) # load 0xffffffefffff0400 from memory into f30
fsgnjx.h f28, f10, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xc9fea733f0faa928 # load x3 with value 0xc9fea733f0faa928
sd x3, 0(x2) # store 0xc9fea733f0faa928 in memory
fld f8, 0(x2) # load 0xc9fea733f0faa928 from memory into f8
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f16, 0(x2) # load 0x00000000ffff8400 from memory into f16
fsgnjx.h f22, f8, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xa5a729f1f1e24d74 # load x3 with value 0xa5a729f1f1e24d74
sd x3, 0(x2) # store 0xa5a729f1f1e24d74 in memory
fld f2, 0(x2) # load 0xa5a729f1f1e24d74 from memory into f2
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f20, 0(x2) # load 0xefffffffffff7bff from memory into f20
fsgnjx.h f23, f2, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x0d10c561229fcb73 # load x3 with value 0x0d10c561229fcb73
sd x3, 0(x2) # store 0x0d10c561229fcb73 in memory
fld f17, 0(x2) # load 0x0d10c561229fcb73 from memory into f17
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f27, 0(x2) # load 0xc0dec0dec0defbff from memory into f27
fsgnjx.h f10, f17, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xc507678504b6bdc2 # load x3 with value 0xc507678504b6bdc2
sd x3, 0(x2) # store 0xc507678504b6bdc2 in memory
fld f1, 0(x2) # load 0xc507678504b6bdc2 from memory into f1
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f7, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f7
fsgnjx.h f2, f1, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xdda7a3b30d039ea7 # load x3 with value 0xdda7a3b30d039ea7
sd x3, 0(x2) # store 0xdda7a3b30d039ea7 in memory
fld f8, 0(x2) # load 0xdda7a3b30d039ea7 from memory into f8
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f19, 0(x2) # load 0xffffffff0ffffc00 from memory into f19
fsgnjx.h f26, f8, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x659f7350f7cfb3ef # load x3 with value 0x659f7350f7cfb3ef
sd x3, 0(x2) # store 0x659f7350f7cfb3ef in memory
fld f3, 0(x2) # load 0x659f7350f7cfb3ef from memory into f3
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f23, 0(x2) # load 0xfffeffffffff7e00 from memory into f23
fsgnjx.h f18, f3, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x1d12a460cbc6fcc8 # load x3 with value 0x1d12a460cbc6fcc8
sd x3, 0(x2) # store 0x1d12a460cbc6fcc8 in memory
fld f12, 0(x2) # load 0x1d12a460cbc6fcc8 from memory into f12
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f9, 0(x2) # load 0xffffffefffff7fff from memory into f9
fsgnjx.h f8, f12, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x2145f1eb85c669ba # load x3 with value 0x2145f1eb85c669ba
sd x3, 0(x2) # store 0x2145f1eb85c669ba in memory
fld f17, 0(x2) # load 0x2145f1eb85c669ba from memory into f17
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f18, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f18
fsgnjx.h f12, f17, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x2cf3f18e78373f30 # load x3 with value 0x2cf3f18e78373f30
sd x3, 0(x2) # store 0x2cf3f18e78373f30 in memory
fld f19, 0(x2) # load 0x2cf3f18e78373f30 from memory into f19
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f21, 0(x2) # load 0xfffffffcffff7dff from memory into f21
fsgnjx.h f8, f19, f21 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fcvt.w.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f20, 0(x2) # load 0xffffffff00000000 from memory into f20
fcvt.w.h x19, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f24, 0(x2) # load 0xfffffffffffe8000 from memory into f24
fcvt.w.h x20, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f19, 0(x2) # load 0x7fffffffffff3c00 from memory into f19
fcvt.w.h x13, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
fcvt.w.h x17, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f3, 0(x2) # load 0xffffffefffff0400 from memory into f3
fcvt.w.h x26, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
fcvt.w.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f18, 0(x2) # load 0xefffffffffff7bff from memory into f18
fcvt.w.h x13, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f3, 0(x2) # load 0xc0dec0dec0defbff from memory into f3
fcvt.w.h x6, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f29, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f29
fcvt.w.h x10, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f17, 0(x2) # load 0xffffffff0ffffc00 from memory into f17
fcvt.w.h x24, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
fcvt.w.h x28, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f26, 0(x2) # load 0xffffffefffff7fff from memory into f26
fcvt.w.h x24, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f20, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f20
fcvt.w.h x9, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f12, 0(x2) # load 0xfffffffcffff7dff from memory into f12
fcvt.w.h x10, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

#.EQU SIGSIZE,112


// ******************
// Tests from: WALLY-COV-fmadd.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0xdc30266486253f89 # load x3 with value 0xdc30266486253f89
sd x3, 0(x2) # store 0xdc30266486253f89 in memory
flh f28, 0(x2) # load 0xdc30266486253f89 from memory into f28
la x2, scratch
li x3, 0x444622c1a820fde2 # load x3 with value 0x444622c1a820fde2
sd x3, 0(x2) # store 0x444622c1a820fde2 in memory
flh f7, 0(x2) # load 0x444622c1a820fde2 from memory into f7
la x2, scratch
li x3, 0xbf9c623d3456fcd2 # load x3 with value 0xbf9c623d3456fcd2
sd x3, 0(x2) # store 0xbf9c623d3456fcd2 in memory
flh f25, 0(x2) # load 0xbf9c623d3456fcd2 from memory into f25
fmadd.h f3, f28, f7, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
la x2, scratch
li x3, 0x9c42e390663e19be # load x3 with value 0x9c42e390663e19be
sd x3, 0(x2) # store 0x9c42e390663e19be in memory
fld f16, 0(x2) # load 0x9c42e390663e19be from memory into f16
la x2, scratch
li x3, 0x8a37a764a09e9c40 # load x3 with value 0x8a37a764a09e9c40
sd x3, 0(x2) # store 0x8a37a764a09e9c40 in memory
fld f15, 0(x2) # load 0x8a37a764a09e9c40 from memory into f15
fmadd.h f18, f29, f16, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f25, 0(x2) # load 0xfffffffffffe8000 from memory into f25
la x2, scratch
li x3, 0xf3cf86051278de23 # load x3 with value 0xf3cf86051278de23
sd x3, 0(x2) # store 0xf3cf86051278de23 in memory
fld f23, 0(x2) # load 0xf3cf86051278de23 from memory into f23
la x2, scratch
li x3, 0xf79182962de00bb3 # load x3 with value 0xf79182962de00bb3
sd x3, 0(x2) # store 0xf79182962de00bb3 in memory
fld f3, 0(x2) # load 0xf79182962de00bb3 from memory into f3
fmadd.h f20, f25, f23, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f2, 0(x2) # load 0x7fffffffffff3c00 from memory into f2
la x2, scratch
li x3, 0x217713d19f30bbf6 # load x3 with value 0x217713d19f30bbf6
sd x3, 0(x2) # store 0x217713d19f30bbf6 in memory
fld f3, 0(x2) # load 0x217713d19f30bbf6 from memory into f3
la x2, scratch
li x3, 0x376e1cb43847152b # load x3 with value 0x376e1cb43847152b
sd x3, 0(x2) # store 0x376e1cb43847152b in memory
fld f31, 0(x2) # load 0x376e1cb43847152b from memory into f31
fmadd.h f24, f2, f3, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f18, 0(x2) # load 0xfeedbee5beefbc00 from memory into f18
la x2, scratch
li x3, 0xd0fd87e7d43a4545 # load x3 with value 0xd0fd87e7d43a4545
sd x3, 0(x2) # store 0xd0fd87e7d43a4545 in memory
fld f28, 0(x2) # load 0xd0fd87e7d43a4545 from memory into f28
la x2, scratch
li x3, 0x3025f979a5ee4796 # load x3 with value 0x3025f979a5ee4796
sd x3, 0(x2) # store 0x3025f979a5ee4796 in memory
fld f19, 0(x2) # load 0x3025f979a5ee4796 from memory into f19
fmadd.h f26, f18, f28, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f2, 0(x2) # load 0xffffffefffff0400 from memory into f2
la x2, scratch
li x3, 0x17c6a1430886d1dd # load x3 with value 0x17c6a1430886d1dd
sd x3, 0(x2) # store 0x17c6a1430886d1dd in memory
fld f17, 0(x2) # load 0x17c6a1430886d1dd from memory into f17
la x2, scratch
li x3, 0x599c78156c789443 # load x3 with value 0x599c78156c789443
sd x3, 0(x2) # store 0x599c78156c789443 in memory
fld f28, 0(x2) # load 0x599c78156c789443 from memory into f28
fmadd.h f5, f2, f17, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f7, 0(x2) # load 0x00000000ffff8400 from memory into f7
la x2, scratch
li x3, 0x743b2f5999add168 # load x3 with value 0x743b2f5999add168
sd x3, 0(x2) # store 0x743b2f5999add168 in memory
fld f18, 0(x2) # load 0x743b2f5999add168 from memory into f18
la x2, scratch
li x3, 0x402d791a016194a6 # load x3 with value 0x402d791a016194a6
sd x3, 0(x2) # store 0x402d791a016194a6 in memory
fld f8, 0(x2) # load 0x402d791a016194a6 from memory into f8
fmadd.h f3, f7, f18, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0xb193cc4e98b6d6e8 # load x3 with value 0xb193cc4e98b6d6e8
sd x3, 0(x2) # store 0xb193cc4e98b6d6e8 in memory
fld f31, 0(x2) # load 0xb193cc4e98b6d6e8 from memory into f31
la x2, scratch
li x3, 0x42950e9eeb6e5f1c # load x3 with value 0x42950e9eeb6e5f1c
sd x3, 0(x2) # store 0x42950e9eeb6e5f1c in memory
fld f23, 0(x2) # load 0x42950e9eeb6e5f1c from memory into f23
fmadd.h f2, f12, f31, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f8, 0(x2) # load 0xc0dec0dec0defbff from memory into f8
la x2, scratch
li x3, 0x5832bb7f80d453e3 # load x3 with value 0x5832bb7f80d453e3
sd x3, 0(x2) # store 0x5832bb7f80d453e3 in memory
fld f31, 0(x2) # load 0x5832bb7f80d453e3 from memory into f31
la x2, scratch
li x3, 0x3d62735df388610f # load x3 with value 0x3d62735df388610f
sd x3, 0(x2) # store 0x3d62735df388610f in memory
fld f19, 0(x2) # load 0x3d62735df388610f from memory into f19
fmadd.h f9, f8, f31, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f28, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f28
la x2, scratch
li x3, 0x81df2123591e521a # load x3 with value 0x81df2123591e521a
sd x3, 0(x2) # store 0x81df2123591e521a in memory
fld f8, 0(x2) # load 0x81df2123591e521a from memory into f8
la x2, scratch
li x3, 0x771a69dfd073bc23 # load x3 with value 0x771a69dfd073bc23
sd x3, 0(x2) # store 0x771a69dfd073bc23 in memory
fld f14, 0(x2) # load 0x771a69dfd073bc23 from memory into f14
fmadd.h f10, f28, f8, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f1, 0(x2) # load 0xffffffff0ffffc00 from memory into f1
la x2, scratch
li x3, 0x3dc9ee8fe7851674 # load x3 with value 0x3dc9ee8fe7851674
sd x3, 0(x2) # store 0x3dc9ee8fe7851674 in memory
fld f10, 0(x2) # load 0x3dc9ee8fe7851674 from memory into f10
la x2, scratch
li x3, 0x47d6cf019a55c476 # load x3 with value 0x47d6cf019a55c476
sd x3, 0(x2) # store 0x47d6cf019a55c476 in memory
fld f20, 0(x2) # load 0x47d6cf019a55c476 from memory into f20
fmadd.h f31, f1, f10, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f7, 0(x2) # load 0xfffeffffffff7e00 from memory into f7
la x2, scratch
li x3, 0x51bc0a54e4815562 # load x3 with value 0x51bc0a54e4815562
sd x3, 0(x2) # store 0x51bc0a54e4815562 in memory
fld f11, 0(x2) # load 0x51bc0a54e4815562 from memory into f11
la x2, scratch
li x3, 0x3b4621fe0687020d # load x3 with value 0x3b4621fe0687020d
sd x3, 0(x2) # store 0x3b4621fe0687020d in memory
fld f15, 0(x2) # load 0x3b4621fe0687020d from memory into f15
fmadd.h f21, f7, f11, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f19, 0(x2) # load 0xffffffefffff7fff from memory into f19
la x2, scratch
li x3, 0xd90109685e61c493 # load x3 with value 0xd90109685e61c493
sd x3, 0(x2) # store 0xd90109685e61c493 in memory
fld f29, 0(x2) # load 0xd90109685e61c493 from memory into f29
la x2, scratch
li x3, 0x29520aaefb6b6535 # load x3 with value 0x29520aaefb6b6535
sd x3, 0(x2) # store 0x29520aaefb6b6535 in memory
fld f28, 0(x2) # load 0x29520aaefb6b6535 from memory into f28
fmadd.h f26, f19, f29, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f26, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f26
la x2, scratch
li x3, 0x00ff560d285f87a8 # load x3 with value 0x00ff560d285f87a8
sd x3, 0(x2) # store 0x00ff560d285f87a8 in memory
fld f30, 0(x2) # load 0x00ff560d285f87a8 from memory into f30
la x2, scratch
li x3, 0xb8e12bfe22b9d0e2 # load x3 with value 0xb8e12bfe22b9d0e2
sd x3, 0(x2) # store 0xb8e12bfe22b9d0e2 in memory
fld f17, 0(x2) # load 0xb8e12bfe22b9d0e2 from memory into f17
fmadd.h f5, f26, f30, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f13, 0(x2) # load 0xfffffffcffff7dff from memory into f13
la x2, scratch
li x3, 0xd1b485350d59a216 # load x3 with value 0xd1b485350d59a216
sd x3, 0(x2) # store 0xd1b485350d59a216 in memory
fld f11, 0(x2) # load 0xd1b485350d59a216 from memory into f11
la x2, scratch
li x3, 0x0e04121b78a461b0 # load x3 with value 0x0e04121b78a461b0
sd x3, 0(x2) # store 0x0e04121b78a461b0 in memory
fld f10, 0(x2) # load 0x0e04121b78a461b0 from memory into f10
fmadd.h f15, f13, f11, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xf7a45c6bd94ce5c7 # load x3 with value 0xf7a45c6bd94ce5c7
sd x3, 0(x2) # store 0xf7a45c6bd94ce5c7 in memory
fld f20, 0(x2) # load 0xf7a45c6bd94ce5c7 from memory into f20
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f6, 0(x2) # load 0xffffffff00000000 from memory into f6
la x2, scratch
li x3, 0x9d1d8d51424b83a6 # load x3 with value 0x9d1d8d51424b83a6
sd x3, 0(x2) # store 0x9d1d8d51424b83a6 in memory
fld f18, 0(x2) # load 0x9d1d8d51424b83a6 from memory into f18
fmadd.h f28, f20, f6, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xfbc57100d7263242 # load x3 with value 0xfbc57100d7263242
sd x3, 0(x2) # store 0xfbc57100d7263242 in memory
fld f3, 0(x2) # load 0xfbc57100d7263242 from memory into f3
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f14, 0(x2) # load 0xfffffffffffe8000 from memory into f14
la x2, scratch
li x3, 0xeb66dd7e88883542 # load x3 with value 0xeb66dd7e88883542
sd x3, 0(x2) # store 0xeb66dd7e88883542 in memory
fld f20, 0(x2) # load 0xeb66dd7e88883542 from memory into f20
fmadd.h f22, f3, f14, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x1608f7048c29f92a # load x3 with value 0x1608f7048c29f92a
sd x3, 0(x2) # store 0x1608f7048c29f92a in memory
fld f6, 0(x2) # load 0x1608f7048c29f92a from memory into f6
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f7, 0(x2) # load 0x7fffffffffff3c00 from memory into f7
la x2, scratch
li x3, 0x0ce047acb1b245c6 # load x3 with value 0x0ce047acb1b245c6
sd x3, 0(x2) # store 0x0ce047acb1b245c6 in memory
fld f19, 0(x2) # load 0x0ce047acb1b245c6 from memory into f19
fmadd.h f28, f6, f7, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xfcff0b6d8f207732 # load x3 with value 0xfcff0b6d8f207732
sd x3, 0(x2) # store 0xfcff0b6d8f207732 in memory
fld f5, 0(x2) # load 0xfcff0b6d8f207732 from memory into f5
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f8, 0(x2) # load 0xfeedbee5beefbc00 from memory into f8
la x2, scratch
li x3, 0xbfb85d7adcde37e1 # load x3 with value 0xbfb85d7adcde37e1
sd x3, 0(x2) # store 0xbfb85d7adcde37e1 in memory
fld f19, 0(x2) # load 0xbfb85d7adcde37e1 from memory into f19
fmadd.h f21, f5, f8, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xed57a0362b728c0b # load x3 with value 0xed57a0362b728c0b
sd x3, 0(x2) # store 0xed57a0362b728c0b in memory
fld f20, 0(x2) # load 0xed57a0362b728c0b from memory into f20
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f24, 0(x2) # load 0xffffffefffff0400 from memory into f24
la x2, scratch
li x3, 0x0517b423a6753d5f # load x3 with value 0x0517b423a6753d5f
sd x3, 0(x2) # store 0x0517b423a6753d5f in memory
fld f9, 0(x2) # load 0x0517b423a6753d5f from memory into f9
fmadd.h f23, f20, f24, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xc6e2492e66fdfacf # load x3 with value 0xc6e2492e66fdfacf
sd x3, 0(x2) # store 0xc6e2492e66fdfacf in memory
fld f17, 0(x2) # load 0xc6e2492e66fdfacf from memory into f17
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
la x2, scratch
li x3, 0x5272b339750e0599 # load x3 with value 0x5272b339750e0599
sd x3, 0(x2) # store 0x5272b339750e0599 in memory
fld f13, 0(x2) # load 0x5272b339750e0599 from memory into f13
fmadd.h f31, f17, f19, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x76cdd43e0fbb5c9a # load x3 with value 0x76cdd43e0fbb5c9a
sd x3, 0(x2) # store 0x76cdd43e0fbb5c9a in memory
fld f8, 0(x2) # load 0x76cdd43e0fbb5c9a from memory into f8
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f15, 0(x2) # load 0xefffffffffff7bff from memory into f15
la x2, scratch
li x3, 0x10a3cbf4399aca9e # load x3 with value 0x10a3cbf4399aca9e
sd x3, 0(x2) # store 0x10a3cbf4399aca9e in memory
fld f11, 0(x2) # load 0x10a3cbf4399aca9e from memory into f11
fmadd.h f13, f8, f15, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x08369f33198f8c5f # load x3 with value 0x08369f33198f8c5f
sd x3, 0(x2) # store 0x08369f33198f8c5f in memory
fld f10, 0(x2) # load 0x08369f33198f8c5f from memory into f10
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f29, 0(x2) # load 0xc0dec0dec0defbff from memory into f29
la x2, scratch
li x3, 0xd094cbe61ea6ae12 # load x3 with value 0xd094cbe61ea6ae12
sd x3, 0(x2) # store 0xd094cbe61ea6ae12 in memory
fld f11, 0(x2) # load 0xd094cbe61ea6ae12 from memory into f11
fmadd.h f23, f10, f29, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x79c017e3b8841f6c # load x3 with value 0x79c017e3b8841f6c
sd x3, 0(x2) # store 0x79c017e3b8841f6c in memory
fld f11, 0(x2) # load 0x79c017e3b8841f6c from memory into f11
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f5, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f5
la x2, scratch
li x3, 0x24746e40fd2cae20 # load x3 with value 0x24746e40fd2cae20
sd x3, 0(x2) # store 0x24746e40fd2cae20 in memory
fld f8, 0(x2) # load 0x24746e40fd2cae20 from memory into f8
fmadd.h f20, f11, f5, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x6468238a1a4bf27c # load x3 with value 0x6468238a1a4bf27c
sd x3, 0(x2) # store 0x6468238a1a4bf27c in memory
fld f22, 0(x2) # load 0x6468238a1a4bf27c from memory into f22
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f14, 0(x2) # load 0xffffffff0ffffc00 from memory into f14
la x2, scratch
li x3, 0x33f16af85dd1f470 # load x3 with value 0x33f16af85dd1f470
sd x3, 0(x2) # store 0x33f16af85dd1f470 in memory
fld f17, 0(x2) # load 0x33f16af85dd1f470 from memory into f17
fmadd.h f18, f22, f14, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xd7595e341dda0cdc # load x3 with value 0xd7595e341dda0cdc
sd x3, 0(x2) # store 0xd7595e341dda0cdc in memory
fld f8, 0(x2) # load 0xd7595e341dda0cdc from memory into f8
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f21, 0(x2) # load 0xfffeffffffff7e00 from memory into f21
la x2, scratch
li x3, 0x210d02afc880b9f0 # load x3 with value 0x210d02afc880b9f0
sd x3, 0(x2) # store 0x210d02afc880b9f0 in memory
fld f7, 0(x2) # load 0x210d02afc880b9f0 from memory into f7
fmadd.h f12, f8, f21, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xe26e7feae99408c7 # load x3 with value 0xe26e7feae99408c7
sd x3, 0(x2) # store 0xe26e7feae99408c7 in memory
fld f23, 0(x2) # load 0xe26e7feae99408c7 from memory into f23
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f8, 0(x2) # load 0xffffffefffff7fff from memory into f8
la x2, scratch
li x3, 0x005676bce3716cfa # load x3 with value 0x005676bce3716cfa
sd x3, 0(x2) # store 0x005676bce3716cfa in memory
fld f21, 0(x2) # load 0x005676bce3716cfa from memory into f21
fmadd.h f30, f23, f8, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xd896e34c5bf7d696 # load x3 with value 0xd896e34c5bf7d696
sd x3, 0(x2) # store 0xd896e34c5bf7d696 in memory
fld f17, 0(x2) # load 0xd896e34c5bf7d696 from memory into f17
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f21, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f21
la x2, scratch
li x3, 0x186af1133b279128 # load x3 with value 0x186af1133b279128
sd x3, 0(x2) # store 0x186af1133b279128 in memory
fld f3, 0(x2) # load 0x186af1133b279128 from memory into f3
fmadd.h f6, f17, f21, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xdcad985150e05861 # load x3 with value 0xdcad985150e05861
sd x3, 0(x2) # store 0xdcad985150e05861 in memory
fld f22, 0(x2) # load 0xdcad985150e05861 from memory into f22
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f6, 0(x2) # load 0xfffffffcffff7dff from memory into f6
la x2, scratch
li x3, 0x2df4dd05bd3fdb99 # load x3 with value 0x2df4dd05bd3fdb99
sd x3, 0(x2) # store 0x2df4dd05bd3fdb99 in memory
fld f31, 0(x2) # load 0x2df4dd05bd3fdb99 from memory into f31
fmadd.h f12, f22, f6, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x19a239715b1b0d86 # load x3 with value 0x19a239715b1b0d86
sd x3, 0(x2) # store 0x19a239715b1b0d86 in memory
fld f31, 0(x2) # load 0x19a239715b1b0d86 from memory into f31
la x2, scratch
li x3, 0x43f6d3ac3af79c19 # load x3 with value 0x43f6d3ac3af79c19
sd x3, 0(x2) # store 0x43f6d3ac3af79c19 in memory
fld f12, 0(x2) # load 0x43f6d3ac3af79c19 from memory into f12
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f6, 0(x2) # load 0xffffffff00000000 from memory into f6
fmadd.h f2, f31, f12, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xb48949ad69dfe0b2 # load x3 with value 0xb48949ad69dfe0b2
sd x3, 0(x2) # store 0xb48949ad69dfe0b2 in memory
fld f1, 0(x2) # load 0xb48949ad69dfe0b2 from memory into f1
la x2, scratch
li x3, 0xe9c3c498d560f773 # load x3 with value 0xe9c3c498d560f773
sd x3, 0(x2) # store 0xe9c3c498d560f773 in memory
fld f26, 0(x2) # load 0xe9c3c498d560f773 from memory into f26
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f20, 0(x2) # load 0xfffffffffffe8000 from memory into f20
fmadd.h f31, f1, f26, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xfc4c0cdd1b23080a # load x3 with value 0xfc4c0cdd1b23080a
sd x3, 0(x2) # store 0xfc4c0cdd1b23080a in memory
fld f12, 0(x2) # load 0xfc4c0cdd1b23080a from memory into f12
la x2, scratch
li x3, 0x410971fef17a1494 # load x3 with value 0x410971fef17a1494
sd x3, 0(x2) # store 0x410971fef17a1494 in memory
fld f27, 0(x2) # load 0x410971fef17a1494 from memory into f27
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f18, 0(x2) # load 0x7fffffffffff3c00 from memory into f18
fmadd.h f28, f12, f27, f18 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xe30a1a88070787c6 # load x3 with value 0xe30a1a88070787c6
sd x3, 0(x2) # store 0xe30a1a88070787c6 in memory
fld f2, 0(x2) # load 0xe30a1a88070787c6 from memory into f2
la x2, scratch
li x3, 0xa2fbf76d8a027569 # load x3 with value 0xa2fbf76d8a027569
sd x3, 0(x2) # store 0xa2fbf76d8a027569 in memory
fld f5, 0(x2) # load 0xa2fbf76d8a027569 from memory into f5
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f6, 0(x2) # load 0xfeedbee5beefbc00 from memory into f6
fmadd.h f29, f2, f5, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xa1ef37bac6a7f697 # load x3 with value 0xa1ef37bac6a7f697
sd x3, 0(x2) # store 0xa1ef37bac6a7f697 in memory
fld f8, 0(x2) # load 0xa1ef37bac6a7f697 from memory into f8
la x2, scratch
li x3, 0xc1665fa8581b3553 # load x3 with value 0xc1665fa8581b3553
sd x3, 0(x2) # store 0xc1665fa8581b3553 in memory
fld f7, 0(x2) # load 0xc1665fa8581b3553 from memory into f7
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
fmadd.h f31, f8, f7, f26 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0xfebb7f605b90d529 # load x3 with value 0xfebb7f605b90d529
sd x3, 0(x2) # store 0xfebb7f605b90d529 in memory
fld f13, 0(x2) # load 0xfebb7f605b90d529 from memory into f13
la x2, scratch
li x3, 0x0489bdeb53b7c15c # load x3 with value 0x0489bdeb53b7c15c
sd x3, 0(x2) # store 0x0489bdeb53b7c15c in memory
fld f21, 0(x2) # load 0x0489bdeb53b7c15c from memory into f21
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f7, 0(x2) # load 0x00000000ffff8400 from memory into f7
fmadd.h f10, f13, f21, f7 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x2099c9e809935f04 # load x3 with value 0x2099c9e809935f04
sd x3, 0(x2) # store 0x2099c9e809935f04 in memory
fld f26, 0(x2) # load 0x2099c9e809935f04 from memory into f26
la x2, scratch
li x3, 0x8e7ffe1248acf89d # load x3 with value 0x8e7ffe1248acf89d
sd x3, 0(x2) # store 0x8e7ffe1248acf89d in memory
fld f15, 0(x2) # load 0x8e7ffe1248acf89d from memory into f15
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
fmadd.h f3, f26, f15, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x50e74fc39081a419 # load x3 with value 0x50e74fc39081a419
sd x3, 0(x2) # store 0x50e74fc39081a419 in memory
fld f22, 0(x2) # load 0x50e74fc39081a419 from memory into f22
la x2, scratch
li x3, 0x7d7f7bfe6ec08bce # load x3 with value 0x7d7f7bfe6ec08bce
sd x3, 0(x2) # store 0x7d7f7bfe6ec08bce in memory
fld f15, 0(x2) # load 0x7d7f7bfe6ec08bce from memory into f15
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
fmadd.h f1, f22, f15, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x4c5644e4a2219a2f # load x3 with value 0x4c5644e4a2219a2f
sd x3, 0(x2) # store 0x4c5644e4a2219a2f in memory
fld f12, 0(x2) # load 0x4c5644e4a2219a2f from memory into f12
la x2, scratch
li x3, 0x5dbf058291eea65a # load x3 with value 0x5dbf058291eea65a
sd x3, 0(x2) # store 0x5dbf058291eea65a in memory
fld f5, 0(x2) # load 0x5dbf058291eea65a from memory into f5
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f24, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f24
fmadd.h f1, f12, f5, f24 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xc8c4b0cdb293b61b # load x3 with value 0xc8c4b0cdb293b61b
sd x3, 0(x2) # store 0xc8c4b0cdb293b61b in memory
fld f6, 0(x2) # load 0xc8c4b0cdb293b61b from memory into f6
la x2, scratch
li x3, 0x51b9970d03042b4b # load x3 with value 0x51b9970d03042b4b
sd x3, 0(x2) # store 0x51b9970d03042b4b in memory
fld f22, 0(x2) # load 0x51b9970d03042b4b from memory into f22
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f2, 0(x2) # load 0xffffffff0ffffc00 from memory into f2
fmadd.h f9, f6, f22, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x5803beabec4c7059 # load x3 with value 0x5803beabec4c7059
sd x3, 0(x2) # store 0x5803beabec4c7059 in memory
fld f25, 0(x2) # load 0x5803beabec4c7059 from memory into f25
la x2, scratch
li x3, 0xd9a4d12d6e264a23 # load x3 with value 0xd9a4d12d6e264a23
sd x3, 0(x2) # store 0xd9a4d12d6e264a23 in memory
fld f5, 0(x2) # load 0xd9a4d12d6e264a23 from memory into f5
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f6, 0(x2) # load 0xfffeffffffff7e00 from memory into f6
fmadd.h f1, f25, f5, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x2c01caf7c9529143 # load x3 with value 0x2c01caf7c9529143
sd x3, 0(x2) # store 0x2c01caf7c9529143 in memory
fld f15, 0(x2) # load 0x2c01caf7c9529143 from memory into f15
la x2, scratch
li x3, 0xe4aa1e5da80be50e # load x3 with value 0xe4aa1e5da80be50e
sd x3, 0(x2) # store 0xe4aa1e5da80be50e in memory
fld f9, 0(x2) # load 0xe4aa1e5da80be50e from memory into f9
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f16, 0(x2) # load 0xffffffefffff7fff from memory into f16
fmadd.h f26, f15, f9, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xb21005092318bf8a # load x3 with value 0xb21005092318bf8a
sd x3, 0(x2) # store 0xb21005092318bf8a in memory
fld f12, 0(x2) # load 0xb21005092318bf8a from memory into f12
la x2, scratch
li x3, 0xb02c750d05a2ae1b # load x3 with value 0xb02c750d05a2ae1b
sd x3, 0(x2) # store 0xb02c750d05a2ae1b in memory
fld f1, 0(x2) # load 0xb02c750d05a2ae1b from memory into f1
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f17, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f17
fmadd.h f16, f12, f1, f17 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xde24449b53340864 # load x3 with value 0xde24449b53340864
sd x3, 0(x2) # store 0xde24449b53340864 in memory
fld f13, 0(x2) # load 0xde24449b53340864 from memory into f13
la x2, scratch
li x3, 0x7f20a55785aff125 # load x3 with value 0x7f20a55785aff125
sd x3, 0(x2) # store 0x7f20a55785aff125 in memory
fld f26, 0(x2) # load 0x7f20a55785aff125 from memory into f26
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f2, 0(x2) # load 0xfffffffcffff7dff from memory into f2
fmadd.h f31, f13, f26, f2 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-flt.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f30, 0(x2) # load 0xffffffff00000000 from memory into f30
la x2, scratch
li x3, 0xb52a0ee3976ad2a4 # load x3 with value 0xb52a0ee3976ad2a4
sd x3, 0(x2) # store 0xb52a0ee3976ad2a4 in memory
fld f11, 0(x2) # load 0xb52a0ee3976ad2a4 from memory into f11
flt.h x20, f30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f7, 0(x2) # load 0xfffffffffffe8000 from memory into f7
la x2, scratch
li x3, 0x4bc742ad2e44440e # load x3 with value 0x4bc742ad2e44440e
sd x3, 0(x2) # store 0x4bc742ad2e44440e in memory
fld f17, 0(x2) # load 0x4bc742ad2e44440e from memory into f17
flt.h x18, f7, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f23, 0(x2) # load 0x7fffffffffff3c00 from memory into f23
la x2, scratch
li x3, 0xd4c5d1b4e5ce5032 # load x3 with value 0xd4c5d1b4e5ce5032
sd x3, 0(x2) # store 0xd4c5d1b4e5ce5032 in memory
fld f31, 0(x2) # load 0xd4c5d1b4e5ce5032 from memory into f31
flt.h x10, f23, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
la x2, scratch
li x3, 0xb6e4afbb959618fa # load x3 with value 0xb6e4afbb959618fa
sd x3, 0(x2) # store 0xb6e4afbb959618fa in memory
fld f30, 0(x2) # load 0xb6e4afbb959618fa from memory into f30
flt.h x15, f14, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
la x2, scratch
li x3, 0xa84959d8b10bf2ea # load x3 with value 0xa84959d8b10bf2ea
sd x3, 0(x2) # store 0xa84959d8b10bf2ea in memory
fld f10, 0(x2) # load 0xa84959d8b10bf2ea from memory into f10
flt.h x27, f23, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f2, 0(x2) # load 0x00000000ffff8400 from memory into f2
la x2, scratch
li x3, 0x3a76790b0df91bac # load x3 with value 0x3a76790b0df91bac
sd x3, 0(x2) # store 0x3a76790b0df91bac in memory
fld f6, 0(x2) # load 0x3a76790b0df91bac from memory into f6
flt.h x13, f2, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f19, 0(x2) # load 0xefffffffffff7bff from memory into f19
la x2, scratch
li x3, 0xa29490f97a4576fd # load x3 with value 0xa29490f97a4576fd
sd x3, 0(x2) # store 0xa29490f97a4576fd in memory
fld f31, 0(x2) # load 0xa29490f97a4576fd from memory into f31
flt.h x22, f19, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f23, 0(x2) # load 0xc0dec0dec0defbff from memory into f23
la x2, scratch
li x3, 0x04d664ea888264fa # load x3 with value 0x04d664ea888264fa
sd x3, 0(x2) # store 0x04d664ea888264fa in memory
fld f12, 0(x2) # load 0x04d664ea888264fa from memory into f12
flt.h x18, f23, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f16, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f16
la x2, scratch
li x3, 0xd61f5e1c88139768 # load x3 with value 0xd61f5e1c88139768
sd x3, 0(x2) # store 0xd61f5e1c88139768 in memory
fld f31, 0(x2) # load 0xd61f5e1c88139768 from memory into f31
flt.h x11, f16, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f21, 0(x2) # load 0xffffffff0ffffc00 from memory into f21
la x2, scratch
li x3, 0x2db407efcbe3f515 # load x3 with value 0x2db407efcbe3f515
sd x3, 0(x2) # store 0x2db407efcbe3f515 in memory
fld f19, 0(x2) # load 0x2db407efcbe3f515 from memory into f19
flt.h x7, f21, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f24, 0(x2) # load 0xfffeffffffff7e00 from memory into f24
la x2, scratch
li x3, 0x5dcdbe9999cee63e # load x3 with value 0x5dcdbe9999cee63e
sd x3, 0(x2) # store 0x5dcdbe9999cee63e in memory
fld f8, 0(x2) # load 0x5dcdbe9999cee63e from memory into f8
flt.h x22, f24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f18, 0(x2) # load 0xffffffefffff7fff from memory into f18
la x2, scratch
li x3, 0x903d4927041df668 # load x3 with value 0x903d4927041df668
sd x3, 0(x2) # store 0x903d4927041df668 in memory
fld f27, 0(x2) # load 0x903d4927041df668 from memory into f27
flt.h x19, f18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f30, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f30
la x2, scratch
li x3, 0xc7b47c2e26d64f3d # load x3 with value 0xc7b47c2e26d64f3d
sd x3, 0(x2) # store 0xc7b47c2e26d64f3d in memory
fld f26, 0(x2) # load 0xc7b47c2e26d64f3d from memory into f26
flt.h x19, f30, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f18, 0(x2) # load 0xfffffffcffff7dff from memory into f18
la x2, scratch
li x3, 0xa13cd3b09442b1d0 # load x3 with value 0xa13cd3b09442b1d0
sd x3, 0(x2) # store 0xa13cd3b09442b1d0 in memory
fld f17, 0(x2) # load 0xa13cd3b09442b1d0 from memory into f17
flt.h x5, f18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xa8f6f9ef445463d4 # load x3 with value 0xa8f6f9ef445463d4
sd x3, 0(x2) # store 0xa8f6f9ef445463d4 in memory
fld f30, 0(x2) # load 0xa8f6f9ef445463d4 from memory into f30
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f8, 0(x2) # load 0xffffffff00000000 from memory into f8
flt.h x2, f30, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x89fcd4a7805023b0 # load x3 with value 0x89fcd4a7805023b0
sd x3, 0(x2) # store 0x89fcd4a7805023b0 in memory
fld f16, 0(x2) # load 0x89fcd4a7805023b0 from memory into f16
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f13, 0(x2) # load 0xfffffffffffe8000 from memory into f13
flt.h x12, f16, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x7bf53ddcf21a124b # load x3 with value 0x7bf53ddcf21a124b
sd x3, 0(x2) # store 0x7bf53ddcf21a124b in memory
fld f7, 0(x2) # load 0x7bf53ddcf21a124b from memory into f7
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f9, 0(x2) # load 0x7fffffffffff3c00 from memory into f9
flt.h x12, f7, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x811d467d17fdad91 # load x3 with value 0x811d467d17fdad91
sd x3, 0(x2) # store 0x811d467d17fdad91 in memory
fld f9, 0(x2) # load 0x811d467d17fdad91 from memory into f9
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f11, 0(x2) # load 0xfeedbee5beefbc00 from memory into f11
flt.h x14, f9, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x609aa814c5465661 # load x3 with value 0x609aa814c5465661
sd x3, 0(x2) # store 0x609aa814c5465661 in memory
fld f31, 0(x2) # load 0x609aa814c5465661 from memory into f31
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
flt.h x15, f31, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x231d175839307f8b # load x3 with value 0x231d175839307f8b
sd x3, 0(x2) # store 0x231d175839307f8b in memory
fld f10, 0(x2) # load 0x231d175839307f8b from memory into f10
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f8, 0(x2) # load 0x00000000ffff8400 from memory into f8
flt.h x12, f10, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x783defd45d130e8d # load x3 with value 0x783defd45d130e8d
sd x3, 0(x2) # store 0x783defd45d130e8d in memory
fld f19, 0(x2) # load 0x783defd45d130e8d from memory into f19
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f2, 0(x2) # load 0xefffffffffff7bff from memory into f2
flt.h x10, f19, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x8a33ff238995fb46 # load x3 with value 0x8a33ff238995fb46
sd x3, 0(x2) # store 0x8a33ff238995fb46 in memory
fld f18, 0(x2) # load 0x8a33ff238995fb46 from memory into f18
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f3, 0(x2) # load 0xc0dec0dec0defbff from memory into f3
flt.h x22, f18, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x3bbca2bb5d40a862 # load x3 with value 0x3bbca2bb5d40a862
sd x3, 0(x2) # store 0x3bbca2bb5d40a862 in memory
fld f27, 0(x2) # load 0x3bbca2bb5d40a862 from memory into f27
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f14, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f14
flt.h x21, f27, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x422e61e485d42ccb # load x3 with value 0x422e61e485d42ccb
sd x3, 0(x2) # store 0x422e61e485d42ccb in memory
fld f19, 0(x2) # load 0x422e61e485d42ccb from memory into f19
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f8, 0(x2) # load 0xffffffff0ffffc00 from memory into f8
flt.h x15, f19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x4d8b6d4cd42146ab # load x3 with value 0x4d8b6d4cd42146ab
sd x3, 0(x2) # store 0x4d8b6d4cd42146ab in memory
fld f23, 0(x2) # load 0x4d8b6d4cd42146ab from memory into f23
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f3, 0(x2) # load 0xfffeffffffff7e00 from memory into f3
flt.h x20, f23, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x4653b8b7a14082d1 # load x3 with value 0x4653b8b7a14082d1
sd x3, 0(x2) # store 0x4653b8b7a14082d1 in memory
fld f28, 0(x2) # load 0x4653b8b7a14082d1 from memory into f28
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f10, 0(x2) # load 0xffffffefffff7fff from memory into f10
flt.h x6, f28, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x1cb059cef3888fc5 # load x3 with value 0x1cb059cef3888fc5
sd x3, 0(x2) # store 0x1cb059cef3888fc5 in memory
fld f9, 0(x2) # load 0x1cb059cef3888fc5 from memory into f9
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f2, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f2
flt.h x10, f9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x92d4d3ebfc61e6f9 # load x3 with value 0x92d4d3ebfc61e6f9
sd x3, 0(x2) # store 0x92d4d3ebfc61e6f9 in memory
fld f7, 0(x2) # load 0x92d4d3ebfc61e6f9 from memory into f7
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f5, 0(x2) # load 0xfffffffcffff7dff from memory into f5
flt.h x3, f7, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

#.EQU SIGSIZE,224


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
// Tests from: WALLY-COV-fmul.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x36278475c21d0524 # load x3 with value 0x36278475c21d0524
sd x3, 0(x2) # store 0x36278475c21d0524 in memory
flh f18, 0(x2) # load 0x36278475c21d0524 from memory into f18
la x2, scratch
li x3, 0x984c416fb1e4c21e # load x3 with value 0x984c416fb1e4c21e
sd x3, 0(x2) # store 0x984c416fb1e4c21e in memory
flh f10, 0(x2) # load 0x984c416fb1e4c21e from memory into f10
fmul.h f28, f18, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
la x2, scratch
li x3, 0x91ea70713d5e4ec1 # load x3 with value 0x91ea70713d5e4ec1
sd x3, 0(x2) # store 0x91ea70713d5e4ec1 in memory
fld f7, 0(x2) # load 0x91ea70713d5e4ec1 from memory into f7
fmul.h f12, f9, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f19, 0(x2) # load 0xfffffffffffe8000 from memory into f19
la x2, scratch
li x3, 0x022e11f05c571580 # load x3 with value 0x022e11f05c571580
sd x3, 0(x2) # store 0x022e11f05c571580 in memory
fld f16, 0(x2) # load 0x022e11f05c571580 from memory into f16
fmul.h f14, f19, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f27, 0(x2) # load 0x7fffffffffff3c00 from memory into f27
la x2, scratch
li x3, 0x5b6dff0ed3e21b33 # load x3 with value 0x5b6dff0ed3e21b33
sd x3, 0(x2) # store 0x5b6dff0ed3e21b33 in memory
fld f20, 0(x2) # load 0x5b6dff0ed3e21b33 from memory into f20
fmul.h f10, f27, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f21, 0(x2) # load 0xfeedbee5beefbc00 from memory into f21
la x2, scratch
li x3, 0x0dbcd1cd8bf3296a # load x3 with value 0x0dbcd1cd8bf3296a
sd x3, 0(x2) # store 0x0dbcd1cd8bf3296a in memory
fld f17, 0(x2) # load 0x0dbcd1cd8bf3296a from memory into f17
fmul.h f28, f21, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f30, 0(x2) # load 0xffffffefffff0400 from memory into f30
la x2, scratch
li x3, 0x6051d652505f922d # load x3 with value 0x6051d652505f922d
sd x3, 0(x2) # store 0x6051d652505f922d in memory
fld f27, 0(x2) # load 0x6051d652505f922d from memory into f27
fmul.h f22, f30, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f24, 0(x2) # load 0x00000000ffff8400 from memory into f24
la x2, scratch
li x3, 0xd4b37e1d8e3627d1 # load x3 with value 0xd4b37e1d8e3627d1
sd x3, 0(x2) # store 0xd4b37e1d8e3627d1 in memory
fld f3, 0(x2) # load 0xd4b37e1d8e3627d1 from memory into f3
fmul.h f14, f24, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0x058fc178a35c38e5 # load x3 with value 0x058fc178a35c38e5
sd x3, 0(x2) # store 0x058fc178a35c38e5 in memory
fld f31, 0(x2) # load 0x058fc178a35c38e5 from memory into f31
fmul.h f27, f12, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
la x2, scratch
li x3, 0x90243a2e6fdbded3 # load x3 with value 0x90243a2e6fdbded3
sd x3, 0(x2) # store 0x90243a2e6fdbded3 in memory
fld f5, 0(x2) # load 0x90243a2e6fdbded3 from memory into f5
fmul.h f28, f16, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f7, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f7
la x2, scratch
li x3, 0x5aa07b5512e7f389 # load x3 with value 0x5aa07b5512e7f389
sd x3, 0(x2) # store 0x5aa07b5512e7f389 in memory
fld f10, 0(x2) # load 0x5aa07b5512e7f389 from memory into f10
fmul.h f1, f7, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f24, 0(x2) # load 0xffffffff0ffffc00 from memory into f24
la x2, scratch
li x3, 0x1b74bae54c640ec9 # load x3 with value 0x1b74bae54c640ec9
sd x3, 0(x2) # store 0x1b74bae54c640ec9 in memory
fld f25, 0(x2) # load 0x1b74bae54c640ec9 from memory into f25
fmul.h f14, f24, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f18, 0(x2) # load 0xfffeffffffff7e00 from memory into f18
la x2, scratch
li x3, 0xdafd943af1fdd044 # load x3 with value 0xdafd943af1fdd044
sd x3, 0(x2) # store 0xdafd943af1fdd044 in memory
fld f13, 0(x2) # load 0xdafd943af1fdd044 from memory into f13
fmul.h f23, f18, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f12, 0(x2) # load 0xffffffefffff7fff from memory into f12
la x2, scratch
li x3, 0xabca7adc608703c0 # load x3 with value 0xabca7adc608703c0
sd x3, 0(x2) # store 0xabca7adc608703c0 in memory
fld f9, 0(x2) # load 0xabca7adc608703c0 from memory into f9
fmul.h f17, f12, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f24, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f24
la x2, scratch
li x3, 0x82487bb638915a73 # load x3 with value 0x82487bb638915a73
sd x3, 0(x2) # store 0x82487bb638915a73 in memory
fld f5, 0(x2) # load 0x82487bb638915a73 from memory into f5
fmul.h f8, f24, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f14, 0(x2) # load 0xfffffffcffff7dff from memory into f14
la x2, scratch
li x3, 0x4f5c699df713365b # load x3 with value 0x4f5c699df713365b
sd x3, 0(x2) # store 0x4f5c699df713365b in memory
fld f23, 0(x2) # load 0x4f5c699df713365b from memory into f23
fmul.h f19, f14, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x10340c63633884c8 # load x3 with value 0x10340c63633884c8
sd x3, 0(x2) # store 0x10340c63633884c8 in memory
fld f14, 0(x2) # load 0x10340c63633884c8 from memory into f14
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f3, 0(x2) # load 0xffffffff00000000 from memory into f3
fmul.h f25, f14, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xad3f3134b26dd5e0 # load x3 with value 0xad3f3134b26dd5e0
sd x3, 0(x2) # store 0xad3f3134b26dd5e0 in memory
fld f11, 0(x2) # load 0xad3f3134b26dd5e0 from memory into f11
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f24, 0(x2) # load 0xfffffffffffe8000 from memory into f24
fmul.h f12, f11, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xb0c45252084ee11f # load x3 with value 0xb0c45252084ee11f
sd x3, 0(x2) # store 0xb0c45252084ee11f in memory
fld f20, 0(x2) # load 0xb0c45252084ee11f from memory into f20
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f3, 0(x2) # load 0x7fffffffffff3c00 from memory into f3
fmul.h f7, f20, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x18ead9cebc6877de # load x3 with value 0x18ead9cebc6877de
sd x3, 0(x2) # store 0x18ead9cebc6877de in memory
fld f2, 0(x2) # load 0x18ead9cebc6877de from memory into f2
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f13, 0(x2) # load 0xfeedbee5beefbc00 from memory into f13
fmul.h f31, f2, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x41c4dc45be3b1882 # load x3 with value 0x41c4dc45be3b1882
sd x3, 0(x2) # store 0x41c4dc45be3b1882 in memory
fld f13, 0(x2) # load 0x41c4dc45be3b1882 from memory into f13
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f7, 0(x2) # load 0xffffffefffff0400 from memory into f7
fmul.h f12, f13, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x06182932d7527fa9 # load x3 with value 0x06182932d7527fa9
sd x3, 0(x2) # store 0x06182932d7527fa9 in memory
fld f1, 0(x2) # load 0x06182932d7527fa9 from memory into f1
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f2, 0(x2) # load 0x00000000ffff8400 from memory into f2
fmul.h f23, f1, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x64e6486c3f7f1884 # load x3 with value 0x64e6486c3f7f1884
sd x3, 0(x2) # store 0x64e6486c3f7f1884 in memory
fld f9, 0(x2) # load 0x64e6486c3f7f1884 from memory into f9
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f14, 0(x2) # load 0xefffffffffff7bff from memory into f14
fmul.h f23, f9, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xe3b0a8a1fe77d8b0 # load x3 with value 0xe3b0a8a1fe77d8b0
sd x3, 0(x2) # store 0xe3b0a8a1fe77d8b0 in memory
fld f6, 0(x2) # load 0xe3b0a8a1fe77d8b0 from memory into f6
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f24, 0(x2) # load 0xc0dec0dec0defbff from memory into f24
fmul.h f9, f6, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xcc11c2f01c3c7cd5 # load x3 with value 0xcc11c2f01c3c7cd5
sd x3, 0(x2) # store 0xcc11c2f01c3c7cd5 in memory
fld f11, 0(x2) # load 0xcc11c2f01c3c7cd5 from memory into f11
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f6, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f6
fmul.h f8, f11, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xf48147892384f0fb # load x3 with value 0xf48147892384f0fb
sd x3, 0(x2) # store 0xf48147892384f0fb in memory
fld f26, 0(x2) # load 0xf48147892384f0fb from memory into f26
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f13, 0(x2) # load 0xffffffff0ffffc00 from memory into f13
fmul.h f14, f26, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x2495e54ec5ae3b23 # load x3 with value 0x2495e54ec5ae3b23
sd x3, 0(x2) # store 0x2495e54ec5ae3b23 in memory
fld f3, 0(x2) # load 0x2495e54ec5ae3b23 from memory into f3
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f7, 0(x2) # load 0xfffeffffffff7e00 from memory into f7
fmul.h f18, f3, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xb36f614431fc32f7 # load x3 with value 0xb36f614431fc32f7
sd x3, 0(x2) # store 0xb36f614431fc32f7 in memory
fld f11, 0(x2) # load 0xb36f614431fc32f7 from memory into f11
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f9, 0(x2) # load 0xffffffefffff7fff from memory into f9
fmul.h f5, f11, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x483778bd64155884 # load x3 with value 0x483778bd64155884
sd x3, 0(x2) # store 0x483778bd64155884 in memory
fld f15, 0(x2) # load 0x483778bd64155884 from memory into f15
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
fmul.h f21, f15, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xb2d1ef000492351b # load x3 with value 0xb2d1ef000492351b
sd x3, 0(x2) # store 0xb2d1ef000492351b in memory
fld f30, 0(x2) # load 0xb2d1ef000492351b from memory into f30
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f11, 0(x2) # load 0xfffffffcffff7dff from memory into f11
fmul.h f7, f30, f11 # perform operation

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


// ******************
// Tests from: WALLY-COV-feq.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f3, 0(x2) # load 0xffffffff00000000 from memory into f3
la x2, scratch
li x3, 0xc967556dde0c47fd # load x3 with value 0xc967556dde0c47fd
sd x3, 0(x2) # store 0xc967556dde0c47fd in memory
fld f6, 0(x2) # load 0xc967556dde0c47fd from memory into f6
feq.h x7, f3, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f12, 0(x2) # load 0xfffffffffffe8000 from memory into f12
la x2, scratch
li x3, 0x536f023705044f2f # load x3 with value 0x536f023705044f2f
sd x3, 0(x2) # store 0x536f023705044f2f in memory
fld f27, 0(x2) # load 0x536f023705044f2f from memory into f27
feq.h x24, f12, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
la x2, scratch
li x3, 0xe4b86decb0e0f779 # load x3 with value 0xe4b86decb0e0f779
sd x3, 0(x2) # store 0xe4b86decb0e0f779 in memory
fld f22, 0(x2) # load 0xe4b86decb0e0f779 from memory into f22
feq.h x30, f13, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f13, 0(x2) # load 0xfeedbee5beefbc00 from memory into f13
la x2, scratch
li x3, 0xe12405549be7db6e # load x3 with value 0xe12405549be7db6e
sd x3, 0(x2) # store 0xe12405549be7db6e in memory
fld f5, 0(x2) # load 0xe12405549be7db6e from memory into f5
feq.h x25, f13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f25, 0(x2) # load 0xffffffefffff0400 from memory into f25
la x2, scratch
li x3, 0xe6b650872bdb0e87 # load x3 with value 0xe6b650872bdb0e87
sd x3, 0(x2) # store 0xe6b650872bdb0e87 in memory
fld f11, 0(x2) # load 0xe6b650872bdb0e87 from memory into f11
feq.h x3, f25, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f3, 0(x2) # load 0x00000000ffff8400 from memory into f3
la x2, scratch
li x3, 0x707020661d2d8dd6 # load x3 with value 0x707020661d2d8dd6
sd x3, 0(x2) # store 0x707020661d2d8dd6 in memory
fld f16, 0(x2) # load 0x707020661d2d8dd6 from memory into f16
feq.h x15, f3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f6, 0(x2) # load 0xefffffffffff7bff from memory into f6
la x2, scratch
li x3, 0xff456e4a1ebabfce # load x3 with value 0xff456e4a1ebabfce
sd x3, 0(x2) # store 0xff456e4a1ebabfce in memory
fld f1, 0(x2) # load 0xff456e4a1ebabfce from memory into f1
feq.h x19, f6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f6, 0(x2) # load 0xc0dec0dec0defbff from memory into f6
la x2, scratch
li x3, 0x309c019f4afb0435 # load x3 with value 0x309c019f4afb0435
sd x3, 0(x2) # store 0x309c019f4afb0435 in memory
fld f16, 0(x2) # load 0x309c019f4afb0435 from memory into f16
feq.h x1, f6, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f2, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f2
la x2, scratch
li x3, 0xfd6f2bd04997667a # load x3 with value 0xfd6f2bd04997667a
sd x3, 0(x2) # store 0xfd6f2bd04997667a in memory
fld f28, 0(x2) # load 0xfd6f2bd04997667a from memory into f28
feq.h x29, f2, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f29, 0(x2) # load 0xffffffff0ffffc00 from memory into f29
la x2, scratch
li x3, 0x056541d8bc0d92ad # load x3 with value 0x056541d8bc0d92ad
sd x3, 0(x2) # store 0x056541d8bc0d92ad in memory
fld f6, 0(x2) # load 0x056541d8bc0d92ad from memory into f6
feq.h x21, f29, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f11, 0(x2) # load 0xfffeffffffff7e00 from memory into f11
la x2, scratch
li x3, 0x23f16337510eac0c # load x3 with value 0x23f16337510eac0c
sd x3, 0(x2) # store 0x23f16337510eac0c in memory
fld f5, 0(x2) # load 0x23f16337510eac0c from memory into f5
feq.h x10, f11, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f9, 0(x2) # load 0xffffffefffff7fff from memory into f9
la x2, scratch
li x3, 0x1ab11447e0765c04 # load x3 with value 0x1ab11447e0765c04
sd x3, 0(x2) # store 0x1ab11447e0765c04 in memory
fld f12, 0(x2) # load 0x1ab11447e0765c04 from memory into f12
feq.h x1, f9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
la x2, scratch
li x3, 0x70c9a1814a597f2f # load x3 with value 0x70c9a1814a597f2f
sd x3, 0(x2) # store 0x70c9a1814a597f2f in memory
fld f23, 0(x2) # load 0x70c9a1814a597f2f from memory into f23
feq.h x12, f10, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
la x2, scratch
li x3, 0xeed85e680542065b # load x3 with value 0xeed85e680542065b
sd x3, 0(x2) # store 0xeed85e680542065b in memory
fld f9, 0(x2) # load 0xeed85e680542065b from memory into f9
feq.h x16, f26, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xd2b3e7bb8c89f7f9 # load x3 with value 0xd2b3e7bb8c89f7f9
sd x3, 0(x2) # store 0xd2b3e7bb8c89f7f9 in memory
fld f16, 0(x2) # load 0xd2b3e7bb8c89f7f9 from memory into f16
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
feq.h x2, f16, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xa84dcc2aacc24900 # load x3 with value 0xa84dcc2aacc24900
sd x3, 0(x2) # store 0xa84dcc2aacc24900 in memory
fld f17, 0(x2) # load 0xa84dcc2aacc24900 from memory into f17
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f24, 0(x2) # load 0xfffffffffffe8000 from memory into f24
feq.h x28, f17, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xb15f06ac0cb653c6 # load x3 with value 0xb15f06ac0cb653c6
sd x3, 0(x2) # store 0xb15f06ac0cb653c6 in memory
fld f27, 0(x2) # load 0xb15f06ac0cb653c6 from memory into f27
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f24, 0(x2) # load 0x7fffffffffff3c00 from memory into f24
feq.h x16, f27, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x19893f700e3e6ea3 # load x3 with value 0x19893f700e3e6ea3
sd x3, 0(x2) # store 0x19893f700e3e6ea3 in memory
fld f15, 0(x2) # load 0x19893f700e3e6ea3 from memory into f15
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
feq.h x10, f15, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x4200e33ebdf28721 # load x3 with value 0x4200e33ebdf28721
sd x3, 0(x2) # store 0x4200e33ebdf28721 in memory
fld f18, 0(x2) # load 0x4200e33ebdf28721 from memory into f18
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f19, 0(x2) # load 0xffffffefffff0400 from memory into f19
feq.h x27, f18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x83d056f1baf9a526 # load x3 with value 0x83d056f1baf9a526
sd x3, 0(x2) # store 0x83d056f1baf9a526 in memory
fld f29, 0(x2) # load 0x83d056f1baf9a526 from memory into f29
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f25, 0(x2) # load 0x00000000ffff8400 from memory into f25
feq.h x22, f29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x0456d90b2632448b # load x3 with value 0x0456d90b2632448b
sd x3, 0(x2) # store 0x0456d90b2632448b in memory
fld f3, 0(x2) # load 0x0456d90b2632448b from memory into f3
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f1, 0(x2) # load 0xefffffffffff7bff from memory into f1
feq.h x31, f3, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xead2de4c60e746ca # load x3 with value 0xead2de4c60e746ca
sd x3, 0(x2) # store 0xead2de4c60e746ca in memory
fld f22, 0(x2) # load 0xead2de4c60e746ca from memory into f22
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f9, 0(x2) # load 0xc0dec0dec0defbff from memory into f9
feq.h x24, f22, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x6f889f15b871dbf1 # load x3 with value 0x6f889f15b871dbf1
sd x3, 0(x2) # store 0x6f889f15b871dbf1 in memory
fld f15, 0(x2) # load 0x6f889f15b871dbf1 from memory into f15
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f26, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f26
feq.h x24, f15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x0736a5aad7fff465 # load x3 with value 0x0736a5aad7fff465
sd x3, 0(x2) # store 0x0736a5aad7fff465 in memory
fld f6, 0(x2) # load 0x0736a5aad7fff465 from memory into f6
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f29, 0(x2) # load 0xffffffff0ffffc00 from memory into f29
feq.h x20, f6, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xf8acb52d77e42b15 # load x3 with value 0xf8acb52d77e42b15
sd x3, 0(x2) # store 0xf8acb52d77e42b15 in memory
fld f9, 0(x2) # load 0xf8acb52d77e42b15 from memory into f9
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f12, 0(x2) # load 0xfffeffffffff7e00 from memory into f12
feq.h x27, f9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xd8e98ceec31787f0 # load x3 with value 0xd8e98ceec31787f0
sd x3, 0(x2) # store 0xd8e98ceec31787f0 in memory
fld f14, 0(x2) # load 0xd8e98ceec31787f0 from memory into f14
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
feq.h x30, f14, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x61596881cb78f083 # load x3 with value 0x61596881cb78f083
sd x3, 0(x2) # store 0x61596881cb78f083 in memory
fld f31, 0(x2) # load 0x61596881cb78f083 from memory into f31
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
feq.h x12, f31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x3735c823321e5a54 # load x3 with value 0x3735c823321e5a54
sd x3, 0(x2) # store 0x3735c823321e5a54 in memory
fld f12, 0(x2) # load 0x3735c823321e5a54 from memory into f12
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
feq.h x2, f12, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

#.EQU SIGSIZE,224


// ******************
// Tests from: WALLY-COV-fsub.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0xe0a94fcaf7197785 # load x3 with value 0xe0a94fcaf7197785
sd x3, 0(x2) # store 0xe0a94fcaf7197785 in memory
flh f21, 0(x2) # load 0xe0a94fcaf7197785 from memory into f21
la x2, scratch
li x3, 0x62223fbd141d7a42 # load x3 with value 0x62223fbd141d7a42
sd x3, 0(x2) # store 0x62223fbd141d7a42 in memory
flh f10, 0(x2) # load 0x62223fbd141d7a42 from memory into f10
fsub.h f17, f21, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f10, 0(x2) # load 0xffffffff00000000 from memory into f10
la x2, scratch
li x3, 0xcdb425c816396d0f # load x3 with value 0xcdb425c816396d0f
sd x3, 0(x2) # store 0xcdb425c816396d0f in memory
fld f1, 0(x2) # load 0xcdb425c816396d0f from memory into f1
fsub.h f9, f10, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f12, 0(x2) # load 0xfffffffffffe8000 from memory into f12
la x2, scratch
li x3, 0x4562b50a05399deb # load x3 with value 0x4562b50a05399deb
sd x3, 0(x2) # store 0x4562b50a05399deb in memory
fld f9, 0(x2) # load 0x4562b50a05399deb from memory into f9
fsub.h f7, f12, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f16, 0(x2) # load 0x7fffffffffff3c00 from memory into f16
la x2, scratch
li x3, 0x2434bd54e27dce7a # load x3 with value 0x2434bd54e27dce7a
sd x3, 0(x2) # store 0x2434bd54e27dce7a in memory
fld f11, 0(x2) # load 0x2434bd54e27dce7a from memory into f11
fsub.h f22, f16, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f22, 0(x2) # load 0xfeedbee5beefbc00 from memory into f22
la x2, scratch
li x3, 0x0727fc28596746c5 # load x3 with value 0x0727fc28596746c5
sd x3, 0(x2) # store 0x0727fc28596746c5 in memory
fld f27, 0(x2) # load 0x0727fc28596746c5 from memory into f27
fsub.h f23, f22, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f29, 0(x2) # load 0xffffffefffff0400 from memory into f29
la x2, scratch
li x3, 0x79be0733afe38942 # load x3 with value 0x79be0733afe38942
sd x3, 0(x2) # store 0x79be0733afe38942 in memory
fld f27, 0(x2) # load 0x79be0733afe38942 from memory into f27
fsub.h f23, f29, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f1, 0(x2) # load 0x00000000ffff8400 from memory into f1
la x2, scratch
li x3, 0xcb9470e437ba8588 # load x3 with value 0xcb9470e437ba8588
sd x3, 0(x2) # store 0xcb9470e437ba8588 in memory
fld f22, 0(x2) # load 0xcb9470e437ba8588 from memory into f22
fsub.h f31, f1, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f6, 0(x2) # load 0xefffffffffff7bff from memory into f6
la x2, scratch
li x3, 0x6a9c791076cef632 # load x3 with value 0x6a9c791076cef632
sd x3, 0(x2) # store 0x6a9c791076cef632 in memory
fld f31, 0(x2) # load 0x6a9c791076cef632 from memory into f31
fsub.h f10, f6, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f23, 0(x2) # load 0xc0dec0dec0defbff from memory into f23
la x2, scratch
li x3, 0x01b144c45551386e # load x3 with value 0x01b144c45551386e
sd x3, 0(x2) # store 0x01b144c45551386e in memory
fld f15, 0(x2) # load 0x01b144c45551386e from memory into f15
fsub.h f20, f23, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f19, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f19
la x2, scratch
li x3, 0x60161e1fbe7e3e89 # load x3 with value 0x60161e1fbe7e3e89
sd x3, 0(x2) # store 0x60161e1fbe7e3e89 in memory
fld f7, 0(x2) # load 0x60161e1fbe7e3e89 from memory into f7
fsub.h f31, f19, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f24, 0(x2) # load 0xffffffff0ffffc00 from memory into f24
la x2, scratch
li x3, 0x193853aeeaf2c410 # load x3 with value 0x193853aeeaf2c410
sd x3, 0(x2) # store 0x193853aeeaf2c410 in memory
fld f22, 0(x2) # load 0x193853aeeaf2c410 from memory into f22
fsub.h f29, f24, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f27, 0(x2) # load 0xfffeffffffff7e00 from memory into f27
la x2, scratch
li x3, 0xd298789ec35c2fe8 # load x3 with value 0xd298789ec35c2fe8
sd x3, 0(x2) # store 0xd298789ec35c2fe8 in memory
fld f10, 0(x2) # load 0xd298789ec35c2fe8 from memory into f10
fsub.h f20, f27, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
la x2, scratch
li x3, 0x2b337a03375c49f1 # load x3 with value 0x2b337a03375c49f1
sd x3, 0(x2) # store 0x2b337a03375c49f1 in memory
fld f1, 0(x2) # load 0x2b337a03375c49f1 from memory into f1
fsub.h f18, f31, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f28, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f28
la x2, scratch
li x3, 0x5fae67f25bd432fb # load x3 with value 0x5fae67f25bd432fb
sd x3, 0(x2) # store 0x5fae67f25bd432fb in memory
fld f16, 0(x2) # load 0x5fae67f25bd432fb from memory into f16
fsub.h f22, f28, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f20, 0(x2) # load 0xfffffffcffff7dff from memory into f20
la x2, scratch
li x3, 0xfb37ef248cb1fc9a # load x3 with value 0xfb37ef248cb1fc9a
sd x3, 0(x2) # store 0xfb37ef248cb1fc9a in memory
fld f5, 0(x2) # load 0xfb37ef248cb1fc9a from memory into f5
fsub.h f10, f20, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x705769e7bfaf7046 # load x3 with value 0x705769e7bfaf7046
sd x3, 0(x2) # store 0x705769e7bfaf7046 in memory
fld f23, 0(x2) # load 0x705769e7bfaf7046 from memory into f23
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f3, 0(x2) # load 0xffffffff00000000 from memory into f3
fsub.h f14, f23, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x4a33cdcf90a98dee # load x3 with value 0x4a33cdcf90a98dee
sd x3, 0(x2) # store 0x4a33cdcf90a98dee in memory
fld f26, 0(x2) # load 0x4a33cdcf90a98dee from memory into f26
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f11, 0(x2) # load 0xfffffffffffe8000 from memory into f11
fsub.h f27, f26, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xcd80ba9fd299e8c8 # load x3 with value 0xcd80ba9fd299e8c8
sd x3, 0(x2) # store 0xcd80ba9fd299e8c8 in memory
fld f11, 0(x2) # load 0xcd80ba9fd299e8c8 from memory into f11
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f26, 0(x2) # load 0x7fffffffffff3c00 from memory into f26
fsub.h f24, f11, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x669834ab91442d35 # load x3 with value 0x669834ab91442d35
sd x3, 0(x2) # store 0x669834ab91442d35 in memory
fld f2, 0(x2) # load 0x669834ab91442d35 from memory into f2
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f23, 0(x2) # load 0xfeedbee5beefbc00 from memory into f23
fsub.h f15, f2, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xe96d8a15f8c3559e # load x3 with value 0xe96d8a15f8c3559e
sd x3, 0(x2) # store 0xe96d8a15f8c3559e in memory
fld f13, 0(x2) # load 0xe96d8a15f8c3559e from memory into f13
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f3, 0(x2) # load 0xffffffefffff0400 from memory into f3
fsub.h f22, f13, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xcf8ff31b79228274 # load x3 with value 0xcf8ff31b79228274
sd x3, 0(x2) # store 0xcf8ff31b79228274 in memory
fld f10, 0(x2) # load 0xcf8ff31b79228274 from memory into f10
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
fsub.h f29, f10, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x32765fa0558b82c7 # load x3 with value 0x32765fa0558b82c7
sd x3, 0(x2) # store 0x32765fa0558b82c7 in memory
fld f29, 0(x2) # load 0x32765fa0558b82c7 from memory into f29
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fsub.h f16, f29, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x490b8b600b9e5edc # load x3 with value 0x490b8b600b9e5edc
sd x3, 0(x2) # store 0x490b8b600b9e5edc in memory
fld f24, 0(x2) # load 0x490b8b600b9e5edc from memory into f24
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f23, 0(x2) # load 0xc0dec0dec0defbff from memory into f23
fsub.h f3, f24, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x12ee528663fdad3e # load x3 with value 0x12ee528663fdad3e
sd x3, 0(x2) # store 0x12ee528663fdad3e in memory
fld f20, 0(x2) # load 0x12ee528663fdad3e from memory into f20
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f28, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f28
fsub.h f2, f20, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xd54817f66ceddd3c # load x3 with value 0xd54817f66ceddd3c
sd x3, 0(x2) # store 0xd54817f66ceddd3c in memory
fld f18, 0(x2) # load 0xd54817f66ceddd3c from memory into f18
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f23, 0(x2) # load 0xffffffff0ffffc00 from memory into f23
fsub.h f16, f18, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xfaed51a0d88b0275 # load x3 with value 0xfaed51a0d88b0275
sd x3, 0(x2) # store 0xfaed51a0d88b0275 in memory
fld f29, 0(x2) # load 0xfaed51a0d88b0275 from memory into f29
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
fsub.h f27, f29, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xd332251b16c93976 # load x3 with value 0xd332251b16c93976
sd x3, 0(x2) # store 0xd332251b16c93976 in memory
fld f15, 0(x2) # load 0xd332251b16c93976 from memory into f15
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f10, 0(x2) # load 0xffffffefffff7fff from memory into f10
fsub.h f18, f15, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xe3282847bc6b5cf6 # load x3 with value 0xe3282847bc6b5cf6
sd x3, 0(x2) # store 0xe3282847bc6b5cf6 in memory
fld f14, 0(x2) # load 0xe3282847bc6b5cf6 from memory into f14
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f1, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f1
fsub.h f21, f14, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x927db37ab29c0cea # load x3 with value 0x927db37ab29c0cea
sd x3, 0(x2) # store 0x927db37ab29c0cea in memory
fld f27, 0(x2) # load 0x927db37ab29c0cea from memory into f27
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f23, 0(x2) # load 0xfffffffcffff7dff from memory into f23
fsub.h f31, f27, f23 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fadd.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0xd75dd1b305e07ed7 # load x3 with value 0xd75dd1b305e07ed7
sd x3, 0(x2) # store 0xd75dd1b305e07ed7 in memory
flh f26, 0(x2) # load 0xd75dd1b305e07ed7 from memory into f26
la x2, scratch
li x3, 0xd65d7953b85c3fda # load x3 with value 0xd65d7953b85c3fda
sd x3, 0(x2) # store 0xd65d7953b85c3fda in memory
flh f17, 0(x2) # load 0xd65d7953b85c3fda from memory into f17
fadd.h f12, f26, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f7, 0(x2) # load 0xffffffff00000000 from memory into f7
la x2, scratch
li x3, 0x89a0dbe41f92e6cd # load x3 with value 0x89a0dbe41f92e6cd
sd x3, 0(x2) # store 0x89a0dbe41f92e6cd in memory
fld f27, 0(x2) # load 0x89a0dbe41f92e6cd from memory into f27
fadd.h f12, f7, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f23, 0(x2) # load 0xfffffffffffe8000 from memory into f23
la x2, scratch
li x3, 0x64322bb45a0754e4 # load x3 with value 0x64322bb45a0754e4
sd x3, 0(x2) # store 0x64322bb45a0754e4 in memory
fld f22, 0(x2) # load 0x64322bb45a0754e4 from memory into f22
fadd.h f9, f23, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
la x2, scratch
li x3, 0xb74139eaf7655fa4 # load x3 with value 0xb74139eaf7655fa4
sd x3, 0(x2) # store 0xb74139eaf7655fa4 in memory
fld f26, 0(x2) # load 0xb74139eaf7655fa4 from memory into f26
fadd.h f8, f30, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f29, 0(x2) # load 0xfeedbee5beefbc00 from memory into f29
la x2, scratch
li x3, 0x4d908e923823a8d0 # load x3 with value 0x4d908e923823a8d0
sd x3, 0(x2) # store 0x4d908e923823a8d0 in memory
fld f31, 0(x2) # load 0x4d908e923823a8d0 from memory into f31
fadd.h f27, f29, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
la x2, scratch
li x3, 0x1cf32e7826c9cc86 # load x3 with value 0x1cf32e7826c9cc86
sd x3, 0(x2) # store 0x1cf32e7826c9cc86 in memory
fld f12, 0(x2) # load 0x1cf32e7826c9cc86 from memory into f12
fadd.h f9, f26, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f22, 0(x2) # load 0x00000000ffff8400 from memory into f22
la x2, scratch
li x3, 0x5303a7534d6b35ce # load x3 with value 0x5303a7534d6b35ce
sd x3, 0(x2) # store 0x5303a7534d6b35ce in memory
fld f17, 0(x2) # load 0x5303a7534d6b35ce from memory into f17
fadd.h f1, f22, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
la x2, scratch
li x3, 0x0fdd9133d1de7f5c # load x3 with value 0x0fdd9133d1de7f5c
sd x3, 0(x2) # store 0x0fdd9133d1de7f5c in memory
fld f11, 0(x2) # load 0x0fdd9133d1de7f5c from memory into f11
fadd.h f22, f8, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f11, 0(x2) # load 0xc0dec0dec0defbff from memory into f11
la x2, scratch
li x3, 0x1237b265993c5a06 # load x3 with value 0x1237b265993c5a06
sd x3, 0(x2) # store 0x1237b265993c5a06 in memory
fld f26, 0(x2) # load 0x1237b265993c5a06 from memory into f26
fadd.h f3, f11, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f27, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f27
la x2, scratch
li x3, 0x21556f76f741c056 # load x3 with value 0x21556f76f741c056
sd x3, 0(x2) # store 0x21556f76f741c056 in memory
fld f21, 0(x2) # load 0x21556f76f741c056 from memory into f21
fadd.h f7, f27, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f17, 0(x2) # load 0xffffffff0ffffc00 from memory into f17
la x2, scratch
li x3, 0xc129f9977455e201 # load x3 with value 0xc129f9977455e201
sd x3, 0(x2) # store 0xc129f9977455e201 in memory
fld f10, 0(x2) # load 0xc129f9977455e201 from memory into f10
fadd.h f12, f17, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f9, 0(x2) # load 0xfffeffffffff7e00 from memory into f9
la x2, scratch
li x3, 0x90d0413cff17cb84 # load x3 with value 0x90d0413cff17cb84
sd x3, 0(x2) # store 0x90d0413cff17cb84 in memory
fld f2, 0(x2) # load 0x90d0413cff17cb84 from memory into f2
fadd.h f19, f9, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f12, 0(x2) # load 0xffffffefffff7fff from memory into f12
la x2, scratch
li x3, 0xb7dd6826176e0546 # load x3 with value 0xb7dd6826176e0546
sd x3, 0(x2) # store 0xb7dd6826176e0546 in memory
fld f5, 0(x2) # load 0xb7dd6826176e0546 from memory into f5
fadd.h f18, f12, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f24, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f24
la x2, scratch
li x3, 0xa8c16144059f1c55 # load x3 with value 0xa8c16144059f1c55
sd x3, 0(x2) # store 0xa8c16144059f1c55 in memory
fld f7, 0(x2) # load 0xa8c16144059f1c55 from memory into f7
fadd.h f14, f24, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f7, 0(x2) # load 0xfffffffcffff7dff from memory into f7
la x2, scratch
li x3, 0xf88ff8900a9ff380 # load x3 with value 0xf88ff8900a9ff380
sd x3, 0(x2) # store 0xf88ff8900a9ff380 in memory
fld f30, 0(x2) # load 0xf88ff8900a9ff380 from memory into f30
fadd.h f1, f7, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x5937373d38c1a340 # load x3 with value 0x5937373d38c1a340
sd x3, 0(x2) # store 0x5937373d38c1a340 in memory
fld f1, 0(x2) # load 0x5937373d38c1a340 from memory into f1
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f31, 0(x2) # load 0xffffffff00000000 from memory into f31
fadd.h f19, f1, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x8332715a0938e800 # load x3 with value 0x8332715a0938e800
sd x3, 0(x2) # store 0x8332715a0938e800 in memory
fld f18, 0(x2) # load 0x8332715a0938e800 from memory into f18
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f14, 0(x2) # load 0xfffffffffffe8000 from memory into f14
fadd.h f3, f18, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x8bb684c38cfd9460 # load x3 with value 0x8bb684c38cfd9460
sd x3, 0(x2) # store 0x8bb684c38cfd9460 in memory
fld f27, 0(x2) # load 0x8bb684c38cfd9460 from memory into f27
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f15, 0(x2) # load 0x7fffffffffff3c00 from memory into f15
fadd.h f12, f27, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x7339757b053165cc # load x3 with value 0x7339757b053165cc
sd x3, 0(x2) # store 0x7339757b053165cc in memory
fld f18, 0(x2) # load 0x7339757b053165cc from memory into f18
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f10, 0(x2) # load 0xfeedbee5beefbc00 from memory into f10
fadd.h f26, f18, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xed14abb08db27666 # load x3 with value 0xed14abb08db27666
sd x3, 0(x2) # store 0xed14abb08db27666 in memory
fld f21, 0(x2) # load 0xed14abb08db27666 from memory into f21
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f31, 0(x2) # load 0xffffffefffff0400 from memory into f31
fadd.h f1, f21, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x7999b02b5ae89481 # load x3 with value 0x7999b02b5ae89481
sd x3, 0(x2) # store 0x7999b02b5ae89481 in memory
fld f16, 0(x2) # load 0x7999b02b5ae89481 from memory into f16
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f31, 0(x2) # load 0x00000000ffff8400 from memory into f31
fadd.h f11, f16, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xa4563f508387b906 # load x3 with value 0xa4563f508387b906
sd x3, 0(x2) # store 0xa4563f508387b906 in memory
fld f28, 0(x2) # load 0xa4563f508387b906 from memory into f28
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f2, 0(x2) # load 0xefffffffffff7bff from memory into f2
fadd.h f29, f28, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xbc7427f49d4d2f04 # load x3 with value 0xbc7427f49d4d2f04
sd x3, 0(x2) # store 0xbc7427f49d4d2f04 in memory
fld f7, 0(x2) # load 0xbc7427f49d4d2f04 from memory into f7
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f27, 0(x2) # load 0xc0dec0dec0defbff from memory into f27
fadd.h f14, f7, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x2123af212ba489ea # load x3 with value 0x2123af212ba489ea
sd x3, 0(x2) # store 0x2123af212ba489ea in memory
fld f7, 0(x2) # load 0x2123af212ba489ea from memory into f7
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f13, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f13
fadd.h f19, f7, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xe62ce68cae6ebca8 # load x3 with value 0xe62ce68cae6ebca8
sd x3, 0(x2) # store 0xe62ce68cae6ebca8 in memory
fld f16, 0(x2) # load 0xe62ce68cae6ebca8 from memory into f16
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f10, 0(x2) # load 0xffffffff0ffffc00 from memory into f10
fadd.h f30, f16, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x8f869257fadefbb1 # load x3 with value 0x8f869257fadefbb1
sd x3, 0(x2) # store 0x8f869257fadefbb1 in memory
fld f11, 0(x2) # load 0x8f869257fadefbb1 from memory into f11
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
fadd.h f8, f11, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xa920e4a79eae34d7 # load x3 with value 0xa920e4a79eae34d7
sd x3, 0(x2) # store 0xa920e4a79eae34d7 in memory
fld f26, 0(x2) # load 0xa920e4a79eae34d7 from memory into f26
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
fadd.h f27, f26, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x49c3e33e7127dcd4 # load x3 with value 0x49c3e33e7127dcd4
sd x3, 0(x2) # store 0x49c3e33e7127dcd4 in memory
fld f17, 0(x2) # load 0x49c3e33e7127dcd4 from memory into f17
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
fadd.h f11, f17, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x0f5788c3e9e76f52 # load x3 with value 0x0f5788c3e9e76f52
sd x3, 0(x2) # store 0x0f5788c3e9e76f52 in memory
fld f14, 0(x2) # load 0x0f5788c3e9e76f52 from memory into f14
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f23, 0(x2) # load 0xfffffffcffff7dff from memory into f23
fadd.h f15, f14, f23 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fsqrt.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ada4978cb60f31a # load x3 with value 0x8ada4978cb60f31a
sd x3, 0(x2) # store 0x8ada4978cb60f31a in memory
flh f8, 0(x2) # load 0x8ada4978cb60f31a from memory into f8
fsqrt.h f20, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f15)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f15, 0(x2) # load 0xffffffff00000000 from memory into f15
fsqrt.h f28, f15 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f9, 0(x2) # load 0xfffffffffffe8000 from memory into f9
fsqrt.h f27, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
fsqrt.h f30, f13 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f22, 0(x2) # load 0xfeedbee5beefbc00 from memory into f22
fsqrt.h f30, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f6, 0(x2) # load 0xffffffefffff0400 from memory into f6
fsqrt.h f27, f6 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f17, 0(x2) # load 0x00000000ffff8400 from memory into f17
fsqrt.h f14, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f10, 0(x2) # load 0xefffffffffff7bff from memory into f10
fsqrt.h f27, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f1, 0(x2) # load 0xc0dec0dec0defbff from memory into f1
fsqrt.h f2, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f27, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f27
fsqrt.h f3, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f22, 0(x2) # load 0xffffffff0ffffc00 from memory into f22
fsqrt.h f24, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f16)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f16, 0(x2) # load 0xfffeffffffff7e00 from memory into f16
fsqrt.h f31, f16 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f2)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f2, 0(x2) # load 0xffffffefffff7fff from memory into f2
fsqrt.h f18, f2 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f31)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f31, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f31
fsqrt.h f26, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f12, 0(x2) # load 0xfffffffcffff7dff from memory into f12
fsqrt.h f14, f12 # perform operation second time to make sure flags don't change

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fcvt.h.w.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x17, 0x99841474cdf56299 # load immediate value into integer register
fcvt.h.w f1, x17 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fmin.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0xcb6eb98bcbe62f0e # load x3 with value 0xcb6eb98bcbe62f0e
sd x3, 0(x2) # store 0xcb6eb98bcbe62f0e in memory
flh f28, 0(x2) # load 0xcb6eb98bcbe62f0e from memory into f28
la x2, scratch
li x3, 0xed70a4402725dd45 # load x3 with value 0xed70a4402725dd45
sd x3, 0(x2) # store 0xed70a4402725dd45 in memory
flh f2, 0(x2) # load 0xed70a4402725dd45 from memory into f2
fmin.h f6, f28, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f15, 0(x2) # load 0xffffffff00000000 from memory into f15
la x2, scratch
li x3, 0x0a028893860f1706 # load x3 with value 0x0a028893860f1706
sd x3, 0(x2) # store 0x0a028893860f1706 in memory
fld f21, 0(x2) # load 0x0a028893860f1706 from memory into f21
fmin.h f25, f15, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f26, 0(x2) # load 0xfffffffffffe8000 from memory into f26
la x2, scratch
li x3, 0xa0f0df255b4bd49c # load x3 with value 0xa0f0df255b4bd49c
sd x3, 0(x2) # store 0xa0f0df255b4bd49c in memory
fld f28, 0(x2) # load 0xa0f0df255b4bd49c from memory into f28
fmin.h f25, f26, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f1, 0(x2) # load 0x7fffffffffff3c00 from memory into f1
la x2, scratch
li x3, 0x5d28f832710cfb89 # load x3 with value 0x5d28f832710cfb89
sd x3, 0(x2) # store 0x5d28f832710cfb89 in memory
fld f8, 0(x2) # load 0x5d28f832710cfb89 from memory into f8
fmin.h f24, f1, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
la x2, scratch
li x3, 0x53d924df0e15d632 # load x3 with value 0x53d924df0e15d632
sd x3, 0(x2) # store 0x53d924df0e15d632 in memory
fld f11, 0(x2) # load 0x53d924df0e15d632 from memory into f11
fmin.h f15, f28, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f1, 0(x2) # load 0xffffffefffff0400 from memory into f1
la x2, scratch
li x3, 0xf822d2768cf0f886 # load x3 with value 0xf822d2768cf0f886
sd x3, 0(x2) # store 0xf822d2768cf0f886 in memory
fld f20, 0(x2) # load 0xf822d2768cf0f886 from memory into f20
fmin.h f27, f1, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f14, 0(x2) # load 0x00000000ffff8400 from memory into f14
la x2, scratch
li x3, 0x8a86c57bb62e30e5 # load x3 with value 0x8a86c57bb62e30e5
sd x3, 0(x2) # store 0x8a86c57bb62e30e5 in memory
fld f24, 0(x2) # load 0x8a86c57bb62e30e5 from memory into f24
fmin.h f6, f14, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f19, 0(x2) # load 0xefffffffffff7bff from memory into f19
la x2, scratch
li x3, 0x89a1a223362a3657 # load x3 with value 0x89a1a223362a3657
sd x3, 0(x2) # store 0x89a1a223362a3657 in memory
fld f31, 0(x2) # load 0x89a1a223362a3657 from memory into f31
fmin.h f12, f19, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f31, 0(x2) # load 0xc0dec0dec0defbff from memory into f31
la x2, scratch
li x3, 0x782d63d483077125 # load x3 with value 0x782d63d483077125
sd x3, 0(x2) # store 0x782d63d483077125 in memory
fld f27, 0(x2) # load 0x782d63d483077125 from memory into f27
fmin.h f30, f31, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f6, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f6
la x2, scratch
li x3, 0xbc7533d48ed813d8 # load x3 with value 0xbc7533d48ed813d8
sd x3, 0(x2) # store 0xbc7533d48ed813d8 in memory
fld f5, 0(x2) # load 0xbc7533d48ed813d8 from memory into f5
fmin.h f21, f6, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f5, 0(x2) # load 0xffffffff0ffffc00 from memory into f5
la x2, scratch
li x3, 0x5052e0c201171c60 # load x3 with value 0x5052e0c201171c60
sd x3, 0(x2) # store 0x5052e0c201171c60 in memory
fld f26, 0(x2) # load 0x5052e0c201171c60 from memory into f26
fmin.h f2, f5, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f1, 0(x2) # load 0xfffeffffffff7e00 from memory into f1
la x2, scratch
li x3, 0x072873fa0153f3f1 # load x3 with value 0x072873fa0153f3f1
sd x3, 0(x2) # store 0x072873fa0153f3f1 in memory
fld f27, 0(x2) # load 0x072873fa0153f3f1 from memory into f27
fmin.h f31, f1, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f24, 0(x2) # load 0xffffffefffff7fff from memory into f24
la x2, scratch
li x3, 0x0de6465dfc29c555 # load x3 with value 0x0de6465dfc29c555
sd x3, 0(x2) # store 0x0de6465dfc29c555 in memory
fld f17, 0(x2) # load 0x0de6465dfc29c555 from memory into f17
fmin.h f14, f24, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f26, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f26
la x2, scratch
li x3, 0x6713fc8ae661e121 # load x3 with value 0x6713fc8ae661e121
sd x3, 0(x2) # store 0x6713fc8ae661e121 in memory
fld f29, 0(x2) # load 0x6713fc8ae661e121 from memory into f29
fmin.h f2, f26, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
la x2, scratch
li x3, 0x0c0d7021a4f58b0f # load x3 with value 0x0c0d7021a4f58b0f
sd x3, 0(x2) # store 0x0c0d7021a4f58b0f in memory
fld f1, 0(x2) # load 0x0c0d7021a4f58b0f from memory into f1
fmin.h f28, f26, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe681ac4e8d238094 # load x3 with value 0xe681ac4e8d238094
sd x3, 0(x2) # store 0xe681ac4e8d238094 in memory
fld f10, 0(x2) # load 0xe681ac4e8d238094 from memory into f10
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
fmin.h f7, f10, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xc56adb2c5a75ccc9 # load x3 with value 0xc56adb2c5a75ccc9
sd x3, 0(x2) # store 0xc56adb2c5a75ccc9 in memory
fld f30, 0(x2) # load 0xc56adb2c5a75ccc9 from memory into f30
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f5, 0(x2) # load 0xfffffffffffe8000 from memory into f5
fmin.h f9, f30, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x827eb14475b87bc8 # load x3 with value 0x827eb14475b87bc8
sd x3, 0(x2) # store 0x827eb14475b87bc8 in memory
fld f18, 0(x2) # load 0x827eb14475b87bc8 from memory into f18
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
fmin.h f1, f18, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xda7cbd79865a006b # load x3 with value 0xda7cbd79865a006b
sd x3, 0(x2) # store 0xda7cbd79865a006b in memory
fld f13, 0(x2) # load 0xda7cbd79865a006b from memory into f13
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f6, 0(x2) # load 0xfeedbee5beefbc00 from memory into f6
fmin.h f28, f13, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x2984ce8ca1d63256 # load x3 with value 0x2984ce8ca1d63256
sd x3, 0(x2) # store 0x2984ce8ca1d63256 in memory
fld f31, 0(x2) # load 0x2984ce8ca1d63256 from memory into f31
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f10, 0(x2) # load 0xffffffefffff0400 from memory into f10
fmin.h f24, f31, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x7f4815b102cd570a # load x3 with value 0x7f4815b102cd570a
sd x3, 0(x2) # store 0x7f4815b102cd570a in memory
fld f25, 0(x2) # load 0x7f4815b102cd570a from memory into f25
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f2, 0(x2) # load 0x00000000ffff8400 from memory into f2
fmin.h f8, f25, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x685b56f549a676c8 # load x3 with value 0x685b56f549a676c8
sd x3, 0(x2) # store 0x685b56f549a676c8 in memory
fld f23, 0(x2) # load 0x685b56f549a676c8 from memory into f23
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f11, 0(x2) # load 0xefffffffffff7bff from memory into f11
fmin.h f14, f23, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x067147f611566a4f # load x3 with value 0x067147f611566a4f
sd x3, 0(x2) # store 0x067147f611566a4f in memory
fld f22, 0(x2) # load 0x067147f611566a4f from memory into f22
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f11, 0(x2) # load 0xc0dec0dec0defbff from memory into f11
fmin.h f21, f22, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x5c867cb6114b374d # load x3 with value 0x5c867cb6114b374d
sd x3, 0(x2) # store 0x5c867cb6114b374d in memory
fld f29, 0(x2) # load 0x5c867cb6114b374d from memory into f29
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f11, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f11
fmin.h f16, f29, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xb8232c7e081d3e7f # load x3 with value 0xb8232c7e081d3e7f
sd x3, 0(x2) # store 0xb8232c7e081d3e7f in memory
fld f7, 0(x2) # load 0xb8232c7e081d3e7f from memory into f7
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f13, 0(x2) # load 0xffffffff0ffffc00 from memory into f13
fmin.h f23, f7, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x92b1d0c9a406b24c # load x3 with value 0x92b1d0c9a406b24c
sd x3, 0(x2) # store 0x92b1d0c9a406b24c in memory
fld f2, 0(x2) # load 0x92b1d0c9a406b24c from memory into f2
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
fmin.h f8, f2, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x9ea63b921359c819 # load x3 with value 0x9ea63b921359c819
sd x3, 0(x2) # store 0x9ea63b921359c819 in memory
fld f9, 0(x2) # load 0x9ea63b921359c819 from memory into f9
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f8, 0(x2) # load 0xffffffefffff7fff from memory into f8
fmin.h f3, f9, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xe62067c8ac1dd463 # load x3 with value 0xe62067c8ac1dd463
sd x3, 0(x2) # store 0xe62067c8ac1dd463 in memory
fld f9, 0(x2) # load 0xe62067c8ac1dd463 from memory into f9
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
fmin.h f30, f9, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x74134b2d4317fdd1 # load x3 with value 0x74134b2d4317fdd1
sd x3, 0(x2) # store 0x74134b2d4317fdd1 in memory
fld f15, 0(x2) # load 0x74134b2d4317fdd1 from memory into f15
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f19, 0(x2) # load 0xfffffffcffff7dff from memory into f19
fmin.h f20, f15, f19 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fnmsub.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x3c425ce6e57baa06 # load x3 with value 0x3c425ce6e57baa06
sd x3, 0(x2) # store 0x3c425ce6e57baa06 in memory
flh f2, 0(x2) # load 0x3c425ce6e57baa06 from memory into f2
la x2, scratch
li x3, 0x59aa32f1069ed706 # load x3 with value 0x59aa32f1069ed706
sd x3, 0(x2) # store 0x59aa32f1069ed706 in memory
flh f24, 0(x2) # load 0x59aa32f1069ed706 from memory into f24
la x2, scratch
li x3, 0x8d2ed7bb51b2b1ff # load x3 with value 0x8d2ed7bb51b2b1ff
sd x3, 0(x2) # store 0x8d2ed7bb51b2b1ff in memory
flh f6, 0(x2) # load 0x8d2ed7bb51b2b1ff from memory into f6
fnmsub.h f13, f2, f24, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f17, 0(x2) # load 0xffffffff00000000 from memory into f17
la x2, scratch
li x3, 0x3917ee2fea55378e # load x3 with value 0x3917ee2fea55378e
sd x3, 0(x2) # store 0x3917ee2fea55378e in memory
fld f9, 0(x2) # load 0x3917ee2fea55378e from memory into f9
la x2, scratch
li x3, 0x49f55306ee666a27 # load x3 with value 0x49f55306ee666a27
sd x3, 0(x2) # store 0x49f55306ee666a27 in memory
fld f31, 0(x2) # load 0x49f55306ee666a27 from memory into f31
fnmsub.h f25, f17, f9, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f2, 0(x2) # load 0xfffffffffffe8000 from memory into f2
la x2, scratch
li x3, 0x8361afe4392ba6c7 # load x3 with value 0x8361afe4392ba6c7
sd x3, 0(x2) # store 0x8361afe4392ba6c7 in memory
fld f22, 0(x2) # load 0x8361afe4392ba6c7 from memory into f22
la x2, scratch
li x3, 0x023a6b3252f4299c # load x3 with value 0x023a6b3252f4299c
sd x3, 0(x2) # store 0x023a6b3252f4299c in memory
fld f1, 0(x2) # load 0x023a6b3252f4299c from memory into f1
fnmsub.h f28, f2, f22, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f20, 0(x2) # load 0x7fffffffffff3c00 from memory into f20
la x2, scratch
li x3, 0x53a9a28359b8a7e9 # load x3 with value 0x53a9a28359b8a7e9
sd x3, 0(x2) # store 0x53a9a28359b8a7e9 in memory
fld f10, 0(x2) # load 0x53a9a28359b8a7e9 from memory into f10
la x2, scratch
li x3, 0x5edb8d21423ef7ad # load x3 with value 0x5edb8d21423ef7ad
sd x3, 0(x2) # store 0x5edb8d21423ef7ad in memory
fld f27, 0(x2) # load 0x5edb8d21423ef7ad from memory into f27
fnmsub.h f11, f20, f10, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
la x2, scratch
li x3, 0x9a9d9c7a514a3595 # load x3 with value 0x9a9d9c7a514a3595
sd x3, 0(x2) # store 0x9a9d9c7a514a3595 in memory
fld f10, 0(x2) # load 0x9a9d9c7a514a3595 from memory into f10
la x2, scratch
li x3, 0x85dc9325a938f884 # load x3 with value 0x85dc9325a938f884
sd x3, 0(x2) # store 0x85dc9325a938f884 in memory
fld f6, 0(x2) # load 0x85dc9325a938f884 from memory into f6
fnmsub.h f9, f26, f10, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f13, 0(x2) # load 0xffffffefffff0400 from memory into f13
la x2, scratch
li x3, 0x7f062ad8bffa3c9d # load x3 with value 0x7f062ad8bffa3c9d
sd x3, 0(x2) # store 0x7f062ad8bffa3c9d in memory
fld f21, 0(x2) # load 0x7f062ad8bffa3c9d from memory into f21
la x2, scratch
li x3, 0x48604cff1ffeefbf # load x3 with value 0x48604cff1ffeefbf
sd x3, 0(x2) # store 0x48604cff1ffeefbf in memory
fld f11, 0(x2) # load 0x48604cff1ffeefbf from memory into f11
fnmsub.h f28, f13, f21, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
la x2, scratch
li x3, 0x9acc9b70db50f720 # load x3 with value 0x9acc9b70db50f720
sd x3, 0(x2) # store 0x9acc9b70db50f720 in memory
fld f13, 0(x2) # load 0x9acc9b70db50f720 from memory into f13
la x2, scratch
li x3, 0xdce0f7530781d6bc # load x3 with value 0xdce0f7530781d6bc
sd x3, 0(x2) # store 0xdce0f7530781d6bc in memory
fld f11, 0(x2) # load 0xdce0f7530781d6bc from memory into f11
fnmsub.h f31, f21, f13, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f11, 0(x2) # load 0xefffffffffff7bff from memory into f11
la x2, scratch
li x3, 0xd2be04b08eb82436 # load x3 with value 0xd2be04b08eb82436
sd x3, 0(x2) # store 0xd2be04b08eb82436 in memory
fld f17, 0(x2) # load 0xd2be04b08eb82436 from memory into f17
la x2, scratch
li x3, 0x01463342794f9c5e # load x3 with value 0x01463342794f9c5e
sd x3, 0(x2) # store 0x01463342794f9c5e in memory
fld f6, 0(x2) # load 0x01463342794f9c5e from memory into f6
fnmsub.h f23, f11, f17, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f7, 0(x2) # load 0xc0dec0dec0defbff from memory into f7
la x2, scratch
li x3, 0xb181eeeab076b889 # load x3 with value 0xb181eeeab076b889
sd x3, 0(x2) # store 0xb181eeeab076b889 in memory
fld f20, 0(x2) # load 0xb181eeeab076b889 from memory into f20
la x2, scratch
li x3, 0xf10a6c7a04a75c45 # load x3 with value 0xf10a6c7a04a75c45
sd x3, 0(x2) # store 0xf10a6c7a04a75c45 in memory
fld f16, 0(x2) # load 0xf10a6c7a04a75c45 from memory into f16
fnmsub.h f11, f7, f20, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f5, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f5
la x2, scratch
li x3, 0x6b03bd122e9e7b72 # load x3 with value 0x6b03bd122e9e7b72
sd x3, 0(x2) # store 0x6b03bd122e9e7b72 in memory
fld f14, 0(x2) # load 0x6b03bd122e9e7b72 from memory into f14
la x2, scratch
li x3, 0x479ad8a132305dd1 # load x3 with value 0x479ad8a132305dd1
sd x3, 0(x2) # store 0x479ad8a132305dd1 in memory
fld f10, 0(x2) # load 0x479ad8a132305dd1 from memory into f10
fnmsub.h f11, f5, f14, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f1, 0(x2) # load 0xffffffff0ffffc00 from memory into f1
la x2, scratch
li x3, 0xb6456b595a14b72d # load x3 with value 0xb6456b595a14b72d
sd x3, 0(x2) # store 0xb6456b595a14b72d in memory
fld f20, 0(x2) # load 0xb6456b595a14b72d from memory into f20
la x2, scratch
li x3, 0xff6bae9afc2baaab # load x3 with value 0xff6bae9afc2baaab
sd x3, 0(x2) # store 0xff6bae9afc2baaab in memory
fld f9, 0(x2) # load 0xff6bae9afc2baaab from memory into f9
fnmsub.h f21, f1, f20, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f31, 0(x2) # load 0xfffeffffffff7e00 from memory into f31
la x2, scratch
li x3, 0x67a013457aed748c # load x3 with value 0x67a013457aed748c
sd x3, 0(x2) # store 0x67a013457aed748c in memory
fld f24, 0(x2) # load 0x67a013457aed748c from memory into f24
la x2, scratch
li x3, 0x58ce07493fb0b8df # load x3 with value 0x58ce07493fb0b8df
sd x3, 0(x2) # store 0x58ce07493fb0b8df in memory
fld f18, 0(x2) # load 0x58ce07493fb0b8df from memory into f18
fnmsub.h f26, f31, f24, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f22, 0(x2) # load 0xffffffefffff7fff from memory into f22
la x2, scratch
li x3, 0x1a839e68d3579c3c # load x3 with value 0x1a839e68d3579c3c
sd x3, 0(x2) # store 0x1a839e68d3579c3c in memory
fld f8, 0(x2) # load 0x1a839e68d3579c3c from memory into f8
la x2, scratch
li x3, 0x7b6880168f079244 # load x3 with value 0x7b6880168f079244
sd x3, 0(x2) # store 0x7b6880168f079244 in memory
fld f3, 0(x2) # load 0x7b6880168f079244 from memory into f3
fnmsub.h f28, f22, f8, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f25, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f25
la x2, scratch
li x3, 0xc558abfeea3ad4b1 # load x3 with value 0xc558abfeea3ad4b1
sd x3, 0(x2) # store 0xc558abfeea3ad4b1 in memory
fld f23, 0(x2) # load 0xc558abfeea3ad4b1 from memory into f23
la x2, scratch
li x3, 0xb7d565d7e0efa5a3 # load x3 with value 0xb7d565d7e0efa5a3
sd x3, 0(x2) # store 0xb7d565d7e0efa5a3 in memory
fld f22, 0(x2) # load 0xb7d565d7e0efa5a3 from memory into f22
fnmsub.h f18, f25, f23, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f25, 0(x2) # load 0xfffffffcffff7dff from memory into f25
la x2, scratch
li x3, 0x14be76b6c390333f # load x3 with value 0x14be76b6c390333f
sd x3, 0(x2) # store 0x14be76b6c390333f in memory
fld f23, 0(x2) # load 0x14be76b6c390333f from memory into f23
la x2, scratch
li x3, 0xe7d1ae8a193735e3 # load x3 with value 0xe7d1ae8a193735e3
sd x3, 0(x2) # store 0xe7d1ae8a193735e3 in memory
fld f11, 0(x2) # load 0xe7d1ae8a193735e3 from memory into f11
fnmsub.h f6, f25, f23, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x613344e5b99bd622 # load x3 with value 0x613344e5b99bd622
sd x3, 0(x2) # store 0x613344e5b99bd622 in memory
fld f2, 0(x2) # load 0x613344e5b99bd622 from memory into f2
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
la x2, scratch
li x3, 0x57f78e8180f6775c # load x3 with value 0x57f78e8180f6775c
sd x3, 0(x2) # store 0x57f78e8180f6775c in memory
fld f7, 0(x2) # load 0x57f78e8180f6775c from memory into f7
fnmsub.h f19, f2, f14, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x99248d07ba1c39a9 # load x3 with value 0x99248d07ba1c39a9
sd x3, 0(x2) # store 0x99248d07ba1c39a9 in memory
fld f24, 0(x2) # load 0x99248d07ba1c39a9 from memory into f24
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f9, 0(x2) # load 0xfffffffffffe8000 from memory into f9
la x2, scratch
li x3, 0xe6d387ddbd51c5a1 # load x3 with value 0xe6d387ddbd51c5a1
sd x3, 0(x2) # store 0xe6d387ddbd51c5a1 in memory
fld f28, 0(x2) # load 0xe6d387ddbd51c5a1 from memory into f28
fnmsub.h f21, f24, f9, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xeeb28a9628fe94f1 # load x3 with value 0xeeb28a9628fe94f1
sd x3, 0(x2) # store 0xeeb28a9628fe94f1 in memory
fld f13, 0(x2) # load 0xeeb28a9628fe94f1 from memory into f13
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f29, 0(x2) # load 0x7fffffffffff3c00 from memory into f29
la x2, scratch
li x3, 0x0f13e88d940a6560 # load x3 with value 0x0f13e88d940a6560
sd x3, 0(x2) # store 0x0f13e88d940a6560 in memory
fld f15, 0(x2) # load 0x0f13e88d940a6560 from memory into f15
fnmsub.h f22, f13, f29, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xa44d1c7424e4def8 # load x3 with value 0xa44d1c7424e4def8
sd x3, 0(x2) # store 0xa44d1c7424e4def8 in memory
fld f28, 0(x2) # load 0xa44d1c7424e4def8 from memory into f28
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f31, 0(x2) # load 0xfeedbee5beefbc00 from memory into f31
la x2, scratch
li x3, 0xd24e76771a9c4825 # load x3 with value 0xd24e76771a9c4825
sd x3, 0(x2) # store 0xd24e76771a9c4825 in memory
fld f22, 0(x2) # load 0xd24e76771a9c4825 from memory into f22
fnmsub.h f16, f28, f31, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x10b6120e60d50632 # load x3 with value 0x10b6120e60d50632
sd x3, 0(x2) # store 0x10b6120e60d50632 in memory
fld f5, 0(x2) # load 0x10b6120e60d50632 from memory into f5
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
la x2, scratch
li x3, 0xd3222a43039afd32 # load x3 with value 0xd3222a43039afd32
sd x3, 0(x2) # store 0xd3222a43039afd32 in memory
fld f2, 0(x2) # load 0xd3222a43039afd32 from memory into f2
fnmsub.h f13, f5, f23, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xc7b94bee5a099e2e # load x3 with value 0xc7b94bee5a099e2e
sd x3, 0(x2) # store 0xc7b94bee5a099e2e in memory
fld f31, 0(x2) # load 0xc7b94bee5a099e2e from memory into f31
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f18, 0(x2) # load 0x00000000ffff8400 from memory into f18
la x2, scratch
li x3, 0xccd9701402a0754e # load x3 with value 0xccd9701402a0754e
sd x3, 0(x2) # store 0xccd9701402a0754e in memory
fld f27, 0(x2) # load 0xccd9701402a0754e from memory into f27
fnmsub.h f11, f31, f18, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x56db9a847cfeadf7 # load x3 with value 0x56db9a847cfeadf7
sd x3, 0(x2) # store 0x56db9a847cfeadf7 in memory
fld f6, 0(x2) # load 0x56db9a847cfeadf7 from memory into f6
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f18, 0(x2) # load 0xefffffffffff7bff from memory into f18
la x2, scratch
li x3, 0x28ed4f9298f7a72f # load x3 with value 0x28ed4f9298f7a72f
sd x3, 0(x2) # store 0x28ed4f9298f7a72f in memory
fld f21, 0(x2) # load 0x28ed4f9298f7a72f from memory into f21
fnmsub.h f31, f6, f18, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xd95c13c85c4fdb1f # load x3 with value 0xd95c13c85c4fdb1f
sd x3, 0(x2) # store 0xd95c13c85c4fdb1f in memory
fld f3, 0(x2) # load 0xd95c13c85c4fdb1f from memory into f3
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
la x2, scratch
li x3, 0x03b40d7acff4b3ed # load x3 with value 0x03b40d7acff4b3ed
sd x3, 0(x2) # store 0x03b40d7acff4b3ed in memory
fld f14, 0(x2) # load 0x03b40d7acff4b3ed from memory into f14
fnmsub.h f12, f3, f25, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xd548e5d57b42a894 # load x3 with value 0xd548e5d57b42a894
sd x3, 0(x2) # store 0xd548e5d57b42a894 in memory
fld f6, 0(x2) # load 0xd548e5d57b42a894 from memory into f6
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f23, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f23
la x2, scratch
li x3, 0xe5dd843c31fb3055 # load x3 with value 0xe5dd843c31fb3055
sd x3, 0(x2) # store 0xe5dd843c31fb3055 in memory
fld f16, 0(x2) # load 0xe5dd843c31fb3055 from memory into f16
fnmsub.h f29, f6, f23, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x1600cf8806516c52 # load x3 with value 0x1600cf8806516c52
sd x3, 0(x2) # store 0x1600cf8806516c52 in memory
fld f30, 0(x2) # load 0x1600cf8806516c52 from memory into f30
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f16, 0(x2) # load 0xffffffff0ffffc00 from memory into f16
la x2, scratch
li x3, 0x3dec4c64efd8531c # load x3 with value 0x3dec4c64efd8531c
sd x3, 0(x2) # store 0x3dec4c64efd8531c in memory
fld f31, 0(x2) # load 0x3dec4c64efd8531c from memory into f31
fnmsub.h f9, f30, f16, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xac8c11475b41c009 # load x3 with value 0xac8c11475b41c009
sd x3, 0(x2) # store 0xac8c11475b41c009 in memory
fld f31, 0(x2) # load 0xac8c11475b41c009 from memory into f31
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f13, 0(x2) # load 0xfffeffffffff7e00 from memory into f13
la x2, scratch
li x3, 0x6c3094c5edfc0eb0 # load x3 with value 0x6c3094c5edfc0eb0
sd x3, 0(x2) # store 0x6c3094c5edfc0eb0 in memory
fld f1, 0(x2) # load 0x6c3094c5edfc0eb0 from memory into f1
fnmsub.h f7, f31, f13, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x7e8ab9b99963d083 # load x3 with value 0x7e8ab9b99963d083
sd x3, 0(x2) # store 0x7e8ab9b99963d083 in memory
fld f28, 0(x2) # load 0x7e8ab9b99963d083 from memory into f28
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f21, 0(x2) # load 0xffffffefffff7fff from memory into f21
la x2, scratch
li x3, 0x032be60c9fb0a13c # load x3 with value 0x032be60c9fb0a13c
sd x3, 0(x2) # store 0x032be60c9fb0a13c in memory
fld f7, 0(x2) # load 0x032be60c9fb0a13c from memory into f7
fnmsub.h f5, f28, f21, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xa8663e50627d99fd # load x3 with value 0xa8663e50627d99fd
sd x3, 0(x2) # store 0xa8663e50627d99fd in memory
fld f13, 0(x2) # load 0xa8663e50627d99fd from memory into f13
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f26, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f26
la x2, scratch
li x3, 0x29560a89b4d5f91a # load x3 with value 0x29560a89b4d5f91a
sd x3, 0(x2) # store 0x29560a89b4d5f91a in memory
fld f3, 0(x2) # load 0x29560a89b4d5f91a from memory into f3
fnmsub.h f9, f13, f26, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x8ac558c84432839a # load x3 with value 0x8ac558c84432839a
sd x3, 0(x2) # store 0x8ac558c84432839a in memory
fld f8, 0(x2) # load 0x8ac558c84432839a from memory into f8
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f12, 0(x2) # load 0xfffffffcffff7dff from memory into f12
la x2, scratch
li x3, 0xaaf08aa8ccf0c1fe # load x3 with value 0xaaf08aa8ccf0c1fe
sd x3, 0(x2) # store 0xaaf08aa8ccf0c1fe in memory
fld f2, 0(x2) # load 0xaaf08aa8ccf0c1fe from memory into f2
fnmsub.h f23, f8, f12, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x1681ad0793891636 # load x3 with value 0x1681ad0793891636
sd x3, 0(x2) # store 0x1681ad0793891636 in memory
fld f9, 0(x2) # load 0x1681ad0793891636 from memory into f9
la x2, scratch
li x3, 0x0608577ef1a70262 # load x3 with value 0x0608577ef1a70262
sd x3, 0(x2) # store 0x0608577ef1a70262 in memory
fld f26, 0(x2) # load 0x0608577ef1a70262 from memory into f26
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
fnmsub.h f28, f9, f26, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x66b12915155f162f # load x3 with value 0x66b12915155f162f
sd x3, 0(x2) # store 0x66b12915155f162f in memory
fld f18, 0(x2) # load 0x66b12915155f162f from memory into f18
la x2, scratch
li x3, 0x051c5d25aed313c3 # load x3 with value 0x051c5d25aed313c3
sd x3, 0(x2) # store 0x051c5d25aed313c3 in memory
fld f10, 0(x2) # load 0x051c5d25aed313c3 from memory into f10
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f20, 0(x2) # load 0xfffffffffffe8000 from memory into f20
fnmsub.h f8, f18, f10, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xf5d1f3f6d4b021f6 # load x3 with value 0xf5d1f3f6d4b021f6
sd x3, 0(x2) # store 0xf5d1f3f6d4b021f6 in memory
fld f3, 0(x2) # load 0xf5d1f3f6d4b021f6 from memory into f3
la x2, scratch
li x3, 0xf70ce6fee798a7c6 # load x3 with value 0xf70ce6fee798a7c6
sd x3, 0(x2) # store 0xf70ce6fee798a7c6 in memory
fld f28, 0(x2) # load 0xf70ce6fee798a7c6 from memory into f28
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f27, 0(x2) # load 0x7fffffffffff3c00 from memory into f27
fnmsub.h f15, f3, f28, f27 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x14046fda7bcd72c7 # load x3 with value 0x14046fda7bcd72c7
sd x3, 0(x2) # store 0x14046fda7bcd72c7 in memory
fld f7, 0(x2) # load 0x14046fda7bcd72c7 from memory into f7
la x2, scratch
li x3, 0xa10dd60a06b0d0aa # load x3 with value 0xa10dd60a06b0d0aa
sd x3, 0(x2) # store 0xa10dd60a06b0d0aa in memory
fld f28, 0(x2) # load 0xa10dd60a06b0d0aa from memory into f28
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
fnmsub.h f1, f7, f28, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x2c358ac42df50b6c # load x3 with value 0x2c358ac42df50b6c
sd x3, 0(x2) # store 0x2c358ac42df50b6c in memory
fld f15, 0(x2) # load 0x2c358ac42df50b6c from memory into f15
la x2, scratch
li x3, 0x26cf62181a5fc61c # load x3 with value 0x26cf62181a5fc61c
sd x3, 0(x2) # store 0x26cf62181a5fc61c in memory
fld f21, 0(x2) # load 0x26cf62181a5fc61c from memory into f21
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f31, 0(x2) # load 0xffffffefffff0400 from memory into f31
fnmsub.h f6, f15, f21, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0xff45dfd4b99cb7f8 # load x3 with value 0xff45dfd4b99cb7f8
sd x3, 0(x2) # store 0xff45dfd4b99cb7f8 in memory
fld f28, 0(x2) # load 0xff45dfd4b99cb7f8 from memory into f28
la x2, scratch
li x3, 0x77b6d76bb8a514ed # load x3 with value 0x77b6d76bb8a514ed
sd x3, 0(x2) # store 0x77b6d76bb8a514ed in memory
fld f21, 0(x2) # load 0x77b6d76bb8a514ed from memory into f21
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f23, 0(x2) # load 0x00000000ffff8400 from memory into f23
fnmsub.h f14, f28, f21, f23 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xe92fdf73a972bc22 # load x3 with value 0xe92fdf73a972bc22
sd x3, 0(x2) # store 0xe92fdf73a972bc22 in memory
fld f31, 0(x2) # load 0xe92fdf73a972bc22 from memory into f31
la x2, scratch
li x3, 0xd2e0101199032f3f # load x3 with value 0xd2e0101199032f3f
sd x3, 0(x2) # store 0xd2e0101199032f3f in memory
fld f14, 0(x2) # load 0xd2e0101199032f3f from memory into f14
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
fnmsub.h f21, f31, f14, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xaae15360c4a49d81 # load x3 with value 0xaae15360c4a49d81
sd x3, 0(x2) # store 0xaae15360c4a49d81 in memory
fld f1, 0(x2) # load 0xaae15360c4a49d81 from memory into f1
la x2, scratch
li x3, 0xd4654bb44aa916bc # load x3 with value 0xd4654bb44aa916bc
sd x3, 0(x2) # store 0xd4654bb44aa916bc in memory
fld f5, 0(x2) # load 0xd4654bb44aa916bc from memory into f5
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
fnmsub.h f9, f1, f5, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xd9644cd83b39445b # load x3 with value 0xd9644cd83b39445b
sd x3, 0(x2) # store 0xd9644cd83b39445b in memory
fld f20, 0(x2) # load 0xd9644cd83b39445b from memory into f20
la x2, scratch
li x3, 0x970385d6131e3fbb # load x3 with value 0x970385d6131e3fbb
sd x3, 0(x2) # store 0x970385d6131e3fbb in memory
fld f17, 0(x2) # load 0x970385d6131e3fbb from memory into f17
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f25, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f25
fnmsub.h f15, f20, f17, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x802908a2d9d38030 # load x3 with value 0x802908a2d9d38030
sd x3, 0(x2) # store 0x802908a2d9d38030 in memory
fld f16, 0(x2) # load 0x802908a2d9d38030 from memory into f16
la x2, scratch
li x3, 0xddea7c4b67e609ec # load x3 with value 0xddea7c4b67e609ec
sd x3, 0(x2) # store 0xddea7c4b67e609ec in memory
fld f29, 0(x2) # load 0xddea7c4b67e609ec from memory into f29
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
fnmsub.h f14, f16, f29, f30 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x92b206ec50605aeb # load x3 with value 0x92b206ec50605aeb
sd x3, 0(x2) # store 0x92b206ec50605aeb in memory
fld f13, 0(x2) # load 0x92b206ec50605aeb from memory into f13
la x2, scratch
li x3, 0x08d7b09d900ea57c # load x3 with value 0x08d7b09d900ea57c
sd x3, 0(x2) # store 0x08d7b09d900ea57c in memory
fld f24, 0(x2) # load 0x08d7b09d900ea57c from memory into f24
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f16, 0(x2) # load 0xfffeffffffff7e00 from memory into f16
fnmsub.h f1, f13, f24, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x476a65f20b733c39 # load x3 with value 0x476a65f20b733c39
sd x3, 0(x2) # store 0x476a65f20b733c39 in memory
fld f19, 0(x2) # load 0x476a65f20b733c39 from memory into f19
la x2, scratch
li x3, 0xfcd0ffccb7d24a2f # load x3 with value 0xfcd0ffccb7d24a2f
sd x3, 0(x2) # store 0xfcd0ffccb7d24a2f in memory
fld f15, 0(x2) # load 0xfcd0ffccb7d24a2f from memory into f15
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f29, 0(x2) # load 0xffffffefffff7fff from memory into f29
fnmsub.h f1, f19, f15, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x68868d2d65cf243f # load x3 with value 0x68868d2d65cf243f
sd x3, 0(x2) # store 0x68868d2d65cf243f in memory
fld f9, 0(x2) # load 0x68868d2d65cf243f from memory into f9
la x2, scratch
li x3, 0x47cc66e987421258 # load x3 with value 0x47cc66e987421258
sd x3, 0(x2) # store 0x47cc66e987421258 in memory
fld f22, 0(x2) # load 0x47cc66e987421258 from memory into f22
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f2, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f2
fnmsub.h f18, f9, f22, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xf28d4071b64a2475 # load x3 with value 0xf28d4071b64a2475
sd x3, 0(x2) # store 0xf28d4071b64a2475 in memory
fld f14, 0(x2) # load 0xf28d4071b64a2475 from memory into f14
la x2, scratch
li x3, 0xabbea7e853b608cf # load x3 with value 0xabbea7e853b608cf
sd x3, 0(x2) # store 0xabbea7e853b608cf in memory
fld f23, 0(x2) # load 0xabbea7e853b608cf from memory into f23
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f30, 0(x2) # load 0xfffffffcffff7dff from memory into f30
fnmsub.h f10, f14, f23, f30 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fcvt.h.wu.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x10, 0x273097917f611023 # load immediate value into integer register
fcvt.h.wu f25, x10 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fsgnjn.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x97eb160177afdcff # load x3 with value 0x97eb160177afdcff
sd x3, 0(x2) # store 0x97eb160177afdcff in memory
flh f2, 0(x2) # load 0x97eb160177afdcff from memory into f2
la x2, scratch
li x3, 0x07f453823e8353da # load x3 with value 0x07f453823e8353da
sd x3, 0(x2) # store 0x07f453823e8353da in memory
flh f17, 0(x2) # load 0x07f453823e8353da from memory into f17
fsgnjn.h f27, f2, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
la x2, scratch
li x3, 0xced3ebb550fe14b5 # load x3 with value 0xced3ebb550fe14b5
sd x3, 0(x2) # store 0xced3ebb550fe14b5 in memory
fld f8, 0(x2) # load 0xced3ebb550fe14b5 from memory into f8
fsgnjn.h f31, f27, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f19, 0(x2) # load 0xfffffffffffe8000 from memory into f19
la x2, scratch
li x3, 0xbce94d5c4fc9f125 # load x3 with value 0xbce94d5c4fc9f125
sd x3, 0(x2) # store 0xbce94d5c4fc9f125 in memory
fld f31, 0(x2) # load 0xbce94d5c4fc9f125 from memory into f31
fsgnjn.h f9, f19, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f9, 0(x2) # load 0x7fffffffffff3c00 from memory into f9
la x2, scratch
li x3, 0x58d7ce2103433b98 # load x3 with value 0x58d7ce2103433b98
sd x3, 0(x2) # store 0x58d7ce2103433b98 in memory
fld f10, 0(x2) # load 0x58d7ce2103433b98 from memory into f10
fsgnjn.h f23, f9, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
la x2, scratch
li x3, 0x96e07a8ed45803c3 # load x3 with value 0x96e07a8ed45803c3
sd x3, 0(x2) # store 0x96e07a8ed45803c3 in memory
fld f19, 0(x2) # load 0x96e07a8ed45803c3 from memory into f19
fsgnjn.h f8, f14, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f19, 0(x2) # load 0xffffffefffff0400 from memory into f19
la x2, scratch
li x3, 0xdb12f7867d882a6c # load x3 with value 0xdb12f7867d882a6c
sd x3, 0(x2) # store 0xdb12f7867d882a6c in memory
fld f5, 0(x2) # load 0xdb12f7867d882a6c from memory into f5
fsgnjn.h f7, f19, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f31, 0(x2) # load 0x00000000ffff8400 from memory into f31
la x2, scratch
li x3, 0x24feca50cd086799 # load x3 with value 0x24feca50cd086799
sd x3, 0(x2) # store 0x24feca50cd086799 in memory
fld f2, 0(x2) # load 0x24feca50cd086799 from memory into f2
fsgnjn.h f25, f31, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0x770bc7a555ea40c0 # load x3 with value 0x770bc7a555ea40c0
sd x3, 0(x2) # store 0x770bc7a555ea40c0 in memory
fld f17, 0(x2) # load 0x770bc7a555ea40c0 from memory into f17
fsgnjn.h f21, f12, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f7, 0(x2) # load 0xc0dec0dec0defbff from memory into f7
la x2, scratch
li x3, 0xfe705c996483c637 # load x3 with value 0xfe705c996483c637
sd x3, 0(x2) # store 0xfe705c996483c637 in memory
fld f6, 0(x2) # load 0xfe705c996483c637 from memory into f6
fsgnjn.h f17, f7, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f20, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f20
la x2, scratch
li x3, 0x6f47834d031294b9 # load x3 with value 0x6f47834d031294b9
sd x3, 0(x2) # store 0x6f47834d031294b9 in memory
fld f3, 0(x2) # load 0x6f47834d031294b9 from memory into f3
fsgnjn.h f16, f20, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f20, 0(x2) # load 0xffffffff0ffffc00 from memory into f20
la x2, scratch
li x3, 0xe05acfbe35c05bc1 # load x3 with value 0xe05acfbe35c05bc1
sd x3, 0(x2) # store 0xe05acfbe35c05bc1 in memory
fld f7, 0(x2) # load 0xe05acfbe35c05bc1 from memory into f7
fsgnjn.h f9, f20, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
la x2, scratch
li x3, 0xfaf797580143557d # load x3 with value 0xfaf797580143557d
sd x3, 0(x2) # store 0xfaf797580143557d in memory
fld f8, 0(x2) # load 0xfaf797580143557d from memory into f8
fsgnjn.h f1, f20, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f10, 0(x2) # load 0xffffffefffff7fff from memory into f10
la x2, scratch
li x3, 0xb13f263afb57898b # load x3 with value 0xb13f263afb57898b
sd x3, 0(x2) # store 0xb13f263afb57898b in memory
fld f3, 0(x2) # load 0xb13f263afb57898b from memory into f3
fsgnjn.h f6, f10, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f21, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f21
la x2, scratch
li x3, 0x911ba3327d395c20 # load x3 with value 0x911ba3327d395c20
sd x3, 0(x2) # store 0x911ba3327d395c20 in memory
fld f27, 0(x2) # load 0x911ba3327d395c20 from memory into f27
fsgnjn.h f29, f21, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f27, 0(x2) # load 0xfffffffcffff7dff from memory into f27
la x2, scratch
li x3, 0x70d27947905c3cc4 # load x3 with value 0x70d27947905c3cc4
sd x3, 0(x2) # store 0x70d27947905c3cc4 in memory
fld f16, 0(x2) # load 0x70d27947905c3cc4 from memory into f16
fsgnjn.h f5, f27, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xc0ea8cd7bc45d374 # load x3 with value 0xc0ea8cd7bc45d374
sd x3, 0(x2) # store 0xc0ea8cd7bc45d374 in memory
fld f30, 0(x2) # load 0xc0ea8cd7bc45d374 from memory into f30
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f7, 0(x2) # load 0xffffffff00000000 from memory into f7
fsgnjn.h f23, f30, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x631f98617b82381f # load x3 with value 0x631f98617b82381f
sd x3, 0(x2) # store 0x631f98617b82381f in memory
fld f9, 0(x2) # load 0x631f98617b82381f from memory into f9
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f11, 0(x2) # load 0xfffffffffffe8000 from memory into f11
fsgnjn.h f8, f9, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x4ca19b61e5717722 # load x3 with value 0x4ca19b61e5717722
sd x3, 0(x2) # store 0x4ca19b61e5717722 in memory
fld f18, 0(x2) # load 0x4ca19b61e5717722 from memory into f18
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f9, 0(x2) # load 0x7fffffffffff3c00 from memory into f9
fsgnjn.h f23, f18, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xe4316d7ecc6714f6 # load x3 with value 0xe4316d7ecc6714f6
sd x3, 0(x2) # store 0xe4316d7ecc6714f6 in memory
fld f15, 0(x2) # load 0xe4316d7ecc6714f6 from memory into f15
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f30, 0(x2) # load 0xfeedbee5beefbc00 from memory into f30
fsgnjn.h f1, f15, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x4d1340b490dbf20b # load x3 with value 0x4d1340b490dbf20b
sd x3, 0(x2) # store 0x4d1340b490dbf20b in memory
fld f18, 0(x2) # load 0x4d1340b490dbf20b from memory into f18
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f13, 0(x2) # load 0xffffffefffff0400 from memory into f13
fsgnjn.h f20, f18, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x3bbc39bb6dfad4e5 # load x3 with value 0x3bbc39bb6dfad4e5
sd x3, 0(x2) # store 0x3bbc39bb6dfad4e5 in memory
fld f6, 0(x2) # load 0x3bbc39bb6dfad4e5 from memory into f6
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
fsgnjn.h f5, f6, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x8721234040fe11d7 # load x3 with value 0x8721234040fe11d7
sd x3, 0(x2) # store 0x8721234040fe11d7 in memory
fld f12, 0(x2) # load 0x8721234040fe11d7 from memory into f12
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f27, 0(x2) # load 0xefffffffffff7bff from memory into f27
fsgnjn.h f5, f12, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x17d273c6bf53706d # load x3 with value 0x17d273c6bf53706d
sd x3, 0(x2) # store 0x17d273c6bf53706d in memory
fld f19, 0(x2) # load 0x17d273c6bf53706d from memory into f19
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f6, 0(x2) # load 0xc0dec0dec0defbff from memory into f6
fsgnjn.h f21, f19, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xf098cac4836511f6 # load x3 with value 0xf098cac4836511f6
sd x3, 0(x2) # store 0xf098cac4836511f6 in memory
fld f13, 0(x2) # load 0xf098cac4836511f6 from memory into f13
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f22, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f22
fsgnjn.h f20, f13, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x7a41b6393b27f67b # load x3 with value 0x7a41b6393b27f67b
sd x3, 0(x2) # store 0x7a41b6393b27f67b in memory
fld f8, 0(x2) # load 0x7a41b6393b27f67b from memory into f8
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
fsgnjn.h f16, f8, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x25a0212ed38136fc # load x3 with value 0x25a0212ed38136fc
sd x3, 0(x2) # store 0x25a0212ed38136fc in memory
fld f21, 0(x2) # load 0x25a0212ed38136fc from memory into f21
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f7, 0(x2) # load 0xfffeffffffff7e00 from memory into f7
fsgnjn.h f12, f21, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x7d4ad16505a7408c # load x3 with value 0x7d4ad16505a7408c
sd x3, 0(x2) # store 0x7d4ad16505a7408c in memory
fld f2, 0(x2) # load 0x7d4ad16505a7408c from memory into f2
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f1, 0(x2) # load 0xffffffefffff7fff from memory into f1
fsgnjn.h f20, f2, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xc018e7d20015c58c # load x3 with value 0xc018e7d20015c58c
sd x3, 0(x2) # store 0xc018e7d20015c58c in memory
fld f27, 0(x2) # load 0xc018e7d20015c58c from memory into f27
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f6, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f6
fsgnjn.h f29, f27, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xcf078285cac5327a # load x3 with value 0xcf078285cac5327a
sd x3, 0(x2) # store 0xcf078285cac5327a in memory
fld f12, 0(x2) # load 0xcf078285cac5327a from memory into f12
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f20, 0(x2) # load 0xfffffffcffff7dff from memory into f20
fsgnjn.h f28, f12, f20 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fcvt.h.lu.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x27, 0x874681e6792580e6 # load immediate value into integer register
fcvt.h.lu f29, x27 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fmax.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x6651b3aef03b3468 # load x3 with value 0x6651b3aef03b3468
sd x3, 0(x2) # store 0x6651b3aef03b3468 in memory
flh f19, 0(x2) # load 0x6651b3aef03b3468 from memory into f19
la x2, scratch
li x3, 0xebef9a7954970c2d # load x3 with value 0xebef9a7954970c2d
sd x3, 0(x2) # store 0xebef9a7954970c2d in memory
flh f21, 0(x2) # load 0xebef9a7954970c2d from memory into f21
fmax.h f5, f19, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
la x2, scratch
li x3, 0x3115d7acc696a0f4 # load x3 with value 0x3115d7acc696a0f4
sd x3, 0(x2) # store 0x3115d7acc696a0f4 in memory
fld f23, 0(x2) # load 0x3115d7acc696a0f4 from memory into f23
fmax.h f5, f27, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f16, 0(x2) # load 0xfffffffffffe8000 from memory into f16
la x2, scratch
li x3, 0x4370b59ac7450320 # load x3 with value 0x4370b59ac7450320
sd x3, 0(x2) # store 0x4370b59ac7450320 in memory
fld f10, 0(x2) # load 0x4370b59ac7450320 from memory into f10
fmax.h f21, f16, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f20, 0(x2) # load 0x7fffffffffff3c00 from memory into f20
la x2, scratch
li x3, 0x5f073ce21e845d20 # load x3 with value 0x5f073ce21e845d20
sd x3, 0(x2) # store 0x5f073ce21e845d20 in memory
fld f14, 0(x2) # load 0x5f073ce21e845d20 from memory into f14
fmax.h f3, f20, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f3, 0(x2) # load 0xfeedbee5beefbc00 from memory into f3
la x2, scratch
li x3, 0x637ca25166393ba3 # load x3 with value 0x637ca25166393ba3
sd x3, 0(x2) # store 0x637ca25166393ba3 in memory
fld f29, 0(x2) # load 0x637ca25166393ba3 from memory into f29
fmax.h f14, f3, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
la x2, scratch
li x3, 0x275309957ef75c81 # load x3 with value 0x275309957ef75c81
sd x3, 0(x2) # store 0x275309957ef75c81 in memory
fld f25, 0(x2) # load 0x275309957ef75c81 from memory into f25
fmax.h f5, f23, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f2, 0(x2) # load 0x00000000ffff8400 from memory into f2
la x2, scratch
li x3, 0x8d5a82db71c68d15 # load x3 with value 0x8d5a82db71c68d15
sd x3, 0(x2) # store 0x8d5a82db71c68d15 in memory
fld f9, 0(x2) # load 0x8d5a82db71c68d15 from memory into f9
fmax.h f8, f2, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f7, 0(x2) # load 0xefffffffffff7bff from memory into f7
la x2, scratch
li x3, 0xdf3adc1bb0a0427c # load x3 with value 0xdf3adc1bb0a0427c
sd x3, 0(x2) # store 0xdf3adc1bb0a0427c in memory
fld f22, 0(x2) # load 0xdf3adc1bb0a0427c from memory into f22
fmax.h f29, f7, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
la x2, scratch
li x3, 0xe7c4716ffb79a241 # load x3 with value 0xe7c4716ffb79a241
sd x3, 0(x2) # store 0xe7c4716ffb79a241 in memory
fld f20, 0(x2) # load 0xe7c4716ffb79a241 from memory into f20
fmax.h f2, f16, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f17, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f17
la x2, scratch
li x3, 0x47ff4ddb8dd7a7fb # load x3 with value 0x47ff4ddb8dd7a7fb
sd x3, 0(x2) # store 0x47ff4ddb8dd7a7fb in memory
fld f9, 0(x2) # load 0x47ff4ddb8dd7a7fb from memory into f9
fmax.h f31, f17, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f28, 0(x2) # load 0xffffffff0ffffc00 from memory into f28
la x2, scratch
li x3, 0x404c04d4c4630f64 # load x3 with value 0x404c04d4c4630f64
sd x3, 0(x2) # store 0x404c04d4c4630f64 in memory
fld f10, 0(x2) # load 0x404c04d4c4630f64 from memory into f10
fmax.h f29, f28, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f30, 0(x2) # load 0xfffeffffffff7e00 from memory into f30
la x2, scratch
li x3, 0x3186e315e8f4a0a3 # load x3 with value 0x3186e315e8f4a0a3
sd x3, 0(x2) # store 0x3186e315e8f4a0a3 in memory
fld f11, 0(x2) # load 0x3186e315e8f4a0a3 from memory into f11
fmax.h f17, f30, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f2, 0(x2) # load 0xffffffefffff7fff from memory into f2
la x2, scratch
li x3, 0x73c3bb37a5a9b588 # load x3 with value 0x73c3bb37a5a9b588
sd x3, 0(x2) # store 0x73c3bb37a5a9b588 in memory
fld f5, 0(x2) # load 0x73c3bb37a5a9b588 from memory into f5
fmax.h f3, f2, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f14, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f14
la x2, scratch
li x3, 0x434c0c060c467db6 # load x3 with value 0x434c0c060c467db6
sd x3, 0(x2) # store 0x434c0c060c467db6 in memory
fld f24, 0(x2) # load 0x434c0c060c467db6 from memory into f24
fmax.h f15, f14, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f23, 0(x2) # load 0xfffffffcffff7dff from memory into f23
la x2, scratch
li x3, 0x92335513f2a767b3 # load x3 with value 0x92335513f2a767b3
sd x3, 0(x2) # store 0x92335513f2a767b3 in memory
fld f25, 0(x2) # load 0x92335513f2a767b3 from memory into f25
fmax.h f22, f23, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x096949ad2b129559 # load x3 with value 0x096949ad2b129559
sd x3, 0(x2) # store 0x096949ad2b129559 in memory
fld f20, 0(x2) # load 0x096949ad2b129559 from memory into f20
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
fmax.h f22, f20, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x246cf2a1bc5ace7b # load x3 with value 0x246cf2a1bc5ace7b
sd x3, 0(x2) # store 0x246cf2a1bc5ace7b in memory
fld f19, 0(x2) # load 0x246cf2a1bc5ace7b from memory into f19
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f31, 0(x2) # load 0xfffffffffffe8000 from memory into f31
fmax.h f7, f19, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xb4ade72476edab79 # load x3 with value 0xb4ade72476edab79
sd x3, 0(x2) # store 0xb4ade72476edab79 in memory
fld f6, 0(x2) # load 0xb4ade72476edab79 from memory into f6
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f2, 0(x2) # load 0x7fffffffffff3c00 from memory into f2
fmax.h f15, f6, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x5514db5f86424139 # load x3 with value 0x5514db5f86424139
sd x3, 0(x2) # store 0x5514db5f86424139 in memory
fld f27, 0(x2) # load 0x5514db5f86424139 from memory into f27
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f16, 0(x2) # load 0xfeedbee5beefbc00 from memory into f16
fmax.h f11, f27, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x33e4f936977f05d2 # load x3 with value 0x33e4f936977f05d2
sd x3, 0(x2) # store 0x33e4f936977f05d2 in memory
fld f16, 0(x2) # load 0x33e4f936977f05d2 from memory into f16
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f28, 0(x2) # load 0xffffffefffff0400 from memory into f28
fmax.h f6, f16, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xa4b396efb8d5392e # load x3 with value 0xa4b396efb8d5392e
sd x3, 0(x2) # store 0xa4b396efb8d5392e in memory
fld f31, 0(x2) # load 0xa4b396efb8d5392e from memory into f31
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f16, 0(x2) # load 0x00000000ffff8400 from memory into f16
fmax.h f26, f31, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x2ec92f6f6dfc31e5 # load x3 with value 0x2ec92f6f6dfc31e5
sd x3, 0(x2) # store 0x2ec92f6f6dfc31e5 in memory
fld f26, 0(x2) # load 0x2ec92f6f6dfc31e5 from memory into f26
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f28, 0(x2) # load 0xefffffffffff7bff from memory into f28
fmax.h f3, f26, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xc79c300bf17a6e37 # load x3 with value 0xc79c300bf17a6e37
sd x3, 0(x2) # store 0xc79c300bf17a6e37 in memory
fld f10, 0(x2) # load 0xc79c300bf17a6e37 from memory into f10
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f15, 0(x2) # load 0xc0dec0dec0defbff from memory into f15
fmax.h f14, f10, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x588d34d78c3928a3 # load x3 with value 0x588d34d78c3928a3
sd x3, 0(x2) # store 0x588d34d78c3928a3 in memory
fld f12, 0(x2) # load 0x588d34d78c3928a3 from memory into f12
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f20, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f20
fmax.h f2, f12, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x2ae3d7d3f6fd67d7 # load x3 with value 0x2ae3d7d3f6fd67d7
sd x3, 0(x2) # store 0x2ae3d7d3f6fd67d7 in memory
fld f29, 0(x2) # load 0x2ae3d7d3f6fd67d7 from memory into f29
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f3, 0(x2) # load 0xffffffff0ffffc00 from memory into f3
fmax.h f9, f29, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xe501c982f4225f04 # load x3 with value 0xe501c982f4225f04
sd x3, 0(x2) # store 0xe501c982f4225f04 in memory
fld f10, 0(x2) # load 0xe501c982f4225f04 from memory into f10
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f28, 0(x2) # load 0xfffeffffffff7e00 from memory into f28
fmax.h f2, f10, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x4e4599b8480fd899 # load x3 with value 0x4e4599b8480fd899
sd x3, 0(x2) # store 0x4e4599b8480fd899 in memory
fld f12, 0(x2) # load 0x4e4599b8480fd899 from memory into f12
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
fmax.h f11, f12, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x2a1d52c124f35ab8 # load x3 with value 0x2a1d52c124f35ab8
sd x3, 0(x2) # store 0x2a1d52c124f35ab8 in memory
fld f5, 0(x2) # load 0x2a1d52c124f35ab8 from memory into f5
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f17, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f17
fmax.h f18, f5, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xc2a06559b88cdc18 # load x3 with value 0xc2a06559b88cdc18
sd x3, 0(x2) # store 0xc2a06559b88cdc18 in memory
fld f8, 0(x2) # load 0xc2a06559b88cdc18 from memory into f8
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f5, 0(x2) # load 0xfffffffcffff7dff from memory into f5
fmax.h f7, f8, f5 # perform operation

#.EQU SIGSIZE,0
.EQU SIGSIZE,1344 #combined


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
