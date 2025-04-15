///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fnmadd.h.S
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
