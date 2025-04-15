///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fmin.s.S
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
li x3, 0x0000000079d84a67 # load x3 with value 0x0000000079d84a67
sw x3, 0(x2) # store 0x0000000079d84a67 in memory
flw f31, 0(x2) # load 0x0000000079d84a67 from memory into f31
la x2, scratch
li x3, 0x00000000c0127931 # load x3 with value 0x00000000c0127931
sw x3, 0(x2) # store 0x00000000c0127931 in memory
flw f17, 0(x2) # load 0x00000000c0127931 from memory into f17
fmin.s f16, f31, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffefff00000000 from memory into f14
la x2, scratch
li x3, 0x5c52f494 # load x3 with 32 MSBs 0x000000005c52f494
sw x3, 0(x2) # store x3 (0x5c52f494) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005c52f494
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000005c52f494 from memory into f3
fmin.s f5, f14, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xaaaaaaaa80000000 from memory into f6
la x2, scratch
li x3, 0x250c8a55 # load x3 with 32 MSBs 0x00000000250c8a55
sw x3, 0(x2) # store x3 (0x250c8a55) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000250c8a55
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000250c8a55 from memory into f16
fmin.s f18, f6, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000003f800000 from memory into f16
la x2, scratch
li x3, 0x53f77d58 # load x3 with 32 MSBs 0x0000000053f77d58
sw x3, 0(x2) # store x3 (0x53f77d58) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000053f77d58
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000053f77d58 from memory into f17
fmin.s f23, f16, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xdeadbeefbf800000 from memory into f23
la x2, scratch
li x3, 0xa6575852 # load x3 with 32 MSBs 0x00000000a6575852
sw x3, 0(x2) # store x3 (0xa6575852) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a6575852
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000a6575852 from memory into f7
fmin.s f17, f23, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa1b2c3d400800000 from memory into f1
la x2, scratch
li x3, 0x9bc31568 # load x3 with 32 MSBs 0x000000009bc31568
sw x3, 0(x2) # store x3 (0x9bc31568) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009bc31568
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000009bc31568 from memory into f27
fmin.s f13, f1, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffef80800000 from memory into f1
la x2, scratch
li x3, 0xc9261620 # load x3 with 32 MSBs 0x00000000c9261620
sw x3, 0(x2) # store x3 (0xc9261620) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c9261620
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000c9261620 from memory into f9
fmin.s f11, f1, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfeffffef7f7fffff from memory into f31
la x2, scratch
li x3, 0x16839521 # load x3 with 32 MSBs 0x0000000016839521
sw x3, 0(x2) # store x3 (0x16839521) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000016839521
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000016839521 from memory into f30
fmin.s f5, f31, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f6
la x2, scratch
li x3, 0xcf9f6270 # load x3 with 32 MSBs 0x00000000cf9f6270
sw x3, 0(x2) # store x3 (0xcf9f6270) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cf9f6270
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000cf9f6270 from memory into f5
fmin.s f12, f6, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fffffff7f800000 from memory into f27
la x2, scratch
li x3, 0x9102804b # load x3 with 32 MSBs 0x000000009102804b
sw x3, 0(x2) # store x3 (0x9102804b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009102804b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000009102804b from memory into f5
fmin.s f19, f27, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfffffffeff800000 from memory into f19
la x2, scratch
li x3, 0xa2878c03 # load x3 with 32 MSBs 0x00000000a2878c03
sw x3, 0(x2) # store x3 (0xa2878c03) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a2878c03
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000a2878c03 from memory into f26
fmin.s f3, f19, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeedbee57fc00000 from memory into f3
la x2, scratch
li x3, 0xa14d944c # load x3 with 32 MSBs 0x00000000a14d944c
sw x3, 0(x2) # store x3 (0xa14d944c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a14d944c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000a14d944c from memory into f11
fmin.s f20, f3, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffc0deff7fffffff from memory into f25
la x2, scratch
li x3, 0x8bbd537b # load x3 with 32 MSBs 0x000000008bbd537b
sw x3, 0(x2) # store x3 (0x8bbd537b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008bbd537b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000008bbd537b from memory into f23
fmin.s f8, f25, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfeffffff7f800001 from memory into f25
la x2, scratch
li x3, 0xc98b9e5a # load x3 with 32 MSBs 0x00000000c98b9e5a
sw x3, 0(x2) # store x3 (0xc98b9e5a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c98b9e5a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000c98b9e5a from memory into f14
fmin.s f29, f25, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfffffeff7fbfffff from memory into f17
la x2, scratch
li x3, 0xbcc4d5df # load x3 with 32 MSBs 0x00000000bcc4d5df
sw x3, 0(x2) # store x3 (0xbcc4d5df) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bcc4d5df
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000bcc4d5df from memory into f2
fmin.s f22, f17, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x265b7ecd # load x3 with 32 MSBs 0x00000000265b7ecd
sw x3, 0(x2) # store x3 (0x265b7ecd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000265b7ecd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000265b7ecd from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
fmin.s f7, f20, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x6a27f5a5 # load x3 with 32 MSBs 0x000000006a27f5a5
sw x3, 0(x2) # store x3 (0x6a27f5a5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006a27f5a5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000006a27f5a5 from memory into f10
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xaaaaaaaa80000000 from memory into f17
fmin.s f14, f10, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x4de7591e # load x3 with 32 MSBs 0x000000004de7591e
sw x3, 0(x2) # store x3 (0x4de7591e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004de7591e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000004de7591e from memory into f16
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000003f800000 from memory into f24
fmin.s f17, f16, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xebee7020 # load x3 with 32 MSBs 0x00000000ebee7020
sw x3, 0(x2) # store x3 (0xebee7020) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ebee7020
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000ebee7020 from memory into f7
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xdeadbeefbf800000 from memory into f10
fmin.s f15, f7, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x99c58bdc # load x3 with 32 MSBs 0x0000000099c58bdc
sw x3, 0(x2) # store x3 (0x99c58bdc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000099c58bdc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000099c58bdc from memory into f28
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa1b2c3d400800000 from memory into f23
fmin.s f24, f28, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xcb3b99b7 # load x3 with 32 MSBs 0x00000000cb3b99b7
sw x3, 0(x2) # store x3 (0xcb3b99b7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb3b99b7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000cb3b99b7 from memory into f11
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffef80800000 from memory into f31
fmin.s f24, f11, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x6cdecf64 # load x3 with 32 MSBs 0x000000006cdecf64
sw x3, 0(x2) # store x3 (0x6cdecf64) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006cdecf64
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000006cdecf64 from memory into f5
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeffffef7f7fffff from memory into f26
fmin.s f1, f5, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x9d6a8ccf # load x3 with 32 MSBs 0x000000009d6a8ccf
sw x3, 0(x2) # store x3 (0x9d6a8ccf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009d6a8ccf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000009d6a8ccf from memory into f26
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f16
fmin.s f20, f26, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xab237961 # load x3 with 32 MSBs 0x00000000ab237961
sw x3, 0(x2) # store x3 (0xab237961) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ab237961
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000ab237961 from memory into f29
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fffffff7f800000 from memory into f24
fmin.s f17, f29, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x169dd686 # load x3 with 32 MSBs 0x00000000169dd686
sw x3, 0(x2) # store x3 (0x169dd686) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000169dd686
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000169dd686 from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfffffffeff800000 from memory into f21
fmin.s f11, f18, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xbc08f776 # load x3 with 32 MSBs 0x00000000bc08f776
sw x3, 0(x2) # store x3 (0xbc08f776) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bc08f776
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000bc08f776 from memory into f15
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfeedbee57fc00000 from memory into f12
fmin.s f20, f15, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xce5af04a # load x3 with 32 MSBs 0x00000000ce5af04a
sw x3, 0(x2) # store x3 (0xce5af04a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ce5af04a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000ce5af04a from memory into f18
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffc0deff7fffffff from memory into f8
fmin.s f24, f18, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x7eca7624 # load x3 with 32 MSBs 0x000000007eca7624
sw x3, 0(x2) # store x3 (0x7eca7624) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007eca7624
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000007eca7624 from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfeffffff7f800001 from memory into f23
fmin.s f15, f26, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xbe2b49e3 # load x3 with 32 MSBs 0x00000000be2b49e3
sw x3, 0(x2) # store x3 (0xbe2b49e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000be2b49e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000be2b49e3 from memory into f26
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfffffeff7fbfffff from memory into f21
fmin.s f12, f26, f21 # perform operation

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
