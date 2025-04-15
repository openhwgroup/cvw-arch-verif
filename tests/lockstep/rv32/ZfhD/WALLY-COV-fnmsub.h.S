///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fnmsub.h.S
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
li x3, 0x000000003c425ce6 # load x3 with value 0x000000003c425ce6
sw x3, 0(x2) # store 0x000000003c425ce6 in memory
flh f2, 0(x2) # load 0x000000003c425ce6 from memory into f2
la x2, scratch
li x3, 0x00000000069ed706 # load x3 with value 0x00000000069ed706
sw x3, 0(x2) # store 0x00000000069ed706 in memory
flh f24, 0(x2) # load 0x00000000069ed706 from memory into f24
la x2, scratch
li x3, 0x00000000777f6425 # load x3 with value 0x00000000777f6425
sw x3, 0(x2) # store 0x00000000777f6425 in memory
flh f6, 0(x2) # load 0x00000000777f6425 from memory into f6
fnmsub.h f29, f2, f24, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffffff00000000 from memory into f17
la x2, scratch
li x3, 0xc45f2d81 # load x3 with 32 MSBs 0x00000000c45f2d81
sw x3, 0(x2) # store x3 (0xc45f2d81) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c45f2d81
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000c45f2d81 from memory into f9
la x2, scratch
li x3, 0x6b9095fb # load x3 with 32 MSBs 0x000000006b9095fb
sw x3, 0(x2) # store x3 (0x6b9095fb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b9095fb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000006b9095fb from memory into f31
fnmsub.h f30, f17, f9, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfffffffffffe8000 from memory into f16
la x2, scratch
li x3, 0x37634c5e # load x3 with 32 MSBs 0x0000000037634c5e
sw x3, 0(x2) # store x3 (0x37634c5e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037634c5e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000037634c5e from memory into f24
la x2, scratch
li x3, 0xdd9f534e # load x3 with 32 MSBs 0x00000000dd9f534e
sw x3, 0(x2) # store x3 (0xdd9f534e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dd9f534e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000dd9f534e from memory into f12
fnmsub.h f25, f16, f24, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffff3c00 from memory into f29
la x2, scratch
li x3, 0xb7e21d50 # load x3 with 32 MSBs 0x00000000b7e21d50
sw x3, 0(x2) # store x3 (0xb7e21d50) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b7e21d50
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000b7e21d50 from memory into f11
la x2, scratch
li x3, 0xeb740deb # load x3 with 32 MSBs 0x00000000eb740deb
sw x3, 0(x2) # store x3 (0xeb740deb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb740deb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000eb740deb from memory into f1
fnmsub.h f19, f29, f11, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
la x2, scratch
li x3, 0x423ef7ad # load x3 with 32 MSBs 0x00000000423ef7ad
sw x3, 0(x2) # store x3 (0x423ef7ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000423ef7ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000423ef7ad from memory into f2
la x2, scratch
li x3, 0x78708cdb # load x3 with 32 MSBs 0x0000000078708cdb
sw x3, 0(x2) # store x3 (0x78708cdb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000078708cdb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000078708cdb from memory into f7
fnmsub.h f20, f14, f2, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffefffff0400 from memory into f15
la x2, scratch
li x3, 0x70649c9e # load x3 with 32 MSBs 0x0000000070649c9e
sw x3, 0(x2) # store x3 (0x70649c9e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000070649c9e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000070649c9e from memory into f23
la x2, scratch
li x3, 0xc14699b6 # load x3 with 32 MSBs 0x00000000c14699b6
sw x3, 0(x2) # store x3 (0xc14699b6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c14699b6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000c14699b6 from memory into f17
fnmsub.h f14, f15, f23, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000ffff8400 from memory into f20
la x2, scratch
li x3, 0xda597206 # load x3 with 32 MSBs 0x00000000da597206
sw x3, 0(x2) # store x3 (0xda597206) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da597206
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000da597206 from memory into f16
la x2, scratch
li x3, 0x64807236 # load x3 with 32 MSBs 0x0000000064807236
sw x3, 0(x2) # store x3 (0x64807236) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000064807236
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000064807236 from memory into f1
fnmsub.h f9, f20, f16, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xefffffffffff7bff from memory into f11
la x2, scratch
li x3, 0x1f1b7b2c # load x3 with 32 MSBs 0x000000001f1b7b2c
sw x3, 0(x2) # store x3 (0x1f1b7b2c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f1b7b2c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000001f1b7b2c from memory into f23
la x2, scratch
li x3, 0x94ef4358 # load x3 with 32 MSBs 0x0000000094ef4358
sw x3, 0(x2) # store x3 (0x94ef4358) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000094ef4358
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000094ef4358 from memory into f27
fnmsub.h f26, f11, f23, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xc0dec0dec0defbff from memory into f20
la x2, scratch
li x3, 0xbfe14e42 # load x3 with 32 MSBs 0x00000000bfe14e42
sw x3, 0(x2) # store x3 (0xbfe14e42) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bfe14e42
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000bfe14e42 from memory into f24
la x2, scratch
li x3, 0xa3b0896a # load x3 with 32 MSBs 0x00000000a3b0896a
sw x3, 0(x2) # store x3 (0xa3b0896a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a3b0896a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000a3b0896a from memory into f11
fnmsub.h f7, f20, f24, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f15
la x2, scratch
li x3, 0x22eef7c4 # load x3 with 32 MSBs 0x0000000022eef7c4
sw x3, 0(x2) # store x3 (0x22eef7c4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000022eef7c4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000022eef7c4 from memory into f16
la x2, scratch
li x3, 0xfe7062ed # load x3 with 32 MSBs 0x00000000fe7062ed
sw x3, 0(x2) # store x3 (0xfe7062ed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe7062ed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000fe7062ed from memory into f7
fnmsub.h f11, f15, f16, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffffffff0ffffc00 from memory into f23
la x2, scratch
li x3, 0xe5cb5d2e # load x3 with 32 MSBs 0x00000000e5cb5d2e
sw x3, 0(x2) # store x3 (0xe5cb5d2e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e5cb5d2e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000e5cb5d2e from memory into f26
la x2, scratch
li x3, 0x84abe834 # load x3 with 32 MSBs 0x0000000084abe834
sw x3, 0(x2) # store x3 (0x84abe834) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000084abe834
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000084abe834 from memory into f28
fnmsub.h f1, f23, f26, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
la x2, scratch
li x3, 0xf10a6c7a # load x3 with 32 MSBs 0x00000000f10a6c7a
sw x3, 0(x2) # store x3 (0xf10a6c7a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f10a6c7a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000f10a6c7a from memory into f18
la x2, scratch
li x3, 0x1ba50414 # load x3 with 32 MSBs 0x000000001ba50414
sw x3, 0(x2) # store x3 (0x1ba50414) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001ba50414
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001ba50414 from memory into f19
fnmsub.h f20, f2, f18, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffffefffff7fff from memory into f24
la x2, scratch
li x3, 0xb181eeea # load x3 with 32 MSBs 0x00000000b181eeea
sw x3, 0(x2) # store x3 (0xb181eeea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b181eeea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000b181eeea from memory into f28
la x2, scratch
li x3, 0x0b500aba # load x3 with 32 MSBs 0x000000000b500aba
sw x3, 0(x2) # store x3 (0x0b500aba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000b500aba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000000b500aba from memory into f22
fnmsub.h f13, f24, f28, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f5
la x2, scratch
li x3, 0xfc47e472 # load x3 with 32 MSBs 0x00000000fc47e472
sw x3, 0(x2) # store x3 (0xfc47e472) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc47e472
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000fc47e472 from memory into f9
la x2, scratch
li x3, 0x490c7387 # load x3 with 32 MSBs 0x00000000490c7387
sw x3, 0(x2) # store x3 (0x490c7387) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000490c7387
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000490c7387 from memory into f14
fnmsub.h f8, f5, f9, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffffcffff7dff from memory into f3
la x2, scratch
li x3, 0x5b0d681d # load x3 with 32 MSBs 0x000000005b0d681d
sw x3, 0(x2) # store x3 (0x5b0d681d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005b0d681d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000005b0d681d from memory into f12
la x2, scratch
li x3, 0x3f894004 # load x3 with 32 MSBs 0x000000003f894004
sw x3, 0(x2) # store x3 (0x3f894004) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f894004
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000003f894004 from memory into f26
fnmsub.h f1, f3, f12, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x57f78e81 # load x3 with 32 MSBs 0x0000000057f78e81
sw x3, 0(x2) # store x3 (0x57f78e81) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000057f78e81
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000057f78e81 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
la x2, scratch
li x3, 0xf9d25d93 # load x3 with 32 MSBs 0x00000000f9d25d93
sw x3, 0(x2) # store x3 (0xf9d25d93) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f9d25d93
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000f9d25d93 from memory into f7
fnmsub.h f16, f2, f14, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x4f8d9220 # load x3 with 32 MSBs 0x000000004f8d9220
sw x3, 0(x2) # store x3 (0x4f8d9220) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004f8d9220
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000004f8d9220 from memory into f31
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfffffffffffe8000 from memory into f28
la x2, scratch
li x3, 0xe94a6a92 # load x3 with 32 MSBs 0x00000000e94a6a92
sw x3, 0(x2) # store x3 (0xe94a6a92) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e94a6a92
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000e94a6a92 from memory into f17
fnmsub.h f20, f31, f28, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xb73aa622 # load x3 with 32 MSBs 0x00000000b73aa622
sw x3, 0(x2) # store x3 (0xb73aa622) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b73aa622
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000b73aa622 from memory into f10
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7fffffffffff3c00 from memory into f20
la x2, scratch
li x3, 0x5bf1a2c3 # load x3 with 32 MSBs 0x000000005bf1a2c3
sw x3, 0(x2) # store x3 (0x5bf1a2c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005bf1a2c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000005bf1a2c3 from memory into f19
fnmsub.h f22, f10, f20, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xbb2e6a9c # load x3 with 32 MSBs 0x00000000bb2e6a9c
sw x3, 0(x2) # store x3 (0xbb2e6a9c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bb2e6a9c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000bb2e6a9c from memory into f13
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfeedbee5beefbc00 from memory into f15
la x2, scratch
li x3, 0xe431a590 # load x3 with 32 MSBs 0x00000000e431a590
sw x3, 0(x2) # store x3 (0xe431a590) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e431a590
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e431a590 from memory into f8
fnmsub.h f22, f13, f15, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x165ed4c1 # load x3 with 32 MSBs 0x00000000165ed4c1
sw x3, 0(x2) # store x3 (0x165ed4c1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000165ed4c1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000165ed4c1 from memory into f21
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffefffff0400 from memory into f3
la x2, scratch
li x3, 0x00843a3b # load x3 with 32 MSBs 0x0000000000843a3b
sw x3, 0(x2) # store x3 (0x00843a3b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000843a3b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000843a3b from memory into f31
fnmsub.h f20, f21, f3, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x10b6120e # load x3 with 32 MSBs 0x0000000010b6120e
sw x3, 0(x2) # store x3 (0x10b6120e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000010b6120e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000010b6120e from memory into f23
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ffff8400 from memory into f2
la x2, scratch
li x3, 0x20c6c69a # load x3 with 32 MSBs 0x0000000020c6c69a
sw x3, 0(x2) # store x3 (0x20c6c69a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000020c6c69a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000020c6c69a from memory into f21
fnmsub.h f13, f23, f2, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x51a34a5b # load x3 with 32 MSBs 0x0000000051a34a5b
sw x3, 0(x2) # store x3 (0x51a34a5b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000051a34a5b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000051a34a5b from memory into f24
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
la x2, scratch
li x3, 0x4773c56c # load x3 with 32 MSBs 0x000000004773c56c
sw x3, 0(x2) # store x3 (0x4773c56c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004773c56c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000004773c56c from memory into f13
fnmsub.h f28, f24, f25, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x28367dd3 # load x3 with 32 MSBs 0x0000000028367dd3
sw x3, 0(x2) # store x3 (0x28367dd3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000028367dd3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000028367dd3 from memory into f6
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xc0dec0dec0defbff from memory into f7
la x2, scratch
li x3, 0x12987c3f # load x3 with 32 MSBs 0x0000000012987c3f
sw x3, 0(x2) # store x3 (0x12987c3f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000012987c3f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000012987c3f from memory into f13
fnmsub.h f31, f6, f7, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xf33c1b74 # load x3 with 32 MSBs 0x00000000f33c1b74
sw x3, 0(x2) # store x3 (0xf33c1b74) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f33c1b74
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000f33c1b74 from memory into f16
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f7
la x2, scratch
li x3, 0x713b7238 # load x3 with 32 MSBs 0x00000000713b7238
sw x3, 0(x2) # store x3 (0x713b7238) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000713b7238
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000713b7238 from memory into f5
fnmsub.h f1, f16, f7, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x0d160fc7 # load x3 with 32 MSBs 0x000000000d160fc7
sw x3, 0(x2) # store x3 (0x0d160fc7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d160fc7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000000d160fc7 from memory into f3
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffffffff0ffffc00 from memory into f25
la x2, scratch
li x3, 0x03b40d7a # load x3 with 32 MSBs 0x0000000003b40d7a
sw x3, 0(x2) # store x3 (0x03b40d7a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000003b40d7a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000003b40d7a from memory into f14
fnmsub.h f12, f3, f25, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x7e948721 # load x3 with 32 MSBs 0x000000007e948721
sw x3, 0(x2) # store x3 (0x7e948721) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007e948721
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000007e948721 from memory into f3
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffeffffffff7e00 from memory into f9
la x2, scratch
li x3, 0x3a68a195 # load x3 with 32 MSBs 0x000000003a68a195
sw x3, 0(x2) # store x3 (0x3a68a195) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003a68a195
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003a68a195 from memory into f29
fnmsub.h f24, f3, f9, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x029cd1e5 # load x3 with 32 MSBs 0x00000000029cd1e5
sw x3, 0(x2) # store x3 (0x029cd1e5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000029cd1e5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000029cd1e5 from memory into f7
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffffefffff7fff from memory into f17
la x2, scratch
li x3, 0x91d60f01 # load x3 with 32 MSBs 0x0000000091d60f01
sw x3, 0(x2) # store x3 (0x91d60f01) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000091d60f01
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000091d60f01 from memory into f3
fnmsub.h f20, f7, f17, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xf284baad # load x3 with 32 MSBs 0x00000000f284baad
sw x3, 0(x2) # store x3 (0xf284baad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f284baad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000f284baad from memory into f7
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f31
la x2, scratch
li x3, 0x1e908e86 # load x3 with 32 MSBs 0x000000001e908e86
sw x3, 0(x2) # store x3 (0x1e908e86) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001e908e86
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000001e908e86 from memory into f9
fnmsub.h f25, f7, f31, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x6577bf19 # load x3 with 32 MSBs 0x000000006577bf19
sw x3, 0(x2) # store x3 (0x6577bf19) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006577bf19
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000006577bf19 from memory into f29
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffcffff7dff from memory into f20
la x2, scratch
li x3, 0x6e62015f # load x3 with 32 MSBs 0x000000006e62015f
sw x3, 0(x2) # store x3 (0x6e62015f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e62015f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000006e62015f from memory into f8
fnmsub.h f10, f29, f20, f8 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe401d0b9 # load x3 with 32 MSBs 0x00000000e401d0b9
sw x3, 0(x2) # store x3 (0xe401d0b9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e401d0b9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000e401d0b9 from memory into f9
la x2, scratch
li x3, 0xc89414a4 # load x3 with 32 MSBs 0x00000000c89414a4
sw x3, 0(x2) # store x3 (0xc89414a4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c89414a4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000c89414a4 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
fnmsub.h f22, f9, f23, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x487da81c # load x3 with 32 MSBs 0x00000000487da81c
sw x3, 0(x2) # store x3 (0x487da81c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000487da81c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000487da81c from memory into f23
la x2, scratch
li x3, 0x3fee6f64 # load x3 with 32 MSBs 0x000000003fee6f64
sw x3, 0(x2) # store x3 (0x3fee6f64) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003fee6f64
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003fee6f64 from memory into f6
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffffffe8000 from memory into f5
fnmsub.h f2, f23, f6, f5 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x43a93ee7 # load x3 with 32 MSBs 0x0000000043a93ee7
sw x3, 0(x2) # store x3 (0x43a93ee7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000043a93ee7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000043a93ee7 from memory into f24
la x2, scratch
li x3, 0x735d4931 # load x3 with 32 MSBs 0x00000000735d4931
sw x3, 0(x2) # store x3 (0x735d4931) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000735d4931
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000735d4931 from memory into f21
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7fffffffffff3c00 from memory into f15
fnmsub.h f13, f24, f21, f15 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x591afa5a # load x3 with 32 MSBs 0x00000000591afa5a
sw x3, 0(x2) # store x3 (0x591afa5a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000591afa5a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000591afa5a from memory into f16
la x2, scratch
li x3, 0x8e96493b # load x3 with 32 MSBs 0x000000008e96493b
sw x3, 0(x2) # store x3 (0x8e96493b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008e96493b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000008e96493b from memory into f27
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfeedbee5beefbc00 from memory into f15
fnmsub.h f28, f16, f27, f15 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x610131b0 # load x3 with 32 MSBs 0x00000000610131b0
sw x3, 0(x2) # store x3 (0x610131b0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000610131b0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000610131b0 from memory into f28
la x2, scratch
li x3, 0xaea436ef # load x3 with 32 MSBs 0x00000000aea436ef
sw x3, 0(x2) # store x3 (0xaea436ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aea436ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000aea436ef from memory into f1
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffefffff0400 from memory into f16
fnmsub.h f21, f28, f1, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0xe035f8f0 # load x3 with 32 MSBs 0x00000000e035f8f0
sw x3, 0(x2) # store x3 (0xe035f8f0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e035f8f0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000e035f8f0 from memory into f6
la x2, scratch
li x3, 0x2df50b6c # load x3 with 32 MSBs 0x000000002df50b6c
sw x3, 0(x2) # store x3 (0x2df50b6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002df50b6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000002df50b6c from memory into f30
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000ffff8400 from memory into f24
fnmsub.h f22, f6, f30, f24 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x5bf9d0bd # load x3 with 32 MSBs 0x000000005bf9d0bd
sw x3, 0(x2) # store x3 (0x5bf9d0bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005bf9d0bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000005bf9d0bd from memory into f13
la x2, scratch
li x3, 0xff45dfd4 # load x3 with 32 MSBs 0x00000000ff45dfd4
sw x3, 0(x2) # store x3 (0xff45dfd4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ff45dfd4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000ff45dfd4 from memory into f28
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xefffffffffff7bff from memory into f21
fnmsub.h f14, f13, f28, f21 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x960d3b53 # load x3 with 32 MSBs 0x00000000960d3b53
sw x3, 0(x2) # store x3 (0x960d3b53) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000960d3b53
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000960d3b53 from memory into f27
la x2, scratch
li x3, 0xf5a69034 # load x3 with 32 MSBs 0x00000000f5a69034
sw x3, 0(x2) # store x3 (0xf5a69034) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f5a69034
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000f5a69034 from memory into f14
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xc0dec0dec0defbff from memory into f30
fnmsub.h f16, f27, f14, f30 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xd899bef8 # load x3 with 32 MSBs 0x00000000d899bef8
sw x3, 0(x2) # store x3 (0xd899bef8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d899bef8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000d899bef8 from memory into f25
la x2, scratch
li x3, 0x6b8f18a2 # load x3 with 32 MSBs 0x000000006b8f18a2
sw x3, 0(x2) # store x3 (0x6b8f18a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b8f18a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000006b8f18a2 from memory into f21
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f5
fnmsub.h f3, f25, f21, f5 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x08bba913 # load x3 with 32 MSBs 0x0000000008bba913
sw x3, 0(x2) # store x3 (0x08bba913) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000008bba913
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000008bba913 from memory into f18
la x2, scratch
li x3, 0xaae15360 # load x3 with 32 MSBs 0x00000000aae15360
sw x3, 0(x2) # store x3 (0xaae15360) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aae15360
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000aae15360 from memory into f2
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffff0ffffc00 from memory into f31
fnmsub.h f14, f18, f2, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xd194fd71 # load x3 with 32 MSBs 0x00000000d194fd71
sw x3, 0(x2) # store x3 (0xd194fd71) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d194fd71
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000d194fd71 from memory into f26
la x2, scratch
li x3, 0x3fab3b57 # load x3 with 32 MSBs 0x000000003fab3b57
sw x3, 0(x2) # store x3 (0x3fab3b57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003fab3b57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000003fab3b57 from memory into f13
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffeffffffff7e00 from memory into f29
fnmsub.h f14, f26, f13, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xf16d9094 # load x3 with 32 MSBs 0x00000000f16d9094
sw x3, 0(x2) # store x3 (0xf16d9094) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f16d9094
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000f16d9094 from memory into f31
la x2, scratch
li x3, 0xd722ba12 # load x3 with 32 MSBs 0x00000000d722ba12
sw x3, 0(x2) # store x3 (0xd722ba12) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d722ba12
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000d722ba12 from memory into f29
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffffffefffff7fff from memory into f20
fnmsub.h f17, f31, f29, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x87fc1e29 # load x3 with 32 MSBs 0x0000000087fc1e29
sw x3, 0(x2) # store x3 (0x87fc1e29) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000087fc1e29
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000087fc1e29 from memory into f14
la x2, scratch
li x3, 0xde3ca242 # load x3 with 32 MSBs 0x00000000de3ca242
sw x3, 0(x2) # store x3 (0xde3ca242) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de3ca242
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000de3ca242 from memory into f16
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f29
fnmsub.h f30, f14, f16, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xf2f9d9e8 # load x3 with 32 MSBs 0x00000000f2f9d9e8
sw x3, 0(x2) # store x3 (0xf2f9d9e8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f2f9d9e8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000f2f9d9e8 from memory into f30
la x2, scratch
li x3, 0x34fbc0d1 # load x3 with 32 MSBs 0x0000000034fbc0d1
sw x3, 0(x2) # store x3 (0x34fbc0d1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000034fbc0d1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000034fbc0d1 from memory into f26
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffffcffff7dff from memory into f18
fnmsub.h f7, f30, f26, f18 # perform operation

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
