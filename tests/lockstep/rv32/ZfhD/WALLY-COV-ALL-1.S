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
li x3, 0x0000000086d07ef0 # load x3 with value 0x0000000086d07ef0
sw x3, 0(x2) # store 0x0000000086d07ef0 in memory
flh f30, 0(x2) # load 0x0000000086d07ef0 from memory into f30
fcvt.s.h f11, f30 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
fcvt.s.h f11, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffffffe8000 from memory into f20
fcvt.s.h f16, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fffffffffff3c00 from memory into f10
fcvt.s.h f9, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfeedbee5beefbc00 from memory into f12
fcvt.s.h f3, f12 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffffffefffff0400 from memory into f18
fcvt.s.h f28, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ffff8400 from memory into f11
fcvt.s.h f23, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xefffffffffff7bff from memory into f27
fcvt.s.h f17, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xc0dec0dec0defbff from memory into f3
fcvt.s.h f7, f3 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f21
fcvt.s.h f7, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f30)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
fcvt.s.h f13, f30 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffeffffffff7e00 from memory into f12
fcvt.s.h f19, f12 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffefffff7fff from memory into f1
fcvt.s.h f21, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
fcvt.s.h f3, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfffffffcffff7dff from memory into f10
fcvt.s.h f13, f10 # perform operation second time to make sure flags don't change

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
add x26, x9, x23 # perform first operation
fcvt.d.h f5, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x21, x27 # perform first operation
fcvt.d.h f22, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x17, x26 # perform first operation
fcvt.d.h f5, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f8, f10, f30 # perform first operation
fcvt.d.h f12, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x28, x13 # perform first operation
fcvt.d.h f13, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x22, x13 # perform first operation
fcvt.d.h f22, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f26, f25 # perform first operation
fcvt.d.h f5, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f28, f1, f15 # perform first operation
fcvt.d.h f28, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f21, f29, f28 # perform first operation
fcvt.d.h f21, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f13, f11, f19 # perform first operation
fcvt.d.h f11, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f19, f30, f20 # perform first operation
fcvt.d.h f20, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f3, f30, f24 # perform first operation
fcvt.d.h f10, f6 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dd25a361 # load x3 with value 0x00000000dd25a361
sw x3, 0(x2) # store 0x00000000dd25a361 in memory
flh f0, 0(x2) # load 0x00000000dd25a361 from memory into f0
fcvt.d.h f25, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000d2382492 # load x3 with value 0x00000000d2382492
sw x3, 0(x2) # store 0x00000000d2382492 in memory
flh f1, 0(x2) # load 0x00000000d2382492 from memory into f1
fcvt.d.h f18, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bcd333ce # load x3 with value 0x00000000bcd333ce
sw x3, 0(x2) # store 0x00000000bcd333ce in memory
flh f2, 0(x2) # load 0x00000000bcd333ce from memory into f2
fcvt.d.h f16, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ba2a8377 # load x3 with value 0x00000000ba2a8377
sw x3, 0(x2) # store 0x00000000ba2a8377 in memory
flh f3, 0(x2) # load 0x00000000ba2a8377 from memory into f3
fcvt.d.h f25, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ae21fa32 # load x3 with value 0x00000000ae21fa32
sw x3, 0(x2) # store 0x00000000ae21fa32 in memory
flh f4, 0(x2) # load 0x00000000ae21fa32 from memory into f4
fcvt.d.h f29, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000ba73790 # load x3 with value 0x000000000ba73790
sw x3, 0(x2) # store 0x000000000ba73790 in memory
flh f5, 0(x2) # load 0x000000000ba73790 from memory into f5
fcvt.d.h f25, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000006ec88cd9 # load x3 with value 0x000000006ec88cd9
sw x3, 0(x2) # store 0x000000006ec88cd9 in memory
flh f6, 0(x2) # load 0x000000006ec88cd9 from memory into f6
fcvt.d.h f8, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000066408476 # load x3 with value 0x0000000066408476
sw x3, 0(x2) # store 0x0000000066408476 in memory
flh f7, 0(x2) # load 0x0000000066408476 from memory into f7
fcvt.d.h f8, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f5a8f3b8 # load x3 with value 0x00000000f5a8f3b8
sw x3, 0(x2) # store 0x00000000f5a8f3b8 in memory
flh f8, 0(x2) # load 0x00000000f5a8f3b8 from memory into f8
fcvt.d.h f29, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000b6a63640 # load x3 with value 0x00000000b6a63640
sw x3, 0(x2) # store 0x00000000b6a63640 in memory
flh f9, 0(x2) # load 0x00000000b6a63640 from memory into f9
fcvt.d.h f10, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f53a15af # load x3 with value 0x00000000f53a15af
sw x3, 0(x2) # store 0x00000000f53a15af in memory
flh f10, 0(x2) # load 0x00000000f53a15af from memory into f10
fcvt.d.h f21, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000003f2fcc8 # load x3 with value 0x0000000003f2fcc8
sw x3, 0(x2) # store 0x0000000003f2fcc8 in memory
flh f11, 0(x2) # load 0x0000000003f2fcc8 from memory into f11
fcvt.d.h f10, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000008d4ab1e3 # load x3 with value 0x000000008d4ab1e3
sw x3, 0(x2) # store 0x000000008d4ab1e3 in memory
flh f12, 0(x2) # load 0x000000008d4ab1e3 from memory into f12
fcvt.d.h f15, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007e0abd4e # load x3 with value 0x000000007e0abd4e
sw x3, 0(x2) # store 0x000000007e0abd4e in memory
flh f13, 0(x2) # load 0x000000007e0abd4e from memory into f13
fcvt.d.h f23, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f334b805 # load x3 with value 0x00000000f334b805
sw x3, 0(x2) # store 0x00000000f334b805 in memory
flh f14, 0(x2) # load 0x00000000f334b805 from memory into f14
fcvt.d.h f21, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000de008e03 # load x3 with value 0x00000000de008e03
sw x3, 0(x2) # store 0x00000000de008e03 in memory
flh f15, 0(x2) # load 0x00000000de008e03 from memory into f15
fcvt.d.h f12, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004bc81cbe # load x3 with value 0x000000004bc81cbe
sw x3, 0(x2) # store 0x000000004bc81cbe in memory
flh f16, 0(x2) # load 0x000000004bc81cbe from memory into f16
fcvt.d.h f14, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000052b959d4 # load x3 with value 0x0000000052b959d4
sw x3, 0(x2) # store 0x0000000052b959d4 in memory
flh f17, 0(x2) # load 0x0000000052b959d4 from memory into f17
fcvt.d.h f16, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000121d2d3e # load x3 with value 0x00000000121d2d3e
sw x3, 0(x2) # store 0x00000000121d2d3e in memory
flh f18, 0(x2) # load 0x00000000121d2d3e from memory into f18
fcvt.d.h f21, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a5a7bc06 # load x3 with value 0x00000000a5a7bc06
sw x3, 0(x2) # store 0x00000000a5a7bc06 in memory
flh f19, 0(x2) # load 0x00000000a5a7bc06 from memory into f19
fcvt.d.h f14, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003ad1f171 # load x3 with value 0x000000003ad1f171
sw x3, 0(x2) # store 0x000000003ad1f171 in memory
flh f20, 0(x2) # load 0x000000003ad1f171 from memory into f20
fcvt.d.h f16, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000008d172a06 # load x3 with value 0x000000008d172a06
sw x3, 0(x2) # store 0x000000008d172a06 in memory
flh f21, 0(x2) # load 0x000000008d172a06 from memory into f21
fcvt.d.h f15, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007f7b54ba # load x3 with value 0x000000007f7b54ba
sw x3, 0(x2) # store 0x000000007f7b54ba in memory
flh f22, 0(x2) # load 0x000000007f7b54ba from memory into f22
fcvt.d.h f31, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000008334e9eb # load x3 with value 0x000000008334e9eb
sw x3, 0(x2) # store 0x000000008334e9eb in memory
flh f23, 0(x2) # load 0x000000008334e9eb from memory into f23
fcvt.d.h f28, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000155db6b8 # load x3 with value 0x00000000155db6b8
sw x3, 0(x2) # store 0x00000000155db6b8 in memory
flh f24, 0(x2) # load 0x00000000155db6b8 from memory into f24
fcvt.d.h f5, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000297802dc # load x3 with value 0x00000000297802dc
sw x3, 0(x2) # store 0x00000000297802dc in memory
flh f25, 0(x2) # load 0x00000000297802dc from memory into f25
fcvt.d.h f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000005ea61a0 # load x3 with value 0x0000000005ea61a0
sw x3, 0(x2) # store 0x0000000005ea61a0 in memory
flh f26, 0(x2) # load 0x0000000005ea61a0 from memory into f26
fcvt.d.h f2, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000002cf4dee7 # load x3 with value 0x000000002cf4dee7
sw x3, 0(x2) # store 0x000000002cf4dee7 in memory
flh f27, 0(x2) # load 0x000000002cf4dee7 from memory into f27
fcvt.d.h f21, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000008e6f648c # load x3 with value 0x000000008e6f648c
sw x3, 0(x2) # store 0x000000008e6f648c in memory
flh f28, 0(x2) # load 0x000000008e6f648c from memory into f28
fcvt.d.h f7, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004ff25064 # load x3 with value 0x000000004ff25064
sw x3, 0(x2) # store 0x000000004ff25064 in memory
flh f29, 0(x2) # load 0x000000004ff25064 from memory into f29
fcvt.d.h f8, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a60f3110 # load x3 with value 0x00000000a60f3110
sw x3, 0(x2) # store 0x00000000a60f3110 in memory
flh f30, 0(x2) # load 0x00000000a60f3110 from memory into f30
fcvt.d.h f1, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000230dc334 # load x3 with value 0x00000000230dc334
sw x3, 0(x2) # store 0x00000000230dc334 in memory
flh f31, 0(x2) # load 0x00000000230dc334 from memory into f31
fcvt.d.h f22, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c931924e # load x3 with value 0x00000000c931924e
sw x3, 0(x2) # store 0x00000000c931924e in memory
flh f27, 0(x2) # load 0x00000000c931924e from memory into f27
fcvt.d.h f0, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000001bb8ff3c # load x3 with value 0x000000001bb8ff3c
sw x3, 0(x2) # store 0x000000001bb8ff3c in memory
flh f26, 0(x2) # load 0x000000001bb8ff3c from memory into f26
fcvt.d.h f1, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f8b63626 # load x3 with value 0x00000000f8b63626
sw x3, 0(x2) # store 0x00000000f8b63626 in memory
flh f5, 0(x2) # load 0x00000000f8b63626 from memory into f5
fcvt.d.h f2, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a09fe44f # load x3 with value 0x00000000a09fe44f
sw x3, 0(x2) # store 0x00000000a09fe44f in memory
flh f20, 0(x2) # load 0x00000000a09fe44f from memory into f20
fcvt.d.h f3, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000d3fe12f2 # load x3 with value 0x00000000d3fe12f2
sw x3, 0(x2) # store 0x00000000d3fe12f2 in memory
flh f17, 0(x2) # load 0x00000000d3fe12f2 from memory into f17
fcvt.d.h f4, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000086941e31 # load x3 with value 0x0000000086941e31
sw x3, 0(x2) # store 0x0000000086941e31 in memory
flh f18, 0(x2) # load 0x0000000086941e31 from memory into f18
fcvt.d.h f5, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c84c56ba # load x3 with value 0x00000000c84c56ba
sw x3, 0(x2) # store 0x00000000c84c56ba in memory
flh f9, 0(x2) # load 0x00000000c84c56ba from memory into f9
fcvt.d.h f6, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000009451e293 # load x3 with value 0x000000009451e293
sw x3, 0(x2) # store 0x000000009451e293 in memory
flh f15, 0(x2) # load 0x000000009451e293 from memory into f15
fcvt.d.h f7, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000068579c17 # load x3 with value 0x0000000068579c17
sw x3, 0(x2) # store 0x0000000068579c17 in memory
flh f30, 0(x2) # load 0x0000000068579c17 from memory into f30
fcvt.d.h f8, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000008cbd840 # load x3 with value 0x0000000008cbd840
sw x3, 0(x2) # store 0x0000000008cbd840 in memory
flh f9, 0(x2) # load 0x0000000008cbd840 from memory into f9
fcvt.d.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000194f4c53 # load x3 with value 0x00000000194f4c53
sw x3, 0(x2) # store 0x00000000194f4c53 in memory
flh f20, 0(x2) # load 0x00000000194f4c53 from memory into f20
fcvt.d.h f10, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000009550f6bf # load x3 with value 0x000000009550f6bf
sw x3, 0(x2) # store 0x000000009550f6bf in memory
flh f19, 0(x2) # load 0x000000009550f6bf from memory into f19
fcvt.d.h f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000009e00b424 # load x3 with value 0x000000009e00b424
sw x3, 0(x2) # store 0x000000009e00b424 in memory
flh f22, 0(x2) # load 0x000000009e00b424 from memory into f22
fcvt.d.h f12, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000002990c470 # load x3 with value 0x000000002990c470
sw x3, 0(x2) # store 0x000000002990c470 in memory
flh f19, 0(x2) # load 0x000000002990c470 from memory into f19
fcvt.d.h f13, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a1e27a81 # load x3 with value 0x00000000a1e27a81
sw x3, 0(x2) # store 0x00000000a1e27a81 in memory
flh f24, 0(x2) # load 0x00000000a1e27a81 from memory into f24
fcvt.d.h f14, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000011ce4a2b # load x3 with value 0x0000000011ce4a2b
sw x3, 0(x2) # store 0x0000000011ce4a2b in memory
flh f9, 0(x2) # load 0x0000000011ce4a2b from memory into f9
fcvt.d.h f15, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dd08c7c3 # load x3 with value 0x00000000dd08c7c3
sw x3, 0(x2) # store 0x00000000dd08c7c3 in memory
flh f17, 0(x2) # load 0x00000000dd08c7c3 from memory into f17
fcvt.d.h f16, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000039eed21 # load x3 with value 0x00000000039eed21
sw x3, 0(x2) # store 0x00000000039eed21 in memory
flh f6, 0(x2) # load 0x00000000039eed21 from memory into f6
fcvt.d.h f17, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000006fca3f5f # load x3 with value 0x000000006fca3f5f
sw x3, 0(x2) # store 0x000000006fca3f5f in memory
flh f19, 0(x2) # load 0x000000006fca3f5f from memory into f19
fcvt.d.h f18, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000091727835 # load x3 with value 0x0000000091727835
sw x3, 0(x2) # store 0x0000000091727835 in memory
flh f26, 0(x2) # load 0x0000000091727835 from memory into f26
fcvt.d.h f19, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a63a9fe2 # load x3 with value 0x00000000a63a9fe2
sw x3, 0(x2) # store 0x00000000a63a9fe2 in memory
flh f18, 0(x2) # load 0x00000000a63a9fe2 from memory into f18
fcvt.d.h f20, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f2e8ab8b # load x3 with value 0x00000000f2e8ab8b
sw x3, 0(x2) # store 0x00000000f2e8ab8b in memory
flh f8, 0(x2) # load 0x00000000f2e8ab8b from memory into f8
fcvt.d.h f21, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ec4151cc # load x3 with value 0x00000000ec4151cc
sw x3, 0(x2) # store 0x00000000ec4151cc in memory
flh f8, 0(x2) # load 0x00000000ec4151cc from memory into f8
fcvt.d.h f22, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ba4b45a5 # load x3 with value 0x00000000ba4b45a5
sw x3, 0(x2) # store 0x00000000ba4b45a5 in memory
flh f29, 0(x2) # load 0x00000000ba4b45a5 from memory into f29
fcvt.d.h f23, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f3e2eba9 # load x3 with value 0x00000000f3e2eba9
sw x3, 0(x2) # store 0x00000000f3e2eba9 in memory
flh f3, 0(x2) # load 0x00000000f3e2eba9 from memory into f3
fcvt.d.h f24, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e2268267 # load x3 with value 0x00000000e2268267
sw x3, 0(x2) # store 0x00000000e2268267 in memory
flh f28, 0(x2) # load 0x00000000e2268267 from memory into f28
fcvt.d.h f25, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004e069a15 # load x3 with value 0x000000004e069a15
sw x3, 0(x2) # store 0x000000004e069a15 in memory
flh f1, 0(x2) # load 0x000000004e069a15 from memory into f1
fcvt.d.h f26, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e4190e7d # load x3 with value 0x00000000e4190e7d
sw x3, 0(x2) # store 0x00000000e4190e7d in memory
flh f12, 0(x2) # load 0x00000000e4190e7d from memory into f12
fcvt.d.h f27, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000238e3d05 # load x3 with value 0x00000000238e3d05
sw x3, 0(x2) # store 0x00000000238e3d05 in memory
flh f6, 0(x2) # load 0x00000000238e3d05 from memory into f6
fcvt.d.h f28, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000094907e91 # load x3 with value 0x0000000094907e91
sw x3, 0(x2) # store 0x0000000094907e91 in memory
flh f27, 0(x2) # load 0x0000000094907e91 from memory into f27
fcvt.d.h f29, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a094c45b # load x3 with value 0x00000000a094c45b
sw x3, 0(x2) # store 0x00000000a094c45b in memory
flh f29, 0(x2) # load 0x00000000a094c45b from memory into f29
fcvt.d.h f30, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f3ebc516 # load x3 with value 0x00000000f3ebc516
sw x3, 0(x2) # store 0x00000000f3ebc516 in memory
flh f29, 0(x2) # load 0x00000000f3ebc516 from memory into f29
fcvt.d.h f31, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sw x3, 0(x2) # store 0x0000000000000000 in memory
flh f13, 0(x2) # load 0x0000000000000000 from memory into f13
fcvt.d.h f11, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008000 # load x3 with value 0x0000000000008000
sw x3, 0(x2) # store 0x0000000000008000 in memory
flh f30, 0(x2) # load 0x0000000000008000 from memory into f30
fcvt.d.h f7, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000003c00 # load x3 with value 0x0000000000003c00
sw x3, 0(x2) # store 0x0000000000003c00 in memory
flh f11, 0(x2) # load 0x0000000000003c00 from memory into f11
fcvt.d.h f27, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000bc00 # load x3 with value 0x000000000000bc00
sw x3, 0(x2) # store 0x000000000000bc00 in memory
flh f16, 0(x2) # load 0x000000000000bc00 from memory into f16
fcvt.d.h f20, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000003e00 # load x3 with value 0x0000000000003e00
sw x3, 0(x2) # store 0x0000000000003e00 in memory
flh f30, 0(x2) # load 0x0000000000003e00 from memory into f30
fcvt.d.h f6, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000be00 # load x3 with value 0x000000000000be00
sw x3, 0(x2) # store 0x000000000000be00 in memory
flh f18, 0(x2) # load 0x000000000000be00 from memory into f18
fcvt.d.h f20, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000004000 # load x3 with value 0x0000000000004000
sw x3, 0(x2) # store 0x0000000000004000 in memory
flh f26, 0(x2) # load 0x0000000000004000 from memory into f26
fcvt.d.h f21, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000c000 # load x3 with value 0x000000000000c000
sw x3, 0(x2) # store 0x000000000000c000 in memory
flh f10, 0(x2) # load 0x000000000000c000 from memory into f10
fcvt.d.h f16, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000400 # load x3 with value 0x0000000000000400
sw x3, 0(x2) # store 0x0000000000000400 in memory
flh f19, 0(x2) # load 0x0000000000000400 from memory into f19
fcvt.d.h f27, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008400 # load x3 with value 0x0000000000008400
sw x3, 0(x2) # store 0x0000000000008400 in memory
flh f19, 0(x2) # load 0x0000000000008400 from memory into f19
fcvt.d.h f17, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007bff # load x3 with value 0x0000000000007bff
sw x3, 0(x2) # store 0x0000000000007bff in memory
flh f9, 0(x2) # load 0x0000000000007bff from memory into f9
fcvt.d.h f14, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fbff # load x3 with value 0x000000000000fbff
sw x3, 0(x2) # store 0x000000000000fbff in memory
flh f10, 0(x2) # load 0x000000000000fbff from memory into f10
fcvt.d.h f14, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000003ff # load x3 with value 0x00000000000003ff
sw x3, 0(x2) # store 0x00000000000003ff in memory
flh f24, 0(x2) # load 0x00000000000003ff from memory into f24
fcvt.d.h f2, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000083ff # load x3 with value 0x00000000000083ff
sw x3, 0(x2) # store 0x00000000000083ff in memory
flh f8, 0(x2) # load 0x00000000000083ff from memory into f8
fcvt.d.h f22, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000200 # load x3 with value 0x0000000000000200
sw x3, 0(x2) # store 0x0000000000000200 in memory
flh f9, 0(x2) # load 0x0000000000000200 from memory into f9
fcvt.d.h f13, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008200 # load x3 with value 0x0000000000008200
sw x3, 0(x2) # store 0x0000000000008200 in memory
flh f27, 0(x2) # load 0x0000000000008200 from memory into f27
fcvt.d.h f23, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sw x3, 0(x2) # store 0x0000000000000001 in memory
flh f1, 0(x2) # load 0x0000000000000001 from memory into f1
fcvt.d.h f27, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008001 # load x3 with value 0x0000000000008001
sw x3, 0(x2) # store 0x0000000000008001 in memory
flh f21, 0(x2) # load 0x0000000000008001 from memory into f21
fcvt.d.h f3, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007c00 # load x3 with value 0x0000000000007c00
sw x3, 0(x2) # store 0x0000000000007c00 in memory
flh f25, 0(x2) # load 0x0000000000007c00 from memory into f25
fcvt.d.h f27, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fc00 # load x3 with value 0x000000000000fc00
sw x3, 0(x2) # store 0x000000000000fc00 in memory
flh f20, 0(x2) # load 0x000000000000fc00 from memory into f20
fcvt.d.h f23, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007e00 # load x3 with value 0x0000000000007e00
sw x3, 0(x2) # store 0x0000000000007e00 in memory
flh f22, 0(x2) # load 0x0000000000007e00 from memory into f22
fcvt.d.h f12, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007fff # load x3 with value 0x0000000000007fff
sw x3, 0(x2) # store 0x0000000000007fff in memory
flh f8, 0(x2) # load 0x0000000000007fff from memory into f8
fcvt.d.h f24, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fe00 # load x3 with value 0x000000000000fe00
sw x3, 0(x2) # store 0x000000000000fe00 in memory
flh f31, 0(x2) # load 0x000000000000fe00 from memory into f31
fcvt.d.h f8, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007c01 # load x3 with value 0x0000000000007c01
sw x3, 0(x2) # store 0x0000000000007c01 in memory
flh f24, 0(x2) # load 0x0000000000007c01 from memory into f24
fcvt.d.h f12, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007dff # load x3 with value 0x0000000000007dff
sw x3, 0(x2) # store 0x0000000000007dff in memory
flh f15, 0(x2) # load 0x0000000000007dff from memory into f15
fcvt.d.h f18, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fc01 # load x3 with value 0x000000000000fc01
sw x3, 0(x2) # store 0x000000000000fc01 in memory
flh f26, 0(x2) # load 0x000000000000fc01 from memory into f26
fcvt.d.h f14, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000058b4 # load x3 with value 0x00000000000058b4
sw x3, 0(x2) # store 0x00000000000058b4 in memory
flh f30, 0(x2) # load 0x00000000000058b4 from memory into f30
fcvt.d.h f27, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000c93a # load x3 with value 0x000000000000c93a
sw x3, 0(x2) # store 0x000000000000c93a in memory
flh f22, 0(x2) # load 0x000000000000c93a from memory into f22
fcvt.d.h f15, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a4e221d3 # load x3 with value 0x00000000a4e221d3
sw x3, 0(x2) # store 0x00000000a4e221d3 in memory
flh f0, 0(x2) # load 0x00000000a4e221d3 from memory into f0
fcvt.d.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ddc0eeb0 # load x3 with value 0x00000000ddc0eeb0
sw x3, 0(x2) # store 0x00000000ddc0eeb0 in memory
flh f1, 0(x2) # load 0x00000000ddc0eeb0 from memory into f1
fcvt.d.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000b6f2d731 # load x3 with value 0x00000000b6f2d731
sw x3, 0(x2) # store 0x00000000b6f2d731 in memory
flh f2, 0(x2) # load 0x00000000b6f2d731 from memory into f2
fcvt.d.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000020f9516b # load x3 with value 0x0000000020f9516b
sw x3, 0(x2) # store 0x0000000020f9516b in memory
flh f3, 0(x2) # load 0x0000000020f9516b from memory into f3
fcvt.d.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000073f019bc # load x3 with value 0x0000000073f019bc
sw x3, 0(x2) # store 0x0000000073f019bc in memory
flh f4, 0(x2) # load 0x0000000073f019bc from memory into f4
fcvt.d.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000006ab21ce1 # load x3 with value 0x000000006ab21ce1
sw x3, 0(x2) # store 0x000000006ab21ce1 in memory
flh f5, 0(x2) # load 0x000000006ab21ce1 from memory into f5
fcvt.d.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000340f0db8 # load x3 with value 0x00000000340f0db8
sw x3, 0(x2) # store 0x00000000340f0db8 in memory
flh f6, 0(x2) # load 0x00000000340f0db8 from memory into f6
fcvt.d.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000b1f73ce3 # load x3 with value 0x00000000b1f73ce3
sw x3, 0(x2) # store 0x00000000b1f73ce3 in memory
flh f7, 0(x2) # load 0x00000000b1f73ce3 from memory into f7
fcvt.d.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f78f3159 # load x3 with value 0x00000000f78f3159
sw x3, 0(x2) # store 0x00000000f78f3159 in memory
flh f8, 0(x2) # load 0x00000000f78f3159 from memory into f8
fcvt.d.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000d2d502bf # load x3 with value 0x00000000d2d502bf
sw x3, 0(x2) # store 0x00000000d2d502bf in memory
flh f9, 0(x2) # load 0x00000000d2d502bf from memory into f9
fcvt.d.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000002c7fa093 # load x3 with value 0x000000002c7fa093
sw x3, 0(x2) # store 0x000000002c7fa093 in memory
flh f10, 0(x2) # load 0x000000002c7fa093 from memory into f10
fcvt.d.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000b24df53f # load x3 with value 0x00000000b24df53f
sw x3, 0(x2) # store 0x00000000b24df53f in memory
flh f11, 0(x2) # load 0x00000000b24df53f from memory into f11
fcvt.d.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e7b4fa49 # load x3 with value 0x00000000e7b4fa49
sw x3, 0(x2) # store 0x00000000e7b4fa49 in memory
flh f12, 0(x2) # load 0x00000000e7b4fa49 from memory into f12
fcvt.d.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000674885c3 # load x3 with value 0x00000000674885c3
sw x3, 0(x2) # store 0x00000000674885c3 in memory
flh f13, 0(x2) # load 0x00000000674885c3 from memory into f13
fcvt.d.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e5e35db2 # load x3 with value 0x00000000e5e35db2
sw x3, 0(x2) # store 0x00000000e5e35db2 in memory
flh f14, 0(x2) # load 0x00000000e5e35db2 from memory into f14
fcvt.d.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000005531f725 # load x3 with value 0x000000005531f725
sw x3, 0(x2) # store 0x000000005531f725 in memory
flh f15, 0(x2) # load 0x000000005531f725 from memory into f15
fcvt.d.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000074609710 # load x3 with value 0x0000000074609710
sw x3, 0(x2) # store 0x0000000074609710 in memory
flh f16, 0(x2) # load 0x0000000074609710 from memory into f16
fcvt.d.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dbb73e8b # load x3 with value 0x00000000dbb73e8b
sw x3, 0(x2) # store 0x00000000dbb73e8b in memory
flh f17, 0(x2) # load 0x00000000dbb73e8b from memory into f17
fcvt.d.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000009369bab6 # load x3 with value 0x000000009369bab6
sw x3, 0(x2) # store 0x000000009369bab6 in memory
flh f18, 0(x2) # load 0x000000009369bab6 from memory into f18
fcvt.d.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000a02e920 # load x3 with value 0x000000000a02e920
sw x3, 0(x2) # store 0x000000000a02e920 in memory
flh f19, 0(x2) # load 0x000000000a02e920 from memory into f19
fcvt.d.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000da57893d # load x3 with value 0x00000000da57893d
sw x3, 0(x2) # store 0x00000000da57893d in memory
flh f20, 0(x2) # load 0x00000000da57893d from memory into f20
fcvt.d.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000543458d6 # load x3 with value 0x00000000543458d6
sw x3, 0(x2) # store 0x00000000543458d6 in memory
flh f21, 0(x2) # load 0x00000000543458d6 from memory into f21
fcvt.d.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a5419c00 # load x3 with value 0x00000000a5419c00
sw x3, 0(x2) # store 0x00000000a5419c00 in memory
flh f22, 0(x2) # load 0x00000000a5419c00 from memory into f22
fcvt.d.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dc8c2fb2 # load x3 with value 0x00000000dc8c2fb2
sw x3, 0(x2) # store 0x00000000dc8c2fb2 in memory
flh f23, 0(x2) # load 0x00000000dc8c2fb2 from memory into f23
fcvt.d.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000005e049fcd # load x3 with value 0x000000005e049fcd
sw x3, 0(x2) # store 0x000000005e049fcd in memory
flh f24, 0(x2) # load 0x000000005e049fcd from memory into f24
fcvt.d.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bac975d3 # load x3 with value 0x00000000bac975d3
sw x3, 0(x2) # store 0x00000000bac975d3 in memory
flh f25, 0(x2) # load 0x00000000bac975d3 from memory into f25
fcvt.d.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bd39611f # load x3 with value 0x00000000bd39611f
sw x3, 0(x2) # store 0x00000000bd39611f in memory
flh f26, 0(x2) # load 0x00000000bd39611f from memory into f26
fcvt.d.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003a9408d0 # load x3 with value 0x000000003a9408d0
sw x3, 0(x2) # store 0x000000003a9408d0 in memory
flh f27, 0(x2) # load 0x000000003a9408d0 from memory into f27
fcvt.d.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dbd25a14 # load x3 with value 0x00000000dbd25a14
sw x3, 0(x2) # store 0x00000000dbd25a14 in memory
flh f28, 0(x2) # load 0x00000000dbd25a14 from memory into f28
fcvt.d.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000044de0964 # load x3 with value 0x0000000044de0964
sw x3, 0(x2) # store 0x0000000044de0964 in memory
flh f29, 0(x2) # load 0x0000000044de0964 from memory into f29
fcvt.d.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000d8255b73 # load x3 with value 0x00000000d8255b73
sw x3, 0(x2) # store 0x00000000d8255b73 in memory
flh f30, 0(x2) # load 0x00000000d8255b73 from memory into f30
fcvt.d.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000006f50e31e # load x3 with value 0x000000006f50e31e
sw x3, 0(x2) # store 0x000000006f50e31e in memory
flh f31, 0(x2) # load 0x000000006f50e31e from memory into f31
fcvt.d.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
fcvt.d.h f23, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffffffe8000 from memory into f20
fcvt.d.h f21, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffff3c00 from memory into f29
fcvt.d.h f10, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f26)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
fcvt.d.h f11, f26 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffefffff0400 from memory into f1
fcvt.d.h f23, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
fcvt.d.h f22, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xefffffffffff7bff from memory into f10
fcvt.d.h f20, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xc0dec0dec0defbff from memory into f7
fcvt.d.h f15, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f7
fcvt.d.h f30, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f31)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffff0ffffc00 from memory into f31
fcvt.d.h f10, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffeffffffff7e00 from memory into f8
fcvt.d.h f24, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffffffefffff7fff from memory into f23
fcvt.d.h f21, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f2)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f2
fcvt.d.h f9, f2 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfffffffcffff7dff from memory into f13
fcvt.d.h f10, f13 # perform operation second time to make sure flags don't change

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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
fmv.x.h x6, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfffffffffffe8000 from memory into f6
fmv.x.h x16, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7fffffffffff3c00 from memory into f18
fmv.x.h x29, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeedbee5beefbc00 from memory into f3
fmv.x.h x13, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffefffff0400 from memory into f14
fmv.x.h x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ffff8400 from memory into f9
fmv.x.h x23, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
fmv.x.h x17, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xc0dec0dec0defbff from memory into f6
fmv.x.h x8, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f9
fmv.x.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffffffff0ffffc00 from memory into f25
fmv.x.h x3, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfffeffffffff7e00 from memory into f1
fmv.x.h x5, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
fmv.x.h x2, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f19
fmv.x.h x2, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffcffff7dff from memory into f5
fmv.x.h x3, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 52)

