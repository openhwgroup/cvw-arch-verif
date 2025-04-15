///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fle.s.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffffefff00000000 from memory into f19
la x2, scratch
li x3, 0x428eeab1 # load x3 with 32 MSBs 0x00000000428eeab1
sw x3, 0(x2) # store x3 (0x428eeab1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000428eeab1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000428eeab1 from memory into f28
fle.s x1, f19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xaaaaaaaa80000000 from memory into f13
la x2, scratch
li x3, 0x3f3e06f6 # load x3 with 32 MSBs 0x000000003f3e06f6
sw x3, 0(x2) # store x3 (0x3f3e06f6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f3e06f6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000003f3e06f6 from memory into f1
fle.s x19, f13, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 4)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000003f800000 from memory into f3
la x2, scratch
li x3, 0x94452bfc # load x3 with 32 MSBs 0x0000000094452bfc
sw x3, 0(x2) # store x3 (0x94452bfc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000094452bfc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000094452bfc from memory into f19
fle.s x23, f3, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xdeadbeefbf800000 from memory into f14
la x2, scratch
li x3, 0x6a794e9d # load x3 with 32 MSBs 0x000000006a794e9d
sw x3, 0(x2) # store x3 (0x6a794e9d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006a794e9d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000006a794e9d from memory into f9
fle.s x16, f14, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 12)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xa1b2c3d400800000 from memory into f9
la x2, scratch
li x3, 0xc8e7d0f0 # load x3 with 32 MSBs 0x00000000c8e7d0f0
sw x3, 0(x2) # store x3 (0xc8e7d0f0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c8e7d0f0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000c8e7d0f0 from memory into f30
fle.s x31, f9, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffef80800000 from memory into f10
la x2, scratch
li x3, 0x846e0a0e # load x3 with 32 MSBs 0x00000000846e0a0e
sw x3, 0(x2) # store x3 (0x846e0a0e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000846e0a0e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000846e0a0e from memory into f29
fle.s x25, f10, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 20)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfeffffef7f7fffff from memory into f29
la x2, scratch
li x3, 0xfa59b493 # load x3 with 32 MSBs 0x00000000fa59b493
sw x3, 0(x2) # store x3 (0xfa59b493) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fa59b493
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000fa59b493 from memory into f6
fle.s x16, f29, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 24)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f11
la x2, scratch
li x3, 0x062476cf # load x3 with 32 MSBs 0x00000000062476cf
sw x3, 0(x2) # store x3 (0x062476cf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000062476cf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000062476cf from memory into f17
fle.s x31, f11, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 28)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffff7f800000 from memory into f6
la x2, scratch
li x3, 0x4a78d8f3 # load x3 with 32 MSBs 0x000000004a78d8f3
sw x3, 0(x2) # store x3 (0x4a78d8f3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004a78d8f3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000004a78d8f3 from memory into f28
fle.s x3, f6, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffffeff800000 from memory into f3
la x2, scratch
li x3, 0x140767f3 # load x3 with 32 MSBs 0x00000000140767f3
sw x3, 0(x2) # store x3 (0x140767f3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000140767f3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000140767f3 from memory into f28
fle.s x11, f3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfeedbee57fc00000 from memory into f24
la x2, scratch
li x3, 0x0f53281d # load x3 with 32 MSBs 0x000000000f53281d
sw x3, 0(x2) # store x3 (0x0f53281d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000f53281d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000000f53281d from memory into f17
fle.s x3, f24, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffc0deff7fffffff from memory into f18
la x2, scratch
li x3, 0x66b13c29 # load x3 with 32 MSBs 0x0000000066b13c29
sw x3, 0(x2) # store x3 (0x66b13c29) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000066b13c29
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000066b13c29 from memory into f26
fle.s x14, f18, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 44)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfeffffff7f800001 from memory into f12
la x2, scratch
li x3, 0x1941baf7 # load x3 with 32 MSBs 0x000000001941baf7
sw x3, 0(x2) # store x3 (0x1941baf7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001941baf7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000001941baf7 from memory into f9
fle.s x28, f12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffeff7fbfffff from memory into f3
la x2, scratch
li x3, 0x31333b71 # load x3 with 32 MSBs 0x0000000031333b71
sw x3, 0(x2) # store x3 (0x31333b71) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000031333b71
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000031333b71 from memory into f30
fle.s x25, f3, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x6babca87 # load x3 with 32 MSBs 0x000000006babca87
sw x3, 0(x2) # store x3 (0x6babca87) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006babca87
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000006babca87 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
fle.s x18, f9, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xa76e564a # load x3 with 32 MSBs 0x00000000a76e564a
sw x3, 0(x2) # store x3 (0xa76e564a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a76e564a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000a76e564a from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xaaaaaaaa80000000 from memory into f11
fle.s x6, f13, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x658d7c7f # load x3 with 32 MSBs 0x00000000658d7c7f
sw x3, 0(x2) # store x3 (0x658d7c7f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000658d7c7f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000658d7c7f from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000003f800000 from memory into f14
fle.s x30, f11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x63a86ef5 # load x3 with 32 MSBs 0x0000000063a86ef5
sw x3, 0(x2) # store x3 (0x63a86ef5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000063a86ef5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000063a86ef5 from memory into f19
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xdeadbeefbf800000 from memory into f21
fle.s x30, f19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xd9f17459 # load x3 with 32 MSBs 0x00000000d9f17459
sw x3, 0(x2) # store x3 (0xd9f17459) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d9f17459
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000d9f17459 from memory into f26
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xa1b2c3d400800000 from memory into f18
fle.s x17, f26, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x37a27771 # load x3 with 32 MSBs 0x0000000037a27771
sw x3, 0(x2) # store x3 (0x37a27771) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037a27771
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000037a27771 from memory into f31
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffffef80800000 from memory into f17
fle.s x15, f31, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x0f444a29 # load x3 with 32 MSBs 0x000000000f444a29
sw x3, 0(x2) # store x3 (0x0f444a29) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000f444a29
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000f444a29 from memory into f5
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfeffffef7f7fffff from memory into f20
fle.s x7, f5, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xda4643f6 # load x3 with 32 MSBs 0x00000000da4643f6
sw x3, 0(x2) # store x3 (0xda4643f6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da4643f6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000da4643f6 from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f14
fle.s x8, f30, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x917f334d # load x3 with 32 MSBs 0x00000000917f334d
sw x3, 0(x2) # store x3 (0x917f334d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000917f334d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000917f334d from memory into f1
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffff7f800000 from memory into f29
fle.s x8, f1, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x597063f9 # load x3 with 32 MSBs 0x00000000597063f9
sw x3, 0(x2) # store x3 (0x597063f9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000597063f9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000597063f9 from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfffffffeff800000 from memory into f6
fle.s x13, f16, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x963bd895 # load x3 with 32 MSBs 0x00000000963bd895
sw x3, 0(x2) # store x3 (0x963bd895) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000963bd895
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000963bd895 from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfeedbee57fc00000 from memory into f20
fle.s x15, f5, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xaf530261 # load x3 with 32 MSBs 0x00000000af530261
sw x3, 0(x2) # store x3 (0xaf530261) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000af530261
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000af530261 from memory into f15
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffc0deff7fffffff from memory into f10
fle.s x7, f15, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x0204ae2e # load x3 with 32 MSBs 0x000000000204ae2e
sw x3, 0(x2) # store x3 (0x0204ae2e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000204ae2e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000000204ae2e from memory into f30
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeffffff7f800001 from memory into f26
fle.s x14, f30, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xef31e7dd # load x3 with 32 MSBs 0x00000000ef31e7dd
sw x3, 0(x2) # store x3 (0xef31e7dd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ef31e7dd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000ef31e7dd from memory into f1
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfffffeff7fbfffff from memory into f19
fle.s x20, f1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 108)

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
