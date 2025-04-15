///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-feq.s.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffefff00000000 from memory into f30
la x2, scratch
li x3, 0xc4d659e6 # load x3 with 32 MSBs 0x00000000c4d659e6
sw x3, 0(x2) # store x3 (0xc4d659e6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c4d659e6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000c4d659e6 from memory into f6
feq.s x28, f30, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xaaaaaaaa80000000 from memory into f7
la x2, scratch
li x3, 0xf9594e0d # load x3 with 32 MSBs 0x00000000f9594e0d
sw x3, 0(x2) # store x3 (0xf9594e0d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f9594e0d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000f9594e0d from memory into f28
feq.s x30, f7, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 4)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000003f800000 from memory into f27
la x2, scratch
li x3, 0x3dba3fb5 # load x3 with 32 MSBs 0x000000003dba3fb5
sw x3, 0(x2) # store x3 (0x3dba3fb5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003dba3fb5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000003dba3fb5 from memory into f22
feq.s x9, f27, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xdeadbeefbf800000 from memory into f27
la x2, scratch
li x3, 0x42fb5d4f # load x3 with 32 MSBs 0x0000000042fb5d4f
sw x3, 0(x2) # store x3 (0x42fb5d4f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000042fb5d4f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000042fb5d4f from memory into f17
feq.s x2, f27, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 12)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xa1b2c3d400800000 from memory into f12
la x2, scratch
li x3, 0x4e60ff75 # load x3 with 32 MSBs 0x000000004e60ff75
sw x3, 0(x2) # store x3 (0x4e60ff75) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004e60ff75
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000004e60ff75 from memory into f10
feq.s x22, f12, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffef80800000 from memory into f11
la x2, scratch
li x3, 0xa17d8748 # load x3 with 32 MSBs 0x00000000a17d8748
sw x3, 0(x2) # store x3 (0xa17d8748) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a17d8748
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000a17d8748 from memory into f12
feq.s x13, f11, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfeffffef7f7fffff from memory into f8
la x2, scratch
li x3, 0x5268567b # load x3 with 32 MSBs 0x000000005268567b
sw x3, 0(x2) # store x3 (0x5268567b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005268567b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000005268567b from memory into f2
feq.s x12, f8, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f1
la x2, scratch
li x3, 0x3fdf6b5b # load x3 with 32 MSBs 0x000000003fdf6b5b
sw x3, 0(x2) # store x3 (0x3fdf6b5b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003fdf6b5b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000003fdf6b5b from memory into f3
feq.s x15, f1, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffff7f800000 from memory into f6
la x2, scratch
li x3, 0x448b74aa # load x3 with 32 MSBs 0x00000000448b74aa
sw x3, 0(x2) # store x3 (0x448b74aa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000448b74aa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000448b74aa from memory into f16
feq.s x25, f6, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 32)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfffffffeff800000 from memory into f30
la x2, scratch
li x3, 0x578c736e # load x3 with 32 MSBs 0x00000000578c736e
sw x3, 0(x2) # store x3 (0x578c736e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000578c736e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000578c736e from memory into f5
feq.s x6, f30, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfeedbee57fc00000 from memory into f17
la x2, scratch
li x3, 0x83b1f7ea # load x3 with 32 MSBs 0x0000000083b1f7ea
sw x3, 0(x2) # store x3 (0x83b1f7ea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000083b1f7ea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000083b1f7ea from memory into f10
feq.s x18, f17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffc0deff7fffffff from memory into f27
la x2, scratch
li x3, 0xb049e642 # load x3 with 32 MSBs 0x00000000b049e642
sw x3, 0(x2) # store x3 (0xb049e642) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b049e642
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000b049e642 from memory into f21
feq.s x24, f27, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 44)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfeffffff7f800001 from memory into f2
la x2, scratch
li x3, 0x844c20b5 # load x3 with 32 MSBs 0x00000000844c20b5
sw x3, 0(x2) # store x3 (0x844c20b5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000844c20b5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000844c20b5 from memory into f15
feq.s x18, f2, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffffeff7fbfffff from memory into f9
la x2, scratch
li x3, 0x436e4d40 # load x3 with 32 MSBs 0x00000000436e4d40
sw x3, 0(x2) # store x3 (0x436e4d40) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000436e4d40
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000436e4d40 from memory into f29
feq.s x13, f9, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xa0779fa3 # load x3 with 32 MSBs 0x00000000a0779fa3
sw x3, 0(x2) # store x3 (0xa0779fa3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0779fa3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000a0779fa3 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffffefff00000000 from memory into f6
feq.s x1, f10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x05503c5d # load x3 with 32 MSBs 0x0000000005503c5d
sw x3, 0(x2) # store x3 (0x05503c5d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000005503c5d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000005503c5d from memory into f11
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xaaaaaaaa80000000 from memory into f5
feq.s x29, f11, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x65f2489b # load x3 with 32 MSBs 0x0000000065f2489b
sw x3, 0(x2) # store x3 (0x65f2489b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000065f2489b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000065f2489b from memory into f18
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000003f800000 from memory into f19
feq.s x25, f18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xd8d663a5 # load x3 with 32 MSBs 0x00000000d8d663a5
sw x3, 0(x2) # store x3 (0xd8d663a5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d8d663a5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d8d663a5 from memory into f18
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xdeadbeefbf800000 from memory into f10
feq.s x29, f18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xdfa5c5b1 # load x3 with 32 MSBs 0x00000000dfa5c5b1
sw x3, 0(x2) # store x3 (0xdfa5c5b1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dfa5c5b1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000dfa5c5b1 from memory into f13
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa1b2c3d400800000 from memory into f28
feq.s x10, f13, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x1ecc30d4 # load x3 with 32 MSBs 0x000000001ecc30d4
sw x3, 0(x2) # store x3 (0x1ecc30d4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001ecc30d4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001ecc30d4 from memory into f19
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffef80800000 from memory into f5
feq.s x6, f19, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xe0063048 # load x3 with 32 MSBs 0x00000000e0063048
sw x3, 0(x2) # store x3 (0xe0063048) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e0063048
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e0063048 from memory into f8
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfeffffef7f7fffff from memory into f17
feq.s x16, f8, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xc8156d9c # load x3 with 32 MSBs 0x00000000c8156d9c
sw x3, 0(x2) # store x3 (0xc8156d9c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c8156d9c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000c8156d9c from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f30
feq.s x19, f20, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xd096f250 # load x3 with 32 MSBs 0x00000000d096f250
sw x3, 0(x2) # store x3 (0xd096f250) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d096f250
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000d096f250 from memory into f11
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fffffff7f800000 from memory into f5
feq.s x25, f11, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x0dec3d72 # load x3 with 32 MSBs 0x000000000dec3d72
sw x3, 0(x2) # store x3 (0x0dec3d72) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000dec3d72
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000dec3d72 from memory into f5
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfffffffeff800000 from memory into f10
feq.s x17, f5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xcdfecbb8 # load x3 with 32 MSBs 0x00000000cdfecbb8
sw x3, 0(x2) # store x3 (0xcdfecbb8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cdfecbb8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000cdfecbb8 from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfeedbee57fc00000 from memory into f24
feq.s x25, f27, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x5cf45e8e # load x3 with 32 MSBs 0x000000005cf45e8e
sw x3, 0(x2) # store x3 (0x5cf45e8e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005cf45e8e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000005cf45e8e from memory into f24
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffc0deff7fffffff from memory into f11
feq.s x18, f24, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xf1fea4a5 # load x3 with 32 MSBs 0x00000000f1fea4a5
sw x3, 0(x2) # store x3 (0xf1fea4a5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f1fea4a5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000f1fea4a5 from memory into f22
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfeffffff7f800001 from memory into f9
feq.s x31, f22, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xca810f5b # load x3 with 32 MSBs 0x00000000ca810f5b
sw x3, 0(x2) # store x3 (0xca810f5b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ca810f5b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000ca810f5b from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfffffeff7fbfffff from memory into f27
feq.s x1, f19, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 108)

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
