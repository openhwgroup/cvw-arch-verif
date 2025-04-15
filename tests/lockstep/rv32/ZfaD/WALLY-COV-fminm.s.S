///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaD/WALLY-COV-fminm.s.S
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
li x3, 0x0000000096291aa5 # load x3 with value 0x0000000096291aa5
sw x3, 0(x2) # store 0x0000000096291aa5 in memory
flw f3, 0(x2) # load 0x0000000096291aa5 from memory into f3
la x2, scratch
li x3, 0x000000006b1bb141 # load x3 with value 0x000000006b1bb141
sw x3, 0(x2) # store 0x000000006b1bb141 in memory
flw f27, 0(x2) # load 0x000000006b1bb141 from memory into f27
fminm.s f12, f3, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffefff00000000 from memory into f17
la x2, scratch
li x3, 0xf22b4fb0 # load x3 with 32 MSBs 0x00000000f22b4fb0
sw x3, 0(x2) # store x3 (0xf22b4fb0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f22b4fb0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000f22b4fb0 from memory into f28
fminm.s f12, f17, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xaaaaaaaa80000000 from memory into f25
la x2, scratch
li x3, 0x1518dbe3 # load x3 with 32 MSBs 0x000000001518dbe3
sw x3, 0(x2) # store x3 (0x1518dbe3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001518dbe3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000001518dbe3 from memory into f21
fminm.s f19, f25, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000003f800000 from memory into f16
la x2, scratch
li x3, 0x495594e5 # load x3 with 32 MSBs 0x00000000495594e5
sw x3, 0(x2) # store x3 (0x495594e5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000495594e5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000495594e5 from memory into f6
fminm.s f30, f16, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xdeadbeefbf800000 from memory into f8
la x2, scratch
li x3, 0xe75a9f33 # load x3 with 32 MSBs 0x00000000e75a9f33
sw x3, 0(x2) # store x3 (0xe75a9f33) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e75a9f33
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000e75a9f33 from memory into f28
fminm.s f25, f8, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa1b2c3d400800000 from memory into f30
la x2, scratch
li x3, 0xa0505267 # load x3 with 32 MSBs 0x00000000a0505267
sw x3, 0(x2) # store x3 (0xa0505267) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0505267
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000a0505267 from memory into f14
fminm.s f16, f30, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffef80800000 from memory into f9
la x2, scratch
li x3, 0x3f616c8b # load x3 with 32 MSBs 0x000000003f616c8b
sw x3, 0(x2) # store x3 (0x3f616c8b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f616c8b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000003f616c8b from memory into f17
fminm.s f24, f9, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfeffffef7f7fffff from memory into f21
la x2, scratch
li x3, 0xd117b26c # load x3 with 32 MSBs 0x00000000d117b26c
sw x3, 0(x2) # store x3 (0xd117b26c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d117b26c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000d117b26c from memory into f17
fminm.s f13, f21, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f30
la x2, scratch
li x3, 0x1b7e162e # load x3 with 32 MSBs 0x000000001b7e162e
sw x3, 0(x2) # store x3 (0x1b7e162e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001b7e162e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000001b7e162e from memory into f23
fminm.s f28, f30, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7fffffff7f800000 from memory into f20
la x2, scratch
li x3, 0x9fab5818 # load x3 with 32 MSBs 0x000000009fab5818
sw x3, 0(x2) # store x3 (0x9fab5818) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009fab5818
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000009fab5818 from memory into f17
fminm.s f22, f20, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfffffffeff800000 from memory into f10
la x2, scratch
li x3, 0xc0097909 # load x3 with 32 MSBs 0x00000000c0097909
sw x3, 0(x2) # store x3 (0xc0097909) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c0097909
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000c0097909 from memory into f16
fminm.s f23, f10, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfeedbee57fc00000 from memory into f10
la x2, scratch
li x3, 0x8dceb682 # load x3 with 32 MSBs 0x000000008dceb682
sw x3, 0(x2) # store x3 (0x8dceb682) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008dceb682
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000008dceb682 from memory into f20
fminm.s f29, f10, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffc0deff7fffffff from memory into f18
la x2, scratch
li x3, 0xf6fadf6d # load x3 with 32 MSBs 0x00000000f6fadf6d
sw x3, 0(x2) # store x3 (0xf6fadf6d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f6fadf6d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000f6fadf6d from memory into f30
fminm.s f20, f18, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeffffff7f800001 from memory into f3
la x2, scratch
li x3, 0x4ab799e1 # load x3 with 32 MSBs 0x000000004ab799e1
sw x3, 0(x2) # store x3 (0x4ab799e1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ab799e1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000004ab799e1 from memory into f1
fminm.s f27, f3, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfffffeff7fbfffff from memory into f24
la x2, scratch
li x3, 0x2fdda236 # load x3 with 32 MSBs 0x000000002fdda236
sw x3, 0(x2) # store x3 (0x2fdda236) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002fdda236
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000002fdda236 from memory into f1
fminm.s f15, f24, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x4ced7b20 # load x3 with 32 MSBs 0x000000004ced7b20
sw x3, 0(x2) # store x3 (0x4ced7b20) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ced7b20
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000004ced7b20 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffffefff00000000 from memory into f25
fminm.s f16, f10, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x80b55a2b # load x3 with 32 MSBs 0x0000000080b55a2b
sw x3, 0(x2) # store x3 (0x80b55a2b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080b55a2b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000080b55a2b from memory into f17
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xaaaaaaaa80000000 from memory into f31
fminm.s f14, f17, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x8a3b6dd2 # load x3 with 32 MSBs 0x000000008a3b6dd2
sw x3, 0(x2) # store x3 (0x8a3b6dd2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008a3b6dd2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000008a3b6dd2 from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000003f800000 from memory into f15
fminm.s f25, f11, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x0ae642d0 # load x3 with 32 MSBs 0x000000000ae642d0
sw x3, 0(x2) # store x3 (0x0ae642d0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000ae642d0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000000ae642d0 from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xdeadbeefbf800000 from memory into f8
fminm.s f3, f30, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x177842c3 # load x3 with 32 MSBs 0x00000000177842c3
sw x3, 0(x2) # store x3 (0x177842c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000177842c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000177842c3 from memory into f16
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa1b2c3d400800000 from memory into f17
fminm.s f11, f16, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x4c148f4c # load x3 with 32 MSBs 0x000000004c148f4c
sw x3, 0(x2) # store x3 (0x4c148f4c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004c148f4c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000004c148f4c from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffef80800000 from memory into f27
fminm.s f20, f13, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xe2471096 # load x3 with 32 MSBs 0x00000000e2471096
sw x3, 0(x2) # store x3 (0xe2471096) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e2471096
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000e2471096 from memory into f25
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfeffffef7f7fffff from memory into f15
fminm.s f28, f25, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x1c408d90 # load x3 with 32 MSBs 0x000000001c408d90
sw x3, 0(x2) # store x3 (0x1c408d90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c408d90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000001c408d90 from memory into f22
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f10
fminm.s f26, f22, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x27259f6a # load x3 with 32 MSBs 0x0000000027259f6a
sw x3, 0(x2) # store x3 (0x27259f6a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027259f6a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000027259f6a from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffff7f800000 from memory into f25
fminm.s f20, f16, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x814ecf76 # load x3 with 32 MSBs 0x00000000814ecf76
sw x3, 0(x2) # store x3 (0x814ecf76) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000814ecf76
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000814ecf76 from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffffffeff800000 from memory into f9
fminm.s f25, f18, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x6638e34e # load x3 with 32 MSBs 0x000000006638e34e
sw x3, 0(x2) # store x3 (0x6638e34e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006638e34e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000006638e34e from memory into f30
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfeedbee57fc00000 from memory into f20
fminm.s f21, f30, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xeffdd29c # load x3 with 32 MSBs 0x00000000effdd29c
sw x3, 0(x2) # store x3 (0xeffdd29c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000effdd29c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000effdd29c from memory into f24
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffc0deff7fffffff from memory into f13
fminm.s f6, f24, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xd3d193b2 # load x3 with 32 MSBs 0x00000000d3d193b2
sw x3, 0(x2) # store x3 (0xd3d193b2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d3d193b2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000d3d193b2 from memory into f19
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfeffffff7f800001 from memory into f5
fminm.s f30, f19, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x825484d2 # load x3 with 32 MSBs 0x00000000825484d2
sw x3, 0(x2) # store x3 (0x825484d2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000825484d2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000825484d2 from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffeff7fbfffff from memory into f20
fminm.s f21, f9, f20 # perform operation

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
