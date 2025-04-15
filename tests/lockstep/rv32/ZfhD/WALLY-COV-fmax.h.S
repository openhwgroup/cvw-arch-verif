///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fmax.h.S
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
