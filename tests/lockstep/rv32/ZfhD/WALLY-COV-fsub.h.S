///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fsub.h.S
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
