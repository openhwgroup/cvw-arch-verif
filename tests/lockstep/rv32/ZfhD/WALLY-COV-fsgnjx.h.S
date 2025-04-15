///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fsgnjx.h.S
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
