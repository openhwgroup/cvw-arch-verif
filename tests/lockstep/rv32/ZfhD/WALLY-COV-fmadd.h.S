///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fmadd.h.S
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