#.EQU SIGSIZE,56


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
li x3, 0x000000003780357e # load x3 with value 0x000000003780357e
sw x3, 0(x2) # store 0x000000003780357e in memory
flh f8, 0(x2) # load 0x000000003780357e from memory into f8
la x2, scratch
li x3, 0x00000000646738b9 # load x3 with value 0x00000000646738b9
sw x3, 0(x2) # store 0x00000000646738b9 in memory
flh f12, 0(x2) # load 0x00000000646738b9 from memory into f12
fdiv.h f9, f8, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
la x2, scratch
li x3, 0xbd46c28d # load x3 with 32 MSBs 0x00000000bd46c28d
sw x3, 0(x2) # store x3 (0xbd46c28d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bd46c28d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000bd46c28d from memory into f22
fdiv.h f23, f29, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfffffffffffe8000 from memory into f15
la x2, scratch
li x3, 0x6a797be5 # load x3 with 32 MSBs 0x000000006a797be5
sw x3, 0(x2) # store x3 (0x6a797be5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006a797be5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006a797be5 from memory into f19
fdiv.h f30, f15, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fffffffffff3c00 from memory into f2
la x2, scratch
li x3, 0x1fcddca1 # load x3 with 32 MSBs 0x000000001fcddca1
sw x3, 0(x2) # store x3 (0x1fcddca1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001fcddca1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000001fcddca1 from memory into f9
fdiv.h f15, f2, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfeedbee5beefbc00 from memory into f27
la x2, scratch
li x3, 0xf92cd9ea # load x3 with 32 MSBs 0x00000000f92cd9ea
sw x3, 0(x2) # store x3 (0xf92cd9ea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f92cd9ea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000f92cd9ea from memory into f1
fdiv.h f26, f27, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
la x2, scratch
li x3, 0x6cc4a805 # load x3 with 32 MSBs 0x000000006cc4a805
sw x3, 0(x2) # store x3 (0x6cc4a805) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006cc4a805
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000006cc4a805 from memory into f5
fdiv.h f11, f26, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ffff8400 from memory into f9
la x2, scratch
li x3, 0x5db3872e # load x3 with 32 MSBs 0x000000005db3872e
sw x3, 0(x2) # store x3 (0x5db3872e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005db3872e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000005db3872e from memory into f27
fdiv.h f23, f9, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xefffffffffff7bff from memory into f28
la x2, scratch
li x3, 0xde2d9a84 # load x3 with 32 MSBs 0x00000000de2d9a84
sw x3, 0(x2) # store x3 (0xde2d9a84) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de2d9a84
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000de2d9a84 from memory into f11
fdiv.h f21, f28, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
la x2, scratch
li x3, 0xac8fcc55 # load x3 with 32 MSBs 0x00000000ac8fcc55
sw x3, 0(x2) # store x3 (0xac8fcc55) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ac8fcc55
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000ac8fcc55 from memory into f1
fdiv.h f2, f25, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f21
la x2, scratch
li x3, 0xec0f36d9 # load x3 with 32 MSBs 0x00000000ec0f36d9
sw x3, 0(x2) # store x3 (0xec0f36d9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ec0f36d9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000ec0f36d9 from memory into f30
fdiv.h f10, f21, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff0ffffc00 from memory into f22
la x2, scratch
li x3, 0x00d25888 # load x3 with 32 MSBs 0x0000000000d25888
sw x3, 0(x2) # store x3 (0x00d25888) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000d25888
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000d25888 from memory into f25
fdiv.h f27, f22, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfffeffffffff7e00 from memory into f24
la x2, scratch
li x3, 0xacdd046c # load x3 with 32 MSBs 0x00000000acdd046c
sw x3, 0(x2) # store x3 (0xacdd046c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000acdd046c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000acdd046c from memory into f19
fdiv.h f2, f24, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffefffff7fff from memory into f27
la x2, scratch
li x3, 0xd14bf2c1 # load x3 with 32 MSBs 0x00000000d14bf2c1
sw x3, 0(x2) # store x3 (0xd14bf2c1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d14bf2c1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000d14bf2c1 from memory into f14
fdiv.h f8, f27, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f2
la x2, scratch
li x3, 0x46d2ae43 # load x3 with 32 MSBs 0x0000000046d2ae43
sw x3, 0(x2) # store x3 (0x46d2ae43) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000046d2ae43
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000046d2ae43 from memory into f3
fdiv.h f5, f2, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfffffffcffff7dff from memory into f27
la x2, scratch
li x3, 0x3572ca75 # load x3 with 32 MSBs 0x000000003572ca75
sw x3, 0(x2) # store x3 (0x3572ca75) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003572ca75
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003572ca75 from memory into f29
fdiv.h f11, f27, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe2cc9dae # load x3 with 32 MSBs 0x00000000e2cc9dae
sw x3, 0(x2) # store x3 (0xe2cc9dae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e2cc9dae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000e2cc9dae from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xffffffff00000000 from memory into f12
fdiv.h f10, f7, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x371ea331 # load x3 with 32 MSBs 0x00000000371ea331
sw x3, 0(x2) # store x3 (0x371ea331) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000371ea331
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000371ea331 from memory into f3
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffffffffffe8000 from memory into f7
fdiv.h f13, f3, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xa707caaf # load x3 with 32 MSBs 0x00000000a707caaf
sw x3, 0(x2) # store x3 (0xa707caaf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a707caaf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000a707caaf from memory into f22
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fffffffffff3c00 from memory into f28
fdiv.h f16, f22, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x8fa1ed68 # load x3 with 32 MSBs 0x000000008fa1ed68
sw x3, 0(x2) # store x3 (0x8fa1ed68) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008fa1ed68
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000008fa1ed68 from memory into f18
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
fdiv.h f1, f18, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xb33790f9 # load x3 with 32 MSBs 0x00000000b33790f9
sw x3, 0(x2) # store x3 (0xb33790f9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b33790f9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b33790f9 from memory into f19
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffffffefffff0400 from memory into f8
fdiv.h f22, f19, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xad9eabc1 # load x3 with 32 MSBs 0x00000000ad9eabc1
sw x3, 0(x2) # store x3 (0xad9eabc1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ad9eabc1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000ad9eabc1 from memory into f27
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ffff8400 from memory into f22
fdiv.h f8, f27, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x8ea14579 # load x3 with 32 MSBs 0x000000008ea14579
sw x3, 0(x2) # store x3 (0x8ea14579) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ea14579
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000008ea14579 from memory into f2
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
fdiv.h f27, f2, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x28ae1234 # load x3 with 32 MSBs 0x0000000028ae1234
sw x3, 0(x2) # store x3 (0x28ae1234) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000028ae1234
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000028ae1234 from memory into f19
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc0dec0dec0defbff from memory into f11
fdiv.h f6, f19, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x89c86055 # load x3 with 32 MSBs 0x0000000089c86055
sw x3, 0(x2) # store x3 (0x89c86055) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000089c86055
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000089c86055 from memory into f16
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f11
fdiv.h f14, f16, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xb90c1c9b # load x3 with 32 MSBs 0x00000000b90c1c9b
sw x3, 0(x2) # store x3 (0xb90c1c9b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b90c1c9b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000b90c1c9b from memory into f13
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffff0ffffc00 from memory into f26
fdiv.h f5, f13, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x53833320 # load x3 with 32 MSBs 0x0000000053833320
sw x3, 0(x2) # store x3 (0x53833320) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000053833320
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000053833320 from memory into f24
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffeffffffff7e00 from memory into f23
fdiv.h f1, f24, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x864ca09a # load x3 with 32 MSBs 0x00000000864ca09a
sw x3, 0(x2) # store x3 (0x864ca09a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000864ca09a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000864ca09a from memory into f23
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffefffff7fff from memory into f15
fdiv.h f22, f23, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x39d91a57 # load x3 with 32 MSBs 0x0000000039d91a57
sw x3, 0(x2) # store x3 (0x39d91a57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039d91a57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000039d91a57 from memory into f19
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f12
fdiv.h f6, f19, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x2e3d26cd # load x3 with 32 MSBs 0x000000002e3d26cd
sw x3, 0(x2) # store x3 (0x2e3d26cd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002e3d26cd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000002e3d26cd from memory into f7
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffffcffff7dff from memory into f3
fdiv.h f6, f7, f3 # perform operation

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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff00000000 from memory into f22
fcvt.wu.h x31, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfffffffffffe8000 from memory into f16
fcvt.wu.h x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
fcvt.wu.h x1, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfeedbee5beefbc00 from memory into f30
fcvt.wu.h x9, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffefffff0400 from memory into f15
fcvt.wu.h x16, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ffff8400 from memory into f26
fcvt.wu.h x13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xefffffffffff7bff from memory into f21
fcvt.wu.h x23, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xc0dec0dec0defbff from memory into f17
fcvt.wu.h x27, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f30
fcvt.wu.h x5, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffff0ffffc00 from memory into f15
fcvt.wu.h x28, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffeffffffff7e00 from memory into f25
fcvt.wu.h x9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffefffff7fff from memory into f3
fcvt.wu.h x1, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
fcvt.wu.h x10, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffffcffff7dff from memory into f8
fcvt.wu.h x3, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 52)

