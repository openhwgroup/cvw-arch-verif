///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaZfhD/WALLY-COV-fleq.h.S
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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffff00000000 from memory into f26
la x2, scratch
li x3, 0xf92e4ae0 # load x3 with 32 MSBs 0x00000000f92e4ae0
sw x3, 0(x2) # store x3 (0xf92e4ae0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f92e4ae0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000f92e4ae0 from memory into f10
fleq.h x23, f26, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffffffffe8000 from memory into f18
la x2, scratch
li x3, 0x14e46ccd # load x3 with 32 MSBs 0x0000000014e46ccd
sw x3, 0(x2) # store x3 (0x14e46ccd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000014e46ccd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000014e46ccd from memory into f13
fleq.h x24, f18, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fffffffffff3c00 from memory into f27
la x2, scratch
li x3, 0x30e21776 # load x3 with 32 MSBs 0x0000000030e21776
sw x3, 0(x2) # store x3 (0x30e21776) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000030e21776
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000030e21776 from memory into f5
fleq.h x3, f27, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfeedbee5beefbc00 from memory into f13
la x2, scratch
li x3, 0x0158e93f # load x3 with 32 MSBs 0x000000000158e93f
sw x3, 0(x2) # store x3 (0x0158e93f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000158e93f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000000158e93f from memory into f9
fleq.h x30, f13, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
la x2, scratch
li x3, 0x05d0cf89 # load x3 with 32 MSBs 0x0000000005d0cf89
sw x3, 0(x2) # store x3 (0x05d0cf89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000005d0cf89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000005d0cf89 from memory into f17
fleq.h x30, f26, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ffff8400 from memory into f11
la x2, scratch
li x3, 0x9bbbf39b # load x3 with 32 MSBs 0x000000009bbbf39b
sw x3, 0(x2) # store x3 (0x9bbbf39b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009bbbf39b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000009bbbf39b from memory into f15
fleq.h x3, f11, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xefffffffffff7bff from memory into f15
la x2, scratch
li x3, 0xb9112dc2 # load x3 with 32 MSBs 0x00000000b9112dc2
sw x3, 0(x2) # store x3 (0xb9112dc2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b9112dc2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000b9112dc2 from memory into f21
fleq.h x29, f15, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc0dec0dec0defbff from memory into f8
la x2, scratch
li x3, 0xea057713 # load x3 with 32 MSBs 0x00000000ea057713
sw x3, 0(x2) # store x3 (0xea057713) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea057713
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ea057713 from memory into f11
fleq.h x6, f8, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f1
la x2, scratch
li x3, 0x08821db4 # load x3 with 32 MSBs 0x0000000008821db4
sw x3, 0(x2) # store x3 (0x08821db4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000008821db4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000008821db4 from memory into f21
fleq.h x2, f1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffff0ffffc00 from memory into f31
la x2, scratch
li x3, 0x43e9a810 # load x3 with 32 MSBs 0x0000000043e9a810
sw x3, 0(x2) # store x3 (0x43e9a810) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000043e9a810
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000043e9a810 from memory into f8
fleq.h x24, f31, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffeffffffff7e00 from memory into f18
la x2, scratch
li x3, 0x5fab045f # load x3 with 32 MSBs 0x000000005fab045f
sw x3, 0(x2) # store x3 (0x5fab045f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005fab045f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000005fab045f from memory into f27
fleq.h x29, f18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffefffff7fff from memory into f7
la x2, scratch
li x3, 0xaa254939 # load x3 with 32 MSBs 0x00000000aa254939
sw x3, 0(x2) # store x3 (0xaa254939) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa254939
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000aa254939 from memory into f18
fleq.h x23, f7, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f21
la x2, scratch
li x3, 0xff7c578d # load x3 with 32 MSBs 0x00000000ff7c578d
sw x3, 0(x2) # store x3 (0xff7c578d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ff7c578d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000ff7c578d from memory into f30
fleq.h x22, f21, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffffffcffff7dff from memory into f23
la x2, scratch
li x3, 0x13c0851c # load x3 with 32 MSBs 0x0000000013c0851c
sw x3, 0(x2) # store x3 (0x13c0851c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000013c0851c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000013c0851c from memory into f13
fleq.h x18, f23, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x302bdcb8 # load x3 with 32 MSBs 0x00000000302bdcb8
sw x3, 0(x2) # store x3 (0x302bdcb8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000302bdcb8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000302bdcb8 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
fleq.h x21, f18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x706b42ba # load x3 with 32 MSBs 0x00000000706b42ba
sw x3, 0(x2) # store x3 (0x706b42ba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000706b42ba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000706b42ba from memory into f21
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffffffffe8000 from memory into f25
fleq.h x6, f21, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x46aec1c9 # load x3 with 32 MSBs 0x0000000046aec1c9
sw x3, 0(x2) # store x3 (0x46aec1c9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000046aec1c9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000046aec1c9 from memory into f23
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fffffffffff3c00 from memory into f22
fleq.h x26, f23, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x6b328380 # load x3 with 32 MSBs 0x000000006b328380
sw x3, 0(x2) # store x3 (0x6b328380) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b328380
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000006b328380 from memory into f10
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfeedbee5beefbc00 from memory into f25
fleq.h x22, f10, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xe6c7fe18 # load x3 with 32 MSBs 0x00000000e6c7fe18
sw x3, 0(x2) # store x3 (0xe6c7fe18) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e6c7fe18
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e6c7fe18 from memory into f23
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffefffff0400 from memory into f7
fleq.h x28, f23, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x2717006b # load x3 with 32 MSBs 0x000000002717006b
sw x3, 0(x2) # store x3 (0x2717006b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002717006b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000002717006b from memory into f5
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ffff8400 from memory into f26
fleq.h x24, f5, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x3f06e58a # load x3 with 32 MSBs 0x000000003f06e58a
sw x3, 0(x2) # store x3 (0x3f06e58a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f06e58a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000003f06e58a from memory into f7
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fleq.h x28, f7, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xea525105 # load x3 with 32 MSBs 0x00000000ea525105
sw x3, 0(x2) # store x3 (0xea525105) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea525105
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000ea525105 from memory into f18
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xc0dec0dec0defbff from memory into f28
fleq.h x31, f18, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xbaa77801 # load x3 with 32 MSBs 0x00000000baa77801
sw x3, 0(x2) # store x3 (0xbaa77801) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000baa77801
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000baa77801 from memory into f12
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f28
fleq.h x6, f12, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x17e584fc # load x3 with 32 MSBs 0x0000000017e584fc
sw x3, 0(x2) # store x3 (0x17e584fc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000017e584fc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000017e584fc from memory into f19
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffff0ffffc00 from memory into f3
fleq.h x16, f19, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xfc388e42 # load x3 with 32 MSBs 0x00000000fc388e42
sw x3, 0(x2) # store x3 (0xfc388e42) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc388e42
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000fc388e42 from memory into f26
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffeffffffff7e00 from memory into f3
fleq.h x12, f26, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xcc3cc885 # load x3 with 32 MSBs 0x00000000cc3cc885
sw x3, 0(x2) # store x3 (0xcc3cc885) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cc3cc885
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000cc3cc885 from memory into f29
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffefffff7fff from memory into f26
fleq.h x28, f29, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x681cbfa6 # load x3 with 32 MSBs 0x00000000681cbfa6
sw x3, 0(x2) # store x3 (0x681cbfa6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000681cbfa6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000681cbfa6 from memory into f17
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f6
fleq.h x29, f17, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xc237b003 # load x3 with 32 MSBs 0x00000000c237b003
sw x3, 0(x2) # store x3 (0xc237b003) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c237b003
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000c237b003 from memory into f7
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
fleq.h x30, f7, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 108)

.EQU SIGSIZE,112


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
