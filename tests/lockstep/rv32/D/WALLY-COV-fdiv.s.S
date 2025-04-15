///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fdiv.s.S
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
li x3, 0x00000000b1102a3e # load x3 with value 0x00000000b1102a3e
sw x3, 0(x2) # store 0x00000000b1102a3e in memory
flw f27, 0(x2) # load 0x00000000b1102a3e from memory into f27
la x2, scratch
li x3, 0x0000000007d45ddb # load x3 with value 0x0000000007d45ddb
sw x3, 0(x2) # store 0x0000000007d45ddb in memory
flw f5, 0(x2) # load 0x0000000007d45ddb from memory into f5
fdiv.s f16, f27, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffefff00000000 from memory into f15
la x2, scratch
li x3, 0xe341cc2a # load x3 with 32 MSBs 0x00000000e341cc2a
sw x3, 0(x2) # store x3 (0xe341cc2a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e341cc2a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e341cc2a from memory into f8
fdiv.s f9, f15, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xaaaaaaaa80000000 from memory into f13
la x2, scratch
li x3, 0x51261be6 # load x3 with 32 MSBs 0x0000000051261be6
sw x3, 0(x2) # store x3 (0x51261be6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000051261be6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000051261be6 from memory into f22
fdiv.s f27, f13, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000003f800000 from memory into f16
la x2, scratch
li x3, 0x0dd33899 # load x3 with 32 MSBs 0x000000000dd33899
sw x3, 0(x2) # store x3 (0x0dd33899) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000dd33899
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000000dd33899 from memory into f15
fdiv.s f24, f16, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xdeadbeefbf800000 from memory into f24
la x2, scratch
li x3, 0xa5b33e9c # load x3 with 32 MSBs 0x00000000a5b33e9c
sw x3, 0(x2) # store x3 (0xa5b33e9c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a5b33e9c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000a5b33e9c from memory into f31
fdiv.s f15, f24, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa1b2c3d400800000 from memory into f31
la x2, scratch
li x3, 0x662e5bd8 # load x3 with 32 MSBs 0x00000000662e5bd8
sw x3, 0(x2) # store x3 (0x662e5bd8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000662e5bd8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000662e5bd8 from memory into f25
fdiv.s f13, f31, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffef80800000 from memory into f10
la x2, scratch
li x3, 0x2ae4a49c # load x3 with 32 MSBs 0x000000002ae4a49c
sw x3, 0(x2) # store x3 (0x2ae4a49c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002ae4a49c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000002ae4a49c from memory into f9
fdiv.s f8, f10, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfeffffef7f7fffff from memory into f21
la x2, scratch
li x3, 0x8ea1308e # load x3 with 32 MSBs 0x000000008ea1308e
sw x3, 0(x2) # store x3 (0x8ea1308e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ea1308e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000008ea1308e from memory into f22
fdiv.s f2, f21, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f19
la x2, scratch
li x3, 0xff44fa02 # load x3 with 32 MSBs 0x00000000ff44fa02
sw x3, 0(x2) # store x3 (0xff44fa02) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ff44fa02
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000ff44fa02 from memory into f13
fdiv.s f12, f19, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7fffffff7f800000 from memory into f8
la x2, scratch
li x3, 0x0ed638e8 # load x3 with 32 MSBs 0x000000000ed638e8
sw x3, 0(x2) # store x3 (0x0ed638e8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000ed638e8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000000ed638e8 from memory into f11
fdiv.s f22, f8, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffffffeff800000 from memory into f23
la x2, scratch
li x3, 0x3a92b9ea # load x3 with 32 MSBs 0x000000003a92b9ea
sw x3, 0(x2) # store x3 (0x3a92b9ea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003a92b9ea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003a92b9ea from memory into f6
fdiv.s f20, f23, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfeedbee57fc00000 from memory into f8
la x2, scratch
li x3, 0x9607487a # load x3 with 32 MSBs 0x000000009607487a
sw x3, 0(x2) # store x3 (0x9607487a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009607487a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000009607487a from memory into f30
fdiv.s f9, f8, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffc0deff7fffffff from memory into f21
la x2, scratch
li x3, 0x07a4dc5f # load x3 with 32 MSBs 0x0000000007a4dc5f
sw x3, 0(x2) # store x3 (0x07a4dc5f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000007a4dc5f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000007a4dc5f from memory into f15
fdiv.s f24, f21, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfeffffff7f800001 from memory into f10
la x2, scratch
li x3, 0x9a1be0fc # load x3 with 32 MSBs 0x000000009a1be0fc
sw x3, 0(x2) # store x3 (0x9a1be0fc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009a1be0fc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000009a1be0fc from memory into f3
fdiv.s f19, f10, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfffffeff7fbfffff from memory into f15
la x2, scratch
li x3, 0xbc3a1772 # load x3 with 32 MSBs 0x00000000bc3a1772
sw x3, 0(x2) # store x3 (0xbc3a1772) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bc3a1772
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000bc3a1772 from memory into f12
fdiv.s f5, f15, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x15fb7b4d # load x3 with 32 MSBs 0x0000000015fb7b4d
sw x3, 0(x2) # store x3 (0x15fb7b4d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000015fb7b4d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000015fb7b4d from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffefff00000000 from memory into f26
fdiv.s f23, f18, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x75d457a2 # load x3 with 32 MSBs 0x0000000075d457a2
sw x3, 0(x2) # store x3 (0x75d457a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000075d457a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000075d457a2 from memory into f8
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xaaaaaaaa80000000 from memory into f7
fdiv.s f30, f8, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x1baa0ac9 # load x3 with 32 MSBs 0x000000001baa0ac9
sw x3, 0(x2) # store x3 (0x1baa0ac9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001baa0ac9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000001baa0ac9 from memory into f15
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000003f800000 from memory into f26
fdiv.s f9, f15, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xd88663a1 # load x3 with 32 MSBs 0x00000000d88663a1
sw x3, 0(x2) # store x3 (0xd88663a1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d88663a1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000d88663a1 from memory into f9
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xdeadbeefbf800000 from memory into f21
fdiv.s f13, f9, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xf9b031a6 # load x3 with 32 MSBs 0x00000000f9b031a6
sw x3, 0(x2) # store x3 (0xf9b031a6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f9b031a6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000f9b031a6 from memory into f25
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa1b2c3d400800000 from memory into f19
fdiv.s f9, f25, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x72f6b4ec # load x3 with 32 MSBs 0x0000000072f6b4ec
sw x3, 0(x2) # store x3 (0x72f6b4ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000072f6b4ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000072f6b4ec from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffef80800000 from memory into f14
fdiv.s f30, f13, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xc2304dc1 # load x3 with 32 MSBs 0x00000000c2304dc1
sw x3, 0(x2) # store x3 (0xc2304dc1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c2304dc1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000c2304dc1 from memory into f21
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfeffffef7f7fffff from memory into f9
fdiv.s f25, f21, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xa6febc8f # load x3 with 32 MSBs 0x00000000a6febc8f
sw x3, 0(x2) # store x3 (0xa6febc8f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a6febc8f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000a6febc8f from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f11
fdiv.s f17, f31, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x742336e3 # load x3 with 32 MSBs 0x00000000742336e3
sw x3, 0(x2) # store x3 (0x742336e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000742336e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000742336e3 from memory into f9
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffff7f800000 from memory into f13
fdiv.s f17, f9, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xcea364c0 # load x3 with 32 MSBs 0x00000000cea364c0
sw x3, 0(x2) # store x3 (0xcea364c0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cea364c0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000cea364c0 from memory into f31
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfffffffeff800000 from memory into f6
fdiv.s f17, f31, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xdc388266 # load x3 with 32 MSBs 0x00000000dc388266
sw x3, 0(x2) # store x3 (0xdc388266) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dc388266
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000dc388266 from memory into f11
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfeedbee57fc00000 from memory into f21
fdiv.s f16, f11, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xa6ee6dcc # load x3 with 32 MSBs 0x00000000a6ee6dcc
sw x3, 0(x2) # store x3 (0xa6ee6dcc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a6ee6dcc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000a6ee6dcc from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffc0deff7fffffff from memory into f3
fdiv.s f25, f14, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x6e9ee6e6 # load x3 with 32 MSBs 0x000000006e9ee6e6
sw x3, 0(x2) # store x3 (0x6e9ee6e6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e9ee6e6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000006e9ee6e6 from memory into f7
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfeffffff7f800001 from memory into f14
fdiv.s f16, f7, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x286ba15f # load x3 with 32 MSBs 0x00000000286ba15f
sw x3, 0(x2) # store x3 (0x286ba15f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000286ba15f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000286ba15f from memory into f21
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfffffeff7fbfffff from memory into f31
fdiv.s f9, f21, f31 # perform operation

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
