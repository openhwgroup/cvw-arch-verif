///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fsgnjx.s.S
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
li x3, 0x00000000aec4690c # load x3 with value 0x00000000aec4690c
sw x3, 0(x2) # store 0x00000000aec4690c in memory
flw f20, 0(x2) # load 0x00000000aec4690c from memory into f20
la x2, scratch
li x3, 0x00000000198f0e70 # load x3 with value 0x00000000198f0e70
sw x3, 0(x2) # store 0x00000000198f0e70 in memory
flw f29, 0(x2) # load 0x00000000198f0e70 from memory into f29
fsgnjx.s f7, f20, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffefff00000000 from memory into f5
la x2, scratch
li x3, 0x3be04073 # load x3 with 32 MSBs 0x000000003be04073
sw x3, 0(x2) # store x3 (0x3be04073) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003be04073
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000003be04073 from memory into f11
fsgnjx.s f27, f5, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xaaaaaaaa80000000 from memory into f27
la x2, scratch
li x3, 0xcc027c44 # load x3 with 32 MSBs 0x00000000cc027c44
sw x3, 0(x2) # store x3 (0xcc027c44) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cc027c44
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000cc027c44 from memory into f18
fsgnjx.s f7, f27, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000003f800000 from memory into f14
la x2, scratch
li x3, 0x5f0f3c11 # load x3 with 32 MSBs 0x000000005f0f3c11
sw x3, 0(x2) # store x3 (0x5f0f3c11) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005f0f3c11
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000005f0f3c11 from memory into f15
fsgnjx.s f23, f14, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xdeadbeefbf800000 from memory into f19
la x2, scratch
li x3, 0x85cbce74 # load x3 with 32 MSBs 0x0000000085cbce74
sw x3, 0(x2) # store x3 (0x85cbce74) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000085cbce74
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000085cbce74 from memory into f7
fsgnjx.s f27, f19, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xa1b2c3d400800000 from memory into f25
la x2, scratch
li x3, 0x78518f3b # load x3 with 32 MSBs 0x0000000078518f3b
sw x3, 0(x2) # store x3 (0x78518f3b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000078518f3b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000078518f3b from memory into f7
fsgnjx.s f23, f25, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffef80800000 from memory into f16
la x2, scratch
li x3, 0x46c54cb5 # load x3 with 32 MSBs 0x0000000046c54cb5
sw x3, 0(x2) # store x3 (0x46c54cb5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000046c54cb5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000046c54cb5 from memory into f3
fsgnjx.s f28, f16, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfeffffef7f7fffff from memory into f23
la x2, scratch
li x3, 0x96d86f71 # load x3 with 32 MSBs 0x0000000096d86f71
sw x3, 0(x2) # store x3 (0x96d86f71) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000096d86f71
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000096d86f71 from memory into f29
fsgnjx.s f13, f23, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f21
la x2, scratch
li x3, 0xe3398a08 # load x3 with 32 MSBs 0x00000000e3398a08
sw x3, 0(x2) # store x3 (0xe3398a08) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e3398a08
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000e3398a08 from memory into f1
fsgnjx.s f24, f21, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7fffffff7f800000 from memory into f7
la x2, scratch
li x3, 0x0641a269 # load x3 with 32 MSBs 0x000000000641a269
sw x3, 0(x2) # store x3 (0x0641a269) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000641a269
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000000641a269 from memory into f15
fsgnjx.s f30, f7, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffffffeff800000 from memory into f7
la x2, scratch
li x3, 0x7f833f7d # load x3 with 32 MSBs 0x000000007f833f7d
sw x3, 0(x2) # store x3 (0x7f833f7d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007f833f7d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000007f833f7d from memory into f13
fsgnjx.s f6, f7, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfeedbee57fc00000 from memory into f14
la x2, scratch
li x3, 0x0f511145 # load x3 with 32 MSBs 0x000000000f511145
sw x3, 0(x2) # store x3 (0x0f511145) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000f511145
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000000f511145 from memory into f6
fsgnjx.s f12, f14, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffc0deff7fffffff from memory into f20
la x2, scratch
li x3, 0xf44dfa20 # load x3 with 32 MSBs 0x00000000f44dfa20
sw x3, 0(x2) # store x3 (0xf44dfa20) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f44dfa20
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000f44dfa20 from memory into f10
fsgnjx.s f26, f20, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeffffff7f800001 from memory into f28
la x2, scratch
li x3, 0x82f55d40 # load x3 with 32 MSBs 0x0000000082f55d40
sw x3, 0(x2) # store x3 (0x82f55d40) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000082f55d40
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000082f55d40 from memory into f16
fsgnjx.s f13, f28, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfffffeff7fbfffff from memory into f24
la x2, scratch
li x3, 0xe6ef8347 # load x3 with 32 MSBs 0x00000000e6ef8347
sw x3, 0(x2) # store x3 (0xe6ef8347) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e6ef8347
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000e6ef8347 from memory into f18
fsgnjx.s f6, f24, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x12126a40 # load x3 with 32 MSBs 0x0000000012126a40
sw x3, 0(x2) # store x3 (0x12126a40) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000012126a40
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000012126a40 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffffefff00000000 from memory into f6
fsgnjx.s f3, f16, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x235693c3 # load x3 with 32 MSBs 0x00000000235693c3
sw x3, 0(x2) # store x3 (0x235693c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000235693c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000235693c3 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xaaaaaaaa80000000 from memory into f11
fsgnjx.s f27, f9, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xa6f81c95 # load x3 with 32 MSBs 0x00000000a6f81c95
sw x3, 0(x2) # store x3 (0xa6f81c95) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a6f81c95
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000a6f81c95 from memory into f10
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000003f800000 from memory into f17
fsgnjx.s f22, f10, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xa0e59876 # load x3 with 32 MSBs 0x00000000a0e59876
sw x3, 0(x2) # store x3 (0xa0e59876) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0e59876
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000a0e59876 from memory into f26
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xdeadbeefbf800000 from memory into f18
fsgnjx.s f20, f26, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x153e9553 # load x3 with 32 MSBs 0x00000000153e9553
sw x3, 0(x2) # store x3 (0x153e9553) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000153e9553
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000153e9553 from memory into f10
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa1b2c3d400800000 from memory into f1
fsgnjx.s f31, f10, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x637a1575 # load x3 with 32 MSBs 0x00000000637a1575
sw x3, 0(x2) # store x3 (0x637a1575) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000637a1575
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000637a1575 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffef80800000 from memory into f30
fsgnjx.s f5, f10, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xe145329b # load x3 with 32 MSBs 0x00000000e145329b
sw x3, 0(x2) # store x3 (0xe145329b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e145329b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000e145329b from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfeffffef7f7fffff from memory into f5
fsgnjx.s f18, f14, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xfc4371cd # load x3 with 32 MSBs 0x00000000fc4371cd
sw x3, 0(x2) # store x3 (0xfc4371cd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc4371cd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000fc4371cd from memory into f3
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f27
fsgnjx.s f24, f3, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xadf36aed # load x3 with 32 MSBs 0x00000000adf36aed
sw x3, 0(x2) # store x3 (0xadf36aed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000adf36aed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000adf36aed from memory into f8
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fffffff7f800000 from memory into f19
fsgnjx.s f25, f8, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x3a43d8fa # load x3 with 32 MSBs 0x000000003a43d8fa
sw x3, 0(x2) # store x3 (0x3a43d8fa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003a43d8fa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000003a43d8fa from memory into f21
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffffeff800000 from memory into f8
fsgnjx.s f15, f21, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xe4e699a5 # load x3 with 32 MSBs 0x00000000e4e699a5
sw x3, 0(x2) # store x3 (0xe4e699a5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e4e699a5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000e4e699a5 from memory into f6
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfeedbee57fc00000 from memory into f25
fsgnjx.s f22, f6, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x9a9c532d # load x3 with 32 MSBs 0x000000009a9c532d
sw x3, 0(x2) # store x3 (0x9a9c532d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009a9c532d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000009a9c532d from memory into f22
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffc0deff7fffffff from memory into f10
fsgnjx.s f6, f22, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xc99e112b # load x3 with 32 MSBs 0x00000000c99e112b
sw x3, 0(x2) # store x3 (0xc99e112b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c99e112b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000c99e112b from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfeffffff7f800001 from memory into f6
fsgnjx.s f18, f1, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xfb10c972 # load x3 with 32 MSBs 0x00000000fb10c972
sw x3, 0(x2) # store x3 (0xfb10c972) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fb10c972
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000fb10c972 from memory into f17
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfffffeff7fbfffff from memory into f1
fsgnjx.s f25, f17, f1 # perform operation

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
