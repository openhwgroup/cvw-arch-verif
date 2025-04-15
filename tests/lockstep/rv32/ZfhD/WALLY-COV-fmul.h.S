///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fmul.h.S
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