#.EQU SIGSIZE,56


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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff00000000 from memory into f22
la x2, scratch
li x3, 0xcb11faa6 # load x3 with 32 MSBs 0x00000000cb11faa6
sw x3, 0(x2) # store x3 (0xcb11faa6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb11faa6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000cb11faa6 from memory into f13
fle.h x8, f22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfffffffffffe8000 from memory into f16
la x2, scratch
li x3, 0x6752243f # load x3 with 32 MSBs 0x000000006752243f
sw x3, 0(x2) # store x3 (0x6752243f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006752243f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000006752243f from memory into f2
fle.h x26, f16, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
la x2, scratch
li x3, 0x39d94e86 # load x3 with 32 MSBs 0x0000000039d94e86
sw x3, 0(x2) # store x3 (0x39d94e86) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039d94e86
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000039d94e86 from memory into f29
fle.h x31, f13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
la x2, scratch
li x3, 0xa8068b6c # load x3 with 32 MSBs 0x00000000a8068b6c
sw x3, 0(x2) # store x3 (0xa8068b6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a8068b6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000a8068b6c from memory into f19
fle.h x17, f26, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xffffffefffff0400 from memory into f12
la x2, scratch
li x3, 0xb641e271 # load x3 with 32 MSBs 0x00000000b641e271
sw x3, 0(x2) # store x3 (0xb641e271) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b641e271
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b641e271 from memory into f3
fle.h x25, f12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ffff8400 from memory into f22
la x2, scratch
li x3, 0xa676ada7 # load x3 with 32 MSBs 0x00000000a676ada7
sw x3, 0(x2) # store x3 (0xa676ada7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a676ada7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a676ada7 from memory into f3
fle.h x5, f22, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0x3f771f47 # load x3 with 32 MSBs 0x000000003f771f47
sw x3, 0(x2) # store x3 (0x3f771f47) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f771f47
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000003f771f47 from memory into f2
fle.h x23, f12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xc0dec0dec0defbff from memory into f24
la x2, scratch
li x3, 0xbe41b675 # load x3 with 32 MSBs 0x00000000be41b675
sw x3, 0(x2) # store x3 (0xbe41b675) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000be41b675
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000be41b675 from memory into f5
fle.h x21, f24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f24
la x2, scratch
li x3, 0x0d3ccc2a # load x3 with 32 MSBs 0x000000000d3ccc2a
sw x3, 0(x2) # store x3 (0x0d3ccc2a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d3ccc2a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000000d3ccc2a from memory into f8
fle.h x11, f24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffff0ffffc00 from memory into f31
la x2, scratch
li x3, 0x6cedf375 # load x3 with 32 MSBs 0x000000006cedf375
sw x3, 0(x2) # store x3 (0x6cedf375) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006cedf375
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006cedf375 from memory into f19
fle.h x17, f31, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
la x2, scratch
li x3, 0xb513e174 # load x3 with 32 MSBs 0x00000000b513e174
sw x3, 0(x2) # store x3 (0xb513e174) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b513e174
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b513e174 from memory into f3
fle.h x18, f2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffffefffff7fff from memory into f17
la x2, scratch
li x3, 0xd9899361 # load x3 with 32 MSBs 0x00000000d9899361
sw x3, 0(x2) # store x3 (0xd9899361) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d9899361
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000d9899361 from memory into f8
fle.h x16, f17, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f24
la x2, scratch
li x3, 0x049c6b51 # load x3 with 32 MSBs 0x00000000049c6b51
sw x3, 0(x2) # store x3 (0x049c6b51) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000049c6b51
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000049c6b51 from memory into f21
fle.h x31, f24, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffffcffff7dff from memory into f25
la x2, scratch
li x3, 0x7b20fa25 # load x3 with 32 MSBs 0x000000007b20fa25
sw x3, 0(x2) # store x3 (0x7b20fa25) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007b20fa25
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000007b20fa25 from memory into f19
fle.h x5, f25, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xd915a2c5 # load x3 with 32 MSBs 0x00000000d915a2c5
sw x3, 0(x2) # store x3 (0xd915a2c5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d915a2c5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000d915a2c5 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
fle.h x15, f29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x93784e84 # load x3 with 32 MSBs 0x0000000093784e84
sw x3, 0(x2) # store x3 (0x93784e84) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000093784e84
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000093784e84 from memory into f19
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffffffffe8000 from memory into f8
fle.h x12, f19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x3526d1f0 # load x3 with 32 MSBs 0x000000003526d1f0
sw x3, 0(x2) # store x3 (0x3526d1f0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003526d1f0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000003526d1f0 from memory into f18
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fffffffffff3c00 from memory into f26
fle.h x12, f18, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xe536d082 # load x3 with 32 MSBs 0x00000000e536d082
sw x3, 0(x2) # store x3 (0xe536d082) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e536d082
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000e536d082 from memory into f1
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
fle.h x23, f1, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x8beb8e69 # load x3 with 32 MSBs 0x000000008beb8e69
sw x3, 0(x2) # store x3 (0x8beb8e69) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008beb8e69
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000008beb8e69 from memory into f8
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffffefffff0400 from memory into f24
fle.h x29, f8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x970cb2d5 # load x3 with 32 MSBs 0x00000000970cb2d5
sw x3, 0(x2) # store x3 (0x970cb2d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000970cb2d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000970cb2d5 from memory into f18
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000ffff8400 from memory into f5
fle.h x23, f18, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xe99448e1 # load x3 with 32 MSBs 0x00000000e99448e1
sw x3, 0(x2) # store x3 (0xe99448e1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e99448e1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000e99448e1 from memory into f31
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xefffffffffff7bff from memory into f21
fle.h x12, f31, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xd4d23b7a # load x3 with 32 MSBs 0x00000000d4d23b7a
sw x3, 0(x2) # store x3 (0xd4d23b7a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d4d23b7a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000d4d23b7a from memory into f24
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc0dec0dec0defbff from memory into f8
fle.h x25, f24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x4013fb6c # load x3 with 32 MSBs 0x000000004013fb6c
sw x3, 0(x2) # store x3 (0x4013fb6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004013fb6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000004013fb6c from memory into f1
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f16
fle.h x15, f1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xdac56e36 # load x3 with 32 MSBs 0x00000000dac56e36
sw x3, 0(x2) # store x3 (0xdac56e36) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dac56e36
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000dac56e36 from memory into f22
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffffffff0ffffc00 from memory into f2
fle.h x12, f22, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x04098ed0 # load x3 with 32 MSBs 0x0000000004098ed0
sw x3, 0(x2) # store x3 (0x04098ed0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000004098ed0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000004098ed0 from memory into f31
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfffeffffffff7e00 from memory into f1
fle.h x16, f31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x947845e5 # load x3 with 32 MSBs 0x00000000947845e5
sw x3, 0(x2) # store x3 (0x947845e5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000947845e5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000947845e5 from memory into f8
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffefffff7fff from memory into f15
fle.h x25, f8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xfe186e54 # load x3 with 32 MSBs 0x00000000fe186e54
sw x3, 0(x2) # store x3 (0xfe186e54) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe186e54
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000fe186e54 from memory into f6
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f20
fle.h x5, f6, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xc76cdbb1 # load x3 with 32 MSBs 0x00000000c76cdbb1
sw x3, 0(x2) # store x3 (0xc76cdbb1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c76cdbb1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000c76cdbb1 from memory into f15
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffffcffff7dff from memory into f25
fle.h x9, f15, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 108)

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
li x3, 0x00000000e89ffdc4 # load x3 with value 0x00000000e89ffdc4
sw x3, 0(x2) # store 0x00000000e89ffdc4 in memory
flh f3, 0(x2) # load 0x00000000e89ffdc4 from memory into f3
la x2, scratch
li x3, 0x00000000c2d60e4f # load x3 with value 0x00000000c2d60e4f
sw x3, 0(x2) # store 0x00000000c2d60e4f in memory
flh f23, 0(x2) # load 0x00000000c2d60e4f from memory into f23
la x2, scratch
li x3, 0x00000000b25f0756 # load x3 with value 0x00000000b25f0756
sw x3, 0(x2) # store 0x00000000b25f0756 in memory
flh f30, 0(x2) # load 0x00000000b25f0756 from memory into f30
fmsub.h f19, f3, f23, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffff00000000 from memory into f5
la x2, scratch
li x3, 0xf833a8d4 # load x3 with 32 MSBs 0x00000000f833a8d4
sw x3, 0(x2) # store x3 (0xf833a8d4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f833a8d4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000f833a8d4 from memory into f2
la x2, scratch
li x3, 0xa0b9c097 # load x3 with 32 MSBs 0x00000000a0b9c097
sw x3, 0(x2) # store x3 (0xa0b9c097) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0b9c097
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000a0b9c097 from memory into f26
fmsub.h f7, f5, f2, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffffffe8000 from memory into f5
la x2, scratch
li x3, 0xadc8d72f # load x3 with 32 MSBs 0x00000000adc8d72f
sw x3, 0(x2) # store x3 (0xadc8d72f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000adc8d72f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000adc8d72f from memory into f20
la x2, scratch
li x3, 0x74cc90fa # load x3 with 32 MSBs 0x0000000074cc90fa
sw x3, 0(x2) # store x3 (0x74cc90fa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000074cc90fa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000074cc90fa from memory into f3
fmsub.h f26, f5, f20, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7fffffffffff3c00 from memory into f14
la x2, scratch
li x3, 0x0d7ee77e # load x3 with 32 MSBs 0x000000000d7ee77e
sw x3, 0(x2) # store x3 (0x0d7ee77e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d7ee77e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000000d7ee77e from memory into f21
la x2, scratch
li x3, 0xd7c1b187 # load x3 with 32 MSBs 0x00000000d7c1b187
sw x3, 0(x2) # store x3 (0xd7c1b187) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d7c1b187
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000d7c1b187 from memory into f25
fmsub.h f15, f14, f21, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfeedbee5beefbc00 from memory into f31
la x2, scratch
li x3, 0xfcbea18d # load x3 with 32 MSBs 0x00000000fcbea18d
sw x3, 0(x2) # store x3 (0xfcbea18d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fcbea18d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000fcbea18d from memory into f25
la x2, scratch
li x3, 0x1f8b5cbf # load x3 with 32 MSBs 0x000000001f8b5cbf
sw x3, 0(x2) # store x3 (0x1f8b5cbf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f8b5cbf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000001f8b5cbf from memory into f11
fmsub.h f13, f31, f25, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffffffefffff0400 from memory into f19
la x2, scratch
li x3, 0xbaf40b15 # load x3 with 32 MSBs 0x00000000baf40b15
sw x3, 0(x2) # store x3 (0xbaf40b15) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000baf40b15
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000baf40b15 from memory into f30
la x2, scratch
li x3, 0xbf454501 # load x3 with 32 MSBs 0x00000000bf454501
sw x3, 0(x2) # store x3 (0xbf454501) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf454501
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000bf454501 from memory into f13
fmsub.h f2, f19, f30, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000ffff8400 from memory into f14
la x2, scratch
li x3, 0x525e75cc # load x3 with 32 MSBs 0x00000000525e75cc
sw x3, 0(x2) # store x3 (0x525e75cc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000525e75cc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000525e75cc from memory into f12
la x2, scratch
li x3, 0xeb4329fe # load x3 with 32 MSBs 0x00000000eb4329fe
sw x3, 0(x2) # store x3 (0xeb4329fe) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb4329fe
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000eb4329fe from memory into f24
fmsub.h f6, f14, f12, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xefffffffffff7bff from memory into f24
la x2, scratch
li x3, 0x1f6c3189 # load x3 with 32 MSBs 0x000000001f6c3189
sw x3, 0(x2) # store x3 (0x1f6c3189) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f6c3189
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000001f6c3189 from memory into f3
la x2, scratch
li x3, 0x62779caf # load x3 with 32 MSBs 0x0000000062779caf
sw x3, 0(x2) # store x3 (0x62779caf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000062779caf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000062779caf from memory into f19
fmsub.h f1, f24, f3, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc0dec0dec0defbff from memory into f8
la x2, scratch
li x3, 0x98000d89 # load x3 with 32 MSBs 0x0000000098000d89
sw x3, 0(x2) # store x3 (0x98000d89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000098000d89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000098000d89 from memory into f30
la x2, scratch
li x3, 0x9387d36f # load x3 with 32 MSBs 0x000000009387d36f
sw x3, 0(x2) # store x3 (0x9387d36f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009387d36f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000009387d36f from memory into f21
fmsub.h f28, f8, f30, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f28
la x2, scratch
li x3, 0x2080304f # load x3 with 32 MSBs 0x000000002080304f
sw x3, 0(x2) # store x3 (0x2080304f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002080304f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000002080304f from memory into f16
la x2, scratch
li x3, 0x6da36d95 # load x3 with 32 MSBs 0x000000006da36d95
sw x3, 0(x2) # store x3 (0x6da36d95) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006da36d95
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000006da36d95 from memory into f18
fmsub.h f8, f28, f16, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
la x2, scratch
li x3, 0x10c4db8c # load x3 with 32 MSBs 0x0000000010c4db8c
sw x3, 0(x2) # store x3 (0x10c4db8c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000010c4db8c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000010c4db8c from memory into f6
la x2, scratch
li x3, 0xac4f1811 # load x3 with 32 MSBs 0x00000000ac4f1811
sw x3, 0(x2) # store x3 (0xac4f1811) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ac4f1811
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000ac4f1811 from memory into f12
fmsub.h f19, f30, f6, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfffeffffffff7e00 from memory into f26
la x2, scratch
li x3, 0xc6b30c32 # load x3 with 32 MSBs 0x00000000c6b30c32
sw x3, 0(x2) # store x3 (0xc6b30c32) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c6b30c32
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000c6b30c32 from memory into f23
la x2, scratch
li x3, 0x7aba87bb # load x3 with 32 MSBs 0x000000007aba87bb
sw x3, 0(x2) # store x3 (0x7aba87bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007aba87bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000007aba87bb from memory into f30
fmsub.h f24, f26, f23, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffefffff7fff from memory into f14
la x2, scratch
li x3, 0x9ae2d02a # load x3 with 32 MSBs 0x000000009ae2d02a
sw x3, 0(x2) # store x3 (0x9ae2d02a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009ae2d02a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000009ae2d02a from memory into f27
la x2, scratch
li x3, 0x4eeb1576 # load x3 with 32 MSBs 0x000000004eeb1576
sw x3, 0(x2) # store x3 (0x4eeb1576) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004eeb1576
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000004eeb1576 from memory into f29
fmsub.h f1, f14, f27, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f7
la x2, scratch
li x3, 0x662050b0 # load x3 with 32 MSBs 0x00000000662050b0
sw x3, 0(x2) # store x3 (0x662050b0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000662050b0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000662050b0 from memory into f27
la x2, scratch
li x3, 0x41eacdbf # load x3 with 32 MSBs 0x0000000041eacdbf
sw x3, 0(x2) # store x3 (0x41eacdbf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000041eacdbf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000041eacdbf from memory into f31
fmsub.h f9, f7, f27, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffffffcffff7dff from memory into f9
la x2, scratch
li x3, 0xf3015351 # load x3 with 32 MSBs 0x00000000f3015351
sw x3, 0(x2) # store x3 (0xf3015351) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f3015351
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000f3015351 from memory into f16
la x2, scratch
li x3, 0x00c5922a # load x3 with 32 MSBs 0x0000000000c5922a
sw x3, 0(x2) # store x3 (0x00c5922a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000c5922a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000000c5922a from memory into f29
fmsub.h f11, f9, f16, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x39c10877 # load x3 with 32 MSBs 0x0000000039c10877
sw x3, 0(x2) # store x3 (0x39c10877) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039c10877
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000039c10877 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffff00000000 from memory into f1
la x2, scratch
li x3, 0x06771cb2 # load x3 with 32 MSBs 0x0000000006771cb2
sw x3, 0(x2) # store x3 (0x06771cb2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000006771cb2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000006771cb2 from memory into f12
fmsub.h f23, f13, f1, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x9a173a4b # load x3 with 32 MSBs 0x000000009a173a4b
sw x3, 0(x2) # store x3 (0x9a173a4b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009a173a4b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000009a173a4b from memory into f8
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffffffffffe8000 from memory into f23
la x2, scratch
li x3, 0x63efee9e # load x3 with 32 MSBs 0x0000000063efee9e
sw x3, 0(x2) # store x3 (0x63efee9e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000063efee9e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000063efee9e from memory into f28
fmsub.h f12, f8, f23, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x5be5d7aa # load x3 with 32 MSBs 0x000000005be5d7aa
sw x3, 0(x2) # store x3 (0x5be5d7aa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005be5d7aa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000005be5d7aa from memory into f9
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fffffffffff3c00 from memory into f2
la x2, scratch
li x3, 0x4be40625 # load x3 with 32 MSBs 0x000000004be40625
sw x3, 0(x2) # store x3 (0x4be40625) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004be40625
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000004be40625 from memory into f16
fmsub.h f14, f9, f2, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xfa748808 # load x3 with 32 MSBs 0x00000000fa748808
sw x3, 0(x2) # store x3 (0xfa748808) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fa748808
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000fa748808 from memory into f1
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfeedbee5beefbc00 from memory into f27
la x2, scratch
li x3, 0x55db302f # load x3 with 32 MSBs 0x0000000055db302f
sw x3, 0(x2) # store x3 (0x55db302f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055db302f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000055db302f from memory into f20
fmsub.h f21, f1, f27, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xe6adf1db # load x3 with 32 MSBs 0x00000000e6adf1db
sw x3, 0(x2) # store x3 (0xe6adf1db) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e6adf1db
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000e6adf1db from memory into f22
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffefffff0400 from memory into f11
la x2, scratch
li x3, 0x7a3dff14 # load x3 with 32 MSBs 0x000000007a3dff14
sw x3, 0(x2) # store x3 (0x7a3dff14) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007a3dff14
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000007a3dff14 from memory into f16
fmsub.h f6, f22, f11, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xab5cb5bd # load x3 with 32 MSBs 0x00000000ab5cb5bd
sw x3, 0(x2) # store x3 (0xab5cb5bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ab5cb5bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ab5cb5bd from memory into f21
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000ffff8400 from memory into f25
la x2, scratch
li x3, 0x18264b81 # load x3 with 32 MSBs 0x0000000018264b81
sw x3, 0(x2) # store x3 (0x18264b81) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000018264b81
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000018264b81 from memory into f8
fmsub.h f26, f21, f25, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x2b77f90d # load x3 with 32 MSBs 0x000000002b77f90d
sw x3, 0(x2) # store x3 (0x2b77f90d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002b77f90d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000002b77f90d from memory into f14
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xefffffffffff7bff from memory into f13
la x2, scratch
li x3, 0x627dbd7e # load x3 with 32 MSBs 0x00000000627dbd7e
sw x3, 0(x2) # store x3 (0x627dbd7e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000627dbd7e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000627dbd7e from memory into f5
fmsub.h f23, f14, f13, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xa8403b7f # load x3 with 32 MSBs 0x00000000a8403b7f
sw x3, 0(x2) # store x3 (0xa8403b7f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a8403b7f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000a8403b7f from memory into f15
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xc0dec0dec0defbff from memory into f3
la x2, scratch
li x3, 0x50658dce # load x3 with 32 MSBs 0x0000000050658dce
sw x3, 0(x2) # store x3 (0x50658dce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000050658dce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000050658dce from memory into f23
fmsub.h f21, f15, f3, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xf224438a # load x3 with 32 MSBs 0x00000000f224438a
sw x3, 0(x2) # store x3 (0xf224438a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f224438a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000f224438a from memory into f24
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f2
la x2, scratch
li x3, 0xed09eb29 # load x3 with 32 MSBs 0x00000000ed09eb29
sw x3, 0(x2) # store x3 (0xed09eb29) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ed09eb29
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ed09eb29 from memory into f23
fmsub.h f31, f24, f2, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xf3a3068e # load x3 with 32 MSBs 0x00000000f3a3068e
sw x3, 0(x2) # store x3 (0xf3a3068e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f3a3068e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000f3a3068e from memory into f25
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
la x2, scratch
li x3, 0xc38babd4 # load x3 with 32 MSBs 0x00000000c38babd4
sw x3, 0(x2) # store x3 (0xc38babd4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c38babd4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000c38babd4 from memory into f2
fmsub.h f26, f25, f30, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x035a1392 # load x3 with 32 MSBs 0x00000000035a1392
sw x3, 0(x2) # store x3 (0x035a1392) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000035a1392
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000035a1392 from memory into f26
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffeffffffff7e00 from memory into f7
la x2, scratch
li x3, 0x641ed85c # load x3 with 32 MSBs 0x00000000641ed85c
sw x3, 0(x2) # store x3 (0x641ed85c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000641ed85c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000641ed85c from memory into f2
fmsub.h f13, f26, f7, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x457d5eae # load x3 with 32 MSBs 0x00000000457d5eae
sw x3, 0(x2) # store x3 (0x457d5eae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000457d5eae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000457d5eae from memory into f3
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffffffefffff7fff from memory into f18
la x2, scratch
li x3, 0x8f71c434 # load x3 with 32 MSBs 0x000000008f71c434
sw x3, 0(x2) # store x3 (0x8f71c434) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008f71c434
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000008f71c434 from memory into f6
fmsub.h f31, f3, f18, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xcc2bc54a # load x3 with 32 MSBs 0x00000000cc2bc54a
sw x3, 0(x2) # store x3 (0xcc2bc54a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cc2bc54a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000cc2bc54a from memory into f12
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
la x2, scratch
li x3, 0x43dac0c2 # load x3 with 32 MSBs 0x0000000043dac0c2
sw x3, 0(x2) # store x3 (0x43dac0c2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000043dac0c2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000043dac0c2 from memory into f11
fmsub.h f18, f12, f3, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x318cd05a # load x3 with 32 MSBs 0x00000000318cd05a
sw x3, 0(x2) # store x3 (0x318cd05a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000318cd05a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000318cd05a from memory into f15
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffffffcffff7dff from memory into f29
la x2, scratch
li x3, 0xd990d993 # load x3 with 32 MSBs 0x00000000d990d993
sw x3, 0(x2) # store x3 (0xd990d993) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d990d993
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000d990d993 from memory into f7
fmsub.h f28, f15, f29, f7 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x662a1e75 # load x3 with 32 MSBs 0x00000000662a1e75
sw x3, 0(x2) # store x3 (0x662a1e75) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000662a1e75
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000662a1e75 from memory into f14
la x2, scratch
li x3, 0x4c3496e5 # load x3 with 32 MSBs 0x000000004c3496e5
sw x3, 0(x2) # store x3 (0x4c3496e5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004c3496e5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000004c3496e5 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffffffff00000000 from memory into f25
fmsub.h f22, f14, f11, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x225bddd5 # load x3 with 32 MSBs 0x00000000225bddd5
sw x3, 0(x2) # store x3 (0x225bddd5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000225bddd5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000225bddd5 from memory into f17
la x2, scratch
li x3, 0x277615fd # load x3 with 32 MSBs 0x00000000277615fd
sw x3, 0(x2) # store x3 (0x277615fd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000277615fd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000277615fd from memory into f1
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffffffffe8000 from memory into f3
fmsub.h f25, f17, f1, f3 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xad09a1ff # load x3 with 32 MSBs 0x00000000ad09a1ff
sw x3, 0(x2) # store x3 (0xad09a1ff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ad09a1ff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000ad09a1ff from memory into f6
la x2, scratch
li x3, 0x1250a8ee # load x3 with 32 MSBs 0x000000001250a8ee
sw x3, 0(x2) # store x3 (0x1250a8ee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001250a8ee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000001250a8ee from memory into f31
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7fffffffffff3c00 from memory into f12
fmsub.h f17, f6, f31, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xd673718c # load x3 with 32 MSBs 0x00000000d673718c
sw x3, 0(x2) # store x3 (0xd673718c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d673718c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000d673718c from memory into f11
la x2, scratch
li x3, 0xef209fdf # load x3 with 32 MSBs 0x00000000ef209fdf
sw x3, 0(x2) # store x3 (0xef209fdf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ef209fdf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000ef209fdf from memory into f6
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
fmsub.h f29, f11, f6, f28 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x54ef99d0 # load x3 with 32 MSBs 0x0000000054ef99d0
sw x3, 0(x2) # store x3 (0x54ef99d0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000054ef99d0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000054ef99d0 from memory into f7
la x2, scratch
li x3, 0xdd70eeb4 # load x3 with 32 MSBs 0x00000000dd70eeb4
sw x3, 0(x2) # store x3 (0xdd70eeb4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dd70eeb4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000dd70eeb4 from memory into f14
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffffffefffff0400 from memory into f2
fmsub.h f28, f7, f14, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0x338b58b4 # load x3 with 32 MSBs 0x00000000338b58b4
sw x3, 0(x2) # store x3 (0x338b58b4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000338b58b4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000338b58b4 from memory into f24
la x2, scratch
li x3, 0x5366b699 # load x3 with 32 MSBs 0x000000005366b699
sw x3, 0(x2) # store x3 (0x5366b699) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005366b699
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000005366b699 from memory into f31
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000ffff8400 from memory into f20
fmsub.h f1, f24, f31, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xa5988b77 # load x3 with 32 MSBs 0x00000000a5988b77
sw x3, 0(x2) # store x3 (0xa5988b77) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a5988b77
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000a5988b77 from memory into f19
la x2, scratch
li x3, 0xa4ab9f15 # load x3 with 32 MSBs 0x00000000a4ab9f15
sw x3, 0(x2) # store x3 (0xa4ab9f15) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a4ab9f15
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a4ab9f15 from memory into f3
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
fmsub.h f11, f19, f3, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xbefbd9d5 # load x3 with 32 MSBs 0x00000000befbd9d5
sw x3, 0(x2) # store x3 (0xbefbd9d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000befbd9d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000befbd9d5 from memory into f6
la x2, scratch
li x3, 0x4fba39d1 # load x3 with 32 MSBs 0x000000004fba39d1
sw x3, 0(x2) # store x3 (0x4fba39d1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004fba39d1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000004fba39d1 from memory into f5
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
fmsub.h f17, f6, f5, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xdb0575cf # load x3 with 32 MSBs 0x00000000db0575cf
sw x3, 0(x2) # store x3 (0xdb0575cf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000db0575cf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000db0575cf from memory into f21
la x2, scratch
li x3, 0xd3094199 # load x3 with 32 MSBs 0x00000000d3094199
sw x3, 0(x2) # store x3 (0xd3094199) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d3094199
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000d3094199 from memory into f3
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f9
fmsub.h f13, f21, f3, f9 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x25962db3 # load x3 with 32 MSBs 0x0000000025962db3
sw x3, 0(x2) # store x3 (0x25962db3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000025962db3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000025962db3 from memory into f17
la x2, scratch
li x3, 0x817203f7 # load x3 with 32 MSBs 0x00000000817203f7
sw x3, 0(x2) # store x3 (0x817203f7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000817203f7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000817203f7 from memory into f6
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffff0ffffc00 from memory into f29
fmsub.h f31, f17, f6, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x68dcfc4f # load x3 with 32 MSBs 0x0000000068dcfc4f
sw x3, 0(x2) # store x3 (0x68dcfc4f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000068dcfc4f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000068dcfc4f from memory into f5
la x2, scratch
li x3, 0xcd21c258 # load x3 with 32 MSBs 0x00000000cd21c258
sw x3, 0(x2) # store x3 (0xcd21c258) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cd21c258
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000cd21c258 from memory into f3
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfffeffffffff7e00 from memory into f22
fmsub.h f18, f5, f3, f22 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x753d0cf9 # load x3 with 32 MSBs 0x00000000753d0cf9
sw x3, 0(x2) # store x3 (0x753d0cf9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000753d0cf9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000753d0cf9 from memory into f2
la x2, scratch
li x3, 0x38aa9e9d # load x3 with 32 MSBs 0x0000000038aa9e9d
sw x3, 0(x2) # store x3 (0x38aa9e9d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000038aa9e9d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000038aa9e9d from memory into f15
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffefffff7fff from memory into f27
fmsub.h f26, f2, f15, f27 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x6e2a3637 # load x3 with 32 MSBs 0x000000006e2a3637
sw x3, 0(x2) # store x3 (0x6e2a3637) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e2a3637
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000006e2a3637 from memory into f14
la x2, scratch
li x3, 0xe93b1db8 # load x3 with 32 MSBs 0x00000000e93b1db8
sw x3, 0(x2) # store x3 (0xe93b1db8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e93b1db8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000e93b1db8 from memory into f11
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f20
fmsub.h f29, f14, f11, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x87756de1 # load x3 with 32 MSBs 0x0000000087756de1
sw x3, 0(x2) # store x3 (0x87756de1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000087756de1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000087756de1 from memory into f3
la x2, scratch
li x3, 0x883214da # load x3 with 32 MSBs 0x00000000883214da
sw x3, 0(x2) # store x3 (0x883214da) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000883214da
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000883214da from memory into f6
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfffffffcffff7dff from memory into f27
fmsub.h f15, f3, f6, f27 # perform operation

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
li x3, 0x00000000b8a05293 # load x3 with value 0x00000000b8a05293
sw x3, 0(x2) # store 0x00000000b8a05293 in memory
flh f22, 0(x2) # load 0x00000000b8a05293 from memory into f22
la x2, scratch
li x3, 0x00000000d9e12afb # load x3 with value 0x00000000d9e12afb
sw x3, 0(x2) # store 0x00000000d9e12afb in memory
flh f19, 0(x2) # load 0x00000000d9e12afb from memory into f19
la x2, scratch
li x3, 0x00000000faa3dd9e # load x3 with value 0x00000000faa3dd9e
sw x3, 0(x2) # store 0x00000000faa3dd9e in memory
flh f18, 0(x2) # load 0x00000000faa3dd9e from memory into f18
fnmadd.h f16, f22, f19, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffff00000000 from memory into f10
la x2, scratch
li x3, 0x56daf007 # load x3 with 32 MSBs 0x0000000056daf007
sw x3, 0(x2) # store x3 (0x56daf007) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000056daf007
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000056daf007 from memory into f1
la x2, scratch
li x3, 0x21d2f251 # load x3 with 32 MSBs 0x0000000021d2f251
sw x3, 0(x2) # store x3 (0x21d2f251) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000021d2f251
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000021d2f251 from memory into f9
fnmadd.h f2, f10, f1, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfffffffffffe8000 from memory into f10
la x2, scratch
li x3, 0x0d31ce9a # load x3 with 32 MSBs 0x000000000d31ce9a
sw x3, 0(x2) # store x3 (0x0d31ce9a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d31ce9a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000000d31ce9a from memory into f3
la x2, scratch
li x3, 0x33eb15af # load x3 with 32 MSBs 0x0000000033eb15af
sw x3, 0(x2) # store x3 (0x33eb15af) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000033eb15af
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000033eb15af from memory into f24
fnmadd.h f19, f10, f3, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fffffffffff3c00 from memory into f16
la x2, scratch
li x3, 0x8fa0b62c # load x3 with 32 MSBs 0x000000008fa0b62c
sw x3, 0(x2) # store x3 (0x8fa0b62c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008fa0b62c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000008fa0b62c from memory into f13
la x2, scratch
li x3, 0xa937fa5b # load x3 with 32 MSBs 0x00000000a937fa5b
sw x3, 0(x2) # store x3 (0xa937fa5b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a937fa5b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000a937fa5b from memory into f8
fnmadd.h f18, f16, f13, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
la x2, scratch
li x3, 0x9dc33a62 # load x3 with 32 MSBs 0x000000009dc33a62
sw x3, 0(x2) # store x3 (0x9dc33a62) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009dc33a62
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000009dc33a62 from memory into f14
la x2, scratch
li x3, 0x80d12d31 # load x3 with 32 MSBs 0x0000000080d12d31
sw x3, 0(x2) # store x3 (0x80d12d31) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080d12d31
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000080d12d31 from memory into f26
fnmadd.h f7, f28, f14, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffefffff0400 from memory into f7
la x2, scratch
li x3, 0x6645ada6 # load x3 with 32 MSBs 0x000000006645ada6
sw x3, 0(x2) # store x3 (0x6645ada6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006645ada6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000006645ada6 from memory into f22
la x2, scratch
li x3, 0xf12c9aa3 # load x3 with 32 MSBs 0x00000000f12c9aa3
sw x3, 0(x2) # store x3 (0xf12c9aa3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f12c9aa3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000f12c9aa3 from memory into f6
fnmadd.h f5, f7, f22, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000ffff8400 from memory into f1
la x2, scratch
li x3, 0x5c0d9a36 # load x3 with 32 MSBs 0x000000005c0d9a36
sw x3, 0(x2) # store x3 (0x5c0d9a36) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005c0d9a36
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000005c0d9a36 from memory into f8
la x2, scratch
li x3, 0x61627f29 # load x3 with 32 MSBs 0x0000000061627f29
sw x3, 0(x2) # store x3 (0x61627f29) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000061627f29
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000061627f29 from memory into f3
fnmadd.h f5, f1, f8, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xefffffffffff7bff from memory into f20
la x2, scratch
li x3, 0x2db47cd7 # load x3 with 32 MSBs 0x000000002db47cd7
sw x3, 0(x2) # store x3 (0x2db47cd7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002db47cd7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000002db47cd7 from memory into f2
la x2, scratch
li x3, 0xd84b3bbf # load x3 with 32 MSBs 0x00000000d84b3bbf
sw x3, 0(x2) # store x3 (0xd84b3bbf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d84b3bbf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000d84b3bbf from memory into f9
fnmadd.h f6, f20, f2, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xc0dec0dec0defbff from memory into f20
la x2, scratch
li x3, 0x730fa5f2 # load x3 with 32 MSBs 0x00000000730fa5f2
sw x3, 0(x2) # store x3 (0x730fa5f2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000730fa5f2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000730fa5f2 from memory into f12
la x2, scratch
li x3, 0xd1a369b6 # load x3 with 32 MSBs 0x00000000d1a369b6
sw x3, 0(x2) # store x3 (0xd1a369b6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d1a369b6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000d1a369b6 from memory into f13
fnmadd.h f3, f20, f12, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f12
la x2, scratch
li x3, 0x9df92ace # load x3 with 32 MSBs 0x000000009df92ace
sw x3, 0(x2) # store x3 (0x9df92ace) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009df92ace
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000009df92ace from memory into f27
la x2, scratch
li x3, 0x82e53c6b # load x3 with 32 MSBs 0x0000000082e53c6b
sw x3, 0(x2) # store x3 (0x82e53c6b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000082e53c6b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000082e53c6b from memory into f9
fnmadd.h f2, f12, f27, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffff0ffffc00 from memory into f16
la x2, scratch
li x3, 0xb096f893 # load x3 with 32 MSBs 0x00000000b096f893
sw x3, 0(x2) # store x3 (0xb096f893) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b096f893
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000b096f893 from memory into f2
la x2, scratch
li x3, 0x175247b7 # load x3 with 32 MSBs 0x00000000175247b7
sw x3, 0(x2) # store x3 (0x175247b7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000175247b7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000175247b7 from memory into f28
fnmadd.h f19, f16, f2, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfffeffffffff7e00 from memory into f15
la x2, scratch
li x3, 0xb137d088 # load x3 with 32 MSBs 0x00000000b137d088
sw x3, 0(x2) # store x3 (0xb137d088) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b137d088
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b137d088 from memory into f19
la x2, scratch
li x3, 0xbb19bbe4 # load x3 with 32 MSBs 0x00000000bb19bbe4
sw x3, 0(x2) # store x3 (0xbb19bbe4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bb19bbe4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000bb19bbe4 from memory into f16
fnmadd.h f2, f15, f19, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffffffefffff7fff from memory into f25
la x2, scratch
li x3, 0xad227d81 # load x3 with 32 MSBs 0x00000000ad227d81
sw x3, 0(x2) # store x3 (0xad227d81) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ad227d81
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000ad227d81 from memory into f7
la x2, scratch
li x3, 0xa7ccb660 # load x3 with 32 MSBs 0x00000000a7ccb660
sw x3, 0(x2) # store x3 (0xa7ccb660) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a7ccb660
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000a7ccb660 from memory into f15
fnmadd.h f1, f25, f7, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f11
la x2, scratch
li x3, 0xadd09779 # load x3 with 32 MSBs 0x00000000add09779
sw x3, 0(x2) # store x3 (0xadd09779) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000add09779
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000add09779 from memory into f20
la x2, scratch
li x3, 0x635c0783 # load x3 with 32 MSBs 0x00000000635c0783
sw x3, 0(x2) # store x3 (0x635c0783) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000635c0783
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000635c0783 from memory into f25
fnmadd.h f1, f11, f20, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffcffff7dff from memory into f5
la x2, scratch
li x3, 0xe71098df # load x3 with 32 MSBs 0x00000000e71098df
sw x3, 0(x2) # store x3 (0xe71098df) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e71098df
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000e71098df from memory into f25
la x2, scratch
li x3, 0xf200b977 # load x3 with 32 MSBs 0x00000000f200b977
sw x3, 0(x2) # store x3 (0xf200b977) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f200b977
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000f200b977 from memory into f13
fnmadd.h f22, f5, f25, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xbf669d90 # load x3 with 32 MSBs 0x00000000bf669d90
sw x3, 0(x2) # store x3 (0xbf669d90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf669d90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000bf669d90 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffffffff00000000 from memory into f19
la x2, scratch
li x3, 0x788281a8 # load x3 with 32 MSBs 0x00000000788281a8
sw x3, 0(x2) # store x3 (0x788281a8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000788281a8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000788281a8 from memory into f8
fnmadd.h f16, f10, f19, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x40046580 # load x3 with 32 MSBs 0x0000000040046580
sw x3, 0(x2) # store x3 (0x40046580) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000040046580
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000040046580 from memory into f25
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfffffffffffe8000 from memory into f28
la x2, scratch
li x3, 0x5346d91d # load x3 with 32 MSBs 0x000000005346d91d
sw x3, 0(x2) # store x3 (0x5346d91d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005346d91d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000005346d91d from memory into f9
fnmadd.h f16, f25, f28, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xd7593081 # load x3 with 32 MSBs 0x00000000d7593081
sw x3, 0(x2) # store x3 (0xd7593081) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d7593081
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000d7593081 from memory into f22
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
la x2, scratch
li x3, 0xaa67750c # load x3 with 32 MSBs 0x00000000aa67750c
sw x3, 0(x2) # store x3 (0xaa67750c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa67750c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000aa67750c from memory into f26
fnmadd.h f6, f22, f13, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x2ad7f501 # load x3 with 32 MSBs 0x000000002ad7f501
sw x3, 0(x2) # store x3 (0x2ad7f501) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002ad7f501
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000002ad7f501 from memory into f14
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfeedbee5beefbc00 from memory into f24
la x2, scratch
li x3, 0x8e43b1a1 # load x3 with 32 MSBs 0x000000008e43b1a1
sw x3, 0(x2) # store x3 (0x8e43b1a1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008e43b1a1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000008e43b1a1 from memory into f15
fnmadd.h f22, f14, f24, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x09056344 # load x3 with 32 MSBs 0x0000000009056344
sw x3, 0(x2) # store x3 (0x09056344) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000009056344
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000009056344 from memory into f20
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffefffff0400 from memory into f22
la x2, scratch
li x3, 0x4e8c9a30 # load x3 with 32 MSBs 0x000000004e8c9a30
sw x3, 0(x2) # store x3 (0x4e8c9a30) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004e8c9a30
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000004e8c9a30 from memory into f8
fnmadd.h f3, f20, f22, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x9f8de9d5 # load x3 with 32 MSBs 0x000000009f8de9d5
sw x3, 0(x2) # store x3 (0x9f8de9d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009f8de9d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000009f8de9d5 from memory into f13
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000ffff8400 from memory into f18
la x2, scratch
li x3, 0x60c47f5a # load x3 with 32 MSBs 0x0000000060c47f5a
sw x3, 0(x2) # store x3 (0x60c47f5a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000060c47f5a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000060c47f5a from memory into f31
fnmadd.h f23, f13, f18, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x984434c8 # load x3 with 32 MSBs 0x00000000984434c8
sw x3, 0(x2) # store x3 (0x984434c8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000984434c8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000984434c8 from memory into f17
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xefffffffffff7bff from memory into f5
la x2, scratch
li x3, 0x86d47d44 # load x3 with 32 MSBs 0x0000000086d47d44
sw x3, 0(x2) # store x3 (0x86d47d44) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000086d47d44
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000086d47d44 from memory into f28
fnmadd.h f24, f17, f5, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x21e3df62 # load x3 with 32 MSBs 0x0000000021e3df62
sw x3, 0(x2) # store x3 (0x21e3df62) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000021e3df62
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000021e3df62 from memory into f8
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xc0dec0dec0defbff from memory into f13
la x2, scratch
li x3, 0x466c967e # load x3 with 32 MSBs 0x00000000466c967e
sw x3, 0(x2) # store x3 (0x466c967e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000466c967e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000466c967e from memory into f25
fnmadd.h f5, f8, f13, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x5c042ece # load x3 with 32 MSBs 0x000000005c042ece
sw x3, 0(x2) # store x3 (0x5c042ece) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005c042ece
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000005c042ece from memory into f22
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f1
la x2, scratch
li x3, 0x7c907b9f # load x3 with 32 MSBs 0x000000007c907b9f
sw x3, 0(x2) # store x3 (0x7c907b9f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007c907b9f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000007c907b9f from memory into f15
fnmadd.h f5, f22, f1, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x590d4b77 # load x3 with 32 MSBs 0x00000000590d4b77
sw x3, 0(x2) # store x3 (0x590d4b77) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000590d4b77
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000590d4b77 from memory into f6
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffff0ffffc00 from memory into f16
la x2, scratch
li x3, 0x408cceaa # load x3 with 32 MSBs 0x00000000408cceaa
sw x3, 0(x2) # store x3 (0x408cceaa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000408cceaa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000408cceaa from memory into f19
fnmadd.h f31, f6, f16, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xa10c700c # load x3 with 32 MSBs 0x00000000a10c700c
sw x3, 0(x2) # store x3 (0xa10c700c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a10c700c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000a10c700c from memory into f25
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
la x2, scratch
li x3, 0x6040ab4f # load x3 with 32 MSBs 0x000000006040ab4f
sw x3, 0(x2) # store x3 (0x6040ab4f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006040ab4f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000006040ab4f from memory into f26
fnmadd.h f24, f25, f2, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x5807685d # load x3 with 32 MSBs 0x000000005807685d
sw x3, 0(x2) # store x3 (0x5807685d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005807685d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000005807685d from memory into f12
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffffffefffff7fff from memory into f20
la x2, scratch
li x3, 0xb892a38c # load x3 with 32 MSBs 0x00000000b892a38c
sw x3, 0(x2) # store x3 (0xb892a38c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b892a38c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000b892a38c from memory into f23
fnmadd.h f26, f12, f20, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xc67f8b70 # load x3 with 32 MSBs 0x00000000c67f8b70
sw x3, 0(x2) # store x3 (0xc67f8b70) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c67f8b70
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000c67f8b70 from memory into f21
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f17
la x2, scratch
li x3, 0xf9029df9 # load x3 with 32 MSBs 0x00000000f9029df9
sw x3, 0(x2) # store x3 (0xf9029df9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f9029df9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000f9029df9 from memory into f23
fnmadd.h f29, f21, f17, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xe9dc47e4 # load x3 with 32 MSBs 0x00000000e9dc47e4
sw x3, 0(x2) # store x3 (0xe9dc47e4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e9dc47e4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e9dc47e4 from memory into f8
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
la x2, scratch
li x3, 0xd022d0dc # load x3 with 32 MSBs 0x00000000d022d0dc
sw x3, 0(x2) # store x3 (0xd022d0dc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d022d0dc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000d022d0dc from memory into f11
fnmadd.h f2, f8, f26, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x85edafcd # load x3 with 32 MSBs 0x0000000085edafcd
sw x3, 0(x2) # store x3 (0x85edafcd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000085edafcd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000085edafcd from memory into f19
la x2, scratch
li x3, 0x3edf156a # load x3 with 32 MSBs 0x000000003edf156a
sw x3, 0(x2) # store x3 (0x3edf156a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003edf156a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000003edf156a from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffff00000000 from memory into f10
fnmadd.h f11, f19, f7, f10 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x88e4e002 # load x3 with 32 MSBs 0x0000000088e4e002
sw x3, 0(x2) # store x3 (0x88e4e002) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000088e4e002
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000088e4e002 from memory into f5
la x2, scratch
li x3, 0xa106eb79 # load x3 with 32 MSBs 0x00000000a106eb79
sw x3, 0(x2) # store x3 (0xa106eb79) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a106eb79
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000a106eb79 from memory into f19
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffffffffe8000 from memory into f18
fnmadd.h f3, f5, f19, f18 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x946a1bca # load x3 with 32 MSBs 0x00000000946a1bca
sw x3, 0(x2) # store x3 (0x946a1bca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000946a1bca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000946a1bca from memory into f16
la x2, scratch
li x3, 0xfcca15dd # load x3 with 32 MSBs 0x00000000fcca15dd
sw x3, 0(x2) # store x3 (0xfcca15dd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fcca15dd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000fcca15dd from memory into f18
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fffffffffff3c00 from memory into f5
fnmadd.h f6, f16, f18, f5 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xfaff69b4 # load x3 with 32 MSBs 0x00000000faff69b4
sw x3, 0(x2) # store x3 (0xfaff69b4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000faff69b4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000faff69b4 from memory into f3
la x2, scratch
li x3, 0x6f7a0d20 # load x3 with 32 MSBs 0x000000006f7a0d20
sw x3, 0(x2) # store x3 (0x6f7a0d20) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006f7a0d20
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006f7a0d20 from memory into f19
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfeedbee5beefbc00 from memory into f7
fnmadd.h f5, f3, f19, f7 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xa7802e2a # load x3 with 32 MSBs 0x00000000a7802e2a
sw x3, 0(x2) # store x3 (0xa7802e2a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a7802e2a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000a7802e2a from memory into f2
la x2, scratch
li x3, 0x5041f09e # load x3 with 32 MSBs 0x000000005041f09e
sw x3, 0(x2) # store x3 (0x5041f09e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005041f09e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000005041f09e from memory into f28
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffefffff0400 from memory into f7
fnmadd.h f30, f2, f28, f7 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0x16cf9f48 # load x3 with 32 MSBs 0x0000000016cf9f48
sw x3, 0(x2) # store x3 (0x16cf9f48) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000016cf9f48
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000016cf9f48 from memory into f23
la x2, scratch
li x3, 0x2434e2b1 # load x3 with 32 MSBs 0x000000002434e2b1
sw x3, 0(x2) # store x3 (0x2434e2b1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002434e2b1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000002434e2b1 from memory into f20
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000ffff8400 from memory into f5
fnmadd.h f3, f23, f20, f5 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x376bd0f2 # load x3 with 32 MSBs 0x00000000376bd0f2
sw x3, 0(x2) # store x3 (0x376bd0f2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000376bd0f2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000376bd0f2 from memory into f31
la x2, scratch
li x3, 0xa0c3dfab # load x3 with 32 MSBs 0x00000000a0c3dfab
sw x3, 0(x2) # store x3 (0xa0c3dfab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0c3dfab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000a0c3dfab from memory into f30
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
fnmadd.h f18, f31, f30, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x5cf8d3ad # load x3 with 32 MSBs 0x000000005cf8d3ad
sw x3, 0(x2) # store x3 (0x5cf8d3ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005cf8d3ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000005cf8d3ad from memory into f10
la x2, scratch
li x3, 0xb352e333 # load x3 with 32 MSBs 0x00000000b352e333
sw x3, 0(x2) # store x3 (0xb352e333) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b352e333
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b352e333 from memory into f19
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xc0dec0dec0defbff from memory into f6
fnmadd.h f7, f10, f19, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xcaeafa4f # load x3 with 32 MSBs 0x00000000caeafa4f
sw x3, 0(x2) # store x3 (0xcaeafa4f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000caeafa4f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000caeafa4f from memory into f10
la x2, scratch
li x3, 0x8cdc8ab4 # load x3 with 32 MSBs 0x000000008cdc8ab4
sw x3, 0(x2) # store x3 (0x8cdc8ab4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008cdc8ab4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008cdc8ab4 from memory into f16
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f8
fnmadd.h f29, f10, f16, f8 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xf3f69264 # load x3 with 32 MSBs 0x00000000f3f69264
sw x3, 0(x2) # store x3 (0xf3f69264) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f3f69264
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000f3f69264 from memory into f17
la x2, scratch
li x3, 0x7738530f # load x3 with 32 MSBs 0x000000007738530f
sw x3, 0(x2) # store x3 (0x7738530f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007738530f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000007738530f from memory into f25
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffff0ffffc00 from memory into f10
fnmadd.h f29, f17, f25, f10 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x0c59ca6a # load x3 with 32 MSBs 0x000000000c59ca6a
sw x3, 0(x2) # store x3 (0x0c59ca6a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000c59ca6a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000000c59ca6a from memory into f24
la x2, scratch
li x3, 0xa5f98205 # load x3 with 32 MSBs 0x00000000a5f98205
sw x3, 0(x2) # store x3 (0xa5f98205) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a5f98205
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000a5f98205 from memory into f8
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfffeffffffff7e00 from memory into f31
fnmadd.h f28, f24, f8, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x362de0fe # load x3 with 32 MSBs 0x00000000362de0fe
sw x3, 0(x2) # store x3 (0x362de0fe) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000362de0fe
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000362de0fe from memory into f18
la x2, scratch
li x3, 0x914996ad # load x3 with 32 MSBs 0x00000000914996ad
sw x3, 0(x2) # store x3 (0x914996ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000914996ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000914996ad from memory into f31
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffefffff7fff from memory into f26
fnmadd.h f24, f18, f31, f26 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x2e6daeed # load x3 with 32 MSBs 0x000000002e6daeed
sw x3, 0(x2) # store x3 (0x2e6daeed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002e6daeed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000002e6daeed from memory into f16
la x2, scratch
li x3, 0xddfe52ee # load x3 with 32 MSBs 0x00000000ddfe52ee
sw x3, 0(x2) # store x3 (0xddfe52ee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ddfe52ee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000ddfe52ee from memory into f17
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f29
fnmadd.h f8, f16, f17, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xae3964cc # load x3 with 32 MSBs 0x00000000ae3964cc
sw x3, 0(x2) # store x3 (0xae3964cc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ae3964cc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000ae3964cc from memory into f10
la x2, scratch
li x3, 0x48dd44d9 # load x3 with 32 MSBs 0x0000000048dd44d9
sw x3, 0(x2) # store x3 (0x48dd44d9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000048dd44d9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000048dd44d9 from memory into f18
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfffffffcffff7dff from memory into f17
fnmadd.h f15, f10, f18, f17 # perform operation

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
add x11, x12, x18 # perform first operation
fcvt.h.d f14, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x9, x5 # perform first operation
fcvt.h.d f18, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x18, x30 # perform first operation
fcvt.h.d f16, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f27, f5, f13 # perform first operation
fcvt.h.d f10, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x14, x20 # perform first operation
fcvt.h.d f20, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x21, x30 # perform first operation
fcvt.h.d f30, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f11, f22 # perform first operation
fcvt.h.d f20, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f7, f26, f3 # perform first operation
fcvt.h.d f7, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f24, f14, f23 # perform first operation
fcvt.h.d f24, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f25, f5, f1 # perform first operation
fcvt.h.d f5, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f10, f27, f8 # perform first operation
fcvt.h.d f8, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f23, f2, f18 # perform first operation
fcvt.h.d f22, f10 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e74b255 # load x3 with 32 MSBs 0x000000005e74b255
sw x3, 0(x2) # store x3 (0x5e74b255) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005e74b255
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000005e74b255 from memory into f0
fcvt.h.d f14, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x575bb613 # load x3 with 32 MSBs 0x00000000575bb613
sw x3, 0(x2) # store x3 (0x575bb613) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000575bb613
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000575bb613 from memory into f1
fcvt.h.d f24, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5644e051 # load x3 with 32 MSBs 0x000000005644e051
sw x3, 0(x2) # store x3 (0x5644e051) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005644e051
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000005644e051 from memory into f2
fcvt.h.d f23, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbaa439f1 # load x3 with 32 MSBs 0x00000000baa439f1
sw x3, 0(x2) # store x3 (0xbaa439f1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000baa439f1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000baa439f1 from memory into f3
fcvt.h.d f23, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc04d3a9f # load x3 with 32 MSBs 0x00000000c04d3a9f
sw x3, 0(x2) # store x3 (0xc04d3a9f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c04d3a9f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000c04d3a9f from memory into f4
fcvt.h.d f19, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0bc1f152 # load x3 with 32 MSBs 0x000000000bc1f152
sw x3, 0(x2) # store x3 (0x0bc1f152) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000bc1f152
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000bc1f152 from memory into f5
fcvt.h.d f10, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x46f03afa # load x3 with 32 MSBs 0x0000000046f03afa
sw x3, 0(x2) # store x3 (0x46f03afa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000046f03afa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000046f03afa from memory into f6
fcvt.h.d f2, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x96c6024e # load x3 with 32 MSBs 0x0000000096c6024e
sw x3, 0(x2) # store x3 (0x96c6024e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000096c6024e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000096c6024e from memory into f7
fcvt.h.d f16, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x27931705 # load x3 with 32 MSBs 0x0000000027931705
sw x3, 0(x2) # store x3 (0x27931705) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027931705
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000027931705 from memory into f8
fcvt.h.d f2, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb72de4ec # load x3 with 32 MSBs 0x00000000b72de4ec
sw x3, 0(x2) # store x3 (0xb72de4ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b72de4ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000b72de4ec from memory into f9
fcvt.h.d f31, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf5f8e013 # load x3 with 32 MSBs 0x00000000f5f8e013
sw x3, 0(x2) # store x3 (0xf5f8e013) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f5f8e013
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000f5f8e013 from memory into f10
fcvt.h.d f8, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf0762e55 # load x3 with 32 MSBs 0x00000000f0762e55
sw x3, 0(x2) # store x3 (0xf0762e55) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f0762e55
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000f0762e55 from memory into f11
fcvt.h.d f20, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdace95bb # load x3 with 32 MSBs 0x00000000dace95bb
sw x3, 0(x2) # store x3 (0xdace95bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dace95bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000dace95bb from memory into f12
fcvt.h.d f25, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80d99d4a # load x3 with 32 MSBs 0x0000000080d99d4a
sw x3, 0(x2) # store x3 (0x80d99d4a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080d99d4a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000080d99d4a from memory into f13
fcvt.h.d f30, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f83e7bb # load x3 with 32 MSBs 0x000000000f83e7bb
sw x3, 0(x2) # store x3 (0x0f83e7bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000f83e7bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000000f83e7bb from memory into f14
fcvt.h.d f23, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x72f3184e # load x3 with 32 MSBs 0x0000000072f3184e
sw x3, 0(x2) # store x3 (0x72f3184e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000072f3184e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000072f3184e from memory into f15
fcvt.h.d f3, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x81943856 # load x3 with 32 MSBs 0x0000000081943856
sw x3, 0(x2) # store x3 (0x81943856) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000081943856
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000081943856 from memory into f16
fcvt.h.d f7, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5c1cb53b # load x3 with 32 MSBs 0x000000005c1cb53b
sw x3, 0(x2) # store x3 (0x5c1cb53b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005c1cb53b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000005c1cb53b from memory into f17
fcvt.h.d f6, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x901f56d7 # load x3 with 32 MSBs 0x00000000901f56d7
sw x3, 0(x2) # store x3 (0x901f56d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000901f56d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000901f56d7 from memory into f18
fcvt.h.d f8, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6d9edafd # load x3 with 32 MSBs 0x000000006d9edafd
sw x3, 0(x2) # store x3 (0x6d9edafd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006d9edafd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006d9edafd from memory into f19
fcvt.h.d f24, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5ee85ee # load x3 with 32 MSBs 0x00000000e5ee85ee
sw x3, 0(x2) # store x3 (0xe5ee85ee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e5ee85ee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e5ee85ee from memory into f20
fcvt.h.d f27, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb30e1299 # load x3 with 32 MSBs 0x00000000b30e1299
sw x3, 0(x2) # store x3 (0xb30e1299) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b30e1299
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000b30e1299 from memory into f21
fcvt.h.d f13, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3e34c189 # load x3 with 32 MSBs 0x000000003e34c189
sw x3, 0(x2) # store x3 (0x3e34c189) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003e34c189
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000003e34c189 from memory into f22
fcvt.h.d f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb2695b40 # load x3 with 32 MSBs 0x00000000b2695b40
sw x3, 0(x2) # store x3 (0xb2695b40) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b2695b40
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000b2695b40 from memory into f23
fcvt.h.d f18, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x512c3799 # load x3 with 32 MSBs 0x00000000512c3799
sw x3, 0(x2) # store x3 (0x512c3799) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000512c3799
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000512c3799 from memory into f24
fcvt.h.d f30, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe337e426 # load x3 with 32 MSBs 0x00000000e337e426
sw x3, 0(x2) # store x3 (0xe337e426) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e337e426
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000e337e426 from memory into f25
fcvt.h.d f21, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0833e815 # load x3 with 32 MSBs 0x000000000833e815
sw x3, 0(x2) # store x3 (0x0833e815) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000833e815
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000000833e815 from memory into f26
fcvt.h.d f19, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x85f10ad5 # load x3 with 32 MSBs 0x0000000085f10ad5
sw x3, 0(x2) # store x3 (0x85f10ad5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000085f10ad5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000085f10ad5 from memory into f27
fcvt.h.d f16, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x55e0d891 # load x3 with 32 MSBs 0x0000000055e0d891
sw x3, 0(x2) # store x3 (0x55e0d891) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055e0d891
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000055e0d891 from memory into f28
fcvt.h.d f12, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc11c3357 # load x3 with 32 MSBs 0x00000000c11c3357
sw x3, 0(x2) # store x3 (0xc11c3357) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c11c3357
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000c11c3357 from memory into f29
fcvt.h.d f21, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x75ef4664 # load x3 with 32 MSBs 0x0000000075ef4664
sw x3, 0(x2) # store x3 (0x75ef4664) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000075ef4664
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000075ef4664 from memory into f30
fcvt.h.d f31, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x246b3bab # load x3 with 32 MSBs 0x00000000246b3bab
sw x3, 0(x2) # store x3 (0x246b3bab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000246b3bab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000246b3bab from memory into f31
fcvt.h.d f26, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x078e1cbb # load x3 with 32 MSBs 0x00000000078e1cbb
sw x3, 0(x2) # store x3 (0x078e1cbb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000078e1cbb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000078e1cbb from memory into f24
fcvt.h.d f0, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc6bb236d # load x3 with 32 MSBs 0x00000000c6bb236d
sw x3, 0(x2) # store x3 (0xc6bb236d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c6bb236d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000c6bb236d from memory into f19
fcvt.h.d f1, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb47d9ab5 # load x3 with 32 MSBs 0x00000000b47d9ab5
sw x3, 0(x2) # store x3 (0xb47d9ab5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b47d9ab5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b47d9ab5 from memory into f19
fcvt.h.d f2, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6f7a2ff2 # load x3 with 32 MSBs 0x000000006f7a2ff2
sw x3, 0(x2) # store x3 (0x6f7a2ff2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006f7a2ff2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000006f7a2ff2 from memory into f3
fcvt.h.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2b0b2aec # load x3 with 32 MSBs 0x000000002b0b2aec
sw x3, 0(x2) # store x3 (0x2b0b2aec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002b0b2aec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000002b0b2aec from memory into f21
fcvt.h.d f4, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb8b51d98 # load x3 with 32 MSBs 0x00000000b8b51d98
sw x3, 0(x2) # store x3 (0xb8b51d98) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b8b51d98
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000b8b51d98 from memory into f23
fcvt.h.d f5, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0e5058cc # load x3 with 32 MSBs 0x000000000e5058cc
sw x3, 0(x2) # store x3 (0x0e5058cc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000e5058cc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000000e5058cc from memory into f28
fcvt.h.d f6, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x37f13baf # load x3 with 32 MSBs 0x0000000037f13baf
sw x3, 0(x2) # store x3 (0x37f13baf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037f13baf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000037f13baf from memory into f22
fcvt.h.d f7, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8eec8f02 # load x3 with 32 MSBs 0x000000008eec8f02
sw x3, 0(x2) # store x3 (0x8eec8f02) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008eec8f02
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000008eec8f02 from memory into f23
fcvt.h.d f8, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x17197b7e # load x3 with 32 MSBs 0x0000000017197b7e
sw x3, 0(x2) # store x3 (0x17197b7e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000017197b7e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000017197b7e from memory into f2
fcvt.h.d f9, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x07038586 # load x3 with 32 MSBs 0x0000000007038586
sw x3, 0(x2) # store x3 (0x07038586) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000007038586
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000007038586 from memory into f18
fcvt.h.d f10, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x60448713 # load x3 with 32 MSBs 0x0000000060448713
sw x3, 0(x2) # store x3 (0x60448713) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000060448713
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000060448713 from memory into f31
fcvt.h.d f11, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbed13a72 # load x3 with 32 MSBs 0x00000000bed13a72
sw x3, 0(x2) # store x3 (0xbed13a72) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bed13a72
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000bed13a72 from memory into f6
fcvt.h.d f12, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x81b6b266 # load x3 with 32 MSBs 0x0000000081b6b266
sw x3, 0(x2) # store x3 (0x81b6b266) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000081b6b266
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000081b6b266 from memory into f3
fcvt.h.d f13, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x632eec50 # load x3 with 32 MSBs 0x00000000632eec50
sw x3, 0(x2) # store x3 (0x632eec50) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000632eec50
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000632eec50 from memory into f12
fcvt.h.d f14, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa9355fdd # load x3 with 32 MSBs 0x00000000a9355fdd
sw x3, 0(x2) # store x3 (0xa9355fdd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a9355fdd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000a9355fdd from memory into f17
fcvt.h.d f15, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe8d2fb92 # load x3 with 32 MSBs 0x00000000e8d2fb92
sw x3, 0(x2) # store x3 (0xe8d2fb92) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e8d2fb92
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000e8d2fb92 from memory into f24
fcvt.h.d f16, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7b76ba54 # load x3 with 32 MSBs 0x000000007b76ba54
sw x3, 0(x2) # store x3 (0x7b76ba54) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007b76ba54
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000007b76ba54 from memory into f24
fcvt.h.d f17, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaf4b254f # load x3 with 32 MSBs 0x00000000af4b254f
sw x3, 0(x2) # store x3 (0xaf4b254f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000af4b254f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000af4b254f from memory into f22
fcvt.h.d f18, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x45cf8bed # load x3 with 32 MSBs 0x0000000045cf8bed
sw x3, 0(x2) # store x3 (0x45cf8bed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000045cf8bed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000045cf8bed from memory into f27
fcvt.h.d f19, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa39008c2 # load x3 with 32 MSBs 0x00000000a39008c2
sw x3, 0(x2) # store x3 (0xa39008c2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a39008c2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000a39008c2 from memory into f22
fcvt.h.d f20, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7add5cf0 # load x3 with 32 MSBs 0x000000007add5cf0
sw x3, 0(x2) # store x3 (0x7add5cf0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007add5cf0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000007add5cf0 from memory into f11
fcvt.h.d f21, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb41f60ec # load x3 with 32 MSBs 0x00000000b41f60ec
sw x3, 0(x2) # store x3 (0xb41f60ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b41f60ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000b41f60ec from memory into f9
fcvt.h.d f22, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5735e760 # load x3 with 32 MSBs 0x000000005735e760
sw x3, 0(x2) # store x3 (0x5735e760) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005735e760
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000005735e760 from memory into f20
fcvt.h.d f23, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4b58f750 # load x3 with 32 MSBs 0x000000004b58f750
sw x3, 0(x2) # store x3 (0x4b58f750) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004b58f750
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000004b58f750 from memory into f1
fcvt.h.d f24, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7da0b337 # load x3 with 32 MSBs 0x000000007da0b337
sw x3, 0(x2) # store x3 (0x7da0b337) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007da0b337
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000007da0b337 from memory into f11
fcvt.h.d f25, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x48638229 # load x3 with 32 MSBs 0x0000000048638229
sw x3, 0(x2) # store x3 (0x48638229) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000048638229
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000048638229 from memory into f10
fcvt.h.d f26, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x72bcf9c1 # load x3 with 32 MSBs 0x0000000072bcf9c1
sw x3, 0(x2) # store x3 (0x72bcf9c1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000072bcf9c1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000072bcf9c1 from memory into f22
fcvt.h.d f27, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x50241ef9 # load x3 with 32 MSBs 0x0000000050241ef9
sw x3, 0(x2) # store x3 (0x50241ef9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000050241ef9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000050241ef9 from memory into f20
fcvt.h.d f28, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xab6967e7 # load x3 with 32 MSBs 0x00000000ab6967e7
sw x3, 0(x2) # store x3 (0xab6967e7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ab6967e7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000ab6967e7 from memory into f7
fcvt.h.d f29, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc3d58e63 # load x3 with 32 MSBs 0x00000000c3d58e63
sw x3, 0(x2) # store x3 (0xc3d58e63) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c3d58e63
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000c3d58e63 from memory into f2
fcvt.h.d f30, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd8f6cd96 # load x3 with 32 MSBs 0x00000000d8f6cd96
sw x3, 0(x2) # store x3 (0xd8f6cd96) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d8f6cd96
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000d8f6cd96 from memory into f23
fcvt.h.d f31, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fcvt.h.d f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fcvt.h.d f28, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
fcvt.h.d f10, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
fcvt.h.d f15, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
fcvt.h.d f15, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fcvt.h.d f10, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
fcvt.h.d f19, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fcvt.h.d f12, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
fcvt.h.d f28, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fcvt.h.d f23, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
fcvt.h.d f25, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
fcvt.h.d f2, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fcvt.h.d f26, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fcvt.h.d f8, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fcvt.h.d f8, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
fcvt.h.d f17, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
fcvt.h.d f27, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
fcvt.h.d f27, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
fcvt.h.d f12, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fcvt.h.d f15, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fcvt.h.d f18, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fcvt.h.d f23, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff8000000000000 from memory into f13
fcvt.h.d f5, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fcvt.h.d f9, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
fcvt.h.d f22, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfff0000000000001 from memory into f1
fcvt.h.d f27, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
fcvt.h.d f21, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fcvt.h.d f8, f7 # perform operation second time to make sure flags don't change

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fcvt.h.d f5, f15, dyn # perform operation
fcvt.h.d f5, f15, rdn # perform operation
fcvt.h.d f5, f15, rmm # perform operation
fcvt.h.d f5, f15, rne # perform operation
fcvt.h.d f5, f15, rtz # perform operation
fcvt.h.d f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f5, f15 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
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


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fcvt.h.d f3, f27, dyn # perform operation
fcvt.h.d f3, f27, rdn # perform operation
fcvt.h.d f3, f27, rmm # perform operation
fcvt.h.d f3, f27, rne # perform operation
fcvt.h.d f3, f27, rtz # perform operation
fcvt.h.d f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f3, f27 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
fcvt.h.d f12, f21, dyn # perform operation
fcvt.h.d f12, f21, rdn # perform operation
fcvt.h.d f12, f21, rmm # perform operation
fcvt.h.d f12, f21, rne # perform operation
fcvt.h.d f12, f21, rtz # perform operation
fcvt.h.d f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f12, f21 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fcvt.h.d f13, f8, dyn # perform operation
fcvt.h.d f13, f8, rdn # perform operation
fcvt.h.d f13, f8, rmm # perform operation
fcvt.h.d f13, f8, rne # perform operation
fcvt.h.d f13, f8, rtz # perform operation
fcvt.h.d f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f13, f8 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
fcvt.h.d f29, f20, dyn # perform operation
fcvt.h.d f29, f20, rdn # perform operation
fcvt.h.d f29, f20, rmm # perform operation
fcvt.h.d f29, f20, rne # perform operation
fcvt.h.d f29, f20, rtz # perform operation
fcvt.h.d f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f29, f20 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
fcvt.h.d f2, f5, dyn # perform operation
fcvt.h.d f2, f5, rdn # perform operation
fcvt.h.d f2, f5, rmm # perform operation
fcvt.h.d f2, f5, rne # perform operation
fcvt.h.d f2, f5, rtz # perform operation
fcvt.h.d f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f2, f5 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
fcvt.h.d f28, f22, dyn # perform operation
fcvt.h.d f28, f22, rdn # perform operation
fcvt.h.d f28, f22, rmm # perform operation
fcvt.h.d f28, f22, rne # perform operation
fcvt.h.d f28, f22, rtz # perform operation
fcvt.h.d f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f28, f22 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fcvt.h.d f6, f14, dyn # perform operation
fcvt.h.d f6, f14, rdn # perform operation
fcvt.h.d f6, f14, rmm # perform operation
fcvt.h.d f6, f14, rne # perform operation
fcvt.h.d f6, f14, rtz # perform operation
fcvt.h.d f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f6, f14 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
fcvt.h.d f2, f30, dyn # perform operation
fcvt.h.d f2, f30, rdn # perform operation
fcvt.h.d f2, f30, rmm # perform operation
fcvt.h.d f2, f30, rne # perform operation
fcvt.h.d f2, f30, rtz # perform operation
fcvt.h.d f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f2, f30 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
fcvt.h.d f30, f24, dyn # perform operation
fcvt.h.d f30, f24, rdn # perform operation
fcvt.h.d f30, f24, rmm # perform operation
fcvt.h.d f30, f24, rne # perform operation
fcvt.h.d f30, f24, rtz # perform operation
fcvt.h.d f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f30, f24 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fcvt.h.d f10, f1, dyn # perform operation
fcvt.h.d f10, f1, rdn # perform operation
fcvt.h.d f10, f1, rmm # perform operation
fcvt.h.d f10, f1, rne # perform operation
fcvt.h.d f10, f1, rtz # perform operation
fcvt.h.d f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f10, f1 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fcvt.h.d f21, f9, dyn # perform operation
fcvt.h.d f21, f9, rdn # perform operation
fcvt.h.d f21, f9, rmm # perform operation
fcvt.h.d f21, f9, rne # perform operation
fcvt.h.d f21, f9, rtz # perform operation
fcvt.h.d f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f21, f9 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
fcvt.h.d f21, f1, dyn # perform operation
fcvt.h.d f21, f1, rdn # perform operation
fcvt.h.d f21, f1, rmm # perform operation
fcvt.h.d f21, f1, rne # perform operation
fcvt.h.d f21, f1, rtz # perform operation
fcvt.h.d f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f21, f1 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fcvt.h.d f16, f23, dyn # perform operation
fcvt.h.d f16, f23, rdn # perform operation
fcvt.h.d f16, f23, rmm # perform operation
fcvt.h.d f16, f23, rne # perform operation
fcvt.h.d f16, f23, rtz # perform operation
fcvt.h.d f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f16, f23 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
fcvt.h.d f29, f11, dyn # perform operation
fcvt.h.d f29, f11, rdn # perform operation
fcvt.h.d f29, f11, rmm # perform operation
fcvt.h.d f29, f11, rne # perform operation
fcvt.h.d f29, f11, rtz # perform operation
fcvt.h.d f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f29, f11 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fcvt.h.d f31, f12, dyn # perform operation
fcvt.h.d f31, f12, rdn # perform operation
fcvt.h.d f31, f12, rmm # perform operation
fcvt.h.d f31, f12, rne # perform operation
fcvt.h.d f31, f12, rtz # perform operation
fcvt.h.d f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f31, f12 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fcvt.h.d f2, f31, dyn # perform operation
fcvt.h.d f2, f31, rdn # perform operation
fcvt.h.d f2, f31, rmm # perform operation
fcvt.h.d f2, f31, rne # perform operation
fcvt.h.d f2, f31, rtz # perform operation
fcvt.h.d f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f2, f31 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
fcvt.h.d f18, f26, dyn # perform operation
fcvt.h.d f18, f26, rdn # perform operation
fcvt.h.d f18, f26, rmm # perform operation
fcvt.h.d f18, f26, rne # perform operation
fcvt.h.d f18, f26, rtz # perform operation
fcvt.h.d f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f18, f26 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fcvt.h.d f28, f17, dyn # perform operation
fcvt.h.d f28, f17, rdn # perform operation
fcvt.h.d f28, f17, rmm # perform operation
fcvt.h.d f28, f17, rne # perform operation
fcvt.h.d f28, f17, rtz # perform operation
fcvt.h.d f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f28, f17 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fcvt.h.d f20, f6, dyn # perform operation
fcvt.h.d f20, f6, rdn # perform operation
fcvt.h.d f20, f6, rmm # perform operation
fcvt.h.d f20, f6, rne # perform operation
fcvt.h.d f20, f6, rtz # perform operation
fcvt.h.d f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f20, f6 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fcvt.h.d f14, f9, dyn # perform operation
fcvt.h.d f14, f9, rdn # perform operation
fcvt.h.d f14, f9, rmm # perform operation
fcvt.h.d f14, f9, rne # perform operation
fcvt.h.d f14, f9, rtz # perform operation
fcvt.h.d f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f14, f9 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff8000000000000 from memory into f30
fcvt.h.d f6, f30, dyn # perform operation
fcvt.h.d f6, f30, rdn # perform operation
fcvt.h.d f6, f30, rmm # perform operation
fcvt.h.d f6, f30, rne # perform operation
fcvt.h.d f6, f30, rtz # perform operation
fcvt.h.d f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f6, f30 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fcvt.h.d f14, f6, dyn # perform operation
fcvt.h.d f14, f6, rdn # perform operation
fcvt.h.d f14, f6, rmm # perform operation
fcvt.h.d f14, f6, rne # perform operation
fcvt.h.d f14, f6, rtz # perform operation
fcvt.h.d f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f14, f6 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
fcvt.h.d f7, f10, dyn # perform operation
fcvt.h.d f7, f10, rdn # perform operation
fcvt.h.d f7, f10, rmm # perform operation
fcvt.h.d f7, f10, rne # perform operation
fcvt.h.d f7, f10, rtz # perform operation
fcvt.h.d f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f7, f10 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff0000000000001 from memory into f20
fcvt.h.d f9, f20, dyn # perform operation
fcvt.h.d f9, f20, rdn # perform operation
fcvt.h.d f9, f20, rmm # perform operation
fcvt.h.d f9, f20, rne # perform operation
fcvt.h.d f9, f20, rtz # perform operation
fcvt.h.d f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f9, f20 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fcvt.h.d f22, f21, dyn # perform operation
fcvt.h.d f22, f21, rdn # perform operation
fcvt.h.d f22, f21, rmm # perform operation
fcvt.h.d f22, f21, rne # perform operation
fcvt.h.d f22, f21, rtz # perform operation
fcvt.h.d f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f22, f21 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
fcvt.h.d f2, f1, dyn # perform operation
fcvt.h.d f2, f1, rdn # perform operation
fcvt.h.d f2, f1, rmm # perform operation
fcvt.h.d f2, f1, rne # perform operation
fcvt.h.d f2, f1, rtz # perform operation
fcvt.h.d f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f2, f1 # perform operation


# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe7d7a9e7 # load x3 with 32 MSBs 0x00000000e7d7a9e7
sw x3, 0(x2) # store x3 (0xe7d7a9e7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e7d7a9e7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000e7d7a9e7 from memory into f0
fcvt.h.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f7a261d # load x3 with 32 MSBs 0x000000003f7a261d
sw x3, 0(x2) # store x3 (0x3f7a261d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f7a261d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000003f7a261d from memory into f1
fcvt.h.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9e4db9b6 # load x3 with 32 MSBs 0x000000009e4db9b6
sw x3, 0(x2) # store x3 (0x9e4db9b6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009e4db9b6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000009e4db9b6 from memory into f2
fcvt.h.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9899287a # load x3 with 32 MSBs 0x000000009899287a
sw x3, 0(x2) # store x3 (0x9899287a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009899287a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000009899287a from memory into f3
fcvt.h.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800d9668 # load x3 with 32 MSBs 0x00000000800d9668
sw x3, 0(x2) # store x3 (0x800d9668) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000800d9668
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000800d9668 from memory into f4
fcvt.h.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c9f2779 # load x3 with 32 MSBs 0x000000009c9f2779
sw x3, 0(x2) # store x3 (0x9c9f2779) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009c9f2779
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000009c9f2779 from memory into f5
fcvt.h.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8df5f6c3 # load x3 with 32 MSBs 0x000000008df5f6c3
sw x3, 0(x2) # store x3 (0x8df5f6c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008df5f6c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000008df5f6c3 from memory into f6
fcvt.h.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ee02ad7 # load x3 with 32 MSBs 0x000000003ee02ad7
sw x3, 0(x2) # store x3 (0x3ee02ad7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ee02ad7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000003ee02ad7 from memory into f7
fcvt.h.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x86491f59 # load x3 with 32 MSBs 0x0000000086491f59
sw x3, 0(x2) # store x3 (0x86491f59) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000086491f59
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000086491f59 from memory into f8
fcvt.h.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe2f198d0 # load x3 with 32 MSBs 0x00000000e2f198d0
sw x3, 0(x2) # store x3 (0xe2f198d0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e2f198d0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000e2f198d0 from memory into f9
fcvt.h.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6e1cd5e0 # load x3 with 32 MSBs 0x000000006e1cd5e0
sw x3, 0(x2) # store x3 (0x6e1cd5e0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e1cd5e0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000006e1cd5e0 from memory into f10
fcvt.h.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x850a32c5 # load x3 with 32 MSBs 0x00000000850a32c5
sw x3, 0(x2) # store x3 (0x850a32c5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000850a32c5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000850a32c5 from memory into f11
fcvt.h.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa0beed14 # load x3 with 32 MSBs 0x00000000a0beed14
sw x3, 0(x2) # store x3 (0xa0beed14) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0beed14
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000a0beed14 from memory into f12
fcvt.h.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd61e735e # load x3 with 32 MSBs 0x00000000d61e735e
sw x3, 0(x2) # store x3 (0xd61e735e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d61e735e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000d61e735e from memory into f13
fcvt.h.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb3a684c # load x3 with 32 MSBs 0x00000000eb3a684c
sw x3, 0(x2) # store x3 (0xeb3a684c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb3a684c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000eb3a684c from memory into f14
fcvt.h.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb6282126 # load x3 with 32 MSBs 0x00000000b6282126
sw x3, 0(x2) # store x3 (0xb6282126) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b6282126
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000b6282126 from memory into f15
fcvt.h.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4473f51b # load x3 with 32 MSBs 0x000000004473f51b
sw x3, 0(x2) # store x3 (0x4473f51b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004473f51b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000004473f51b from memory into f16
fcvt.h.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfef5aa6c # load x3 with 32 MSBs 0x00000000fef5aa6c
sw x3, 0(x2) # store x3 (0xfef5aa6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fef5aa6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000fef5aa6c from memory into f17
fcvt.h.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb73b18d # load x3 with 32 MSBs 0x00000000eb73b18d
sw x3, 0(x2) # store x3 (0xeb73b18d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb73b18d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000eb73b18d from memory into f18
fcvt.h.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3760ae0a # load x3 with 32 MSBs 0x000000003760ae0a
sw x3, 0(x2) # store x3 (0x3760ae0a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003760ae0a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000003760ae0a from memory into f19
fcvt.h.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4d3c9667 # load x3 with 32 MSBs 0x000000004d3c9667
sw x3, 0(x2) # store x3 (0x4d3c9667) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004d3c9667
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000004d3c9667 from memory into f20
fcvt.h.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c83ef06 # load x3 with 32 MSBs 0x000000001c83ef06
sw x3, 0(x2) # store x3 (0x1c83ef06) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c83ef06
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000001c83ef06 from memory into f21
fcvt.h.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3b3d613f # load x3 with 32 MSBs 0x000000003b3d613f
sw x3, 0(x2) # store x3 (0x3b3d613f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b3d613f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000003b3d613f from memory into f22
fcvt.h.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe487f47b # load x3 with 32 MSBs 0x00000000e487f47b
sw x3, 0(x2) # store x3 (0xe487f47b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e487f47b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e487f47b from memory into f23
fcvt.h.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x55e9fd90 # load x3 with 32 MSBs 0x0000000055e9fd90
sw x3, 0(x2) # store x3 (0x55e9fd90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055e9fd90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000055e9fd90 from memory into f24
fcvt.h.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xab6190a2 # load x3 with 32 MSBs 0x00000000ab6190a2
sw x3, 0(x2) # store x3 (0xab6190a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ab6190a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000ab6190a2 from memory into f25
fcvt.h.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e5f9f67 # load x3 with 32 MSBs 0x000000005e5f9f67
sw x3, 0(x2) # store x3 (0x5e5f9f67) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005e5f9f67
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000005e5f9f67 from memory into f26
fcvt.h.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8b7d78f # load x3 with 32 MSBs 0x00000000a8b7d78f
sw x3, 0(x2) # store x3 (0xa8b7d78f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a8b7d78f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000a8b7d78f from memory into f27
fcvt.h.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6cc52596 # load x3 with 32 MSBs 0x000000006cc52596
sw x3, 0(x2) # store x3 (0x6cc52596) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006cc52596
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000006cc52596 from memory into f28
fcvt.h.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x45cb02fe # load x3 with 32 MSBs 0x0000000045cb02fe
sw x3, 0(x2) # store x3 (0x45cb02fe) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000045cb02fe
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000045cb02fe from memory into f29
fcvt.h.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb3ff215 # load x3 with 32 MSBs 0x00000000eb3ff215
sw x3, 0(x2) # store x3 (0xeb3ff215) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb3ff215
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000eb3ff215 from memory into f30
fcvt.h.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2de55106 # load x3 with 32 MSBs 0x000000002de55106
sw x3, 0(x2) # store x3 (0x2de55106) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002de55106
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000002de55106 from memory into f31
fcvt.h.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c42952d # load x3 with 32 MSBs 0x000000001c42952d
sw x3, 0(x2) # store x3 (0x1c42952d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c42952d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000001c42952d from memory into f26
fcvt.h.d f7, f26, dyn # perform operation
fcvt.h.d f7, f26, rdn # perform operation
fcvt.h.d f7, f26, rmm # perform operation
fcvt.h.d f7, f26, rne # perform operation
fcvt.h.d f7, f26, rtz # perform operation
fcvt.h.d f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f7, f26 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x719aa892 # load x3 with 32 MSBs 0x00000000719aa892
sw x3, 0(x2) # store x3 (0x719aa892) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000719aa892
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000719aa892 from memory into f25
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
li x3, 0x00000000e5048d20 # load x3 with value 0x00000000e5048d20
sw x3, 0(x2) # store 0x00000000e5048d20 in memory
flh f26, 0(x2) # load 0x00000000e5048d20 from memory into f26
la x2, scratch
li x3, 0x00000000a7004798 # load x3 with value 0x00000000a7004798
sw x3, 0(x2) # store 0x00000000a7004798 in memory
flh f12, 0(x2) # load 0x00000000a7004798 from memory into f12
fsgnj.h f11, f26, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
la x2, scratch
li x3, 0xe6bc65e1 # load x3 with 32 MSBs 0x00000000e6bc65e1
sw x3, 0(x2) # store x3 (0xe6bc65e1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e6bc65e1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000e6bc65e1 from memory into f10
fsgnj.h f16, f21, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffffffffffe8000 from memory into f7
la x2, scratch
li x3, 0x8433ff19 # load x3 with 32 MSBs 0x000000008433ff19
sw x3, 0(x2) # store x3 (0x8433ff19) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008433ff19
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000008433ff19 from memory into f23
fsgnj.h f27, f7, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffff3c00 from memory into f29
la x2, scratch
li x3, 0x19c642fe # load x3 with 32 MSBs 0x0000000019c642fe
sw x3, 0(x2) # store x3 (0x19c642fe) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000019c642fe
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000019c642fe from memory into f20
fsgnj.h f21, f29, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfeedbee5beefbc00 from memory into f18
la x2, scratch
li x3, 0x72ed15e7 # load x3 with 32 MSBs 0x0000000072ed15e7
sw x3, 0(x2) # store x3 (0x72ed15e7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000072ed15e7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000072ed15e7 from memory into f31
fsgnj.h f27, f18, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
la x2, scratch
li x3, 0x8ff40866 # load x3 with 32 MSBs 0x000000008ff40866
sw x3, 0(x2) # store x3 (0x8ff40866) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ff40866
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008ff40866 from memory into f16
fsgnj.h f25, f26, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000ffff8400 from memory into f28
la x2, scratch
li x3, 0x1b15172c # load x3 with 32 MSBs 0x000000001b15172c
sw x3, 0(x2) # store x3 (0x1b15172c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001b15172c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000001b15172c from memory into f13
fsgnj.h f15, f28, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
la x2, scratch
li x3, 0xaf0b4916 # load x3 with 32 MSBs 0x00000000af0b4916
sw x3, 0(x2) # store x3 (0xaf0b4916) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000af0b4916
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000af0b4916 from memory into f12
fsgnj.h f24, f25, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xc0dec0dec0defbff from memory into f7
la x2, scratch
li x3, 0x9c7e3584 # load x3 with 32 MSBs 0x000000009c7e3584
sw x3, 0(x2) # store x3 (0x9c7e3584) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009c7e3584
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000009c7e3584 from memory into f30
fsgnj.h f21, f7, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f12
la x2, scratch
li x3, 0xb9cc07d9 # load x3 with 32 MSBs 0x00000000b9cc07d9
sw x3, 0(x2) # store x3 (0xb9cc07d9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b9cc07d9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000b9cc07d9 from memory into f17
fsgnj.h f1, f12, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
la x2, scratch
li x3, 0xa1bed0c5 # load x3 with 32 MSBs 0x00000000a1bed0c5
sw x3, 0(x2) # store x3 (0xa1bed0c5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a1bed0c5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000a1bed0c5 from memory into f11
fsgnj.h f2, f30, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfffeffffffff7e00 from memory into f24
la x2, scratch
li x3, 0x7e6ac991 # load x3 with 32 MSBs 0x000000007e6ac991
sw x3, 0(x2) # store x3 (0x7e6ac991) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007e6ac991
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000007e6ac991 from memory into f31
fsgnj.h f9, f24, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
la x2, scratch
li x3, 0x3b94f58b # load x3 with 32 MSBs 0x000000003b94f58b
sw x3, 0(x2) # store x3 (0x3b94f58b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b94f58b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000003b94f58b from memory into f12
fsgnj.h f20, f13, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f13
la x2, scratch
li x3, 0x71eec13a # load x3 with 32 MSBs 0x0000000071eec13a
sw x3, 0(x2) # store x3 (0x71eec13a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000071eec13a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000071eec13a from memory into f21
fsgnj.h f6, f13, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfffffffcffff7dff from memory into f10
la x2, scratch
li x3, 0x8d54dfa7 # load x3 with 32 MSBs 0x000000008d54dfa7
sw x3, 0(x2) # store x3 (0x8d54dfa7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008d54dfa7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000008d54dfa7 from memory into f26
fsgnj.h f28, f10, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe64857f4 # load x3 with 32 MSBs 0x00000000e64857f4
sw x3, 0(x2) # store x3 (0xe64857f4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e64857f4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e64857f4 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffff00000000 from memory into f30
fsgnj.h f15, f8, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x16b213b3 # load x3 with 32 MSBs 0x0000000016b213b3
sw x3, 0(x2) # store x3 (0x16b213b3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000016b213b3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000016b213b3 from memory into f15
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffffffffe8000 from memory into f3
fsgnj.h f8, f15, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x9ff89cda # load x3 with 32 MSBs 0x000000009ff89cda
sw x3, 0(x2) # store x3 (0x9ff89cda) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009ff89cda
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000009ff89cda from memory into f3
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fffffffffff3c00 from memory into f19
fsgnj.h f7, f3, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xfe183c7a # load x3 with 32 MSBs 0x00000000fe183c7a
sw x3, 0(x2) # store x3 (0xfe183c7a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe183c7a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000fe183c7a from memory into f12
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
fsgnj.h f13, f12, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x6fe9df30 # load x3 with 32 MSBs 0x000000006fe9df30
sw x3, 0(x2) # store x3 (0x6fe9df30) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006fe9df30
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000006fe9df30 from memory into f7
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffffefffff0400 from memory into f17
fsgnj.h f2, f7, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x4d98c9f9 # load x3 with 32 MSBs 0x000000004d98c9f9
sw x3, 0(x2) # store x3 (0x4d98c9f9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004d98c9f9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000004d98c9f9 from memory into f16
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000ffff8400 from memory into f20
fsgnj.h f23, f16, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xcf330b69 # load x3 with 32 MSBs 0x00000000cf330b69
sw x3, 0(x2) # store x3 (0xcf330b69) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cf330b69
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000cf330b69 from memory into f30
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xefffffffffff7bff from memory into f21
fsgnj.h f5, f30, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x92de4a57 # load x3 with 32 MSBs 0x0000000092de4a57
sw x3, 0(x2) # store x3 (0x92de4a57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000092de4a57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000092de4a57 from memory into f22
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xc0dec0dec0defbff from memory into f20
fsgnj.h f14, f22, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xb5de7f9b # load x3 with 32 MSBs 0x00000000b5de7f9b
sw x3, 0(x2) # store x3 (0xb5de7f9b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b5de7f9b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000b5de7f9b from memory into f20
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f10
fsgnj.h f15, f20, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xecfbc16b # load x3 with 32 MSBs 0x00000000ecfbc16b
sw x3, 0(x2) # store x3 (0xecfbc16b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ecfbc16b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ecfbc16b from memory into f22
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffffffff0ffffc00 from memory into f8
fsgnj.h f2, f22, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xf1f1aac6 # load x3 with 32 MSBs 0x00000000f1f1aac6
sw x3, 0(x2) # store x3 (0xf1f1aac6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f1f1aac6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000f1f1aac6 from memory into f8
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfffeffffffff7e00 from memory into f15
fsgnj.h f27, f8, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x11ab9a90 # load x3 with 32 MSBs 0x0000000011ab9a90
sw x3, 0(x2) # store x3 (0x11ab9a90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000011ab9a90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000011ab9a90 from memory into f17
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffefffff7fff from memory into f3
fsgnj.h f23, f17, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x7de0d0d5 # load x3 with 32 MSBs 0x000000007de0d0d5
sw x3, 0(x2) # store x3 (0x7de0d0d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007de0d0d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000007de0d0d5 from memory into f10
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f7
fsgnj.h f20, f10, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x9db66bb2 # load x3 with 32 MSBs 0x000000009db66bb2
sw x3, 0(x2) # store x3 (0x9db66bb2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009db66bb2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000009db66bb2 from memory into f18
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfffffffcffff7dff from memory into f27
fsgnj.h f12, f18, f27 # perform operation

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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffffffff00000000 from memory into f18
fclass.h x6, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfffffffffffe8000 from memory into f31
fclass.h x11, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fffffffffff3c00 from memory into f5
fclass.h x8, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfeedbee5beefbc00 from memory into f17
fclass.h x20, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffefffff0400 from memory into f14
fclass.h x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000ffff8400 from memory into f24
fclass.h x13, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fclass.h x10, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xc0dec0dec0defbff from memory into f14
fclass.h x27, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f30
fclass.h x16, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffffffff0ffffc00 from memory into f25
fclass.h x21, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffeffffffff7e00 from memory into f29
fclass.h x13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffefffff7fff from memory into f22
fclass.h x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f14
fclass.h x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffcffff7dff from memory into f5
fclass.h x26, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 52)

