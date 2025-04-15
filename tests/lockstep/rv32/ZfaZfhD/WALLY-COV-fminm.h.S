///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaZfhD/WALLY-COV-fminm.h.S
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
