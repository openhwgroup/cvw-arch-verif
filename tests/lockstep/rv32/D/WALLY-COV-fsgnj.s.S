///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fsgnj.s.S
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
li x3, 0x0000000018b383d0 # load x3 with value 0x0000000018b383d0
sw x3, 0(x2) # store 0x0000000018b383d0 in memory
flw f23, 0(x2) # load 0x0000000018b383d0 from memory into f23
la x2, scratch
li x3, 0x000000004a9e07a9 # load x3 with value 0x000000004a9e07a9
sw x3, 0(x2) # store 0x000000004a9e07a9 in memory
flw f18, 0(x2) # load 0x000000004a9e07a9 from memory into f18
fsgnj.s f6, f23, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
la x2, scratch
li x3, 0xfa8fd36a # load x3 with 32 MSBs 0x00000000fa8fd36a
sw x3, 0(x2) # store x3 (0xfa8fd36a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fa8fd36a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000fa8fd36a from memory into f20
fsgnj.s f26, f24, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xaaaaaaaa80000000 from memory into f16
la x2, scratch
li x3, 0x347ded21 # load x3 with 32 MSBs 0x00000000347ded21
sw x3, 0(x2) # store x3 (0x347ded21) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000347ded21
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000347ded21 from memory into f3
fsgnj.s f9, f16, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003f800000 from memory into f29
la x2, scratch
li x3, 0x4deb42a9 # load x3 with 32 MSBs 0x000000004deb42a9
sw x3, 0(x2) # store x3 (0x4deb42a9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004deb42a9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000004deb42a9 from memory into f23
fsgnj.s f12, f29, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xdeadbeefbf800000 from memory into f5
la x2, scratch
li x3, 0x1e967d15 # load x3 with 32 MSBs 0x000000001e967d15
sw x3, 0(x2) # store x3 (0x1e967d15) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001e967d15
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000001e967d15 from memory into f24
fsgnj.s f20, f5, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa1b2c3d400800000 from memory into f1
la x2, scratch
li x3, 0xa7513ad5 # load x3 with 32 MSBs 0x00000000a7513ad5
sw x3, 0(x2) # store x3 (0xa7513ad5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a7513ad5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000a7513ad5 from memory into f2
fsgnj.s f16, f1, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffffef80800000 from memory into f24
la x2, scratch
li x3, 0x27a6c754 # load x3 with 32 MSBs 0x0000000027a6c754
sw x3, 0(x2) # store x3 (0x27a6c754) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027a6c754
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000027a6c754 from memory into f18
fsgnj.s f30, f24, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfeffffef7f7fffff from memory into f15
la x2, scratch
li x3, 0x2c8139d5 # load x3 with 32 MSBs 0x000000002c8139d5
sw x3, 0(x2) # store x3 (0x2c8139d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002c8139d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000002c8139d5 from memory into f17
fsgnj.s f8, f15, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f11
la x2, scratch
li x3, 0xbc47c661 # load x3 with 32 MSBs 0x00000000bc47c661
sw x3, 0(x2) # store x3 (0xbc47c661) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bc47c661
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000bc47c661 from memory into f12
fsgnj.s f16, f11, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7fffffff7f800000 from memory into f7
la x2, scratch
li x3, 0x9f84d82b # load x3 with 32 MSBs 0x000000009f84d82b
sw x3, 0(x2) # store x3 (0x9f84d82b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009f84d82b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000009f84d82b from memory into f21
fsgnj.s f22, f7, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfffffffeff800000 from memory into f28
la x2, scratch
li x3, 0x0ff5cf9a # load x3 with 32 MSBs 0x000000000ff5cf9a
sw x3, 0(x2) # store x3 (0x0ff5cf9a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000ff5cf9a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000000ff5cf9a from memory into f12
fsgnj.s f31, f28, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfeedbee57fc00000 from memory into f2
la x2, scratch
li x3, 0x59311f63 # load x3 with 32 MSBs 0x0000000059311f63
sw x3, 0(x2) # store x3 (0x59311f63) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000059311f63
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000059311f63 from memory into f7
fsgnj.s f9, f2, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffc0deff7fffffff from memory into f16
la x2, scratch
li x3, 0x863f8a3a # load x3 with 32 MSBs 0x00000000863f8a3a
sw x3, 0(x2) # store x3 (0x863f8a3a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000863f8a3a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000863f8a3a from memory into f19
fsgnj.s f30, f16, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeffffff7f800001 from memory into f3
la x2, scratch
li x3, 0xb9c80671 # load x3 with 32 MSBs 0x00000000b9c80671
sw x3, 0(x2) # store x3 (0xb9c80671) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b9c80671
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000b9c80671 from memory into f25
fsgnj.s f2, f3, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffeff7fbfffff from memory into f20
la x2, scratch
li x3, 0x5292b19d # load x3 with 32 MSBs 0x000000005292b19d
sw x3, 0(x2) # store x3 (0x5292b19d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005292b19d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000005292b19d from memory into f1
fsgnj.s f29, f20, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xeddeff67 # load x3 with 32 MSBs 0x00000000eddeff67
sw x3, 0(x2) # store x3 (0xeddeff67) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eddeff67
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000eddeff67 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
fsgnj.s f14, f8, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xccea7cce # load x3 with 32 MSBs 0x00000000ccea7cce
sw x3, 0(x2) # store x3 (0xccea7cce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ccea7cce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ccea7cce from memory into f26
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xaaaaaaaa80000000 from memory into f10
fsgnj.s f14, f26, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x6e6c99c9 # load x3 with 32 MSBs 0x000000006e6c99c9
sw x3, 0(x2) # store x3 (0x6e6c99c9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e6c99c9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000006e6c99c9 from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000003f800000 from memory into f16
fsgnj.s f31, f13, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xea4d0471 # load x3 with 32 MSBs 0x00000000ea4d0471
sw x3, 0(x2) # store x3 (0xea4d0471) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea4d0471
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000ea4d0471 from memory into f24
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xdeadbeefbf800000 from memory into f1
fsgnj.s f11, f24, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x827ee987 # load x3 with 32 MSBs 0x00000000827ee987
sw x3, 0(x2) # store x3 (0x827ee987) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000827ee987
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000827ee987 from memory into f24
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa1b2c3d400800000 from memory into f2
fsgnj.s f5, f24, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x78002769 # load x3 with 32 MSBs 0x0000000078002769
sw x3, 0(x2) # store x3 (0x78002769) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000078002769
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000078002769 from memory into f31
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffef80800000 from memory into f9
fsgnj.s f24, f31, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xe48fdaff # load x3 with 32 MSBs 0x00000000e48fdaff
sw x3, 0(x2) # store x3 (0xe48fdaff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e48fdaff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000e48fdaff from memory into f30
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeffffef7f7fffff from memory into f3
fsgnj.s f22, f30, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x23b1c10b # load x3 with 32 MSBs 0x0000000023b1c10b
sw x3, 0(x2) # store x3 (0x23b1c10b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000023b1c10b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000023b1c10b from memory into f3
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f30
fsgnj.s f7, f3, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x708fdf45 # load x3 with 32 MSBs 0x00000000708fdf45
sw x3, 0(x2) # store x3 (0x708fdf45) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000708fdf45
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000708fdf45 from memory into f29
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffff7f800000 from memory into f13
fsgnj.s f9, f29, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x09ed3625 # load x3 with 32 MSBs 0x0000000009ed3625
sw x3, 0(x2) # store x3 (0x09ed3625) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000009ed3625
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000009ed3625 from memory into f17
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfffffffeff800000 from memory into f22
fsgnj.s f26, f17, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xeb27c61c # load x3 with 32 MSBs 0x00000000eb27c61c
sw x3, 0(x2) # store x3 (0xeb27c61c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb27c61c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000eb27c61c from memory into f26
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfeedbee57fc00000 from memory into f9
fsgnj.s f18, f26, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xf116ba02 # load x3 with 32 MSBs 0x00000000f116ba02
sw x3, 0(x2) # store x3 (0xf116ba02) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f116ba02
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000f116ba02 from memory into f19
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffc0deff7fffffff from memory into f11
fsgnj.s f21, f19, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x931e9ce3 # load x3 with 32 MSBs 0x00000000931e9ce3
sw x3, 0(x2) # store x3 (0x931e9ce3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000931e9ce3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000931e9ce3 from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfeffffff7f800001 from memory into f12
fsgnj.s f17, f13, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x3b807221 # load x3 with 32 MSBs 0x000000003b807221
sw x3, 0(x2) # store x3 (0x3b807221) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b807221
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000003b807221 from memory into f3
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffeff7fbfffff from memory into f8
fsgnj.s f30, f3, f8 # perform operation

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