#.EQU SIGSIZE,56


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
li x24, 0x94bb050b # load immediate value into integer register
fmv.h.x f30, x24 # perform operation

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
li x3, 0x0000000067a688d6 # load x3 with value 0x0000000067a688d6
sw x3, 0(x2) # store 0x0000000067a688d6 in memory
flw f10, 0(x2) # load 0x0000000067a688d6 from memory into f10
fcvt.h.s f7, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f25)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffffffff00000000 from memory into f25
fcvt.h.s f20, f25 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffffffffe8000 from memory into f8
fcvt.h.s f5, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f31)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7fffffffffff3c00 from memory into f31
fcvt.h.s f5, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfeedbee5beefbc00 from memory into f23
fcvt.h.s f1, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffefffff0400 from memory into f21
fcvt.h.s f16, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000ffff8400 from memory into f17
fcvt.h.s f20, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xefffffffffff7bff from memory into f19
fcvt.h.s f18, f19 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc0dec0dec0defbff from memory into f27
fcvt.h.s f28, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f18
fcvt.h.s f9, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffff0ffffc00 from memory into f11
fcvt.h.s f25, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f31)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfffeffffffff7e00 from memory into f31
fcvt.h.s f18, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f16)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffefffff7fff from memory into f16
fcvt.h.s f18, f16 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f18
fcvt.h.s f1, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffffffcffff7dff from memory into f9
fcvt.h.s f14, f9 # perform operation second time to make sure flags don't change

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
li x3, 0x00000000c12ce234 # load x3 with value 0x00000000c12ce234
sw x3, 0(x2) # store 0x00000000c12ce234 in memory
flh f6, 0(x2) # load 0x00000000c12ce234 from memory into f6
la x2, scratch
li x3, 0x000000007e1f6660 # load x3 with value 0x000000007e1f6660
sw x3, 0(x2) # store 0x000000007e1f6660 in memory
flh f23, 0(x2) # load 0x000000007e1f6660 from memory into f23
fsgnjx.h f16, f6, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffffffff00000000 from memory into f8
la x2, scratch
li x3, 0x206eab1a # load x3 with 32 MSBs 0x00000000206eab1a
sw x3, 0(x2) # store x3 (0x206eab1a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000206eab1a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000206eab1a from memory into f26
fsgnjx.h f20, f8, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffffffffffe8000 from memory into f12
la x2, scratch
li x3, 0xbc91c9c5 # load x3 with 32 MSBs 0x00000000bc91c9c5
sw x3, 0(x2) # store x3 (0xbc91c9c5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bc91c9c5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000bc91c9c5 from memory into f15
fsgnjx.h f29, f12, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
la x2, scratch
li x3, 0xd175e3c3 # load x3 with 32 MSBs 0x00000000d175e3c3
sw x3, 0(x2) # store x3 (0xd175e3c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d175e3c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d175e3c3 from memory into f18
fsgnjx.h f9, f30, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfeedbee5beefbc00 from memory into f25
la x2, scratch
li x3, 0x65587782 # load x3 with 32 MSBs 0x0000000065587782
sw x3, 0(x2) # store x3 (0x65587782) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000065587782
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000065587782 from memory into f10
fsgnjx.h f8, f25, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffefffff0400 from memory into f29
la x2, scratch
li x3, 0x6373ef88 # load x3 with 32 MSBs 0x000000006373ef88
sw x3, 0(x2) # store x3 (0x6373ef88) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006373ef88
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000006373ef88 from memory into f27
fsgnjx.h f3, f29, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000ffff8400 from memory into f17
la x2, scratch
li x3, 0xc03ee3c8 # load x3 with 32 MSBs 0x00000000c03ee3c8
sw x3, 0(x2) # store x3 (0xc03ee3c8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c03ee3c8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000c03ee3c8 from memory into f16
fsgnjx.h f14, f17, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xefffffffffff7bff from memory into f30
la x2, scratch
li x3, 0x6fc4f021 # load x3 with 32 MSBs 0x000000006fc4f021
sw x3, 0(x2) # store x3 (0x6fc4f021) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006fc4f021
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000006fc4f021 from memory into f27
fsgnjx.h f5, f30, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xc0dec0dec0defbff from memory into f9
la x2, scratch
li x3, 0x2921bb27 # load x3 with 32 MSBs 0x000000002921bb27
sw x3, 0(x2) # store x3 (0x2921bb27) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002921bb27
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000002921bb27 from memory into f6
fsgnjx.h f22, f9, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f6
la x2, scratch
li x3, 0x485854e6 # load x3 with 32 MSBs 0x00000000485854e6
sw x3, 0(x2) # store x3 (0x485854e6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000485854e6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000485854e6 from memory into f27
fsgnjx.h f1, f6, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffff0ffffc00 from memory into f27
la x2, scratch
li x3, 0xf2753886 # load x3 with 32 MSBs 0x00000000f2753886
sw x3, 0(x2) # store x3 (0xf2753886) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f2753886
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000f2753886 from memory into f31
fsgnjx.h f2, f27, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfffeffffffff7e00 from memory into f16
la x2, scratch
li x3, 0x3c5d3717 # load x3 with 32 MSBs 0x000000003c5d3717
sw x3, 0(x2) # store x3 (0x3c5d3717) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003c5d3717
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000003c5d3717 from memory into f11
fsgnjx.h f2, f16, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffefffff7fff from memory into f11
la x2, scratch
li x3, 0xf25645c9 # load x3 with 32 MSBs 0x00000000f25645c9
sw x3, 0(x2) # store x3 (0xf25645c9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f25645c9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000f25645c9 from memory into f25
fsgnjx.h f3, f11, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f11
la x2, scratch
li x3, 0x0c3e382e # load x3 with 32 MSBs 0x000000000c3e382e
sw x3, 0(x2) # store x3 (0x0c3e382e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000c3e382e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000000c3e382e from memory into f17
fsgnjx.h f5, f11, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfffffffcffff7dff from memory into f1
la x2, scratch
li x3, 0xad8f329e # load x3 with 32 MSBs 0x00000000ad8f329e
sw x3, 0(x2) # store x3 (0xad8f329e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ad8f329e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000ad8f329e from memory into f18
fsgnjx.h f7, f1, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x298b6a66 # load x3 with 32 MSBs 0x00000000298b6a66
sw x3, 0(x2) # store x3 (0x298b6a66) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000298b6a66
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000298b6a66 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
fsgnjx.h f25, f29, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x711aff83 # load x3 with 32 MSBs 0x00000000711aff83
sw x3, 0(x2) # store x3 (0x711aff83) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000711aff83
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000711aff83 from memory into f15
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffffffffe8000 from memory into f25
fsgnjx.h f2, f15, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xc521a8ad # load x3 with 32 MSBs 0x00000000c521a8ad
sw x3, 0(x2) # store x3 (0xc521a8ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c521a8ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000c521a8ad from memory into f29
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7fffffffffff3c00 from memory into f12
fsgnjx.h f11, f29, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x777df783 # load x3 with 32 MSBs 0x00000000777df783
sw x3, 0(x2) # store x3 (0x777df783) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000777df783
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000777df783 from memory into f1
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfeedbee5beefbc00 from memory into f7
fsgnjx.h f30, f1, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x8774f83c # load x3 with 32 MSBs 0x000000008774f83c
sw x3, 0(x2) # store x3 (0x8774f83c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008774f83c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000008774f83c from memory into f22
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffefffff0400 from memory into f9
fsgnjx.h f3, f22, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x4a05ac4f # load x3 with 32 MSBs 0x000000004a05ac4f
sw x3, 0(x2) # store x3 (0x4a05ac4f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004a05ac4f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000004a05ac4f from memory into f7
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000ffff8400 from memory into f28
fsgnjx.h f20, f7, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x149705fb # load x3 with 32 MSBs 0x00000000149705fb
sw x3, 0(x2) # store x3 (0x149705fb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000149705fb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000149705fb from memory into f10
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xefffffffffff7bff from memory into f23
fsgnjx.h f28, f10, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xc9fea733 # load x3 with 32 MSBs 0x00000000c9fea733
sw x3, 0(x2) # store x3 (0xc9fea733) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c9fea733
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000c9fea733 from memory into f18
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc0dec0dec0defbff from memory into f8
fsgnjx.h f22, f18, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xc455cdca # load x3 with 32 MSBs 0x00000000c455cdca
sw x3, 0(x2) # store x3 (0xc455cdca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c455cdca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000c455cdca from memory into f2
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f20
fsgnjx.h f31, f2, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x85be9c48 # load x3 with 32 MSBs 0x0000000085be9c48
sw x3, 0(x2) # store x3 (0x85be9c48) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000085be9c48
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000085be9c48 from memory into f9
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffff0ffffc00 from memory into f15
fsgnjx.h f17, f9, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xffb73bd6 # load x3 with 32 MSBs 0x00000000ffb73bd6
sw x3, 0(x2) # store x3 (0xffb73bd6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffb73bd6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ffb73bd6 from memory into f2
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfffeffffffff7e00 from memory into f24
fsgnjx.h f29, f2, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xb550cff3 # load x3 with 32 MSBs 0x00000000b550cff3
sw x3, 0(x2) # store x3 (0xb550cff3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b550cff3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000b550cff3 from memory into f7
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffefffff7fff from memory into f26
fsgnjx.h f11, f7, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x7eca8435 # load x3 with 32 MSBs 0x000000007eca8435
sw x3, 0(x2) # store x3 (0x7eca8435) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007eca8435
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000007eca8435 from memory into f13
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f20
fsgnjx.h f3, f13, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xc055f176 # load x3 with 32 MSBs 0x00000000c055f176
sw x3, 0(x2) # store x3 (0xc055f176) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c055f176
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000c055f176 from memory into f26
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffffffcffff7dff from memory into f2
fsgnjx.h f17, f26, f2 # perform operation

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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffffffff00000000 from memory into f20
fcvt.w.h x24, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfffffffffffe8000 from memory into f19
fcvt.w.h x24, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7fffffffffff3c00 from memory into f11
fcvt.w.h x22, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfeedbee5beefbc00 from memory into f2
fcvt.w.h x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffefffff0400 from memory into f21
fcvt.w.h x19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
fcvt.w.h x26, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xefffffffffff7bff from memory into f9
fcvt.w.h x28, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc0dec0dec0defbff from memory into f21
fcvt.w.h x18, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f8
fcvt.w.h x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffff0ffffc00 from memory into f10
fcvt.w.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfffeffffffff7e00 from memory into f15
fcvt.w.h x25, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffefffff7fff from memory into f10
fcvt.w.h x3, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f20
fcvt.w.h x27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffffffcffff7dff from memory into f29
fcvt.w.h x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 52)

#.EQU SIGSIZE,56


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
li x3, 0x000000003c936ba3 # load x3 with value 0x000000003c936ba3
sw x3, 0(x2) # store 0x000000003c936ba3 in memory
flh f28, 0(x2) # load 0x000000003c936ba3 from memory into f28
la x2, scratch
li x3, 0x00000000444622c1 # load x3 with value 0x00000000444622c1
sw x3, 0(x2) # store 0x00000000444622c1 in memory
flh f7, 0(x2) # load 0x00000000444622c1 from memory into f7
la x2, scratch
li x3, 0x0000000087bddff3 # load x3 with value 0x0000000087bddff3
sw x3, 0(x2) # store 0x0000000087bddff3 in memory
flh f25, 0(x2) # load 0x0000000087bddff3 from memory into f25
fmadd.h f24, f28, f7, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
la x2, scratch
li x3, 0xb2d64e9e # load x3 with 32 MSBs 0x00000000b2d64e9e
sw x3, 0(x2) # store x3 (0xb2d64e9e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b2d64e9e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000b2d64e9e from memory into f16
la x2, scratch
li x3, 0x1c83c023 # load x3 with 32 MSBs 0x000000001c83c023
sw x3, 0(x2) # store x3 (0x1c83c023) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c83c023
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000001c83c023 from memory into f15
fmadd.h f12, f29, f16, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffffffffffe8000 from memory into f23
la x2, scratch
li x3, 0x6c42c422 # load x3 with 32 MSBs 0x000000006c42c422
sw x3, 0(x2) # store x3 (0x6c42c422) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006c42c422
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000006c42c422 from memory into f17
la x2, scratch
li x3, 0xc00afd7b # load x3 with 32 MSBs 0x00000000c00afd7b
sw x3, 0(x2) # store x3 (0xc00afd7b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c00afd7b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000c00afd7b from memory into f27
fmadd.h f25, f23, f17, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fffffffffff3c00 from memory into f16
la x2, scratch
li x3, 0xea4e0772 # load x3 with 32 MSBs 0x00000000ea4e0772
sw x3, 0(x2) # store x3 (0xea4e0772) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea4e0772
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ea4e0772 from memory into f22
la x2, scratch
li x3, 0xd20a7cf8 # load x3 with 32 MSBs 0x00000000d20a7cf8
sw x3, 0(x2) # store x3 (0xd20a7cf8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d20a7cf8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000d20a7cf8 from memory into f27
fmadd.h f31, f16, f22, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfeedbee5beefbc00 from memory into f31
la x2, scratch
li x3, 0x376e1cb4 # load x3 with 32 MSBs 0x00000000376e1cb4
sw x3, 0(x2) # store x3 (0x376e1cb4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000376e1cb4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000376e1cb4 from memory into f30
la x2, scratch
li x3, 0xd30bca45 # load x3 with 32 MSBs 0x00000000d30bca45
sw x3, 0(x2) # store x3 (0xd30bca45) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d30bca45
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000d30bca45 from memory into f22
fmadd.h f14, f31, f30, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
la x2, scratch
li x3, 0x9f30bbf6 # load x3 with 32 MSBs 0x000000009f30bbf6
sw x3, 0(x2) # store x3 (0x9f30bbf6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009f30bbf6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000009f30bbf6 from memory into f17
la x2, scratch
li x3, 0xe0765398 # load x3 with 32 MSBs 0x00000000e0765398
sw x3, 0(x2) # store x3 (0xe0765398) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e0765398
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000e0765398 from memory into f5
fmadd.h f7, f23, f17, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
la x2, scratch
li x3, 0xba9fdbaa # load x3 with 32 MSBs 0x00000000ba9fdbaa
sw x3, 0(x2) # store x3 (0xba9fdbaa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ba9fdbaa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ba9fdbaa from memory into f21
la x2, scratch
li x3, 0xb6ae0c7e # load x3 with 32 MSBs 0x00000000b6ae0c7e
sw x3, 0(x2) # store x3 (0xb6ae0c7e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b6ae0c7e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000b6ae0c7e from memory into f7
fmadd.h f29, f19, f21, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xefffffffffff7bff from memory into f29
la x2, scratch
li x3, 0xfdd93444 # load x3 with 32 MSBs 0x00000000fdd93444
sw x3, 0(x2) # store x3 (0xfdd93444) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fdd93444
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000fdd93444 from memory into f27
la x2, scratch
li x3, 0xd0fd87e7 # load x3 with 32 MSBs 0x00000000d0fd87e7
sw x3, 0(x2) # store x3 (0xd0fd87e7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d0fd87e7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000d0fd87e7 from memory into f14
fmadd.h f13, f29, f27, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc0dec0dec0defbff from memory into f27
la x2, scratch
li x3, 0x2f4d2b57 # load x3 with 32 MSBs 0x000000002f4d2b57
sw x3, 0(x2) # store x3 (0x2f4d2b57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002f4d2b57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000002f4d2b57 from memory into f14
la x2, scratch
li x3, 0x75bb380a # load x3 with 32 MSBs 0x0000000075bb380a
sw x3, 0(x2) # store x3 (0x75bb380a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000075bb380a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000075bb380a from memory into f12
fmadd.h f26, f27, f14, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f22
la x2, scratch
li x3, 0xde73f9fb # load x3 with 32 MSBs 0x00000000de73f9fb
sw x3, 0(x2) # store x3 (0xde73f9fb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de73f9fb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000de73f9fb from memory into f13
la x2, scratch
li x3, 0xf461e6b6 # load x3 with 32 MSBs 0x00000000f461e6b6
sw x3, 0(x2) # store x3 (0xf461e6b6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f461e6b6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000f461e6b6 from memory into f25
fmadd.h f14, f22, f13, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffff0ffffc00 from memory into f1
la x2, scratch
li x3, 0xf5f00157 # load x3 with 32 MSBs 0x00000000f5f00157
sw x3, 0(x2) # store x3 (0xf5f00157) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f5f00157
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000f5f00157 from memory into f9
la x2, scratch
li x3, 0x88540aaa # load x3 with 32 MSBs 0x0000000088540aaa
sw x3, 0(x2) # store x3 (0x88540aaa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000088540aaa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000088540aaa from memory into f5
fmadd.h f17, f1, f9, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffeffffffff7e00 from memory into f25
la x2, scratch
li x3, 0x6fe0f6fa # load x3 with 32 MSBs 0x000000006fe0f6fa
sw x3, 0(x2) # store x3 (0x6fe0f6fa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006fe0f6fa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006fe0f6fa from memory into f19
la x2, scratch
li x3, 0x42950e9e # load x3 with 32 MSBs 0x0000000042950e9e
sw x3, 0(x2) # store x3 (0x42950e9e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000042950e9e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000042950e9e from memory into f1
fmadd.h f2, f25, f19, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffefffff7fff from memory into f26
la x2, scratch
li x3, 0x82ae784a # load x3 with 32 MSBs 0x0000000082ae784a
sw x3, 0(x2) # store x3 (0x82ae784a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000082ae784a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000082ae784a from memory into f24
la x2, scratch
li x3, 0x17abc04f # load x3 with 32 MSBs 0x0000000017abc04f
sw x3, 0(x2) # store x3 (0x17abc04f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000017abc04f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000017abc04f from memory into f27
fmadd.h f30, f26, f24, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f28
la x2, scratch
li x3, 0x83650cb0 # load x3 with 32 MSBs 0x0000000083650cb0
sw x3, 0(x2) # store x3 (0x83650cb0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000083650cb0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000083650cb0 from memory into f6
la x2, scratch
li x3, 0xf388610f # load x3 with 32 MSBs 0x00000000f388610f
sw x3, 0(x2) # store x3 (0xf388610f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f388610f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000f388610f from memory into f23
fmadd.h f11, f28, f6, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfffffffcffff7dff from memory into f19
la x2, scratch
li x3, 0x39825b44 # load x3 with 32 MSBs 0x0000000039825b44
sw x3, 0(x2) # store x3 (0x39825b44) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039825b44
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000039825b44 from memory into f8
la x2, scratch
li x3, 0x09fc273e # load x3 with 32 MSBs 0x0000000009fc273e
sw x3, 0(x2) # store x3 (0x09fc273e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000009fc273e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000009fc273e from memory into f30
fmadd.h f10, f19, f8, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x381de8d8 # load x3 with 32 MSBs 0x00000000381de8d8
sw x3, 0(x2) # store x3 (0x381de8d8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000381de8d8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000381de8d8 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffffffff00000000 from memory into f6
la x2, scratch
li x3, 0x74172b5f # load x3 with 32 MSBs 0x0000000074172b5f
sw x3, 0(x2) # store x3 (0x74172b5f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000074172b5f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000074172b5f from memory into f18
fmadd.h f3, f20, f6, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xeb66dd7e # load x3 with 32 MSBs 0x00000000eb66dd7e
sw x3, 0(x2) # store x3 (0xeb66dd7e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb66dd7e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000eb66dd7e from memory into f22
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffffffffffe8000 from memory into f9
la x2, scratch
li x3, 0x6b42f5b0 # load x3 with 32 MSBs 0x000000006b42f5b0
sw x3, 0(x2) # store x3 (0x6b42f5b0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b42f5b0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000006b42f5b0 from memory into f3
fmadd.h f18, f22, f9, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xdb69d32e # load x3 with 32 MSBs 0x00000000db69d32e
sw x3, 0(x2) # store x3 (0xdb69d32e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000db69d32e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000db69d32e from memory into f17
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7fffffffffff3c00 from memory into f21
la x2, scratch
li x3, 0x290cafb6 # load x3 with 32 MSBs 0x00000000290cafb6
sw x3, 0(x2) # store x3 (0x290cafb6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000290cafb6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000290cafb6 from memory into f7
fmadd.h f28, f17, f21, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x34b31d0a # load x3 with 32 MSBs 0x0000000034b31d0a
sw x3, 0(x2) # store x3 (0x34b31d0a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000034b31d0a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000034b31d0a from memory into f20
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfeedbee5beefbc00 from memory into f10
la x2, scratch
li x3, 0x141a1116 # load x3 with 32 MSBs 0x00000000141a1116
sw x3, 0(x2) # store x3 (0x141a1116) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000141a1116
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000141a1116 from memory into f14
fmadd.h f5, f20, f10, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x947ece47 # load x3 with 32 MSBs 0x00000000947ece47
sw x3, 0(x2) # store x3 (0x947ece47) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000947ece47
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000947ece47 from memory into f10
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffefffff0400 from memory into f21
la x2, scratch
li x3, 0xb8fcb084 # load x3 with 32 MSBs 0x00000000b8fcb084
sw x3, 0(x2) # store x3 (0xb8fcb084) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b8fcb084
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000b8fcb084 from memory into f20
fmadd.h f1, f10, f21, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x63a707f1 # load x3 with 32 MSBs 0x0000000063a707f1
sw x3, 0(x2) # store x3 (0x63a707f1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000063a707f1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000063a707f1 from memory into f13
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000ffff8400 from memory into f15
la x2, scratch
li x3, 0x9017d5df # load x3 with 32 MSBs 0x000000009017d5df
sw x3, 0(x2) # store x3 (0x9017d5df) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009017d5df
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000009017d5df from memory into f11
fmadd.h f31, f13, f15, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x0a9708d7 # load x3 with 32 MSBs 0x000000000a9708d7
sw x3, 0(x2) # store x3 (0x0a9708d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000a9708d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000000a9708d7 from memory into f3
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xefffffffffff7bff from memory into f20
la x2, scratch
li x3, 0x045969d7 # load x3 with 32 MSBs 0x00000000045969d7
sw x3, 0(x2) # store x3 (0x045969d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000045969d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000045969d7 from memory into f25
fmadd.h f24, f3, f20, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xff107dab # load x3 with 32 MSBs 0x00000000ff107dab
sw x3, 0(x2) # store x3 (0xff107dab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ff107dab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000ff107dab from memory into f8
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xc0dec0dec0defbff from memory into f15
la x2, scratch
li x3, 0x399aca9e # load x3 with 32 MSBs 0x00000000399aca9e
sw x3, 0(x2) # store x3 (0x399aca9e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000399aca9e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000399aca9e from memory into f11
fmadd.h f14, f8, f15, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xa066326e # load x3 with 32 MSBs 0x00000000a066326e
sw x3, 0(x2) # store x3 (0xa066326e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a066326e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000a066326e from memory into f26
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f30
la x2, scratch
li x3, 0x76cdd43e # load x3 with 32 MSBs 0x0000000076cdd43e
sw x3, 0(x2) # store x3 (0x76cdd43e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000076cdd43e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000076cdd43e from memory into f2
fmadd.h f27, f26, f30, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xe1cd5e71 # load x3 with 32 MSBs 0x00000000e1cd5e71
sw x3, 0(x2) # store x3 (0xe1cd5e71) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e1cd5e71
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000e1cd5e71 from memory into f21
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffff0ffffc00 from memory into f5
la x2, scratch
li x3, 0xd491ab2c # load x3 with 32 MSBs 0x00000000d491ab2c
sw x3, 0(x2) # store x3 (0xd491ab2c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d491ab2c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d491ab2c from memory into f18
fmadd.h f10, f21, f5, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x85113116 # load x3 with 32 MSBs 0x0000000085113116
sw x3, 0(x2) # store x3 (0x85113116) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000085113116
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000085113116 from memory into f2
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffeffffffff7e00 from memory into f7
la x2, scratch
li x3, 0x37114c70 # load x3 with 32 MSBs 0x0000000037114c70
sw x3, 0(x2) # store x3 (0x37114c70) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037114c70
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000037114c70 from memory into f19
fmadd.h f22, f2, f7, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x888bc38b # load x3 with 32 MSBs 0x00000000888bc38b
sw x3, 0(x2) # store x3 (0x888bc38b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000888bc38b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000888bc38b from memory into f8
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffefffff7fff from memory into f5
la x2, scratch
li x3, 0x79c017e3 # load x3 with 32 MSBs 0x0000000079c017e3
sw x3, 0(x2) # store x3 (0x79c017e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000079c017e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000079c017e3 from memory into f15
fmadd.h f17, f8, f5, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xafd1f3e0 # load x3 with 32 MSBs 0x00000000afd1f3e0
sw x3, 0(x2) # store x3 (0xafd1f3e0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000afd1f3e0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000afd1f3e0 from memory into f15
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
la x2, scratch
li x3, 0x082c7380 # load x3 with 32 MSBs 0x00000000082c7380
sw x3, 0(x2) # store x3 (0x082c7380) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000082c7380
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000082c7380 from memory into f30
fmadd.h f2, f15, f3, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x896bd0ec # load x3 with 32 MSBs 0x00000000896bd0ec
sw x3, 0(x2) # store x3 (0x896bd0ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000896bd0ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000896bd0ec from memory into f10
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffffffcffff7dff from memory into f29
la x2, scratch
li x3, 0x17d75f65 # load x3 with 32 MSBs 0x0000000017d75f65
sw x3, 0(x2) # store x3 (0x17d75f65) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000017d75f65
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000017d75f65 from memory into f20
fmadd.h f6, f10, f29, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xa8596887 # load x3 with 32 MSBs 0x00000000a8596887
sw x3, 0(x2) # store x3 (0xa8596887) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a8596887
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000a8596887 from memory into f31
la x2, scratch
li x3, 0xead6a067 # load x3 with 32 MSBs 0x00000000ead6a067
sw x3, 0(x2) # store x3 (0xead6a067) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ead6a067
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000ead6a067 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffffffff00000000 from memory into f6
fmadd.h f29, f31, f12, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x100f612c # load x3 with 32 MSBs 0x00000000100f612c
sw x3, 0(x2) # store x3 (0x100f612c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000100f612c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000100f612c from memory into f15
la x2, scratch
li x3, 0x39ed65c8 # load x3 with 32 MSBs 0x0000000039ed65c8
sw x3, 0(x2) # store x3 (0x39ed65c8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039ed65c8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000039ed65c8 from memory into f8
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffffffffffe8000 from memory into f9
fmadd.h f16, f15, f8, f9 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x1a830444 # load x3 with 32 MSBs 0x000000001a830444
sw x3, 0(x2) # store x3 (0x1a830444) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001a830444
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000001a830444 from memory into f27
la x2, scratch
li x3, 0x6c38ba0a # load x3 with 32 MSBs 0x000000006c38ba0a
sw x3, 0(x2) # store x3 (0x6c38ba0a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006c38ba0a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000006c38ba0a from memory into f30
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fffffffffff3c00 from memory into f2
fmadd.h f11, f27, f30, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xdb3fa446 # load x3 with 32 MSBs 0x00000000db3fa446
sw x3, 0(x2) # store x3 (0xdb3fa446) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000db3fa446
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000db3fa446 from memory into f29
la x2, scratch
li x3, 0xfc4c0cdd # load x3 with 32 MSBs 0x00000000fc4c0cdd
sw x3, 0(x2) # store x3 (0xfc4c0cdd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc4c0cdd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000fc4c0cdd from memory into f22
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfeedbee5beefbc00 from memory into f25
fmadd.h f11, f29, f22, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xe3492ee8 # load x3 with 32 MSBs 0x00000000e3492ee8
sw x3, 0(x2) # store x3 (0xe3492ee8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e3492ee8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000e3492ee8 from memory into f25
la x2, scratch
li x3, 0xe5b99867 # load x3 with 32 MSBs 0x00000000e5b99867
sw x3, 0(x2) # store x3 (0xe5b99867) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e5b99867
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000e5b99867 from memory into f11
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffffffefffff0400 from memory into f2
fmadd.h f5, f25, f11, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0xa7160480 # load x3 with 32 MSBs 0x00000000a7160480
sw x3, 0(x2) # store x3 (0xa7160480) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a7160480
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000a7160480 from memory into f5
la x2, scratch
li x3, 0x85dc79ae # load x3 with 32 MSBs 0x0000000085dc79ae
sw x3, 0(x2) # store x3 (0x85dc79ae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000085dc79ae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000085dc79ae from memory into f26
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000ffff8400 from memory into f16
fmadd.h f8, f5, f26, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x558e909d # load x3 with 32 MSBs 0x00000000558e909d
sw x3, 0(x2) # store x3 (0x558e909d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000558e909d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000558e909d from memory into f25
la x2, scratch
li x3, 0x342bd2e8 # load x3 with 32 MSBs 0x00000000342bd2e8
sw x3, 0(x2) # store x3 (0x342bd2e8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000342bd2e8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000342bd2e8 from memory into f10
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
fmadd.h f24, f25, f10, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x0d5f4f89 # load x3 with 32 MSBs 0x000000000d5f4f89
sw x3, 0(x2) # store x3 (0x0d5f4f89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d5f4f89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000000d5f4f89 from memory into f13
la x2, scratch
li x3, 0x2cfd9f53 # load x3 with 32 MSBs 0x000000002cfd9f53
sw x3, 0(x2) # store x3 (0x2cfd9f53) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002cfd9f53
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000002cfd9f53 from memory into f21
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xc0dec0dec0defbff from memory into f7
fmadd.h f10, f13, f21, f7 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xb8ed05f3 # load x3 with 32 MSBs 0x00000000b8ed05f3
sw x3, 0(x2) # store x3 (0xb8ed05f3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b8ed05f3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000b8ed05f3 from memory into f22
la x2, scratch
li x3, 0xccf90381 # load x3 with 32 MSBs 0x00000000ccf90381
sw x3, 0(x2) # store x3 (0xccf90381) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ccf90381
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000ccf90381 from memory into f29
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f2
fmadd.h f24, f22, f29, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xebf3446a # load x3 with 32 MSBs 0x00000000ebf3446a
sw x3, 0(x2) # store x3 (0xebf3446a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ebf3446a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ebf3446a from memory into f2
la x2, scratch
li x3, 0x4cd66e69 # load x3 with 32 MSBs 0x000000004cd66e69
sw x3, 0(x2) # store x3 (0x4cd66e69) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004cd66e69
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000004cd66e69 from memory into f5
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffff0ffffc00 from memory into f11
fmadd.h f31, f2, f5, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x50e74fc3 # load x3 with 32 MSBs 0x0000000050e74fc3
sw x3, 0(x2) # store x3 (0x50e74fc3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000050e74fc3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000050e74fc3 from memory into f16
la x2, scratch
li x3, 0x6ec08bce # load x3 with 32 MSBs 0x000000006ec08bce
sw x3, 0(x2) # store x3 (0x6ec08bce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006ec08bce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000006ec08bce from memory into f15
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffeffffffff7e00 from memory into f12
fmadd.h f31, f16, f15, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xaed37e21 # load x3 with 32 MSBs 0x00000000aed37e21
sw x3, 0(x2) # store x3 (0xaed37e21) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aed37e21
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000aed37e21 from memory into f29
la x2, scratch
li x3, 0xb6387381 # load x3 with 32 MSBs 0x00000000b6387381
sw x3, 0(x2) # store x3 (0xb6387381) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b6387381
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000b6387381 from memory into f9
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffefffff7fff from memory into f27
fmadd.h f16, f29, f9, f27 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xeda1e5aa # load x3 with 32 MSBs 0x00000000eda1e5aa
sw x3, 0(x2) # store x3 (0xeda1e5aa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eda1e5aa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000eda1e5aa from memory into f24
la x2, scratch
li x3, 0x4c5644e4 # load x3 with 32 MSBs 0x000000004c5644e4
sw x3, 0(x2) # store x3 (0x4c5644e4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004c5644e4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000004c5644e4 from memory into f25
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f14
fmadd.h f1, f24, f25, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x0ea5ced4 # load x3 with 32 MSBs 0x000000000ea5ced4
sw x3, 0(x2) # store x3 (0x0ea5ced4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000ea5ced4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000000ea5ced4 from memory into f30
la x2, scratch
li x3, 0x197e0026 # load x3 with 32 MSBs 0x00000000197e0026
sw x3, 0(x2) # store x3 (0x197e0026) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000197e0026
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000197e0026 from memory into f12
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffcffff7dff from memory into f5
fmadd.h f18, f30, f12, f5 # perform operation

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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffff00000000 from memory into f30
la x2, scratch
li x3, 0xffc22e32 # load x3 with 32 MSBs 0x00000000ffc22e32
sw x3, 0(x2) # store x3 (0xffc22e32) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffc22e32
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ffc22e32 from memory into f11
flt.h x20, f30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfffffffffffe8000 from memory into f24
la x2, scratch
li x3, 0x585b7b34 # load x3 with 32 MSBs 0x00000000585b7b34
sw x3, 0(x2) # store x3 (0x585b7b34) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000585b7b34
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000585b7b34 from memory into f19
flt.h x1, f24, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffffffff3c00 from memory into f6
la x2, scratch
li x3, 0x73f9b67d # load x3 with 32 MSBs 0x0000000073f9b67d
sw x3, 0(x2) # store x3 (0x73f9b67d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000073f9b67d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000073f9b67d from memory into f10
flt.h x24, f6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfeedbee5beefbc00 from memory into f10
la x2, scratch
li x3, 0x0d65f843 # load x3 with 32 MSBs 0x000000000d65f843
sw x3, 0(x2) # store x3 (0x0d65f843) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d65f843
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000d65f843 from memory into f5
flt.h x18, f10, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffefffff0400 from memory into f7
la x2, scratch
li x3, 0xc79406a2 # load x3 with 32 MSBs 0x00000000c79406a2
sw x3, 0(x2) # store x3 (0xc79406a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c79406a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000c79406a2 from memory into f15
flt.h x14, f7, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000ffff8400 from memory into f14
la x2, scratch
li x3, 0x1c0c0edf # load x3 with 32 MSBs 0x000000001c0c0edf
sw x3, 0(x2) # store x3 (0x1c0c0edf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c0c0edf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000001c0c0edf from memory into f30
flt.h x17, f14, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xefffffffffff7bff from memory into f23
la x2, scratch
li x3, 0xbf3e0410 # load x3 with 32 MSBs 0x00000000bf3e0410
sw x3, 0(x2) # store x3 (0xbf3e0410) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf3e0410
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000bf3e0410 from memory into f31
flt.h x21, f23, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc0dec0dec0defbff from memory into f21
la x2, scratch
li x3, 0x64217630 # load x3 with 32 MSBs 0x0000000064217630
sw x3, 0(x2) # store x3 (0x64217630) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000064217630
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000064217630 from memory into f12
flt.h x29, f21, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f25
la x2, scratch
li x3, 0x8cebb1e9 # load x3 with 32 MSBs 0x000000008cebb1e9
sw x3, 0(x2) # store x3 (0x8cebb1e9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008cebb1e9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000008cebb1e9 from memory into f28
flt.h x9, f25, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffffffff0ffffc00 from memory into f6
la x2, scratch
li x3, 0x8e2bc2bf # load x3 with 32 MSBs 0x000000008e2bc2bf
sw x3, 0(x2) # store x3 (0x8e2bc2bf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008e2bc2bf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000008e2bc2bf from memory into f23
flt.h x13, f6, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffeffffffff7e00 from memory into f25
la x2, scratch
li x3, 0xba63b2d5 # load x3 with 32 MSBs 0x00000000ba63b2d5
sw x3, 0(x2) # store x3 (0xba63b2d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ba63b2d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ba63b2d5 from memory into f2
flt.h x27, f25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffefffff7fff from memory into f29
la x2, scratch
li x3, 0x32e95ab6 # load x3 with 32 MSBs 0x0000000032e95ab6
sw x3, 0(x2) # store x3 (0x32e95ab6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000032e95ab6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000032e95ab6 from memory into f5
flt.h x17, f29, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f23
la x2, scratch
li x3, 0x7207a3f3 # load x3 with 32 MSBs 0x000000007207a3f3
sw x3, 0(x2) # store x3 (0x7207a3f3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007207a3f3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000007207a3f3 from memory into f20
flt.h x19, f23, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfffffffcffff7dff from memory into f11
la x2, scratch
li x3, 0x6785f6e3 # load x3 with 32 MSBs 0x000000006785f6e3
sw x3, 0(x2) # store x3 (0x6785f6e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006785f6e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000006785f6e3 from memory into f16
flt.h x29, f11, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x09808e54 # load x3 with 32 MSBs 0x0000000009808e54
sw x3, 0(x2) # store x3 (0x09808e54) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000009808e54
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000009808e54 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffff00000000 from memory into f11
flt.h x8, f30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x9117c223 # load x3 with 32 MSBs 0x000000009117c223
sw x3, 0(x2) # store x3 (0x9117c223) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009117c223
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000009117c223 from memory into f17
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfffffffffffe8000 from memory into f26
flt.h x20, f17, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x14012fa7 # load x3 with 32 MSBs 0x0000000014012fa7
sw x3, 0(x2) # store x3 (0x14012fa7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000014012fa7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000014012fa7 from memory into f9
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fffffffffff3c00 from memory into f24
flt.h x15, f9, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x4ef33171 # load x3 with 32 MSBs 0x000000004ef33171
sw x3, 0(x2) # store x3 (0x4ef33171) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ef33171
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000004ef33171 from memory into f18
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
flt.h x9, f18, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xa3ede399 # load x3 with 32 MSBs 0x00000000a3ede399
sw x3, 0(x2) # store x3 (0xa3ede399) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a3ede399
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a3ede399 from memory into f3
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffefffff0400 from memory into f29
flt.h x6, f3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xca932473 # load x3 with 32 MSBs 0x00000000ca932473
sw x3, 0(x2) # store x3 (0xca932473) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ca932473
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000ca932473 from memory into f16
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000ffff8400 from memory into f14
flt.h x29, f16, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x609aa814 # load x3 with 32 MSBs 0x00000000609aa814
sw x3, 0(x2) # store x3 (0x609aa814) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000609aa814
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000609aa814 from memory into f12
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xefffffffffff7bff from memory into f10
flt.h x1, f12, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x3b3c3e41 # load x3 with 32 MSBs 0x000000003b3c3e41
sw x3, 0(x2) # store x3 (0x3b3c3e41) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b3c3e41
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003b3c3e41 from memory into f29
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xc0dec0dec0defbff from memory into f13
flt.h x10, f29, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xbb55d14e # load x3 with 32 MSBs 0x00000000bb55d14e
sw x3, 0(x2) # store x3 (0xbb55d14e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bb55d14e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000bb55d14e from memory into f7
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f24
flt.h x17, f7, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xc9eeccfa # load x3 with 32 MSBs 0x00000000c9eeccfa
sw x3, 0(x2) # store x3 (0xc9eeccfa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c9eeccfa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000c9eeccfa from memory into f12
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffff0ffffc00 from memory into f31
flt.h x7, f12, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x5da3d1f8 # load x3 with 32 MSBs 0x000000005da3d1f8
sw x3, 0(x2) # store x3 (0x5da3d1f8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005da3d1f8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000005da3d1f8 from memory into f25
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfffeffffffff7e00 from memory into f30
flt.h x26, f25, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x582eebef # load x3 with 32 MSBs 0x00000000582eebef
sw x3, 0(x2) # store x3 (0x582eebef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000582eebef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000582eebef from memory into f5
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffefffff7fff from memory into f1
flt.h x23, f5, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x3e38ca97 # load x3 with 32 MSBs 0x000000003e38ca97
sw x3, 0(x2) # store x3 (0x3e38ca97) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003e38ca97
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000003e38ca97 from memory into f9
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f21
flt.h x28, f9, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xa7d23312 # load x3 with 32 MSBs 0x00000000a7d23312
sw x3, 0(x2) # store x3 (0xa7d23312) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a7d23312
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a7d23312 from memory into f24
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffffcffff7dff from memory into f18
flt.h x19, f24, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 108)

