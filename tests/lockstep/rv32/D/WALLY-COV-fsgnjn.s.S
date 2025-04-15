///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fsgnjn.s.S
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
li x3, 0x00000000b06a42f4 # load x3 with value 0x00000000b06a42f4
sw x3, 0(x2) # store 0x00000000b06a42f4 in memory
flw f18, 0(x2) # load 0x00000000b06a42f4 from memory into f18
la x2, scratch
li x3, 0x00000000130652cc # load x3 with value 0x00000000130652cc
sw x3, 0(x2) # store 0x00000000130652cc in memory
flw f27, 0(x2) # load 0x00000000130652cc from memory into f27
fsgnjn.s f14, f18, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffefff00000000 from memory into f29
la x2, scratch
li x3, 0xef3e124d # load x3 with 32 MSBs 0x00000000ef3e124d
sw x3, 0(x2) # store x3 (0xef3e124d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ef3e124d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000ef3e124d from memory into f13
fsgnjn.s f12, f29, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xaaaaaaaa80000000 from memory into f28
la x2, scratch
li x3, 0x4480c281 # load x3 with 32 MSBs 0x000000004480c281
sw x3, 0(x2) # store x3 (0x4480c281) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004480c281
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000004480c281 from memory into f31
fsgnjn.s f2, f28, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000003f800000 from memory into f15
la x2, scratch
li x3, 0x574931e4 # load x3 with 32 MSBs 0x00000000574931e4
sw x3, 0(x2) # store x3 (0x574931e4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000574931e4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000574931e4 from memory into f24
fsgnjn.s f14, f15, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xdeadbeefbf800000 from memory into f22
la x2, scratch
li x3, 0xe34ccebb # load x3 with 32 MSBs 0x00000000e34ccebb
sw x3, 0(x2) # store x3 (0xe34ccebb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e34ccebb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000e34ccebb from memory into f16
fsgnjn.s f19, f22, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xa1b2c3d400800000 from memory into f22
la x2, scratch
li x3, 0xeb42f59e # load x3 with 32 MSBs 0x00000000eb42f59e
sw x3, 0(x2) # store x3 (0xeb42f59e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb42f59e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000eb42f59e from memory into f7
fsgnjn.s f28, f22, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffffffef80800000 from memory into f23
la x2, scratch
li x3, 0x65a9b08c # load x3 with 32 MSBs 0x0000000065a9b08c
sw x3, 0(x2) # store x3 (0x65a9b08c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000065a9b08c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000065a9b08c from memory into f21
fsgnjn.s f29, f23, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfeffffef7f7fffff from memory into f18
la x2, scratch
li x3, 0xc3ec150b # load x3 with 32 MSBs 0x00000000c3ec150b
sw x3, 0(x2) # store x3 (0xc3ec150b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c3ec150b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000c3ec150b from memory into f24
fsgnjn.s f6, f18, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f31
la x2, scratch
li x3, 0xf966c69d # load x3 with 32 MSBs 0x00000000f966c69d
sw x3, 0(x2) # store x3 (0xf966c69d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f966c69d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000f966c69d from memory into f5
fsgnjn.s f29, f31, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fffffff7f800000 from memory into f16
la x2, scratch
li x3, 0x9af6f73c # load x3 with 32 MSBs 0x000000009af6f73c
sw x3, 0(x2) # store x3 (0x9af6f73c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009af6f73c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000009af6f73c from memory into f30
fsgnjn.s f17, f16, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffffeff800000 from memory into f25
la x2, scratch
li x3, 0x6d51b5c7 # load x3 with 32 MSBs 0x000000006d51b5c7
sw x3, 0(x2) # store x3 (0x6d51b5c7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006d51b5c7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000006d51b5c7 from memory into f1
fsgnjn.s f16, f25, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfeedbee57fc00000 from memory into f16
la x2, scratch
li x3, 0xaeb8cf2d # load x3 with 32 MSBs 0x00000000aeb8cf2d
sw x3, 0(x2) # store x3 (0xaeb8cf2d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aeb8cf2d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000aeb8cf2d from memory into f15
fsgnjn.s f19, f16, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffc0deff7fffffff from memory into f22
la x2, scratch
li x3, 0x994ff917 # load x3 with 32 MSBs 0x00000000994ff917
sw x3, 0(x2) # store x3 (0x994ff917) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000994ff917
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000994ff917 from memory into f27
fsgnjn.s f9, f22, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfeffffff7f800001 from memory into f8
la x2, scratch
li x3, 0x0f17cc31 # load x3 with 32 MSBs 0x000000000f17cc31
sw x3, 0(x2) # store x3 (0x0f17cc31) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000f17cc31
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000000f17cc31 from memory into f16
fsgnjn.s f14, f8, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffeff7fbfffff from memory into f25
la x2, scratch
li x3, 0xd1da8ef5 # load x3 with 32 MSBs 0x00000000d1da8ef5
sw x3, 0(x2) # store x3 (0xd1da8ef5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d1da8ef5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000d1da8ef5 from memory into f19
fsgnjn.s f2, f25, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x03d50214 # load x3 with 32 MSBs 0x0000000003d50214
sw x3, 0(x2) # store x3 (0x03d50214) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000003d50214
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000003d50214 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffefff00000000 from memory into f30
fsgnjn.s f24, f10, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x76e3569c # load x3 with 32 MSBs 0x0000000076e3569c
sw x3, 0(x2) # store x3 (0x76e3569c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000076e3569c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000076e3569c from memory into f30
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xaaaaaaaa80000000 from memory into f10
fsgnjn.s f12, f30, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x5415de34 # load x3 with 32 MSBs 0x000000005415de34
sw x3, 0(x2) # store x3 (0x5415de34) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005415de34
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000005415de34 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000003f800000 from memory into f18
fsgnjn.s f16, f17, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x21d2f2ae # load x3 with 32 MSBs 0x0000000021d2f2ae
sw x3, 0(x2) # store x3 (0x21d2f2ae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000021d2f2ae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000021d2f2ae from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xdeadbeefbf800000 from memory into f20
fsgnjn.s f15, f31, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xf5793365 # load x3 with 32 MSBs 0x00000000f5793365
sw x3, 0(x2) # store x3 (0xf5793365) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f5793365
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000f5793365 from memory into f17
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa1b2c3d400800000 from memory into f8
fsgnjn.s f13, f17, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x0a9b6dc1 # load x3 with 32 MSBs 0x000000000a9b6dc1
sw x3, 0(x2) # store x3 (0x0a9b6dc1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000a9b6dc1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000000a9b6dc1 from memory into f16
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffef80800000 from memory into f29
fsgnjn.s f22, f16, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x0c120fdf # load x3 with 32 MSBs 0x000000000c120fdf
sw x3, 0(x2) # store x3 (0x0c120fdf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000c120fdf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000000c120fdf from memory into f11
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfeffffef7f7fffff from memory into f17
fsgnjn.s f6, f11, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xa5eaa7ec # load x3 with 32 MSBs 0x00000000a5eaa7ec
sw x3, 0(x2) # store x3 (0xa5eaa7ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a5eaa7ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000a5eaa7ec from memory into f2
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f13
fsgnjn.s f18, f2, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x1f4a7381 # load x3 with 32 MSBs 0x000000001f4a7381
sw x3, 0(x2) # store x3 (0x1f4a7381) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f4a7381
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000001f4a7381 from memory into f6
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fffffff7f800000 from memory into f24
fsgnjn.s f31, f6, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xe80dd8c5 # load x3 with 32 MSBs 0x00000000e80dd8c5
sw x3, 0(x2) # store x3 (0xe80dd8c5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e80dd8c5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000e80dd8c5 from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffffffeff800000 from memory into f23
fsgnjn.s f18, f26, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x7980ba75 # load x3 with 32 MSBs 0x000000007980ba75
sw x3, 0(x2) # store x3 (0x7980ba75) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007980ba75
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000007980ba75 from memory into f3
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfeedbee57fc00000 from memory into f15
fsgnjn.s f12, f3, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x763add2c # load x3 with 32 MSBs 0x00000000763add2c
sw x3, 0(x2) # store x3 (0x763add2c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000763add2c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000763add2c from memory into f13
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffc0deff7fffffff from memory into f28
fsgnjn.s f15, f13, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xb49125f2 # load x3 with 32 MSBs 0x00000000b49125f2
sw x3, 0(x2) # store x3 (0xb49125f2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b49125f2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000b49125f2 from memory into f2
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfeffffff7f800001 from memory into f29
fsgnjn.s f7, f2, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x6bec2c5e # load x3 with 32 MSBs 0x000000006bec2c5e
sw x3, 0(x2) # store x3 (0x6bec2c5e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006bec2c5e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000006bec2c5e from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffeff7fbfffff from memory into f8
fsgnjn.s f21, f24, f8 # perform operation

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
