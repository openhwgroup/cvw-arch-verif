///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaD/WALLY-COV-fleq.s.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffffefff00000000 from memory into f6
la x2, scratch
li x3, 0x32680f16 # load x3 with 32 MSBs 0x0000000032680f16
sw x3, 0(x2) # store x3 (0x32680f16) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000032680f16
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000032680f16 from memory into f1
fleq.s x17, f6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xaaaaaaaa80000000 from memory into f1
la x2, scratch
li x3, 0xdc128251 # load x3 with 32 MSBs 0x00000000dc128251
sw x3, 0(x2) # store x3 (0xdc128251) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dc128251
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000dc128251 from memory into f15
fleq.s x18, f1, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 4)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000003f800000 from memory into f18
la x2, scratch
li x3, 0xdd3141a1 # load x3 with 32 MSBs 0x00000000dd3141a1
sw x3, 0(x2) # store x3 (0xdd3141a1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dd3141a1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000dd3141a1 from memory into f1
fleq.s x2, f18, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xdeadbeefbf800000 from memory into f6
la x2, scratch
li x3, 0xf8949b40 # load x3 with 32 MSBs 0x00000000f8949b40
sw x3, 0(x2) # store x3 (0xf8949b40) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f8949b40
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000f8949b40 from memory into f17
fleq.s x25, f6, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 12)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa1b2c3d400800000 from memory into f17
la x2, scratch
li x3, 0xd87d0f70 # load x3 with 32 MSBs 0x00000000d87d0f70
sw x3, 0(x2) # store x3 (0xd87d0f70) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d87d0f70
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000d87d0f70 from memory into f7
fleq.s x29, f17, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffef80800000 from memory into f22
la x2, scratch
li x3, 0xca9983ba # load x3 with 32 MSBs 0x00000000ca9983ba
sw x3, 0(x2) # store x3 (0xca9983ba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ca9983ba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ca9983ba from memory into f9
fleq.s x24, f22, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 20)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfeffffef7f7fffff from memory into f24
la x2, scratch
li x3, 0x3d685893 # load x3 with 32 MSBs 0x000000003d685893
sw x3, 0(x2) # store x3 (0x3d685893) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003d685893
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000003d685893 from memory into f25
fleq.s x26, f24, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 24)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f24
la x2, scratch
li x3, 0xad01299a # load x3 with 32 MSBs 0x00000000ad01299a
sw x3, 0(x2) # store x3 (0xad01299a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ad01299a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000ad01299a from memory into f8
fleq.s x31, f24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 28)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fffffff7f800000 from memory into f1
la x2, scratch
li x3, 0x8cf40cd4 # load x3 with 32 MSBs 0x000000008cf40cd4
sw x3, 0(x2) # store x3 (0x8cf40cd4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008cf40cd4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000008cf40cd4 from memory into f9
fleq.s x24, f1, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfffffffeff800000 from memory into f11
la x2, scratch
li x3, 0x57e2d17a # load x3 with 32 MSBs 0x0000000057e2d17a
sw x3, 0(x2) # store x3 (0x57e2d17a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000057e2d17a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000057e2d17a from memory into f14
fleq.s x17, f11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfeedbee57fc00000 from memory into f29
la x2, scratch
li x3, 0x115e0e1d # load x3 with 32 MSBs 0x00000000115e0e1d
sw x3, 0(x2) # store x3 (0x115e0e1d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000115e0e1d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000115e0e1d from memory into f3
fleq.s x2, f29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffc0deff7fffffff from memory into f25
la x2, scratch
li x3, 0x2b7e7ed3 # load x3 with 32 MSBs 0x000000002b7e7ed3
sw x3, 0(x2) # store x3 (0x2b7e7ed3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002b7e7ed3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000002b7e7ed3 from memory into f14
fleq.s x8, f25, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 44)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfeffffff7f800001 from memory into f23
la x2, scratch
li x3, 0x595afcbb # load x3 with 32 MSBs 0x00000000595afcbb
sw x3, 0(x2) # store x3 (0x595afcbb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000595afcbb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000595afcbb from memory into f12
fleq.s x25, f23, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfffffeff7fbfffff from memory into f26
la x2, scratch
li x3, 0xe1455f14 # load x3 with 32 MSBs 0x00000000e1455f14
sw x3, 0(x2) # store x3 (0xe1455f14) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e1455f14
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000e1455f14 from memory into f22
fleq.s x29, f26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xe94bb838 # load x3 with 32 MSBs 0x00000000e94bb838
sw x3, 0(x2) # store x3 (0xe94bb838) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e94bb838
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000e94bb838 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffefff00000000 from memory into f1
fleq.s x22, f31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x598ba623 # load x3 with 32 MSBs 0x00000000598ba623
sw x3, 0(x2) # store x3 (0x598ba623) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000598ba623
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000598ba623 from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xaaaaaaaa80000000 from memory into f21
fleq.s x9, f19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xb0c013de # load x3 with 32 MSBs 0x00000000b0c013de
sw x3, 0(x2) # store x3 (0xb0c013de) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0c013de
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000b0c013de from memory into f5
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000003f800000 from memory into f21
fleq.s x25, f5, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x1231f39c # load x3 with 32 MSBs 0x000000001231f39c
sw x3, 0(x2) # store x3 (0x1231f39c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001231f39c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000001231f39c from memory into f2
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xdeadbeefbf800000 from memory into f6
fleq.s x29, f2, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x031d9f7f # load x3 with 32 MSBs 0x00000000031d9f7f
sw x3, 0(x2) # store x3 (0x031d9f7f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000031d9f7f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000031d9f7f from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa1b2c3d400800000 from memory into f19
fleq.s x9, f18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x5ee44c03 # load x3 with 32 MSBs 0x000000005ee44c03
sw x3, 0(x2) # store x3 (0x5ee44c03) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005ee44c03
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000005ee44c03 from memory into f26
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffef80800000 from memory into f1
fleq.s x27, f26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xf3975aa8 # load x3 with 32 MSBs 0x00000000f3975aa8
sw x3, 0(x2) # store x3 (0xf3975aa8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f3975aa8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000f3975aa8 from memory into f21
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfeffffef7f7fffff from memory into f18
fleq.s x28, f21, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x60ff0160 # load x3 with 32 MSBs 0x0000000060ff0160
sw x3, 0(x2) # store x3 (0x60ff0160) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000060ff0160
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000060ff0160 from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f1
fleq.s x9, f16, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x99ee1188 # load x3 with 32 MSBs 0x0000000099ee1188
sw x3, 0(x2) # store x3 (0x99ee1188) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000099ee1188
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000099ee1188 from memory into f5
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fffffff7f800000 from memory into f19
fleq.s x23, f5, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xf734a0b1 # load x3 with 32 MSBs 0x00000000f734a0b1
sw x3, 0(x2) # store x3 (0xf734a0b1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f734a0b1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000f734a0b1 from memory into f11
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfffffffeff800000 from memory into f27
fleq.s x31, f11, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x100e580a # load x3 with 32 MSBs 0x00000000100e580a
sw x3, 0(x2) # store x3 (0x100e580a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000100e580a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000100e580a from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfeedbee57fc00000 from memory into f6
fleq.s x5, f27, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xf5c685c4 # load x3 with 32 MSBs 0x00000000f5c685c4
sw x3, 0(x2) # store x3 (0xf5c685c4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f5c685c4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000f5c685c4 from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffc0deff7fffffff from memory into f1
fleq.s x29, f8, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x963c182d # load x3 with 32 MSBs 0x00000000963c182d
sw x3, 0(x2) # store x3 (0x963c182d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000963c182d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000963c182d from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfeffffff7f800001 from memory into f6
fleq.s x11, f26, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x80bcc0bd # load x3 with 32 MSBs 0x0000000080bcc0bd
sw x3, 0(x2) # store x3 (0x80bcc0bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080bcc0bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000080bcc0bd from memory into f11
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffeff7fbfffff from memory into f3
fleq.s x28, f11, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

.EQU SIGSIZE,112


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
