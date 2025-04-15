///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fsub.s.S
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
li x3, 0x000000002197356b # load x3 with value 0x000000002197356b
sw x3, 0(x2) # store 0x000000002197356b in memory
flw f2, 0(x2) # load 0x000000002197356b from memory into f2
la x2, scratch
li x3, 0x000000004825176d # load x3 with value 0x000000004825176d
sw x3, 0(x2) # store 0x000000004825176d in memory
flw f22, 0(x2) # load 0x000000004825176d from memory into f22
fsub.s f15, f2, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffefff00000000 from memory into f31
la x2, scratch
li x3, 0x153cc123 # load x3 with 32 MSBs 0x00000000153cc123
sw x3, 0(x2) # store x3 (0x153cc123) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000153cc123
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000153cc123 from memory into f8
fsub.s f5, f31, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xaaaaaaaa80000000 from memory into f22
la x2, scratch
li x3, 0xef754cae # load x3 with 32 MSBs 0x00000000ef754cae
sw x3, 0(x2) # store x3 (0xef754cae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ef754cae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ef754cae from memory into f26
fsub.s f1, f22, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000003f800000 from memory into f2
la x2, scratch
li x3, 0x2b976380 # load x3 with 32 MSBs 0x000000002b976380
sw x3, 0(x2) # store x3 (0x2b976380) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002b976380
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000002b976380 from memory into f29
fsub.s f16, f2, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xdeadbeefbf800000 from memory into f26
la x2, scratch
li x3, 0x73af90d4 # load x3 with 32 MSBs 0x0000000073af90d4
sw x3, 0(x2) # store x3 (0x73af90d4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000073af90d4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000073af90d4 from memory into f29
fsub.s f21, f26, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa1b2c3d400800000 from memory into f28
la x2, scratch
li x3, 0x0a5a4c4b # load x3 with 32 MSBs 0x000000000a5a4c4b
sw x3, 0(x2) # store x3 (0x0a5a4c4b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000a5a4c4b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000000a5a4c4b from memory into f24
fsub.s f2, f28, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffef80800000 from memory into f22
la x2, scratch
li x3, 0x416988f0 # load x3 with 32 MSBs 0x00000000416988f0
sw x3, 0(x2) # store x3 (0x416988f0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000416988f0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000416988f0 from memory into f28
fsub.s f14, f22, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfeffffef7f7fffff from memory into f30
la x2, scratch
li x3, 0x624e5c3b # load x3 with 32 MSBs 0x00000000624e5c3b
sw x3, 0(x2) # store x3 (0x624e5c3b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000624e5c3b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000624e5c3b from memory into f1
fsub.s f26, f30, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f30
la x2, scratch
li x3, 0x2c64f8c8 # load x3 with 32 MSBs 0x000000002c64f8c8
sw x3, 0(x2) # store x3 (0x2c64f8c8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002c64f8c8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000002c64f8c8 from memory into f21
fsub.s f7, f30, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffff7f800000 from memory into f29
la x2, scratch
li x3, 0xfbb3f239 # load x3 with 32 MSBs 0x00000000fbb3f239
sw x3, 0(x2) # store x3 (0xfbb3f239) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fbb3f239
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000fbb3f239 from memory into f3
fsub.s f20, f29, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffffffeff800000 from memory into f12
la x2, scratch
li x3, 0x45029cf1 # load x3 with 32 MSBs 0x0000000045029cf1
sw x3, 0(x2) # store x3 (0x45029cf1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000045029cf1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000045029cf1 from memory into f5
fsub.s f29, f12, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfeedbee57fc00000 from memory into f24
la x2, scratch
li x3, 0x893e6b9d # load x3 with 32 MSBs 0x00000000893e6b9d
sw x3, 0(x2) # store x3 (0x893e6b9d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000893e6b9d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000893e6b9d from memory into f2
fsub.s f1, f24, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffc0deff7fffffff from memory into f29
la x2, scratch
li x3, 0x35b83449 # load x3 with 32 MSBs 0x0000000035b83449
sw x3, 0(x2) # store x3 (0x35b83449) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000035b83449
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000035b83449 from memory into f31
fsub.s f7, f29, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfeffffff7f800001 from memory into f22
la x2, scratch
li x3, 0x012a197f # load x3 with 32 MSBs 0x00000000012a197f
sw x3, 0(x2) # store x3 (0x012a197f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000012a197f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000012a197f from memory into f31
fsub.s f21, f22, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfffffeff7fbfffff from memory into f6
la x2, scratch
li x3, 0xfb49f02e # load x3 with 32 MSBs 0x00000000fb49f02e
sw x3, 0(x2) # store x3 (0xfb49f02e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fb49f02e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000fb49f02e from memory into f21
fsub.s f22, f6, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xd4c44f9a # load x3 with 32 MSBs 0x00000000d4c44f9a
sw x3, 0(x2) # store x3 (0xd4c44f9a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d4c44f9a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000d4c44f9a from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
fsub.s f30, f25, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xd3588285 # load x3 with 32 MSBs 0x00000000d3588285
sw x3, 0(x2) # store x3 (0xd3588285) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d3588285
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000d3588285 from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xaaaaaaaa80000000 from memory into f15
fsub.s f29, f6, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x6fd9a38a # load x3 with 32 MSBs 0x000000006fd9a38a
sw x3, 0(x2) # store x3 (0x6fd9a38a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006fd9a38a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000006fd9a38a from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000003f800000 from memory into f17
fsub.s f22, f2, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x86e8857f # load x3 with 32 MSBs 0x0000000086e8857f
sw x3, 0(x2) # store x3 (0x86e8857f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000086e8857f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000086e8857f from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xdeadbeefbf800000 from memory into f23
fsub.s f9, f30, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x53c9045f # load x3 with 32 MSBs 0x0000000053c9045f
sw x3, 0(x2) # store x3 (0x53c9045f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000053c9045f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000053c9045f from memory into f31
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa1b2c3d400800000 from memory into f20
fsub.s f1, f31, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x8815ae4a # load x3 with 32 MSBs 0x000000008815ae4a
sw x3, 0(x2) # store x3 (0x8815ae4a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008815ae4a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000008815ae4a from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffffffef80800000 from memory into f28
fsub.s f1, f23, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x737cd654 # load x3 with 32 MSBs 0x00000000737cd654
sw x3, 0(x2) # store x3 (0x737cd654) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000737cd654
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000737cd654 from memory into f29
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfeffffef7f7fffff from memory into f25
fsub.s f27, f29, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x13ba5b44 # load x3 with 32 MSBs 0x0000000013ba5b44
sw x3, 0(x2) # store x3 (0x13ba5b44) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000013ba5b44
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000013ba5b44 from memory into f8
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f16
fsub.s f3, f8, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x963dfc07 # load x3 with 32 MSBs 0x00000000963dfc07
sw x3, 0(x2) # store x3 (0x963dfc07) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000963dfc07
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000963dfc07 from memory into f21
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fffffff7f800000 from memory into f10
fsub.s f28, f21, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x8c484e4d # load x3 with 32 MSBs 0x000000008c484e4d
sw x3, 0(x2) # store x3 (0x8c484e4d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008c484e4d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000008c484e4d from memory into f7
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffeff800000 from memory into f20
fsub.s f26, f7, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x0ea27d5b # load x3 with 32 MSBs 0x000000000ea27d5b
sw x3, 0(x2) # store x3 (0x0ea27d5b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000ea27d5b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000000ea27d5b from memory into f22
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfeedbee57fc00000 from memory into f14
fsub.s f3, f22, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x79dc6465 # load x3 with 32 MSBs 0x0000000079dc6465
sw x3, 0(x2) # store x3 (0x79dc6465) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000079dc6465
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000079dc6465 from memory into f31
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffc0deff7fffffff from memory into f11
fsub.s f28, f31, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x7e9cd1bf # load x3 with 32 MSBs 0x000000007e9cd1bf
sw x3, 0(x2) # store x3 (0x7e9cd1bf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007e9cd1bf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000007e9cd1bf from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfeffffff7f800001 from memory into f24
fsub.s f2, f26, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x69fc8043 # load x3 with 32 MSBs 0x0000000069fc8043
sw x3, 0(x2) # store x3 (0x69fc8043) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000069fc8043
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000069fc8043 from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffeff7fbfffff from memory into f8
fsub.s f9, f6, f8 # perform operation

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