#.EQU SIGSIZE,112


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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
la x21, scratch # base address
addi x21, x21, 1181 # sub immediate from rs1 to counter offset
fsh f9, -1181(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfffffffffffe8000 from memory into f31
la x20, scratch # base address
addi x20, x20, -1561 # sub immediate from rs1 to counter offset
fsh f31, 1561(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fffffffffff3c00 from memory into f9
la x7, scratch # base address
addi x7, x7, 753 # sub immediate from rs1 to counter offset
fsh f9, -753(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
la x27, scratch # base address
addi x27, x27, -1312 # sub immediate from rs1 to counter offset
fsh f14, 1312(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffefffff0400 from memory into f29
la x8, scratch # base address
addi x8, x8, -1452 # sub immediate from rs1 to counter offset
fsh f29, 1452(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000ffff8400 from memory into f24
la x20, scratch # base address
addi x20, x20, 575 # sub immediate from rs1 to counter offset
fsh f24, -575(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xefffffffffff7bff from memory into f15
la x8, scratch # base address
addi x8, x8, 531 # sub immediate from rs1 to counter offset
fsh f15, -531(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xc0dec0dec0defbff from memory into f17
la x16, scratch # base address
addi x16, x16, -1277 # sub immediate from rs1 to counter offset
fsh f17, 1277(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f19
la x5, scratch # base address
addi x5, x5, -1514 # sub immediate from rs1 to counter offset
fsh f19, 1514(x5) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffff0ffffc00 from memory into f26
la x7, scratch # base address
addi x7, x7, 1651 # sub immediate from rs1 to counter offset
fsh f26, -1651(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfffeffffffff7e00 from memory into f13
la x15, scratch # base address
addi x15, x15, 1413 # sub immediate from rs1 to counter offset
fsh f13, -1413(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffffefffff7fff from memory into f24
la x29, scratch # base address
addi x29, x29, 1476 # sub immediate from rs1 to counter offset
fsh f24, -1476(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
la x22, scratch # base address
addi x22, x22, 1999 # sub immediate from rs1 to counter offset
fsh f10, -1999(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
la x15, scratch # base address
addi x15, x15, -1632 # sub immediate from rs1 to counter offset
fsh f26, 1632(x15) # perform operation

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
li x3, 0x0000000057a1b7ac # load x3 with value 0x0000000057a1b7ac
sw x3, 0(x2) # store 0x0000000057a1b7ac in memory
flh f18, 0(x2) # load 0x0000000057a1b7ac from memory into f18
la x2, scratch
li x3, 0x00000000bb1c3a37 # load x3 with value 0x00000000bb1c3a37
sw x3, 0(x2) # store 0x00000000bb1c3a37 in memory
flh f10, 0(x2) # load 0x00000000bb1c3a37 from memory into f10
fmul.h f27, f18, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
la x2, scratch
li x3, 0xdfbbdc5f # load x3 with 32 MSBs 0x00000000dfbbdc5f
sw x3, 0(x2) # store x3 (0xdfbbdc5f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dfbbdc5f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000dfbbdc5f from memory into f7
fmul.h f18, f9, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffffffffe8000 from memory into f8
la x2, scratch
li x3, 0x93c0ea12 # load x3 with 32 MSBs 0x0000000093c0ea12
sw x3, 0(x2) # store x3 (0x93c0ea12) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000093c0ea12
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000093c0ea12 from memory into f22
fmul.h f21, f8, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fffffffffff3c00 from memory into f26
la x2, scratch
li x3, 0x5b8fc9e0 # load x3 with 32 MSBs 0x000000005b8fc9e0
sw x3, 0(x2) # store x3 (0x5b8fc9e0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005b8fc9e0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000005b8fc9e0 from memory into f24
fmul.h f14, f26, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfeedbee5beefbc00 from memory into f10
la x2, scratch
li x3, 0x8befa633 # load x3 with 32 MSBs 0x000000008befa633
sw x3, 0(x2) # store x3 (0x8befa633) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008befa633
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000008befa633 from memory into f13
fmul.h f14, f10, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffffffefffff0400 from memory into f18
la x2, scratch
li x3, 0x4f3b4ce7 # load x3 with 32 MSBs 0x000000004f3b4ce7
sw x3, 0(x2) # store x3 (0x4f3b4ce7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004f3b4ce7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000004f3b4ce7 from memory into f11
fmul.h f6, f18, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000ffff8400 from memory into f31
la x2, scratch
li x3, 0xd0d06ba6 # load x3 with 32 MSBs 0x00000000d0d06ba6
sw x3, 0(x2) # store x3 (0xd0d06ba6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d0d06ba6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000d0d06ba6 from memory into f14
fmul.h f18, f31, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xefffffffffff7bff from memory into f29
la x2, scratch
li x3, 0xa82f71bd # load x3 with 32 MSBs 0x00000000a82f71bd
sw x3, 0(x2) # store x3 (0xa82f71bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a82f71bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000a82f71bd from memory into f19
fmul.h f18, f29, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xc0dec0dec0defbff from memory into f13
la x2, scratch
li x3, 0x1107c51e # load x3 with 32 MSBs 0x000000001107c51e
sw x3, 0(x2) # store x3 (0x1107c51e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001107c51e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000001107c51e from memory into f1
fmul.h f5, f13, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f1
la x2, scratch
li x3, 0x02480011 # load x3 with 32 MSBs 0x0000000002480011
sw x3, 0(x2) # store x3 (0x02480011) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000002480011
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000002480011 from memory into f18
fmul.h f10, f1, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff0ffffc00 from memory into f22
la x2, scratch
li x3, 0x3125f002 # load x3 with 32 MSBs 0x000000003125f002
sw x3, 0(x2) # store x3 (0x3125f002) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003125f002
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000003125f002 from memory into f23
fmul.h f18, f22, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfffeffffffff7e00 from memory into f14
la x2, scratch
li x3, 0xe779402c # load x3 with 32 MSBs 0x00000000e779402c
sw x3, 0(x2) # store x3 (0xe779402c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e779402c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000e779402c from memory into f30
fmul.h f5, f14, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffefffff7fff from memory into f9
la x2, scratch
li x3, 0x333e6596 # load x3 with 32 MSBs 0x00000000333e6596
sw x3, 0(x2) # store x3 (0x333e6596) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000333e6596
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000333e6596 from memory into f11
fmul.h f8, f9, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f17
la x2, scratch
li x3, 0x8e67a92c # load x3 with 32 MSBs 0x000000008e67a92c
sw x3, 0(x2) # store x3 (0x8e67a92c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008e67a92c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000008e67a92c from memory into f1
fmul.h f15, f17, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfffffffcffff7dff from memory into f27
la x2, scratch
li x3, 0xfa394000 # load x3 with 32 MSBs 0x00000000fa394000
sw x3, 0(x2) # store x3 (0xfa394000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fa394000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000fa394000 from memory into f12
fmul.h f30, f27, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x90dcdd9e # load x3 with 32 MSBs 0x0000000090dcdd9e
sw x3, 0(x2) # store x3 (0x90dcdd9e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000090dcdd9e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000090dcdd9e from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffff00000000 from memory into f3
fmul.h f2, f14, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x36203fd4 # load x3 with 32 MSBs 0x0000000036203fd4
sw x3, 0(x2) # store x3 (0x36203fd4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000036203fd4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000036203fd4 from memory into f28
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfffffffffffe8000 from memory into f1
fmul.h f24, f28, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x686bc2eb # load x3 with 32 MSBs 0x00000000686bc2eb
sw x3, 0(x2) # store x3 (0x686bc2eb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000686bc2eb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000686bc2eb from memory into f12
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fffffffffff3c00 from memory into f10
fmul.h f20, f12, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xe506735e # load x3 with 32 MSBs 0x00000000e506735e
sw x3, 0(x2) # store x3 (0xe506735e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e506735e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000e506735e from memory into f3
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfeedbee5beefbc00 from memory into f7
fmul.h f14, f3, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x18ead9ce # load x3 with 32 MSBs 0x0000000018ead9ce
sw x3, 0(x2) # store x3 (0x18ead9ce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000018ead9ce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000018ead9ce from memory into f11
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffefffff0400 from memory into f30
fmul.h f25, f11, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x92543515 # load x3 with 32 MSBs 0x0000000092543515
sw x3, 0(x2) # store x3 (0x92543515) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000092543515
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000092543515 from memory into f7
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000ffff8400 from memory into f16
fmul.h f12, f7, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x931f4e7b # load x3 with 32 MSBs 0x00000000931f4e7b
sw x3, 0(x2) # store x3 (0x931f4e7b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000931f4e7b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000931f4e7b from memory into f26
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
fmul.h f20, f26, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x09279b9e # load x3 with 32 MSBs 0x0000000009279b9e
sw x3, 0(x2) # store x3 (0x09279b9e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000009279b9e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000009279b9e from memory into f3
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xc0dec0dec0defbff from memory into f6
fmul.h f15, f3, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xfe4345e3 # load x3 with 32 MSBs 0x00000000fe4345e3
sw x3, 0(x2) # store x3 (0xfe4345e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe4345e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000fe4345e3 from memory into f14
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f23
fmul.h f20, f14, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x19a688a4 # load x3 with 32 MSBs 0x0000000019a688a4
sw x3, 0(x2) # store x3 (0x19a688a4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000019a688a4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000019a688a4 from memory into f18
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffff0ffffc00 from memory into f15
fmul.h f11, f18, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xe5e349ae # load x3 with 32 MSBs 0x00000000e5e349ae
sw x3, 0(x2) # store x3 (0xe5e349ae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e5e349ae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e5e349ae from memory into f23
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfffeffffffff7e00 from memory into f28
fmul.h f22, f23, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x572159c7 # load x3 with 32 MSBs 0x00000000572159c7
sw x3, 0(x2) # store x3 (0x572159c7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000572159c7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000572159c7 from memory into f29
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffefffff7fff from memory into f15
fmul.h f2, f29, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x48369c89 # load x3 with 32 MSBs 0x0000000048369c89
sw x3, 0(x2) # store x3 (0x48369c89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000048369c89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000048369c89 from memory into f11
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f5
fmul.h f20, f11, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x2a6875b5 # load x3 with 32 MSBs 0x000000002a6875b5
sw x3, 0(x2) # store x3 (0x2a6875b5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002a6875b5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000002a6875b5 from memory into f6
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfffffffcffff7dff from memory into f19
fmul.h f29, f6, f19 # perform operation

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
addi x17, x17, 1543 # sub immediate from rs1 to counter offset
li x30, 0x00000000 # load x3 with 32 LSBs of 0x00000000f3c0086a
li x5, 0xf3c0086a # load x3 with 32 MSBs 0x00000000f3c0086a
sw x30, -1543(x17) # store x3 (0x00000000) in memory
addi x17, x17, 4 # move address up by 4
sw x5, -1543(x17) # store x4 (0xf3c0086a) in memory 4 bytes after x3
addi x17, x17, - 4 # move back to scratch
flh f20, -1543(x17) # perform operation

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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffff00000000 from memory into f3
la x2, scratch
li x3, 0xa2bb86ef # load x3 with 32 MSBs 0x00000000a2bb86ef
sw x3, 0(x2) # store x3 (0xa2bb86ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a2bb86ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000a2bb86ef from memory into f6
feq.h x7, f3, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffffffffffe8000 from memory into f12
la x2, scratch
li x3, 0xbf86e6d7 # load x3 with 32 MSBs 0x00000000bf86e6d7
sw x3, 0(x2) # store x3 (0xbf86e6d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf86e6d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000bf86e6d7 from memory into f25
feq.h x27, f12, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
la x2, scratch
li x3, 0xa825dffd # load x3 with 32 MSBs 0x00000000a825dffd
sw x3, 0(x2) # store x3 (0xa825dffd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a825dffd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000a825dffd from memory into f1
feq.h x15, f30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfeedbee5beefbc00 from memory into f22
la x2, scratch
li x3, 0x21bac4c0 # load x3 with 32 MSBs 0x0000000021bac4c0
sw x3, 0(x2) # store x3 (0x21bac4c0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000021bac4c0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000021bac4c0 from memory into f24
feq.h x31, f22, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffefffff0400 from memory into f5
la x2, scratch
li x3, 0x661343d2 # load x3 with 32 MSBs 0x00000000661343d2
sw x3, 0(x2) # store x3 (0x661343d2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000661343d2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000661343d2 from memory into f12
feq.h x15, f5, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
la x2, scratch
li x3, 0x1b505fd6 # load x3 with 32 MSBs 0x000000001b505fd6
sw x3, 0(x2) # store x3 (0x1b505fd6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001b505fd6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000001b505fd6 from memory into f14
feq.h x9, f21, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
la x2, scratch
li x3, 0xe6b65087 # load x3 with 32 MSBs 0x00000000e6b65087
sw x3, 0(x2) # store x3 (0xe6b65087) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e6b65087
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000e6b65087 from memory into f7
feq.h x23, f8, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc0dec0dec0defbff from memory into f27
la x2, scratch
li x3, 0xe9492716 # load x3 with 32 MSBs 0x00000000e9492716
sw x3, 0(x2) # store x3 (0xe9492716) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e9492716
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000e9492716 from memory into f25
feq.h x16, f27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f17
la x2, scratch
li x3, 0x0b66f61a # load x3 with 32 MSBs 0x000000000b66f61a
sw x3, 0(x2) # store x3 (0x0b66f61a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000b66f61a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000000b66f61a from memory into f26
feq.h x15, f17, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff0ffffc00 from memory into f22
la x2, scratch
li x3, 0xec9095d5 # load x3 with 32 MSBs 0x00000000ec9095d5
sw x3, 0(x2) # store x3 (0xec9095d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ec9095d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ec9095d5 from memory into f23
feq.h x28, f22, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfffeffffffff7e00 from memory into f11
la x2, scratch
li x3, 0x431f7b15 # load x3 with 32 MSBs 0x00000000431f7b15
sw x3, 0(x2) # store x3 (0x431f7b15) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000431f7b15
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000431f7b15 from memory into f24
feq.h x16, f11, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffefffff7fff from memory into f5
la x2, scratch
li x3, 0x08679e0d # load x3 with 32 MSBs 0x0000000008679e0d
sw x3, 0(x2) # store x3 (0x08679e0d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000008679e0d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000008679e0d from memory into f7
feq.h x2, f5, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f18
la x2, scratch
li x3, 0x40ef124f # load x3 with 32 MSBs 0x0000000040ef124f
sw x3, 0(x2) # store x3 (0x40ef124f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000040ef124f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000040ef124f from memory into f8
feq.h x21, f18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffffffcffff7dff from memory into f29
la x2, scratch
li x3, 0x87741b87 # load x3 with 32 MSBs 0x0000000087741b87
sw x3, 0(x2) # store x3 (0x87741b87) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000087741b87
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000087741b87 from memory into f7
feq.h x16, f29, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xb336a78d # load x3 with 32 MSBs 0x00000000b336a78d
sw x3, 0(x2) # store x3 (0xb336a78d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b336a78d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000b336a78d from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
feq.h x5, f16, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x306e812c # load x3 with 32 MSBs 0x00000000306e812c
sw x3, 0(x2) # store x3 (0x306e812c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000306e812c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000306e812c from memory into f6
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfffffffffffe8000 from memory into f19
feq.h x21, f6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x7b78b00d # load x3 with 32 MSBs 0x000000007b78b00d
sw x3, 0(x2) # store x3 (0x7b78b00d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007b78b00d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000007b78b00d from memory into f3
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fffffffffff3c00 from memory into f27
feq.h x26, f3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x17317ac7 # load x3 with 32 MSBs 0x0000000017317ac7
sw x3, 0(x2) # store x3 (0x17317ac7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000017317ac7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000017317ac7 from memory into f5
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfeedbee5beefbc00 from memory into f1
feq.h x22, f5, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x6c00cd04 # load x3 with 32 MSBs 0x000000006c00cd04
sw x3, 0(x2) # store x3 (0x6c00cd04) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006c00cd04
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000006c00cd04 from memory into f10
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
feq.h x29, f10, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xde84784e # load x3 with 32 MSBs 0x00000000de84784e
sw x3, 0(x2) # store x3 (0xde84784e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de84784e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000de84784e from memory into f18
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
feq.h x11, f18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x42e79c26 # load x3 with 32 MSBs 0x0000000042e79c26
sw x3, 0(x2) # store x3 (0x42e79c26) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000042e79c26
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000042e79c26 from memory into f7
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xefffffffffff7bff from memory into f29
feq.h x22, f7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x00480ce7 # load x3 with 32 MSBs 0x0000000000480ce7
sw x3, 0(x2) # store x3 (0x00480ce7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000480ce7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000000480ce7 from memory into f18
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc0dec0dec0defbff from memory into f27
feq.h x3, f18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x67e3260d # load x3 with 32 MSBs 0x0000000067e3260d
sw x3, 0(x2) # store x3 (0x67e3260d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000067e3260d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000067e3260d from memory into f1
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f16
feq.h x19, f1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x1f328e89 # load x3 with 32 MSBs 0x000000001f328e89
sw x3, 0(x2) # store x3 (0x1f328e89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f328e89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000001f328e89 from memory into f8
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff0ffffc00 from memory into f22
feq.h x7, f8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xb871dbf1 # load x3 with 32 MSBs 0x00000000b871dbf1
sw x3, 0(x2) # store x3 (0xb871dbf1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b871dbf1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000b871dbf1 from memory into f8
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffeffffffff7e00 from memory into f23
feq.h x24, f8, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xfb1fdf0f # load x3 with 32 MSBs 0x00000000fb1fdf0f
sw x3, 0(x2) # store x3 (0xfb1fdf0f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fb1fdf0f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000fb1fdf0f from memory into f28
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffefffff7fff from memory into f21
feq.h x3, f28, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x657376a7 # load x3 with 32 MSBs 0x00000000657376a7
sw x3, 0(x2) # store x3 (0x657376a7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000657376a7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000657376a7 from memory into f6
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f8
feq.h x7, f6, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x73ba48c9 # load x3 with 32 MSBs 0x0000000073ba48c9
sw x3, 0(x2) # store x3 (0x73ba48c9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000073ba48c9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000073ba48c9 from memory into f10
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfffffffcffff7dff from memory into f6
feq.h x15, f10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 108)

#.EQU SIGSIZE,112


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
li x3, 0x0000000038306b68 # load x3 with value 0x0000000038306b68
sw x3, 0(x2) # store 0x0000000038306b68 in memory
flh f21, 0(x2) # load 0x0000000038306b68 from memory into f21
la x2, scratch
li x3, 0x000000001692ad4b # load x3 with value 0x000000001692ad4b
sw x3, 0(x2) # store 0x000000001692ad4b in memory
flh f10, 0(x2) # load 0x000000001692ad4b from memory into f10
fsub.h f13, f21, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffff00000000 from memory into f10
la x2, scratch
li x3, 0x27242d0e # load x3 with 32 MSBs 0x0000000027242d0e
sw x3, 0(x2) # store x3 (0x27242d0e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027242d0e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000027242d0e from memory into f1
fsub.h f26, f10, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffffffffffe8000 from memory into f7
la x2, scratch
li x3, 0xb18641a9 # load x3 with 32 MSBs 0x00000000b18641a9
sw x3, 0(x2) # store x3 (0xb18641a9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b18641a9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000b18641a9 from memory into f14
fsub.h f2, f7, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fffffffffff3c00 from memory into f10
la x2, scratch
li x3, 0xe27dce7a # load x3 with 32 MSBs 0x00000000e27dce7a
sw x3, 0(x2) # store x3 (0xe27dce7a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e27dce7a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000e27dce7a from memory into f28
fsub.h f3, f10, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfeedbee5beefbc00 from memory into f17
la x2, scratch
li x3, 0xb18574eb # load x3 with 32 MSBs 0x00000000b18574eb
sw x3, 0(x2) # store x3 (0xb18574eb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b18574eb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b18574eb from memory into f3
fsub.h f20, f17, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffffffefffff0400 from memory into f19
la x2, scratch
li x3, 0x9707140e # load x3 with 32 MSBs 0x000000009707140e
sw x3, 0(x2) # store x3 (0x9707140e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009707140e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000009707140e from memory into f12
fsub.h f14, f19, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000ffff8400 from memory into f8
la x2, scratch
li x3, 0xbb8784b7 # load x3 with 32 MSBs 0x00000000bb8784b7
sw x3, 0(x2) # store x3 (0xbb8784b7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bb8784b7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000bb8784b7 from memory into f3
fsub.h f10, f8, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xefffffffffff7bff from memory into f19
la x2, scratch
li x3, 0x0709cf37 # load x3 with 32 MSBs 0x000000000709cf37
sw x3, 0(x2) # store x3 (0x0709cf37) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000709cf37
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000000709cf37 from memory into f17
fsub.h f22, f19, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xc0dec0dec0defbff from memory into f2
la x2, scratch
li x3, 0xa0960751 # load x3 with 32 MSBs 0x00000000a0960751
sw x3, 0(x2) # store x3 (0xa0960751) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0960751
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000a0960751 from memory into f22
fsub.h f16, f2, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f18
la x2, scratch
li x3, 0x6a9c7910 # load x3 with 32 MSBs 0x000000006a9c7910
sw x3, 0(x2) # store x3 (0x6a9c7910) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006a9c7910
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000006a9c7910 from memory into f20
fsub.h f15, f18, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffff0ffffc00 from memory into f16
la x2, scratch
li x3, 0x89b00e5c # load x3 with 32 MSBs 0x0000000089b00e5c
sw x3, 0(x2) # store x3 (0x89b00e5c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000089b00e5c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000089b00e5c from memory into f26
fsub.h f23, f16, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffeffffffff7e00 from memory into f12
la x2, scratch
li x3, 0x60161e1f # load x3 with 32 MSBs 0x0000000060161e1f
sw x3, 0(x2) # store x3 (0x60161e1f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000060161e1f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000060161e1f from memory into f25
fsub.h f14, f12, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffffefffff7fff from memory into f17
la x2, scratch
li x3, 0xba7af58a # load x3 with 32 MSBs 0x00000000ba7af58a
sw x3, 0(x2) # store x3 (0xba7af58a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ba7af58a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ba7af58a from memory into f26
fsub.h f29, f17, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f27
la x2, scratch
li x3, 0x292ffec2 # load x3 with 32 MSBs 0x00000000292ffec2
sw x3, 0(x2) # store x3 (0x292ffec2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000292ffec2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000292ffec2 from memory into f19
fsub.h f6, f27, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffffffcffff7dff from memory into f29
la x2, scratch
li x3, 0x546471f6 # load x3 with 32 MSBs 0x00000000546471f6
sw x3, 0(x2) # store x3 (0x546471f6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000546471f6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000546471f6 from memory into f28
fsub.h f20, f29, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x705769e7 # load x3 with 32 MSBs 0x00000000705769e7
sw x3, 0(x2) # store x3 (0x705769e7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000705769e7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000705769e7 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffff00000000 from memory into f3
fsub.h f7, f23, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x5582155d # load x3 with 32 MSBs 0x000000005582155d
sw x3, 0(x2) # store x3 (0x5582155d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005582155d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000005582155d from memory into f17
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfffffffffffe8000 from memory into f1
fsub.h f8, f17, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xee64146c # load x3 with 32 MSBs 0x00000000ee64146c
sw x3, 0(x2) # store x3 (0xee64146c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ee64146c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000ee64146c from memory into f30
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffffffff3c00 from memory into f6
fsub.h f1, f30, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x500113ef # load x3 with 32 MSBs 0x00000000500113ef
sw x3, 0(x2) # store x3 (0x500113ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000500113ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000500113ef from memory into f24
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfeedbee5beefbc00 from memory into f20
fsub.h f2, f24, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xc4747383 # load x3 with 32 MSBs 0x00000000c4747383
sw x3, 0(x2) # store x3 (0xc4747383) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c4747383
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000c4747383 from memory into f3
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffffffefffff0400 from memory into f2
fsub.h f20, f3, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xfebf5921 # load x3 with 32 MSBs 0x00000000febf5921
sw x3, 0(x2) # store x3 (0xfebf5921) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000febf5921
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000febf5921 from memory into f27
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000ffff8400 from memory into f15
fsub.h f31, f27, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xd0167688 # load x3 with 32 MSBs 0x00000000d0167688
sw x3, 0(x2) # store x3 (0xd0167688) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d0167688
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000d0167688 from memory into f5
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xefffffffffff7bff from memory into f17
fsub.h f22, f5, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xa0eb48c6 # load x3 with 32 MSBs 0x00000000a0eb48c6
sw x3, 0(x2) # store x3 (0xa0eb48c6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0eb48c6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000a0eb48c6 from memory into f6
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xc0dec0dec0defbff from memory into f10
fsub.h f27, f6, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x378840d9 # load x3 with 32 MSBs 0x00000000378840d9
sw x3, 0(x2) # store x3 (0x378840d9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000378840d9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000378840d9 from memory into f10
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f29
fsub.h f20, f10, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x4652b24b # load x3 with 32 MSBs 0x000000004652b24b
sw x3, 0(x2) # store x3 (0x4652b24b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004652b24b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000004652b24b from memory into f9
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffff0ffffc00 from memory into f29
fsub.h f14, f9, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xb6e27d82 # load x3 with 32 MSBs 0x00000000b6e27d82
sw x3, 0(x2) # store x3 (0xb6e27d82) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b6e27d82
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000b6e27d82 from memory into f26
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfffeffffffff7e00 from memory into f1
fsub.h f12, f26, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xbf5bf94d # load x3 with 32 MSBs 0x00000000bf5bf94d
sw x3, 0(x2) # store x3 (0xbf5bf94d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf5bf94d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000bf5bf94d from memory into f1
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffefffff7fff from memory into f3
fsub.h f9, f1, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x082eeab2 # load x3 with 32 MSBs 0x00000000082eeab2
sw x3, 0(x2) # store x3 (0x082eeab2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000082eeab2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000082eeab2 from memory into f2
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f16
fsub.h f11, f2, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xb011737d # load x3 with 32 MSBs 0x00000000b011737d
sw x3, 0(x2) # store x3 (0xb011737d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b011737d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000b011737d from memory into f24
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffcffff7dff from memory into f20
fsub.h f18, f24, f20 # perform operation

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
li x3, 0x00000000ecd9bdb6 # load x3 with value 0x00000000ecd9bdb6
sw x3, 0(x2) # store 0x00000000ecd9bdb6 in memory
flh f26, 0(x2) # load 0x00000000ecd9bdb6 from memory into f26
la x2, scratch
li x3, 0x00000000d75dd1b3 # load x3 with value 0x00000000d75dd1b3
sw x3, 0(x2) # store 0x00000000d75dd1b3 in memory
flh f17, 0(x2) # load 0x00000000d75dd1b3 from memory into f17
fadd.h f12, f26, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffff00000000 from memory into f7
la x2, scratch
li x3, 0x60b97a33 # load x3 with 32 MSBs 0x0000000060b97a33
sw x3, 0(x2) # store x3 (0x60b97a33) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000060b97a33
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000060b97a33 from memory into f27
fadd.h f11, f7, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffffffffe8000 from memory into f18
la x2, scratch
li x3, 0x99fa9edb # load x3 with 32 MSBs 0x0000000099fa9edb
sw x3, 0(x2) # store x3 (0x99fa9edb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000099fa9edb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000099fa9edb from memory into f16
fadd.h f27, f18, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fffffffffff3c00 from memory into f10
la x2, scratch
li x3, 0xa3af6562 # load x3 with 32 MSBs 0x00000000a3af6562
sw x3, 0(x2) # store x3 (0xa3af6562) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a3af6562
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000a3af6562 from memory into f12
fadd.h f13, f10, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfeedbee5beefbc00 from memory into f8
la x2, scratch
li x3, 0xbd4bed01 # load x3 with 32 MSBs 0x00000000bd4bed01
sw x3, 0(x2) # store x3 (0xbd4bed01) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bd4bed01
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000bd4bed01 from memory into f5
fadd.h f20, f8, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffefffff0400 from memory into f22
la x2, scratch
li x3, 0x0ed74fc9 # load x3 with 32 MSBs 0x000000000ed74fc9
sw x3, 0(x2) # store x3 (0x0ed74fc9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000ed74fc9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000000ed74fc9 from memory into f1
fadd.h f27, f22, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000ffff8400 from memory into f25
la x2, scratch
li x3, 0xdec55e86 # load x3 with 32 MSBs 0x00000000dec55e86
sw x3, 0(x2) # store x3 (0xdec55e86) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dec55e86
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000dec55e86 from memory into f27
fadd.h f26, f25, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xefffffffffff7bff from memory into f9
la x2, scratch
li x3, 0x1cf32e78 # load x3 with 32 MSBs 0x000000001cf32e78
sw x3, 0(x2) # store x3 (0x1cf32e78) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001cf32e78
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000001cf32e78 from memory into f27
fadd.h f11, f9, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xc0dec0dec0defbff from memory into f30
la x2, scratch
li x3, 0x6b97de14 # load x3 with 32 MSBs 0x000000006b97de14
sw x3, 0(x2) # store x3 (0x6b97de14) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b97de14
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000006b97de14 from memory into f1
fadd.h f22, f30, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f25
la x2, scratch
li x3, 0x5303a753 # load x3 with 32 MSBs 0x000000005303a753
sw x3, 0(x2) # store x3 (0x5303a753) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005303a753
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000005303a753 from memory into f24
fadd.h f14, f25, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffff0ffffc00 from memory into f15
la x2, scratch
li x3, 0x12aa01c5 # load x3 with 32 MSBs 0x0000000012aa01c5
sw x3, 0(x2) # store x3 (0x12aa01c5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000012aa01c5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000012aa01c5 from memory into f8
fadd.h f29, f15, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
la x2, scratch
li x3, 0x754f4d06 # load x3 with 32 MSBs 0x00000000754f4d06
sw x3, 0(x2) # store x3 (0x754f4d06) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000754f4d06
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000754f4d06 from memory into f17
fadd.h f7, f2, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xffffffefffff7fff from memory into f12
la x2, scratch
li x3, 0x392403d8 # load x3 with 32 MSBs 0x00000000392403d8
sw x3, 0(x2) # store x3 (0x392403d8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000392403d8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000392403d8 from memory into f21
fadd.h f22, f12, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f30
la x2, scratch
li x3, 0x64cae9e7 # load x3 with 32 MSBs 0x0000000064cae9e7
sw x3, 0(x2) # store x3 (0x64cae9e7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000064cae9e7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000064cae9e7 from memory into f18
fadd.h f6, f30, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffcffff7dff from memory into f20
la x2, scratch
li x3, 0x57c155fa # load x3 with 32 MSBs 0x0000000057c155fa
sw x3, 0(x2) # store x3 (0x57c155fa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000057c155fa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000057c155fa from memory into f14
fadd.h f12, f20, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x38c1a340 # load x3 with 32 MSBs 0x0000000038c1a340
sw x3, 0(x2) # store x3 (0x38c1a340) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000038c1a340
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000038c1a340 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffff00000000 from memory into f31
fadd.h f8, f1, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x67b1649e # load x3 with 32 MSBs 0x0000000067b1649e
sw x3, 0(x2) # store x3 (0x67b1649e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000067b1649e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000067b1649e from memory into f3
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffffffffe8000 from memory into f18
fadd.h f9, f3, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x662b1575 # load x3 with 32 MSBs 0x00000000662b1575
sw x3, 0(x2) # store x3 (0x662b1575) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000662b1575
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000662b1575 from memory into f17
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
fadd.h f19, f17, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xb38ee473 # load x3 with 32 MSBs 0x00000000b38ee473
sw x3, 0(x2) # store x3 (0xb38ee473) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b38ee473
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000b38ee473 from memory into f18
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfeedbee5beefbc00 from memory into f10
fadd.h f26, f18, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xf2d14e97 # load x3 with 32 MSBs 0x00000000f2d14e97
sw x3, 0(x2) # store x3 (0xf2d14e97) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f2d14e97
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000f2d14e97 from memory into f1
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffefffff0400 from memory into f9
fadd.h f11, f1, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xcd2bdaff # load x3 with 32 MSBs 0x00000000cd2bdaff
sw x3, 0(x2) # store x3 (0xcd2bdaff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cd2bdaff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000cd2bdaff from memory into f20
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000ffff8400 from memory into f18
fadd.h f7, f20, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xf33ee3a7 # load x3 with 32 MSBs 0x00000000f33ee3a7
sw x3, 0(x2) # store x3 (0xf33ee3a7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f33ee3a7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000f33ee3a7 from memory into f31
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xefffffffffff7bff from memory into f11
fadd.h f30, f31, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xf1f9af1f # load x3 with 32 MSBs 0x00000000f1f9af1f
sw x3, 0(x2) # store x3 (0xf1f9af1f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f1f9af1f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000f1f9af1f from memory into f21
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xc0dec0dec0defbff from memory into f26
fadd.h f25, f21, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x5be32076 # load x3 with 32 MSBs 0x000000005be32076
sw x3, 0(x2) # store x3 (0x5be32076) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005be32076
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000005be32076 from memory into f24
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f17
fadd.h f22, f24, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x343d3931 # load x3 with 32 MSBs 0x00000000343d3931
sw x3, 0(x2) # store x3 (0x343d3931) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000343d3931
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000343d3931 from memory into f14
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffffffff0ffffc00 from memory into f20
fadd.h f5, f14, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xbd9a5628 # load x3 with 32 MSBs 0x00000000bd9a5628
sw x3, 0(x2) # store x3 (0xbd9a5628) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bd9a5628
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000bd9a5628 from memory into f31
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffeffffffff7e00 from memory into f3
fadd.h f22, f31, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xd98716c3 # load x3 with 32 MSBs 0x00000000d98716c3
sw x3, 0(x2) # store x3 (0xd98716c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d98716c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d98716c3 from memory into f18
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffffffefffff7fff from memory into f6
fadd.h f29, f18, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x91fa6f1b # load x3 with 32 MSBs 0x0000000091fa6f1b
sw x3, 0(x2) # store x3 (0x91fa6f1b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000091fa6f1b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000091fa6f1b from memory into f28
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f20
fadd.h f27, f28, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x63e2d88a # load x3 with 32 MSBs 0x0000000063e2d88a
sw x3, 0(x2) # store x3 (0x63e2d88a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000063e2d88a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000063e2d88a from memory into f21
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffcffff7dff from memory into f5
fadd.h f23, f21, f5 # perform operation

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
li x3, 0x000000008aa9c5d0 # load x3 with value 0x000000008aa9c5d0
sw x3, 0(x2) # store 0x000000008aa9c5d0 in memory
flh f8, 0(x2) # load 0x000000008aa9c5d0 from memory into f8
fsqrt.h f22, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f15)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffff00000000 from memory into f15
fsqrt.h f17, f15 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f5)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffffffe8000 from memory into f5
fsqrt.h f9, f5 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fffffffffff3c00 from memory into f19
fsqrt.h f27, f19 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfeedbee5beefbc00 from memory into f22
fsqrt.h f29, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffffffefffff0400 from memory into f19
fsqrt.h f29, f19 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000ffff8400 from memory into f14
fsqrt.h f22, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xefffffffffff7bff from memory into f23
fsqrt.h f3, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xc0dec0dec0defbff from memory into f28
fsqrt.h f17, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f17
fsqrt.h f13, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffff0ffffc00 from memory into f7
fsqrt.h f13, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffeffffffff7e00 from memory into f3
fsqrt.h f10, f3 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffefffff7fff from memory into f29
fsqrt.h f15, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f1
fsqrt.h f27, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfffffffcffff7dff from memory into f19
fsqrt.h f16, f19 # perform operation second time to make sure flags don't change

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
li x17, 0xdea78bc0 # load immediate value into integer register
fcvt.h.w f3, x17 # perform operation

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
li x3, 0x000000005cecebc6 # load x3 with value 0x000000005cecebc6
sw x3, 0(x2) # store 0x000000005cecebc6 in memory
flh f28, 0(x2) # load 0x000000005cecebc6 from memory into f28
la x2, scratch
li x3, 0x00000000efdc9ef6 # load x3 with value 0x00000000efdc9ef6
sw x3, 0(x2) # store 0x00000000efdc9ef6 in memory
flh f2, 0(x2) # load 0x00000000efdc9ef6 from memory into f2
fmin.h f3, f28, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffff00000000 from memory into f15
la x2, scratch
li x3, 0x900dd200 # load x3 with 32 MSBs 0x00000000900dd200
sw x3, 0(x2) # store x3 (0x900dd200) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000900dd200
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000900dd200 from memory into f21
fmin.h f25, f15, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfffffffffffe8000 from memory into f28
la x2, scratch
li x3, 0x555a896d # load x3 with 32 MSBs 0x00000000555a896d
sw x3, 0(x2) # store x3 (0x555a896d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000555a896d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000555a896d from memory into f18
fmin.h f11, f28, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7fffffffffff3c00 from memory into f21
la x2, scratch
li x3, 0xd81ddcef # load x3 with 32 MSBs 0x00000000d81ddcef
sw x3, 0(x2) # store x3 (0xd81ddcef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d81ddcef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000d81ddcef from memory into f12
fmin.h f29, f21, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeedbee5beefbc00 from memory into f3
la x2, scratch
li x3, 0x4ee4fa5f # load x3 with 32 MSBs 0x000000004ee4fa5f
sw x3, 0(x2) # store x3 (0x4ee4fa5f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ee4fa5f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000004ee4fa5f from memory into f27
fmin.h f28, f3, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffefffff0400 from memory into f27
la x2, scratch
li x3, 0xd7e5e621 # load x3 with 32 MSBs 0x00000000d7e5e621
sw x3, 0(x2) # store x3 (0xd7e5e621) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d7e5e621
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000d7e5e621 from memory into f7
fmin.h f20, f27, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000ffff8400 from memory into f27
la x2, scratch
li x3, 0x562897da # load x3 with 32 MSBs 0x00000000562897da
sw x3, 0(x2) # store x3 (0x562897da) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000562897da
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000562897da from memory into f16
fmin.h f23, f27, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xefffffffffff7bff from memory into f24
la x2, scratch
li x3, 0x71016f6e # load x3 with 32 MSBs 0x0000000071016f6e
sw x3, 0(x2) # store x3 (0x71016f6e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000071016f6e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000071016f6e from memory into f15
fmin.h f8, f24, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc0dec0dec0defbff from memory into f11
la x2, scratch
li x3, 0xde176b2b # load x3 with 32 MSBs 0x00000000de176b2b
sw x3, 0(x2) # store x3 (0xde176b2b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de176b2b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000de176b2b from memory into f31
fmin.h f12, f11, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f20
la x2, scratch
li x3, 0xdce37c6f # load x3 with 32 MSBs 0x00000000dce37c6f
sw x3, 0(x2) # store x3 (0xdce37c6f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dce37c6f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000dce37c6f from memory into f14
fmin.h f9, f20, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffffff0ffffc00 from memory into f17
la x2, scratch
li x3, 0x4f18d3f1 # load x3 with 32 MSBs 0x000000004f18d3f1
sw x3, 0(x2) # store x3 (0x4f18d3f1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004f18d3f1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000004f18d3f1 from memory into f19
fmin.h f22, f17, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfffeffffffff7e00 from memory into f21
la x2, scratch
li x3, 0x1e275883 # load x3 with 32 MSBs 0x000000001e275883
sw x3, 0(x2) # store x3 (0x1e275883) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001e275883
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000001e275883 from memory into f20
fmin.h f18, f21, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
la x2, scratch
li x3, 0x27a930b9 # load x3 with 32 MSBs 0x0000000027a930b9
sw x3, 0(x2) # store x3 (0x27a930b9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027a930b9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000027a930b9 from memory into f18
fmin.h f11, f13, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
la x2, scratch
li x3, 0x0b424aa9 # load x3 with 32 MSBs 0x000000000b424aa9
sw x3, 0(x2) # store x3 (0x0b424aa9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000b424aa9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000000b424aa9 from memory into f21
fmin.h f18, f3, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfffffffcffff7dff from memory into f17
la x2, scratch
li x3, 0x1052bc7d # load x3 with 32 MSBs 0x000000001052bc7d
sw x3, 0(x2) # store x3 (0x1052bc7d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001052bc7d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000001052bc7d from memory into f30
fmin.h f14, f17, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe681ac4e # load x3 with 32 MSBs 0x00000000e681ac4e
sw x3, 0(x2) # store x3 (0xe681ac4e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e681ac4e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000e681ac4e from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
fmin.h f29, f10, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x82106b9d # load x3 with 32 MSBs 0x0000000082106b9d
sw x3, 0(x2) # store x3 (0x82106b9d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000082106b9d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000082106b9d from memory into f27
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfffffffffffe8000 from memory into f17
fmin.h f13, f27, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x4ac25d0b # load x3 with 32 MSBs 0x000000004ac25d0b
sw x3, 0(x2) # store x3 (0x4ac25d0b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ac25d0b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000004ac25d0b from memory into f15
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fffffffffff3c00 from memory into f9
fmin.h f21, f15, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xf18c680a # load x3 with 32 MSBs 0x00000000f18c680a
sw x3, 0(x2) # store x3 (0xf18c680a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f18c680a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000f18c680a from memory into f27
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
fmin.h f1, f27, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xda7cbd79 # load x3 with 32 MSBs 0x00000000da7cbd79
sw x3, 0(x2) # store x3 (0xda7cbd79) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da7cbd79
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000da7cbd79 from memory into f6
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffefffff0400 from memory into f11
fmin.h f28, f6, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x3016b53a # load x3 with 32 MSBs 0x000000003016b53a
sw x3, 0(x2) # store x3 (0x3016b53a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003016b53a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000003016b53a from memory into f10
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000ffff8400 from memory into f28
fmin.h f17, f10, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x4e38418c # load x3 with 32 MSBs 0x000000004e38418c
sw x3, 0(x2) # store x3 (0x4e38418c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004e38418c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000004e38418c from memory into f12
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xefffffffffff7bff from memory into f19
fmin.h f3, f12, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x21878c52 # load x3 with 32 MSBs 0x0000000021878c52
sw x3, 0(x2) # store x3 (0x21878c52) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000021878c52
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000021878c52 from memory into f9
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc0dec0dec0defbff from memory into f8
fmin.h f19, f9, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x6feed20b # load x3 with 32 MSBs 0x000000006feed20b
sw x3, 0(x2) # store x3 (0x6feed20b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006feed20b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000006feed20b from memory into f28
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f11
fmin.h f13, f28, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x05ba5072 # load x3 with 32 MSBs 0x0000000005ba5072
sw x3, 0(x2) # store x3 (0x05ba5072) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000005ba5072
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000005ba5072 from memory into f22
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffffffff0ffffc00 from memory into f13
fmin.h f18, f22, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xe8db5ea2 # load x3 with 32 MSBs 0x00000000e8db5ea2
sw x3, 0(x2) # store x3 (0xe8db5ea2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e8db5ea2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000e8db5ea2 from memory into f18
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffeffffffff7e00 from memory into f12
fmin.h f19, f18, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x2e9b910f # load x3 with 32 MSBs 0x000000002e9b910f
sw x3, 0(x2) # store x3 (0x2e9b910f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002e9b910f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000002e9b910f from memory into f29
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
fmin.h f11, f29, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x90de80bc # load x3 with 32 MSBs 0x0000000090de80bc
sw x3, 0(x2) # store x3 (0x90de80bc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000090de80bc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000090de80bc from memory into f24
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f27
fmin.h f22, f24, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x6919b2dd # load x3 with 32 MSBs 0x000000006919b2dd
sw x3, 0(x2) # store x3 (0x6919b2dd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006919b2dd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000006919b2dd from memory into f1
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffcffff7dff from memory into f20
fmin.h f7, f1, f20 # perform operation

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
li x3, 0x000000003c425ce6 # load x3 with value 0x000000003c425ce6
sw x3, 0(x2) # store 0x000000003c425ce6 in memory
flh f2, 0(x2) # load 0x000000003c425ce6 from memory into f2
la x2, scratch
li x3, 0x00000000069ed706 # load x3 with value 0x00000000069ed706
sw x3, 0(x2) # store 0x00000000069ed706 in memory
flh f24, 0(x2) # load 0x00000000069ed706 from memory into f24
la x2, scratch
li x3, 0x00000000777f6425 # load x3 with value 0x00000000777f6425
sw x3, 0(x2) # store 0x00000000777f6425 in memory
flh f6, 0(x2) # load 0x00000000777f6425 from memory into f6
fnmsub.h f29, f2, f24, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffffff00000000 from memory into f17
la x2, scratch
li x3, 0xc45f2d81 # load x3 with 32 MSBs 0x00000000c45f2d81
sw x3, 0(x2) # store x3 (0xc45f2d81) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c45f2d81
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000c45f2d81 from memory into f9
la x2, scratch
li x3, 0x6b9095fb # load x3 with 32 MSBs 0x000000006b9095fb
sw x3, 0(x2) # store x3 (0x6b9095fb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b9095fb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000006b9095fb from memory into f31
fnmsub.h f30, f17, f9, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfffffffffffe8000 from memory into f16
la x2, scratch
li x3, 0x37634c5e # load x3 with 32 MSBs 0x0000000037634c5e
sw x3, 0(x2) # store x3 (0x37634c5e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037634c5e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000037634c5e from memory into f24
la x2, scratch
li x3, 0xdd9f534e # load x3 with 32 MSBs 0x00000000dd9f534e
sw x3, 0(x2) # store x3 (0xdd9f534e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dd9f534e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000dd9f534e from memory into f12
fnmsub.h f25, f16, f24, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffff3c00 from memory into f29
la x2, scratch
li x3, 0xb7e21d50 # load x3 with 32 MSBs 0x00000000b7e21d50
sw x3, 0(x2) # store x3 (0xb7e21d50) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b7e21d50
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000b7e21d50 from memory into f11
la x2, scratch
li x3, 0xeb740deb # load x3 with 32 MSBs 0x00000000eb740deb
sw x3, 0(x2) # store x3 (0xeb740deb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb740deb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000eb740deb from memory into f1
fnmsub.h f19, f29, f11, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
la x2, scratch
li x3, 0x423ef7ad # load x3 with 32 MSBs 0x00000000423ef7ad
sw x3, 0(x2) # store x3 (0x423ef7ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000423ef7ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000423ef7ad from memory into f2
la x2, scratch
li x3, 0x78708cdb # load x3 with 32 MSBs 0x0000000078708cdb
sw x3, 0(x2) # store x3 (0x78708cdb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000078708cdb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000078708cdb from memory into f7
fnmsub.h f20, f14, f2, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffefffff0400 from memory into f15
la x2, scratch
li x3, 0x70649c9e # load x3 with 32 MSBs 0x0000000070649c9e
sw x3, 0(x2) # store x3 (0x70649c9e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000070649c9e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000070649c9e from memory into f23
la x2, scratch
li x3, 0xc14699b6 # load x3 with 32 MSBs 0x00000000c14699b6
sw x3, 0(x2) # store x3 (0xc14699b6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c14699b6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000c14699b6 from memory into f17
fnmsub.h f14, f15, f23, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000ffff8400 from memory into f20
la x2, scratch
li x3, 0xda597206 # load x3 with 32 MSBs 0x00000000da597206
sw x3, 0(x2) # store x3 (0xda597206) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da597206
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000da597206 from memory into f16
la x2, scratch
li x3, 0x64807236 # load x3 with 32 MSBs 0x0000000064807236
sw x3, 0(x2) # store x3 (0x64807236) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000064807236
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000064807236 from memory into f1
fnmsub.h f9, f20, f16, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xefffffffffff7bff from memory into f11
la x2, scratch
li x3, 0x1f1b7b2c # load x3 with 32 MSBs 0x000000001f1b7b2c
sw x3, 0(x2) # store x3 (0x1f1b7b2c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f1b7b2c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000001f1b7b2c from memory into f23
la x2, scratch
li x3, 0x94ef4358 # load x3 with 32 MSBs 0x0000000094ef4358
sw x3, 0(x2) # store x3 (0x94ef4358) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000094ef4358
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000094ef4358 from memory into f27
fnmsub.h f26, f11, f23, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xc0dec0dec0defbff from memory into f20
la x2, scratch
li x3, 0xbfe14e42 # load x3 with 32 MSBs 0x00000000bfe14e42
sw x3, 0(x2) # store x3 (0xbfe14e42) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bfe14e42
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000bfe14e42 from memory into f24
la x2, scratch
li x3, 0xa3b0896a # load x3 with 32 MSBs 0x00000000a3b0896a
sw x3, 0(x2) # store x3 (0xa3b0896a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a3b0896a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000a3b0896a from memory into f11
fnmsub.h f7, f20, f24, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f15
la x2, scratch
li x3, 0x22eef7c4 # load x3 with 32 MSBs 0x0000000022eef7c4
sw x3, 0(x2) # store x3 (0x22eef7c4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000022eef7c4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000022eef7c4 from memory into f16
la x2, scratch
li x3, 0xfe7062ed # load x3 with 32 MSBs 0x00000000fe7062ed
sw x3, 0(x2) # store x3 (0xfe7062ed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe7062ed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000fe7062ed from memory into f7
fnmsub.h f11, f15, f16, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffffffff0ffffc00 from memory into f23
la x2, scratch
li x3, 0xe5cb5d2e # load x3 with 32 MSBs 0x00000000e5cb5d2e
sw x3, 0(x2) # store x3 (0xe5cb5d2e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e5cb5d2e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000e5cb5d2e from memory into f26
la x2, scratch
li x3, 0x84abe834 # load x3 with 32 MSBs 0x0000000084abe834
sw x3, 0(x2) # store x3 (0x84abe834) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000084abe834
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000084abe834 from memory into f28
fnmsub.h f1, f23, f26, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
la x2, scratch
li x3, 0xf10a6c7a # load x3 with 32 MSBs 0x00000000f10a6c7a
sw x3, 0(x2) # store x3 (0xf10a6c7a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f10a6c7a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000f10a6c7a from memory into f18
la x2, scratch
li x3, 0x1ba50414 # load x3 with 32 MSBs 0x000000001ba50414
sw x3, 0(x2) # store x3 (0x1ba50414) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001ba50414
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001ba50414 from memory into f19
fnmsub.h f20, f2, f18, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffffefffff7fff from memory into f24
la x2, scratch
li x3, 0xb181eeea # load x3 with 32 MSBs 0x00000000b181eeea
sw x3, 0(x2) # store x3 (0xb181eeea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b181eeea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000b181eeea from memory into f28
la x2, scratch
li x3, 0x0b500aba # load x3 with 32 MSBs 0x000000000b500aba
sw x3, 0(x2) # store x3 (0x0b500aba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000b500aba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000000b500aba from memory into f22
fnmsub.h f13, f24, f28, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f5
la x2, scratch
li x3, 0xfc47e472 # load x3 with 32 MSBs 0x00000000fc47e472
sw x3, 0(x2) # store x3 (0xfc47e472) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc47e472
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000fc47e472 from memory into f9
la x2, scratch
li x3, 0x490c7387 # load x3 with 32 MSBs 0x00000000490c7387
sw x3, 0(x2) # store x3 (0x490c7387) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000490c7387
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000490c7387 from memory into f14
fnmsub.h f8, f5, f9, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffffcffff7dff from memory into f3
la x2, scratch
li x3, 0x5b0d681d # load x3 with 32 MSBs 0x000000005b0d681d
sw x3, 0(x2) # store x3 (0x5b0d681d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005b0d681d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000005b0d681d from memory into f12
la x2, scratch
li x3, 0x3f894004 # load x3 with 32 MSBs 0x000000003f894004
sw x3, 0(x2) # store x3 (0x3f894004) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f894004
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000003f894004 from memory into f26
fnmsub.h f1, f3, f12, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x57f78e81 # load x3 with 32 MSBs 0x0000000057f78e81
sw x3, 0(x2) # store x3 (0x57f78e81) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000057f78e81
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000057f78e81 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
la x2, scratch
li x3, 0xf9d25d93 # load x3 with 32 MSBs 0x00000000f9d25d93
sw x3, 0(x2) # store x3 (0xf9d25d93) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f9d25d93
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000f9d25d93 from memory into f7
fnmsub.h f16, f2, f14, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x4f8d9220 # load x3 with 32 MSBs 0x000000004f8d9220
sw x3, 0(x2) # store x3 (0x4f8d9220) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004f8d9220
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000004f8d9220 from memory into f31
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfffffffffffe8000 from memory into f28
la x2, scratch
li x3, 0xe94a6a92 # load x3 with 32 MSBs 0x00000000e94a6a92
sw x3, 0(x2) # store x3 (0xe94a6a92) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e94a6a92
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000e94a6a92 from memory into f17
fnmsub.h f20, f31, f28, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xb73aa622 # load x3 with 32 MSBs 0x00000000b73aa622
sw x3, 0(x2) # store x3 (0xb73aa622) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b73aa622
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000b73aa622 from memory into f10
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7fffffffffff3c00 from memory into f20
la x2, scratch
li x3, 0x5bf1a2c3 # load x3 with 32 MSBs 0x000000005bf1a2c3
sw x3, 0(x2) # store x3 (0x5bf1a2c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005bf1a2c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000005bf1a2c3 from memory into f19
fnmsub.h f22, f10, f20, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xbb2e6a9c # load x3 with 32 MSBs 0x00000000bb2e6a9c
sw x3, 0(x2) # store x3 (0xbb2e6a9c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bb2e6a9c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000bb2e6a9c from memory into f13
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfeedbee5beefbc00 from memory into f15
la x2, scratch
li x3, 0xe431a590 # load x3 with 32 MSBs 0x00000000e431a590
sw x3, 0(x2) # store x3 (0xe431a590) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e431a590
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e431a590 from memory into f8
fnmsub.h f22, f13, f15, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x165ed4c1 # load x3 with 32 MSBs 0x00000000165ed4c1
sw x3, 0(x2) # store x3 (0x165ed4c1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000165ed4c1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000165ed4c1 from memory into f21
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffefffff0400 from memory into f3
la x2, scratch
li x3, 0x00843a3b # load x3 with 32 MSBs 0x0000000000843a3b
sw x3, 0(x2) # store x3 (0x00843a3b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000843a3b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000843a3b from memory into f31
fnmsub.h f20, f21, f3, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x10b6120e # load x3 with 32 MSBs 0x0000000010b6120e
sw x3, 0(x2) # store x3 (0x10b6120e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000010b6120e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000010b6120e from memory into f23
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ffff8400 from memory into f2
la x2, scratch
li x3, 0x20c6c69a # load x3 with 32 MSBs 0x0000000020c6c69a
sw x3, 0(x2) # store x3 (0x20c6c69a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000020c6c69a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000020c6c69a from memory into f21
fnmsub.h f13, f23, f2, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x51a34a5b # load x3 with 32 MSBs 0x0000000051a34a5b
sw x3, 0(x2) # store x3 (0x51a34a5b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000051a34a5b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000051a34a5b from memory into f24
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
la x2, scratch
li x3, 0x4773c56c # load x3 with 32 MSBs 0x000000004773c56c
sw x3, 0(x2) # store x3 (0x4773c56c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004773c56c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000004773c56c from memory into f13
fnmsub.h f28, f24, f25, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x28367dd3 # load x3 with 32 MSBs 0x0000000028367dd3
sw x3, 0(x2) # store x3 (0x28367dd3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000028367dd3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000028367dd3 from memory into f6
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xc0dec0dec0defbff from memory into f7
la x2, scratch
li x3, 0x12987c3f # load x3 with 32 MSBs 0x0000000012987c3f
sw x3, 0(x2) # store x3 (0x12987c3f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000012987c3f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000012987c3f from memory into f13
fnmsub.h f31, f6, f7, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xf33c1b74 # load x3 with 32 MSBs 0x00000000f33c1b74
sw x3, 0(x2) # store x3 (0xf33c1b74) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f33c1b74
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000f33c1b74 from memory into f16
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f7
la x2, scratch
li x3, 0x713b7238 # load x3 with 32 MSBs 0x00000000713b7238
sw x3, 0(x2) # store x3 (0x713b7238) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000713b7238
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000713b7238 from memory into f5
fnmsub.h f1, f16, f7, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x0d160fc7 # load x3 with 32 MSBs 0x000000000d160fc7
sw x3, 0(x2) # store x3 (0x0d160fc7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d160fc7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000000d160fc7 from memory into f3
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffffffff0ffffc00 from memory into f25
la x2, scratch
li x3, 0x03b40d7a # load x3 with 32 MSBs 0x0000000003b40d7a
sw x3, 0(x2) # store x3 (0x03b40d7a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000003b40d7a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000003b40d7a from memory into f14
fnmsub.h f12, f3, f25, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x7e948721 # load x3 with 32 MSBs 0x000000007e948721
sw x3, 0(x2) # store x3 (0x7e948721) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007e948721
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000007e948721 from memory into f3
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffeffffffff7e00 from memory into f9
la x2, scratch
li x3, 0x3a68a195 # load x3 with 32 MSBs 0x000000003a68a195
sw x3, 0(x2) # store x3 (0x3a68a195) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003a68a195
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003a68a195 from memory into f29
fnmsub.h f24, f3, f9, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x029cd1e5 # load x3 with 32 MSBs 0x00000000029cd1e5
sw x3, 0(x2) # store x3 (0x029cd1e5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000029cd1e5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000029cd1e5 from memory into f7
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffffefffff7fff from memory into f17
la x2, scratch
li x3, 0x91d60f01 # load x3 with 32 MSBs 0x0000000091d60f01
sw x3, 0(x2) # store x3 (0x91d60f01) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000091d60f01
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000091d60f01 from memory into f3
fnmsub.h f20, f7, f17, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xf284baad # load x3 with 32 MSBs 0x00000000f284baad
sw x3, 0(x2) # store x3 (0xf284baad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f284baad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000f284baad from memory into f7
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f31
la x2, scratch
li x3, 0x1e908e86 # load x3 with 32 MSBs 0x000000001e908e86
sw x3, 0(x2) # store x3 (0x1e908e86) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001e908e86
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000001e908e86 from memory into f9
fnmsub.h f25, f7, f31, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x6577bf19 # load x3 with 32 MSBs 0x000000006577bf19
sw x3, 0(x2) # store x3 (0x6577bf19) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006577bf19
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000006577bf19 from memory into f29
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffcffff7dff from memory into f20
la x2, scratch
li x3, 0x6e62015f # load x3 with 32 MSBs 0x000000006e62015f
sw x3, 0(x2) # store x3 (0x6e62015f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e62015f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000006e62015f from memory into f8
fnmsub.h f10, f29, f20, f8 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe401d0b9 # load x3 with 32 MSBs 0x00000000e401d0b9
sw x3, 0(x2) # store x3 (0xe401d0b9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e401d0b9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000e401d0b9 from memory into f9
la x2, scratch
li x3, 0xc89414a4 # load x3 with 32 MSBs 0x00000000c89414a4
sw x3, 0(x2) # store x3 (0xc89414a4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c89414a4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000c89414a4 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
fnmsub.h f22, f9, f23, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x487da81c # load x3 with 32 MSBs 0x00000000487da81c
sw x3, 0(x2) # store x3 (0x487da81c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000487da81c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000487da81c from memory into f23
la x2, scratch
li x3, 0x3fee6f64 # load x3 with 32 MSBs 0x000000003fee6f64
sw x3, 0(x2) # store x3 (0x3fee6f64) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003fee6f64
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003fee6f64 from memory into f6
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffffffe8000 from memory into f5
fnmsub.h f2, f23, f6, f5 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x43a93ee7 # load x3 with 32 MSBs 0x0000000043a93ee7
sw x3, 0(x2) # store x3 (0x43a93ee7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000043a93ee7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000043a93ee7 from memory into f24
la x2, scratch
li x3, 0x735d4931 # load x3 with 32 MSBs 0x00000000735d4931
sw x3, 0(x2) # store x3 (0x735d4931) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000735d4931
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000735d4931 from memory into f21
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7fffffffffff3c00 from memory into f15
fnmsub.h f13, f24, f21, f15 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x591afa5a # load x3 with 32 MSBs 0x00000000591afa5a
sw x3, 0(x2) # store x3 (0x591afa5a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000591afa5a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000591afa5a from memory into f16
la x2, scratch
li x3, 0x8e96493b # load x3 with 32 MSBs 0x000000008e96493b
sw x3, 0(x2) # store x3 (0x8e96493b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008e96493b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000008e96493b from memory into f27
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfeedbee5beefbc00 from memory into f15
fnmsub.h f28, f16, f27, f15 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x610131b0 # load x3 with 32 MSBs 0x00000000610131b0
sw x3, 0(x2) # store x3 (0x610131b0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000610131b0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000610131b0 from memory into f28
la x2, scratch
li x3, 0xaea436ef # load x3 with 32 MSBs 0x00000000aea436ef
sw x3, 0(x2) # store x3 (0xaea436ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aea436ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000aea436ef from memory into f1
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffefffff0400 from memory into f16
fnmsub.h f21, f28, f1, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0xe035f8f0 # load x3 with 32 MSBs 0x00000000e035f8f0
sw x3, 0(x2) # store x3 (0xe035f8f0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e035f8f0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000e035f8f0 from memory into f6
la x2, scratch
li x3, 0x2df50b6c # load x3 with 32 MSBs 0x000000002df50b6c
sw x3, 0(x2) # store x3 (0x2df50b6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002df50b6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000002df50b6c from memory into f30
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000ffff8400 from memory into f24
fnmsub.h f22, f6, f30, f24 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x5bf9d0bd # load x3 with 32 MSBs 0x000000005bf9d0bd
sw x3, 0(x2) # store x3 (0x5bf9d0bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005bf9d0bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000005bf9d0bd from memory into f13
la x2, scratch
li x3, 0xff45dfd4 # load x3 with 32 MSBs 0x00000000ff45dfd4
sw x3, 0(x2) # store x3 (0xff45dfd4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ff45dfd4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000ff45dfd4 from memory into f28
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xefffffffffff7bff from memory into f21
fnmsub.h f14, f13, f28, f21 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x960d3b53 # load x3 with 32 MSBs 0x00000000960d3b53
sw x3, 0(x2) # store x3 (0x960d3b53) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000960d3b53
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000960d3b53 from memory into f27
la x2, scratch
li x3, 0xf5a69034 # load x3 with 32 MSBs 0x00000000f5a69034
sw x3, 0(x2) # store x3 (0xf5a69034) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f5a69034
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000f5a69034 from memory into f14
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xc0dec0dec0defbff from memory into f30
fnmsub.h f16, f27, f14, f30 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xd899bef8 # load x3 with 32 MSBs 0x00000000d899bef8
sw x3, 0(x2) # store x3 (0xd899bef8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d899bef8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000d899bef8 from memory into f25
la x2, scratch
li x3, 0x6b8f18a2 # load x3 with 32 MSBs 0x000000006b8f18a2
sw x3, 0(x2) # store x3 (0x6b8f18a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b8f18a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000006b8f18a2 from memory into f21
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f5
fnmsub.h f3, f25, f21, f5 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x08bba913 # load x3 with 32 MSBs 0x0000000008bba913
sw x3, 0(x2) # store x3 (0x08bba913) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000008bba913
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000008bba913 from memory into f18
la x2, scratch
li x3, 0xaae15360 # load x3 with 32 MSBs 0x00000000aae15360
sw x3, 0(x2) # store x3 (0xaae15360) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aae15360
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000aae15360 from memory into f2
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffff0ffffc00 from memory into f31
fnmsub.h f14, f18, f2, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xd194fd71 # load x3 with 32 MSBs 0x00000000d194fd71
sw x3, 0(x2) # store x3 (0xd194fd71) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d194fd71
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000d194fd71 from memory into f26
la x2, scratch
li x3, 0x3fab3b57 # load x3 with 32 MSBs 0x000000003fab3b57
sw x3, 0(x2) # store x3 (0x3fab3b57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003fab3b57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000003fab3b57 from memory into f13
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffeffffffff7e00 from memory into f29
fnmsub.h f14, f26, f13, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xf16d9094 # load x3 with 32 MSBs 0x00000000f16d9094
sw x3, 0(x2) # store x3 (0xf16d9094) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f16d9094
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000f16d9094 from memory into f31
la x2, scratch
li x3, 0xd722ba12 # load x3 with 32 MSBs 0x00000000d722ba12
sw x3, 0(x2) # store x3 (0xd722ba12) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d722ba12
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000d722ba12 from memory into f29
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffffffefffff7fff from memory into f20
fnmsub.h f17, f31, f29, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x87fc1e29 # load x3 with 32 MSBs 0x0000000087fc1e29
sw x3, 0(x2) # store x3 (0x87fc1e29) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000087fc1e29
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000087fc1e29 from memory into f14
la x2, scratch
li x3, 0xde3ca242 # load x3 with 32 MSBs 0x00000000de3ca242
sw x3, 0(x2) # store x3 (0xde3ca242) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de3ca242
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000de3ca242 from memory into f16
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f29
fnmsub.h f30, f14, f16, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xf2f9d9e8 # load x3 with 32 MSBs 0x00000000f2f9d9e8
sw x3, 0(x2) # store x3 (0xf2f9d9e8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f2f9d9e8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000f2f9d9e8 from memory into f30
la x2, scratch
li x3, 0x34fbc0d1 # load x3 with 32 MSBs 0x0000000034fbc0d1
sw x3, 0(x2) # store x3 (0x34fbc0d1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000034fbc0d1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000034fbc0d1 from memory into f26
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffffcffff7dff from memory into f18
fnmsub.h f7, f30, f26, f18 # perform operation

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
li x10, 0x227cc152 # load immediate value into integer register
fcvt.h.wu f6, x10 # perform operation

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
li x3, 0x000000000beffd53 # load x3 with value 0x000000000beffd53
sw x3, 0(x2) # store 0x000000000beffd53 in memory
flh f2, 0(x2) # load 0x000000000beffd53 from memory into f2
la x2, scratch
li x3, 0x00000000d299fb1f # load x3 with value 0x00000000d299fb1f
sw x3, 0(x2) # store 0x00000000d299fb1f in memory
flh f17, 0(x2) # load 0x00000000d299fb1f from memory into f17
fsgnjn.h f1, f2, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
la x2, scratch
li x3, 0x99d70461 # load x3 with 32 MSBs 0x0000000099d70461
sw x3, 0(x2) # store x3 (0x99d70461) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000099d70461
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000099d70461 from memory into f8
fsgnjn.h f11, f27, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffffffe8000 from memory into f5
la x2, scratch
li x3, 0x95cc826f # load x3 with 32 MSBs 0x0000000095cc826f
sw x3, 0(x2) # store x3 (0x95cc826f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000095cc826f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000095cc826f from memory into f26
fsgnjn.h f24, f5, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
la x2, scratch
li x3, 0x49bdba25 # load x3 with 32 MSBs 0x0000000049bdba25
sw x3, 0(x2) # store x3 (0x49bdba25) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000049bdba25
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000049bdba25 from memory into f5
fsgnjn.h f24, f30, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfeedbee5beefbc00 from memory into f23
la x2, scratch
li x3, 0x9d56b1c6 # load x3 with 32 MSBs 0x000000009d56b1c6
sw x3, 0(x2) # store x3 (0x9d56b1c6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009d56b1c6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000009d56b1c6 from memory into f31
fsgnjn.h f13, f23, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffffffefffff0400 from memory into f2
la x2, scratch
li x3, 0x7d3e279d # load x3 with 32 MSBs 0x000000007d3e279d
sw x3, 0(x2) # store x3 (0x7d3e279d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007d3e279d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000007d3e279d from memory into f15
fsgnjn.h f24, f2, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000ffff8400 from memory into f16
la x2, scratch
li x3, 0xa507e87c # load x3 with 32 MSBs 0x00000000a507e87c
sw x3, 0(x2) # store x3 (0xa507e87c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a507e87c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000a507e87c from memory into f14
fsgnjn.h f26, f16, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xefffffffffff7bff from memory into f16
la x2, scratch
li x3, 0xb89ab93f # load x3 with 32 MSBs 0x00000000b89ab93f
sw x3, 0(x2) # store x3 (0xb89ab93f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b89ab93f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000b89ab93f from memory into f28
fsgnjn.h f1, f16, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xc0dec0dec0defbff from memory into f28
la x2, scratch
li x3, 0xdfe2cdce # load x3 with 32 MSBs 0x00000000dfe2cdce
sw x3, 0(x2) # store x3 (0xdfe2cdce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dfe2cdce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000dfe2cdce from memory into f8
fsgnjn.h f18, f28, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f10
la x2, scratch
li x3, 0x55ea40c0 # load x3 with 32 MSBs 0x0000000055ea40c0
sw x3, 0(x2) # store x3 (0x55ea40c0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055ea40c0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000055ea40c0 from memory into f3
fsgnjn.h f17, f10, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffffffff0ffffc00 from memory into f20
la x2, scratch
li x3, 0x2b972569 # load x3 with 32 MSBs 0x000000002b972569
sw x3, 0(x2) # store x3 (0x2b972569) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002b972569
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000002b972569 from memory into f15
fsgnjn.h f7, f20, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfffeffffffff7e00 from memory into f30
la x2, scratch
li x3, 0x495b9555 # load x3 with 32 MSBs 0x00000000495b9555
sw x3, 0(x2) # store x3 (0x495b9555) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000495b9555
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000495b9555 from memory into f20
fsgnjn.h f27, f30, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffefffff7fff from memory into f14
la x2, scratch
li x3, 0xeca9959a # load x3 with 32 MSBs 0x00000000eca9959a
sw x3, 0(x2) # store x3 (0xeca9959a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eca9959a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000eca9959a from memory into f6
fsgnjn.h f1, f14, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f26
la x2, scratch
li x3, 0x51f85fe6 # load x3 with 32 MSBs 0x0000000051f85fe6
sw x3, 0(x2) # store x3 (0x51f85fe6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000051f85fe6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000051f85fe6 from memory into f6
fsgnjn.h f23, f26, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffffcffff7dff from memory into f8
la x2, scratch
li x3, 0x07761444 # load x3 with 32 MSBs 0x0000000007761444
sw x3, 0(x2) # store x3 (0x07761444) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000007761444
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000007761444 from memory into f3
fsgnjn.h f20, f8, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xaa22a562 # load x3 with 32 MSBs 0x00000000aa22a562
sw x3, 0(x2) # store x3 (0xaa22a562) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa22a562
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000aa22a562 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffff00000000 from memory into f7
fsgnjn.h f17, f30, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x3027c8af # load x3 with 32 MSBs 0x000000003027c8af
sw x3, 0(x2) # store x3 (0x3027c8af) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003027c8af
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000003027c8af from memory into f30
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffffffffe8000 from memory into f3
fsgnjn.h f11, f30, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xadb662e6 # load x3 with 32 MSBs 0x00000000adb662e6
sw x3, 0(x2) # store x3 (0xadb662e6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000adb662e6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000adb662e6 from memory into f16
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffffffff3c00 from memory into f25
fsgnjn.h f28, f16, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x5248e180 # load x3 with 32 MSBs 0x000000005248e180
sw x3, 0(x2) # store x3 (0x5248e180) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005248e180
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000005248e180 from memory into f27
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfeedbee5beefbc00 from memory into f12
fsgnjn.h f13, f27, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xc580262d # load x3 with 32 MSBs 0x00000000c580262d
sw x3, 0(x2) # store x3 (0xc580262d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c580262d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000c580262d from memory into f10
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffefffff0400 from memory into f16
fsgnjn.h f17, f10, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xaca0b9ca # load x3 with 32 MSBs 0x00000000aca0b9ca
sw x3, 0(x2) # store x3 (0xaca0b9ca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aca0b9ca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000aca0b9ca from memory into f13
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ffff8400 from memory into f26
fsgnjn.h f15, f13, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x967cffb9 # load x3 with 32 MSBs 0x00000000967cffb9
sw x3, 0(x2) # store x3 (0x967cffb9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000967cffb9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000967cffb9 from memory into f18
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xefffffffffff7bff from memory into f5
fsgnjn.h f13, f18, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x84482297 # load x3 with 32 MSBs 0x0000000084482297
sw x3, 0(x2) # store x3 (0x84482297) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000084482297
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000084482297 from memory into f11
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xc0dec0dec0defbff from memory into f29
fsgnjn.h f8, f11, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x26a8c772 # load x3 with 32 MSBs 0x0000000026a8c772
sw x3, 0(x2) # store x3 (0x26a8c772) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000026a8c772
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000026a8c772 from memory into f15
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f27
fsgnjn.h f6, f15, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x06b20a0b # load x3 with 32 MSBs 0x0000000006b20a0b
sw x3, 0(x2) # store x3 (0x06b20a0b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000006b20a0b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000006b20a0b from memory into f12
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffff0ffffc00 from memory into f27
fsgnjn.h f29, f12, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x7ebf1252 # load x3 with 32 MSBs 0x000000007ebf1252
sw x3, 0(x2) # store x3 (0x7ebf1252) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007ebf1252
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000007ebf1252 from memory into f29
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
fsgnjn.h f26, f29, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xd4313d17 # load x3 with 32 MSBs 0x00000000d4313d17
sw x3, 0(x2) # store x3 (0xd4313d17) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d4313d17
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000d4313d17 from memory into f23
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffefffff7fff from memory into f21
fsgnjn.h f5, f23, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x7a783c7f # load x3 with 32 MSBs 0x000000007a783c7f
sw x3, 0(x2) # store x3 (0x7a783c7f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007a783c7f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000007a783c7f from memory into f17
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f30
fsgnjn.h f22, f17, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x82b159dc # load x3 with 32 MSBs 0x0000000082b159dc
sw x3, 0(x2) # store x3 (0x82b159dc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000082b159dc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000082b159dc from memory into f21
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfffffffcffff7dff from memory into f17
fsgnjn.h f7, f21, f17 # perform operation

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
li x3, 0x00000000e8feb512 # load x3 with value 0x00000000e8feb512
sw x3, 0(x2) # store 0x00000000e8feb512 in memory
flh f19, 0(x2) # load 0x00000000e8feb512 from memory into f19
la x2, scratch
li x3, 0x00000000b4088153 # load x3 with value 0x00000000b4088153
sw x3, 0(x2) # store 0x00000000b4088153 in memory
flh f21, 0(x2) # load 0x00000000b4088153 from memory into f21
fmax.h f28, f19, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
la x2, scratch
li x3, 0xe51e6d2d # load x3 with 32 MSBs 0x00000000e51e6d2d
sw x3, 0(x2) # store x3 (0xe51e6d2d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e51e6d2d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000e51e6d2d from memory into f26
fmax.h f31, f27, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfffffffffffe8000 from memory into f22
la x2, scratch
li x3, 0x4e911753 # load x3 with 32 MSBs 0x000000004e911753
sw x3, 0(x2) # store x3 (0x4e911753) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004e911753
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000004e911753 from memory into f31
fmax.h f9, f22, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7fffffffffff3c00 from memory into f23
la x2, scratch
li x3, 0x8bf07e62 # load x3 with 32 MSBs 0x000000008bf07e62
sw x3, 0(x2) # store x3 (0x8bf07e62) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008bf07e62
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000008bf07e62 from memory into f2
fmax.h f15, f23, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfeedbee5beefbc00 from memory into f12
la x2, scratch
li x3, 0x5f073ce2 # load x3 with 32 MSBs 0x000000005f073ce2
sw x3, 0(x2) # store x3 (0x5f073ce2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005f073ce2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000005f073ce2 from memory into f24
fmax.h f8, f12, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffefffff0400 from memory into f9
la x2, scratch
li x3, 0x3a595af6 # load x3 with 32 MSBs 0x000000003a595af6
sw x3, 0(x2) # store x3 (0x3a595af6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003a595af6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000003a595af6 from memory into f2
fmax.h f20, f9, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000ffff8400 from memory into f5
la x2, scratch
li x3, 0xa49723b7 # load x3 with 32 MSBs 0x00000000a49723b7
sw x3, 0(x2) # store x3 (0xa49723b7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a49723b7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000a49723b7 from memory into f27
fmax.h f6, f5, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xefffffffffff7bff from memory into f23
la x2, scratch
li x3, 0x7ef75c81 # load x3 with 32 MSBs 0x000000007ef75c81
sw x3, 0(x2) # store x3 (0x7ef75c81) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007ef75c81
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000007ef75c81 from memory into f25
fmax.h f18, f23, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xc0dec0dec0defbff from memory into f18
la x2, scratch
li x3, 0x3abe6d6c # load x3 with 32 MSBs 0x000000003abe6d6c
sw x3, 0(x2) # store x3 (0x3abe6d6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003abe6d6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000003abe6d6c from memory into f1
fmax.h f27, f18, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f27
la x2, scratch
li x3, 0x69d5b6c7 # load x3 with 32 MSBs 0x0000000069d5b6c7
sw x3, 0(x2) # store x3 (0x69d5b6c7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000069d5b6c7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000069d5b6c7 from memory into f15
fmax.h f10, f27, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffffff0ffffc00 from memory into f24
la x2, scratch
li x3, 0x6e99518a # load x3 with 32 MSBs 0x000000006e99518a
sw x3, 0(x2) # store x3 (0x6e99518a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e99518a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000006e99518a from memory into f11
fmax.h f16, f24, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
la x2, scratch
li x3, 0x2aee32b4 # load x3 with 32 MSBs 0x000000002aee32b4
sw x3, 0(x2) # store x3 (0x2aee32b4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002aee32b4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000002aee32b4 from memory into f10
fmax.h f26, f2, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
la x2, scratch
li x3, 0x09edeab2 # load x3 with 32 MSBs 0x0000000009edeab2
sw x3, 0(x2) # store x3 (0x09edeab2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000009edeab2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000009edeab2 from memory into f1
fmax.h f28, f31, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f18
la x2, scratch
li x3, 0x9f3f890b # load x3 with 32 MSBs 0x000000009f3f890b
sw x3, 0(x2) # store x3 (0x9f3f890b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009f3f890b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000009f3f890b from memory into f29
fmax.h f20, f18, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfffffffcffff7dff from memory into f28
la x2, scratch
li x3, 0x94c71ea4 # load x3 with 32 MSBs 0x0000000094c71ea4
sw x3, 0(x2) # store x3 (0x94c71ea4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000094c71ea4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000094c71ea4 from memory into f25
fmax.h f14, f28, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe9467f8e # load x3 with 32 MSBs 0x00000000e9467f8e
sw x3, 0(x2) # store x3 (0xe9467f8e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e9467f8e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e9467f8e from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
fmax.h f14, f20, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xdf0d96c4 # load x3 with 32 MSBs 0x00000000df0d96c4
sw x3, 0(x2) # store x3 (0xdf0d96c4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000df0d96c4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000df0d96c4 from memory into f5
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfffffffffffe8000 from memory into f10
fmax.h f17, f5, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xcf2f6923 # load x3 with 32 MSBs 0x00000000cf2f6923
sw x3, 0(x2) # store x3 (0xcf2f6923) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cf2f6923
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000cf2f6923 from memory into f24
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7fffffffffff3c00 from memory into f20
fmax.h f1, f24, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x98902993 # load x3 with 32 MSBs 0x0000000098902993
sw x3, 0(x2) # store x3 (0x98902993) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000098902993
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000098902993 from memory into f7
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeedbee5beefbc00 from memory into f3
fmax.h f6, f7, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xc73e9174 # load x3 with 32 MSBs 0x00000000c73e9174
sw x3, 0(x2) # store x3 (0xc73e9174) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c73e9174
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000c73e9174 from memory into f8
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffefffff0400 from memory into f16
fmax.h f19, f8, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xfa4e15fb # load x3 with 32 MSBs 0x00000000fa4e15fb
sw x3, 0(x2) # store x3 (0xfa4e15fb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fa4e15fb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000fa4e15fb from memory into f19
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ffff8400 from memory into f26
fmax.h f12, f19, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x0dae342f # load x3 with 32 MSBs 0x000000000dae342f
sw x3, 0(x2) # store x3 (0x0dae342f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000dae342f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000000dae342f from memory into f24
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xefffffffffff7bff from memory into f15
fmax.h f28, f24, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xc353fb53 # load x3 with 32 MSBs 0x00000000c353fb53
sw x3, 0(x2) # store x3 (0xc353fb53) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c353fb53
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000c353fb53 from memory into f30
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xc0dec0dec0defbff from memory into f29
fmax.h f14, f30, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xca8ee834 # load x3 with 32 MSBs 0x00000000ca8ee834
sw x3, 0(x2) # store x3 (0xca8ee834) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ca8ee834
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000ca8ee834 from memory into f20
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f18
fmax.h f30, f20, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x4ce6a154 # load x3 with 32 MSBs 0x000000004ce6a154
sw x3, 0(x2) # store x3 (0x4ce6a154) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ce6a154
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000004ce6a154 from memory into f8
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffffffff0ffffc00 from memory into f6
fmax.h f29, f8, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xa9197fb1 # load x3 with 32 MSBs 0x00000000a9197fb1
sw x3, 0(x2) # store x3 (0xa9197fb1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a9197fb1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000a9197fb1 from memory into f21
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfffeffffffff7e00 from memory into f30
fmax.h f31, f21, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xc79c300b # load x3 with 32 MSBs 0x00000000c79c300b
sw x3, 0(x2) # store x3 (0xc79c300b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c79c300b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000c79c300b from memory into f20
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffffffefffff7fff from memory into f23
fmax.h f31, f20, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xcc17fc7b # load x3 with 32 MSBs 0x00000000cc17fc7b
sw x3, 0(x2) # store x3 (0xcc17fc7b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cc17fc7b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000cc17fc7b from memory into f23
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f14
fmax.h f27, f23, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x957789ff # load x3 with 32 MSBs 0x00000000957789ff
sw x3, 0(x2) # store x3 (0x957789ff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000957789ff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000957789ff from memory into f3
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffffffcffff7dff from memory into f7
fmax.h f24, f3, f7 # perform operation

#.EQU SIGSIZE,0
.EQU SIGSIZE,560 #combined


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
