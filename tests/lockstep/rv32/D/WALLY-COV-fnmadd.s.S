///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fnmadd.s.S
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
li x3, 0x0000000039018887 # load x3 with value 0x0000000039018887
sw x3, 0(x2) # store 0x0000000039018887 in memory
flw f14, 0(x2) # load 0x0000000039018887 from memory into f14
la x2, scratch
li x3, 0x00000000583058d6 # load x3 with value 0x00000000583058d6
sw x3, 0(x2) # store 0x00000000583058d6 in memory
flw f22, 0(x2) # load 0x00000000583058d6 from memory into f22
la x2, scratch
li x3, 0x000000002a152d38 # load x3 with value 0x000000002a152d38
sw x3, 0(x2) # store 0x000000002a152d38 in memory
flw f6, 0(x2) # load 0x000000002a152d38 from memory into f6
fnmadd.s f2, f14, f22, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffefff00000000 from memory into f22
la x2, scratch
li x3, 0xa358b60d # load x3 with 32 MSBs 0x00000000a358b60d
sw x3, 0(x2) # store x3 (0xa358b60d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a358b60d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000a358b60d from memory into f12
la x2, scratch
li x3, 0x89694fc3 # load x3 with 32 MSBs 0x0000000089694fc3
sw x3, 0(x2) # store x3 (0x89694fc3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000089694fc3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000089694fc3 from memory into f5
fnmadd.s f3, f22, f12, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xaaaaaaaa80000000 from memory into f31
la x2, scratch
li x3, 0x823ef571 # load x3 with 32 MSBs 0x00000000823ef571
sw x3, 0(x2) # store x3 (0x823ef571) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000823ef571
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000823ef571 from memory into f3
la x2, scratch
li x3, 0x0536568e # load x3 with 32 MSBs 0x000000000536568e
sw x3, 0(x2) # store x3 (0x0536568e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000536568e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000000536568e from memory into f14
fnmadd.s f21, f31, f3, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000003f800000 from memory into f18
la x2, scratch
li x3, 0x973470ff # load x3 with 32 MSBs 0x00000000973470ff
sw x3, 0(x2) # store x3 (0x973470ff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000973470ff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000973470ff from memory into f23
la x2, scratch
li x3, 0x25b42b9d # load x3 with 32 MSBs 0x0000000025b42b9d
sw x3, 0(x2) # store x3 (0x25b42b9d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000025b42b9d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000025b42b9d from memory into f15
fnmadd.s f29, f18, f23, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xdeadbeefbf800000 from memory into f14
la x2, scratch
li x3, 0xa3807089 # load x3 with 32 MSBs 0x00000000a3807089
sw x3, 0(x2) # store x3 (0xa3807089) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a3807089
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000a3807089 from memory into f7
la x2, scratch
li x3, 0xa5f35c07 # load x3 with 32 MSBs 0x00000000a5f35c07
sw x3, 0(x2) # store x3 (0xa5f35c07) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a5f35c07
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a5f35c07 from memory into f3
fnmadd.s f8, f14, f7, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa1b2c3d400800000 from memory into f31
la x2, scratch
li x3, 0x5ae3e395 # load x3 with 32 MSBs 0x000000005ae3e395
sw x3, 0(x2) # store x3 (0x5ae3e395) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005ae3e395
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000005ae3e395 from memory into f30
la x2, scratch
li x3, 0xb4498bca # load x3 with 32 MSBs 0x00000000b4498bca
sw x3, 0(x2) # store x3 (0xb4498bca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b4498bca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000b4498bca from memory into f28
fnmadd.s f15, f31, f30, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffef80800000 from memory into f30
la x2, scratch
li x3, 0x69264117 # load x3 with 32 MSBs 0x0000000069264117
sw x3, 0(x2) # store x3 (0x69264117) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000069264117
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000069264117 from memory into f28
la x2, scratch
li x3, 0xe0647883 # load x3 with 32 MSBs 0x00000000e0647883
sw x3, 0(x2) # store x3 (0xe0647883) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e0647883
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000e0647883 from memory into f25
fnmadd.s f24, f30, f28, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeffffef7f7fffff from memory into f3
la x2, scratch
li x3, 0x836bf9c7 # load x3 with 32 MSBs 0x00000000836bf9c7
sw x3, 0(x2) # store x3 (0x836bf9c7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000836bf9c7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000836bf9c7 from memory into f27
la x2, scratch
li x3, 0x47a59a0f # load x3 with 32 MSBs 0x0000000047a59a0f
sw x3, 0(x2) # store x3 (0x47a59a0f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000047a59a0f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000047a59a0f from memory into f6
fnmadd.s f26, f3, f27, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f27
la x2, scratch
li x3, 0xe4581fe7 # load x3 with 32 MSBs 0x00000000e4581fe7
sw x3, 0(x2) # store x3 (0xe4581fe7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e4581fe7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000e4581fe7 from memory into f15
la x2, scratch
li x3, 0xbc4ebaf3 # load x3 with 32 MSBs 0x00000000bc4ebaf3
sw x3, 0(x2) # store x3 (0xbc4ebaf3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bc4ebaf3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000bc4ebaf3 from memory into f16
fnmadd.s f31, f27, f15, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffff7f800000 from memory into f25
la x2, scratch
li x3, 0x06f82d19 # load x3 with 32 MSBs 0x0000000006f82d19
sw x3, 0(x2) # store x3 (0x06f82d19) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000006f82d19
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000006f82d19 from memory into f1
la x2, scratch
li x3, 0xe8c4a287 # load x3 with 32 MSBs 0x00000000e8c4a287
sw x3, 0(x2) # store x3 (0xe8c4a287) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e8c4a287
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000e8c4a287 from memory into f17
fnmadd.s f22, f25, f1, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffeff800000 from memory into f5
la x2, scratch
li x3, 0x7d116de5 # load x3 with 32 MSBs 0x000000007d116de5
sw x3, 0(x2) # store x3 (0x7d116de5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007d116de5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000007d116de5 from memory into f11
la x2, scratch
li x3, 0x37d23c3a # load x3 with 32 MSBs 0x0000000037d23c3a
sw x3, 0(x2) # store x3 (0x37d23c3a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037d23c3a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000037d23c3a from memory into f3
fnmadd.s f19, f5, f11, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfeedbee57fc00000 from memory into f2
la x2, scratch
li x3, 0xfef8600b # load x3 with 32 MSBs 0x00000000fef8600b
sw x3, 0(x2) # store x3 (0xfef8600b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fef8600b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000fef8600b from memory into f21
la x2, scratch
li x3, 0xe98a772a # load x3 with 32 MSBs 0x00000000e98a772a
sw x3, 0(x2) # store x3 (0xe98a772a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e98a772a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000e98a772a from memory into f3
fnmadd.s f7, f2, f21, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffc0deff7fffffff from memory into f28
la x2, scratch
li x3, 0x2b56529f # load x3 with 32 MSBs 0x000000002b56529f
sw x3, 0(x2) # store x3 (0x2b56529f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002b56529f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000002b56529f from memory into f5
la x2, scratch
li x3, 0xaa1c683e # load x3 with 32 MSBs 0x00000000aa1c683e
sw x3, 0(x2) # store x3 (0xaa1c683e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa1c683e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000aa1c683e from memory into f8
fnmadd.s f23, f28, f5, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfeffffff7f800001 from memory into f30
la x2, scratch
li x3, 0xe1878eb5 # load x3 with 32 MSBs 0x00000000e1878eb5
sw x3, 0(x2) # store x3 (0xe1878eb5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e1878eb5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000e1878eb5 from memory into f19
la x2, scratch
li x3, 0x47a07d76 # load x3 with 32 MSBs 0x0000000047a07d76
sw x3, 0(x2) # store x3 (0x47a07d76) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000047a07d76
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000047a07d76 from memory into f24
fnmadd.s f12, f30, f19, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfffffeff7fbfffff from memory into f6
la x2, scratch
li x3, 0x0f8dffb2 # load x3 with 32 MSBs 0x000000000f8dffb2
sw x3, 0(x2) # store x3 (0x0f8dffb2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000f8dffb2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000000f8dffb2 from memory into f27
la x2, scratch
li x3, 0x40c07af5 # load x3 with 32 MSBs 0x0000000040c07af5
sw x3, 0(x2) # store x3 (0x40c07af5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000040c07af5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000040c07af5 from memory into f21
fnmadd.s f25, f6, f27, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xf141733c # load x3 with 32 MSBs 0x00000000f141733c
sw x3, 0(x2) # store x3 (0xf141733c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f141733c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000f141733c from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffffefff00000000 from memory into f25
la x2, scratch
li x3, 0x15b48f84 # load x3 with 32 MSBs 0x0000000015b48f84
sw x3, 0(x2) # store x3 (0x15b48f84) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000015b48f84
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000015b48f84 from memory into f12
fnmadd.s f27, f28, f25, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xaf034cbd # load x3 with 32 MSBs 0x00000000af034cbd
sw x3, 0(x2) # store x3 (0xaf034cbd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000af034cbd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000af034cbd from memory into f22
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xaaaaaaaa80000000 from memory into f20
la x2, scratch
li x3, 0xada45542 # load x3 with 32 MSBs 0x00000000ada45542
sw x3, 0(x2) # store x3 (0xada45542) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ada45542
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000ada45542 from memory into f14
fnmadd.s f3, f22, f20, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x175e47b0 # load x3 with 32 MSBs 0x00000000175e47b0
sw x3, 0(x2) # store x3 (0x175e47b0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000175e47b0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000175e47b0 from memory into f26
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000003f800000 from memory into f17
la x2, scratch
li x3, 0x5e3f0a2d # load x3 with 32 MSBs 0x000000005e3f0a2d
sw x3, 0(x2) # store x3 (0x5e3f0a2d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005e3f0a2d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000005e3f0a2d from memory into f19
fnmadd.s f5, f26, f17, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xda29a75f # load x3 with 32 MSBs 0x00000000da29a75f
sw x3, 0(x2) # store x3 (0xda29a75f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da29a75f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000da29a75f from memory into f22
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xdeadbeefbf800000 from memory into f13
la x2, scratch
li x3, 0xe8651022 # load x3 with 32 MSBs 0x00000000e8651022
sw x3, 0(x2) # store x3 (0xe8651022) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e8651022
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e8651022 from memory into f8
fnmadd.s f25, f22, f13, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x833923e8 # load x3 with 32 MSBs 0x00000000833923e8
sw x3, 0(x2) # store x3 (0x833923e8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000833923e8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000833923e8 from memory into f9
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa1b2c3d400800000 from memory into f10
la x2, scratch
li x3, 0x4ccb64af # load x3 with 32 MSBs 0x000000004ccb64af
sw x3, 0(x2) # store x3 (0x4ccb64af) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ccb64af
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000004ccb64af from memory into f29
fnmadd.s f15, f9, f10, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xfaa2d1c8 # load x3 with 32 MSBs 0x00000000faa2d1c8
sw x3, 0(x2) # store x3 (0xfaa2d1c8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000faa2d1c8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000faa2d1c8 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xffffffef80800000 from memory into f12
la x2, scratch
li x3, 0x434d5299 # load x3 with 32 MSBs 0x00000000434d5299
sw x3, 0(x2) # store x3 (0x434d5299) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000434d5299
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000434d5299 from memory into f11
fnmadd.s f26, f10, f12, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x8cb95a3e # load x3 with 32 MSBs 0x000000008cb95a3e
sw x3, 0(x2) # store x3 (0x8cb95a3e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008cb95a3e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000008cb95a3e from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfeffffef7f7fffff from memory into f22
la x2, scratch
li x3, 0xcccc1a91 # load x3 with 32 MSBs 0x00000000cccc1a91
sw x3, 0(x2) # store x3 (0xcccc1a91) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cccc1a91
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000cccc1a91 from memory into f11
fnmadd.s f30, f26, f22, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x6f573894 # load x3 with 32 MSBs 0x000000006f573894
sw x3, 0(x2) # store x3 (0x6f573894) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006f573894
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000006f573894 from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f12
la x2, scratch
li x3, 0x9067f9c1 # load x3 with 32 MSBs 0x000000009067f9c1
sw x3, 0(x2) # store x3 (0x9067f9c1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009067f9c1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000009067f9c1 from memory into f13
fnmadd.s f18, f16, f12, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x87ed56ef # load x3 with 32 MSBs 0x0000000087ed56ef
sw x3, 0(x2) # store x3 (0x87ed56ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000087ed56ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000087ed56ef from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffff7f800000 from memory into f29
la x2, scratch
li x3, 0x9eb1ca60 # load x3 with 32 MSBs 0x000000009eb1ca60
sw x3, 0(x2) # store x3 (0x9eb1ca60) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009eb1ca60
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000009eb1ca60 from memory into f31
fnmadd.s f23, f10, f29, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xe229a0f1 # load x3 with 32 MSBs 0x00000000e229a0f1
sw x3, 0(x2) # store x3 (0xe229a0f1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e229a0f1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000e229a0f1 from memory into f14
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffffeff800000 from memory into f8
la x2, scratch
li x3, 0xc9f079d3 # load x3 with 32 MSBs 0x00000000c9f079d3
sw x3, 0(x2) # store x3 (0xc9f079d3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c9f079d3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000c9f079d3 from memory into f19
fnmadd.s f30, f14, f8, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xcfece853 # load x3 with 32 MSBs 0x00000000cfece853
sw x3, 0(x2) # store x3 (0xcfece853) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cfece853
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000cfece853 from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfeedbee57fc00000 from memory into f16
la x2, scratch
li x3, 0x0ed656ec # load x3 with 32 MSBs 0x000000000ed656ec
sw x3, 0(x2) # store x3 (0x0ed656ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000ed656ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000000ed656ec from memory into f11
fnmadd.s f5, f23, f16, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x656b78dd # load x3 with 32 MSBs 0x00000000656b78dd
sw x3, 0(x2) # store x3 (0x656b78dd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000656b78dd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000656b78dd from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffc0deff7fffffff from memory into f16
la x2, scratch
li x3, 0xd7db6f8f # load x3 with 32 MSBs 0x00000000d7db6f8f
sw x3, 0(x2) # store x3 (0xd7db6f8f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d7db6f8f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000d7db6f8f from memory into f11
fnmadd.s f18, f14, f16, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xec32f9e3 # load x3 with 32 MSBs 0x00000000ec32f9e3
sw x3, 0(x2) # store x3 (0xec32f9e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ec32f9e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000ec32f9e3 from memory into f20
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfeffffff7f800001 from memory into f25
la x2, scratch
li x3, 0x1d9a451e # load x3 with 32 MSBs 0x000000001d9a451e
sw x3, 0(x2) # store x3 (0x1d9a451e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001d9a451e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000001d9a451e from memory into f28
fnmadd.s f26, f20, f25, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xea0080b6 # load x3 with 32 MSBs 0x00000000ea0080b6
sw x3, 0(x2) # store x3 (0xea0080b6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea0080b6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ea0080b6 from memory into f2
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffeff7fbfffff from memory into f25
la x2, scratch
li x3, 0x86b282e2 # load x3 with 32 MSBs 0x0000000086b282e2
sw x3, 0(x2) # store x3 (0x86b282e2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000086b282e2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000086b282e2 from memory into f17
fnmadd.s f1, f2, f25, f17 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x1feaf896 # load x3 with 32 MSBs 0x000000001feaf896
sw x3, 0(x2) # store x3 (0x1feaf896) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001feaf896
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000001feaf896 from memory into f3
la x2, scratch
li x3, 0x3ada23d9 # load x3 with 32 MSBs 0x000000003ada23d9
sw x3, 0(x2) # store x3 (0x3ada23d9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ada23d9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000003ada23d9 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffffefff00000000 from memory into f13
fnmadd.s f16, f3, f25, f13 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xef69fb6b # load x3 with 32 MSBs 0x00000000ef69fb6b
sw x3, 0(x2) # store x3 (0xef69fb6b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ef69fb6b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000ef69fb6b from memory into f19
la x2, scratch
li x3, 0xdc68bbe6 # load x3 with 32 MSBs 0x00000000dc68bbe6
sw x3, 0(x2) # store x3 (0xdc68bbe6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dc68bbe6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000dc68bbe6 from memory into f14
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xaaaaaaaa80000000 from memory into f26
fnmadd.s f8, f19, f14, f26 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x3f800000)
la x2, scratch
li x3, 0x3d73d8e7 # load x3 with 32 MSBs 0x000000003d73d8e7
sw x3, 0(x2) # store x3 (0x3d73d8e7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003d73d8e7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000003d73d8e7 from memory into f30
la x2, scratch
li x3, 0xe65c3551 # load x3 with 32 MSBs 0x00000000e65c3551
sw x3, 0(x2) # store x3 (0xe65c3551) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e65c3551
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000e65c3551 from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000003f800000 from memory into f17
fnmadd.s f15, f30, f11, f17 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x0cb06cee # load x3 with 32 MSBs 0x000000000cb06cee
sw x3, 0(x2) # store x3 (0x0cb06cee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000cb06cee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000000cb06cee from memory into f7
la x2, scratch
li x3, 0xd03afd08 # load x3 with 32 MSBs 0x00000000d03afd08
sw x3, 0(x2) # store x3 (0xd03afd08) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d03afd08
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d03afd08 from memory into f18
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xdeadbeefbf800000 from memory into f1
fnmadd.s f15, f7, f18, f1 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x8273c3ad # load x3 with 32 MSBs 0x000000008273c3ad
sw x3, 0(x2) # store x3 (0x8273c3ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008273c3ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000008273c3ad from memory into f6
la x2, scratch
li x3, 0x1506266d # load x3 with 32 MSBs 0x000000001506266d
sw x3, 0(x2) # store x3 (0x1506266d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001506266d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000001506266d from memory into f30
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa1b2c3d400800000 from memory into f2
fnmadd.s f9, f6, f30, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x2e97f20c # load x3 with 32 MSBs 0x000000002e97f20c
sw x3, 0(x2) # store x3 (0x2e97f20c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002e97f20c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000002e97f20c from memory into f2
la x2, scratch
li x3, 0x342b53b6 # load x3 with 32 MSBs 0x00000000342b53b6
sw x3, 0(x2) # store x3 (0x342b53b6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000342b53b6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000342b53b6 from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffef80800000 from memory into f16
fnmadd.s f7, f2, f23, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x043b7bdf # load x3 with 32 MSBs 0x00000000043b7bdf
sw x3, 0(x2) # store x3 (0x043b7bdf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000043b7bdf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000043b7bdf from memory into f5
la x2, scratch
li x3, 0x45ffaca4 # load x3 with 32 MSBs 0x0000000045ffaca4
sw x3, 0(x2) # store x3 (0x45ffaca4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000045ffaca4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000045ffaca4 from memory into f8
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfeffffef7f7fffff from memory into f6
fnmadd.s f24, f5, f8, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xc6f20d4e # load x3 with 32 MSBs 0x00000000c6f20d4e
sw x3, 0(x2) # store x3 (0xc6f20d4e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c6f20d4e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000c6f20d4e from memory into f8
la x2, scratch
li x3, 0x960f5755 # load x3 with 32 MSBs 0x00000000960f5755
sw x3, 0(x2) # store x3 (0x960f5755) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000960f5755
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000960f5755 from memory into f9
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f2
fnmadd.s f12, f8, f9, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x4918da2d # load x3 with 32 MSBs 0x000000004918da2d
sw x3, 0(x2) # store x3 (0x4918da2d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004918da2d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000004918da2d from memory into f28
la x2, scratch
li x3, 0x9f309cfc # load x3 with 32 MSBs 0x000000009f309cfc
sw x3, 0(x2) # store x3 (0x9f309cfc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009f309cfc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000009f309cfc from memory into f12
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffff7f800000 from memory into f29
fnmadd.s f27, f28, f12, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x4b5d7801 # load x3 with 32 MSBs 0x000000004b5d7801
sw x3, 0(x2) # store x3 (0x4b5d7801) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004b5d7801
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000004b5d7801 from memory into f16
la x2, scratch
li x3, 0x6ca6e3bc # load x3 with 32 MSBs 0x000000006ca6e3bc
sw x3, 0(x2) # store x3 (0x6ca6e3bc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006ca6e3bc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000006ca6e3bc from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffffeff800000 from memory into f3
fnmadd.s f9, f16, f26, f3 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xedea5591 # load x3 with 32 MSBs 0x00000000edea5591
sw x3, 0(x2) # store x3 (0xedea5591) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000edea5591
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000edea5591 from memory into f15
la x2, scratch
li x3, 0x4b6c65f9 # load x3 with 32 MSBs 0x000000004b6c65f9
sw x3, 0(x2) # store x3 (0x4b6c65f9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004b6c65f9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000004b6c65f9 from memory into f17
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfeedbee57fc00000 from memory into f22
fnmadd.s f5, f15, f17, f22 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xfc27c6a4 # load x3 with 32 MSBs 0x00000000fc27c6a4
sw x3, 0(x2) # store x3 (0xfc27c6a4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc27c6a4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000fc27c6a4 from memory into f1
la x2, scratch
li x3, 0x7d5aa1a9 # load x3 with 32 MSBs 0x000000007d5aa1a9
sw x3, 0(x2) # store x3 (0x7d5aa1a9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007d5aa1a9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000007d5aa1a9 from memory into f24
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffc0deff7fffffff from memory into f22
fnmadd.s f20, f1, f24, f22 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x6110f9b7 # load x3 with 32 MSBs 0x000000006110f9b7
sw x3, 0(x2) # store x3 (0x6110f9b7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006110f9b7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000006110f9b7 from memory into f24
la x2, scratch
li x3, 0x9b24d576 # load x3 with 32 MSBs 0x000000009b24d576
sw x3, 0(x2) # store x3 (0x9b24d576) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009b24d576
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000009b24d576 from memory into f19
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeffffff7f800001 from memory into f3
fnmadd.s f17, f24, f19, f3 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x3a994e06 # load x3 with 32 MSBs 0x000000003a994e06
sw x3, 0(x2) # store x3 (0x3a994e06) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003a994e06
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000003a994e06 from memory into f8
la x2, scratch
li x3, 0xfaaea4db # load x3 with 32 MSBs 0x00000000faaea4db
sw x3, 0(x2) # store x3 (0xfaaea4db) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000faaea4db
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000faaea4db from memory into f31
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfffffeff7fbfffff from memory into f1
fnmadd.s f2, f8, f31, f1 # perform operation

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
