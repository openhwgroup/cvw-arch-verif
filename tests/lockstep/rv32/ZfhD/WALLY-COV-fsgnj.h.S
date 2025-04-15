///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fsgnj.h.S
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
