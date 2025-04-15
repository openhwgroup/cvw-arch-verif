///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fmul.s.S
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
li x3, 0x00000000eab713d8 # load x3 with value 0x00000000eab713d8
sw x3, 0(x2) # store 0x00000000eab713d8 in memory
flw f22, 0(x2) # load 0x00000000eab713d8 from memory into f22
la x2, scratch
li x3, 0x0000000088bdfc2a # load x3 with value 0x0000000088bdfc2a
sw x3, 0(x2) # store 0x0000000088bdfc2a in memory
flw f31, 0(x2) # load 0x0000000088bdfc2a from memory into f31
fmul.s f5, f22, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffffefff00000000 from memory into f18
la x2, scratch
li x3, 0xb6d677b5 # load x3 with 32 MSBs 0x00000000b6d677b5
sw x3, 0(x2) # store x3 (0xb6d677b5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b6d677b5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000b6d677b5 from memory into f2
fmul.s f11, f18, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xaaaaaaaa80000000 from memory into f16
la x2, scratch
li x3, 0xfd7d71d7 # load x3 with 32 MSBs 0x00000000fd7d71d7
sw x3, 0(x2) # store x3 (0xfd7d71d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fd7d71d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000fd7d71d7 from memory into f23
fmul.s f28, f16, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000003f800000 from memory into f15
la x2, scratch
li x3, 0x3e803451 # load x3 with 32 MSBs 0x000000003e803451
sw x3, 0(x2) # store x3 (0x3e803451) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003e803451
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000003e803451 from memory into f31
fmul.s f20, f15, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xdeadbeefbf800000 from memory into f27
la x2, scratch
li x3, 0x4d956323 # load x3 with 32 MSBs 0x000000004d956323
sw x3, 0(x2) # store x3 (0x4d956323) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004d956323
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000004d956323 from memory into f28
fmul.s f20, f27, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa1b2c3d400800000 from memory into f20
la x2, scratch
li x3, 0x3a0b17ac # load x3 with 32 MSBs 0x000000003a0b17ac
sw x3, 0(x2) # store x3 (0x3a0b17ac) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003a0b17ac
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003a0b17ac from memory into f29
fmul.s f12, f20, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffef80800000 from memory into f29
la x2, scratch
li x3, 0xac1e2f0b # load x3 with 32 MSBs 0x00000000ac1e2f0b
sw x3, 0(x2) # store x3 (0xac1e2f0b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ac1e2f0b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000ac1e2f0b from memory into f10
fmul.s f18, f29, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfeffffef7f7fffff from memory into f19
la x2, scratch
li x3, 0x5255b3b2 # load x3 with 32 MSBs 0x000000005255b3b2
sw x3, 0(x2) # store x3 (0x5255b3b2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005255b3b2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000005255b3b2 from memory into f31
fmul.s f25, f19, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f3
la x2, scratch
li x3, 0xbdc46344 # load x3 with 32 MSBs 0x00000000bdc46344
sw x3, 0(x2) # store x3 (0xbdc46344) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bdc46344
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000bdc46344 from memory into f8
fmul.s f6, f3, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7fffffff7f800000 from memory into f15
la x2, scratch
li x3, 0x9d276935 # load x3 with 32 MSBs 0x000000009d276935
sw x3, 0(x2) # store x3 (0x9d276935) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009d276935
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000009d276935 from memory into f25
fmul.s f12, f15, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffeff800000 from memory into f20
la x2, scratch
li x3, 0xc0bca340 # load x3 with 32 MSBs 0x00000000c0bca340
sw x3, 0(x2) # store x3 (0xc0bca340) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c0bca340
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000c0bca340 from memory into f3
fmul.s f24, f20, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfeedbee57fc00000 from memory into f14
la x2, scratch
li x3, 0x1343f0bb # load x3 with 32 MSBs 0x000000001343f0bb
sw x3, 0(x2) # store x3 (0x1343f0bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001343f0bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000001343f0bb from memory into f9
fmul.s f1, f14, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffc0deff7fffffff from memory into f16
la x2, scratch
li x3, 0xd400fed7 # load x3 with 32 MSBs 0x00000000d400fed7
sw x3, 0(x2) # store x3 (0xd400fed7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d400fed7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000d400fed7 from memory into f31
fmul.s f24, f16, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfeffffff7f800001 from memory into f31
la x2, scratch
li x3, 0x0746addb # load x3 with 32 MSBs 0x000000000746addb
sw x3, 0(x2) # store x3 (0x0746addb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000746addb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000000746addb from memory into f22
fmul.s f13, f31, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfffffeff7fbfffff from memory into f21
la x2, scratch
li x3, 0x7015df34 # load x3 with 32 MSBs 0x000000007015df34
sw x3, 0(x2) # store x3 (0x7015df34) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007015df34
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000007015df34 from memory into f1
fmul.s f27, f21, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x4eb3dcc7 # load x3 with 32 MSBs 0x000000004eb3dcc7
sw x3, 0(x2) # store x3 (0x4eb3dcc7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004eb3dcc7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000004eb3dcc7 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffefff00000000 from memory into f9
fmul.s f19, f20, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x2e670879 # load x3 with 32 MSBs 0x000000002e670879
sw x3, 0(x2) # store x3 (0x2e670879) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002e670879
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000002e670879 from memory into f29
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xaaaaaaaa80000000 from memory into f8
fmul.s f5, f29, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x24694bd1 # load x3 with 32 MSBs 0x0000000024694bd1
sw x3, 0(x2) # store x3 (0x24694bd1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000024694bd1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000024694bd1 from memory into f21
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000003f800000 from memory into f5
fmul.s f8, f21, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xa8eaf5ed # load x3 with 32 MSBs 0x00000000a8eaf5ed
sw x3, 0(x2) # store x3 (0xa8eaf5ed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a8eaf5ed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000a8eaf5ed from memory into f12
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xdeadbeefbf800000 from memory into f10
fmul.s f19, f12, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xd78e3455 # load x3 with 32 MSBs 0x00000000d78e3455
sw x3, 0(x2) # store x3 (0xd78e3455) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d78e3455
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000d78e3455 from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xa1b2c3d400800000 from memory into f22
fmul.s f11, f2, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xc0cae508 # load x3 with 32 MSBs 0x00000000c0cae508
sw x3, 0(x2) # store x3 (0xc0cae508) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c0cae508
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000c0cae508 from memory into f28
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffef80800000 from memory into f10
fmul.s f3, f28, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x553ac2ec # load x3 with 32 MSBs 0x00000000553ac2ec
sw x3, 0(x2) # store x3 (0x553ac2ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000553ac2ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000553ac2ec from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfeffffef7f7fffff from memory into f11
fmul.s f14, f26, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x36da4e26 # load x3 with 32 MSBs 0x0000000036da4e26
sw x3, 0(x2) # store x3 (0x36da4e26) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000036da4e26
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000036da4e26 from memory into f29
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f27
fmul.s f12, f29, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xfe3ec58a # load x3 with 32 MSBs 0x00000000fe3ec58a
sw x3, 0(x2) # store x3 (0xfe3ec58a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe3ec58a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000fe3ec58a from memory into f15
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fffffff7f800000 from memory into f9
fmul.s f19, f15, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x58745019 # load x3 with 32 MSBs 0x0000000058745019
sw x3, 0(x2) # store x3 (0x58745019) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000058745019
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000058745019 from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffeff800000 from memory into f5
fmul.s f9, f26, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xc132c0d9 # load x3 with 32 MSBs 0x00000000c132c0d9
sw x3, 0(x2) # store x3 (0xc132c0d9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c132c0d9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000c132c0d9 from memory into f8
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfeedbee57fc00000 from memory into f17
fmul.s f15, f8, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x1d2bdcfa # load x3 with 32 MSBs 0x000000001d2bdcfa
sw x3, 0(x2) # store x3 (0x1d2bdcfa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001d2bdcfa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000001d2bdcfa from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffc0deff7fffffff from memory into f18
fmul.s f19, f27, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x6b3a63c6 # load x3 with 32 MSBs 0x000000006b3a63c6
sw x3, 0(x2) # store x3 (0x6b3a63c6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b3a63c6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000006b3a63c6 from memory into f30
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfeffffff7f800001 from memory into f6
fmul.s f23, f30, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x855b24e6 # load x3 with 32 MSBs 0x00000000855b24e6
sw x3, 0(x2) # store x3 (0x855b24e6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000855b24e6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000855b24e6 from memory into f30
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfffffeff7fbfffff from memory into f24
fmul.s f13, f30, f24 # perform operation

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
