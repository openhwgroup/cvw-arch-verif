///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fadd.h.S
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

.EQU SIGSIZE,0


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
