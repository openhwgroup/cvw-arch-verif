///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fmax.s.S
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
li x3, 0x00000000dfbbca20 # load x3 with value 0x00000000dfbbca20
sw x3, 0(x2) # store 0x00000000dfbbca20 in memory
flw f29, 0(x2) # load 0x00000000dfbbca20 from memory into f29
la x2, scratch
li x3, 0x000000001b992d41 # load x3 with value 0x000000001b992d41
sw x3, 0(x2) # store 0x000000001b992d41 in memory
flw f22, 0(x2) # load 0x000000001b992d41 from memory into f22
fmax.s f14, f29, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffefff00000000 from memory into f26
la x2, scratch
li x3, 0x1be6e25e # load x3 with 32 MSBs 0x000000001be6e25e
sw x3, 0(x2) # store x3 (0x1be6e25e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001be6e25e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001be6e25e from memory into f19
fmax.s f10, f26, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xaaaaaaaa80000000 from memory into f2
la x2, scratch
li x3, 0xf118ea3b # load x3 with 32 MSBs 0x00000000f118ea3b
sw x3, 0(x2) # store x3 (0xf118ea3b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f118ea3b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000f118ea3b from memory into f11
fmax.s f12, f2, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000003f800000 from memory into f31
la x2, scratch
li x3, 0xe0c33564 # load x3 with 32 MSBs 0x00000000e0c33564
sw x3, 0(x2) # store x3 (0xe0c33564) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e0c33564
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000e0c33564 from memory into f26
fmax.s f5, f31, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xdeadbeefbf800000 from memory into f19
la x2, scratch
li x3, 0x064e6b07 # load x3 with 32 MSBs 0x00000000064e6b07
sw x3, 0(x2) # store x3 (0x064e6b07) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000064e6b07
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000064e6b07 from memory into f8
fmax.s f15, f19, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa1b2c3d400800000 from memory into f17
la x2, scratch
li x3, 0xb7e14a81 # load x3 with 32 MSBs 0x00000000b7e14a81
sw x3, 0(x2) # store x3 (0xb7e14a81) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b7e14a81
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000b7e14a81 from memory into f5
fmax.s f24, f17, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffffffef80800000 from memory into f18
la x2, scratch
li x3, 0x0ea04c46 # load x3 with 32 MSBs 0x000000000ea04c46
sw x3, 0(x2) # store x3 (0x0ea04c46) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000ea04c46
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000000ea04c46 from memory into f25
fmax.s f20, f18, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfeffffef7f7fffff from memory into f11
la x2, scratch
li x3, 0xdd9e2c29 # load x3 with 32 MSBs 0x00000000dd9e2c29
sw x3, 0(x2) # store x3 (0xdd9e2c29) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dd9e2c29
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000dd9e2c29 from memory into f7
fmax.s f23, f11, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f27
la x2, scratch
li x3, 0xfd1bca89 # load x3 with 32 MSBs 0x00000000fd1bca89
sw x3, 0(x2) # store x3 (0xfd1bca89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fd1bca89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000fd1bca89 from memory into f26
fmax.s f6, f27, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fffffff7f800000 from memory into f28
la x2, scratch
li x3, 0x0b52dd12 # load x3 with 32 MSBs 0x000000000b52dd12
sw x3, 0(x2) # store x3 (0x0b52dd12) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000b52dd12
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000000b52dd12 from memory into f21
fmax.s f6, f28, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfffffffeff800000 from memory into f17
la x2, scratch
li x3, 0xc2129f78 # load x3 with 32 MSBs 0x00000000c2129f78
sw x3, 0(x2) # store x3 (0xc2129f78) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c2129f78
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000c2129f78 from memory into f3
fmax.s f10, f17, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfeedbee57fc00000 from memory into f30
la x2, scratch
li x3, 0xc1941126 # load x3 with 32 MSBs 0x00000000c1941126
sw x3, 0(x2) # store x3 (0xc1941126) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c1941126
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000c1941126 from memory into f27
fmax.s f15, f30, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffc0deff7fffffff from memory into f28
la x2, scratch
li x3, 0xd07bbd51 # load x3 with 32 MSBs 0x00000000d07bbd51
sw x3, 0(x2) # store x3 (0xd07bbd51) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d07bbd51
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000d07bbd51 from memory into f10
fmax.s f21, f28, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfeffffff7f800001 from memory into f18
la x2, scratch
li x3, 0x28a3f597 # load x3 with 32 MSBs 0x0000000028a3f597
sw x3, 0(x2) # store x3 (0x28a3f597) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000028a3f597
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000028a3f597 from memory into f28
fmax.s f17, f18, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffeff7fbfffff from memory into f5
la x2, scratch
li x3, 0xe4ddba74 # load x3 with 32 MSBs 0x00000000e4ddba74
sw x3, 0(x2) # store x3 (0xe4ddba74) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e4ddba74
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000e4ddba74 from memory into f1
fmax.s f16, f5, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x40a9ed67 # load x3 with 32 MSBs 0x0000000040a9ed67
sw x3, 0(x2) # store x3 (0x40a9ed67) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000040a9ed67
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000040a9ed67 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffffefff00000000 from memory into f23
fmax.s f11, f15, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x8497fe45 # load x3 with 32 MSBs 0x000000008497fe45
sw x3, 0(x2) # store x3 (0x8497fe45) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008497fe45
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000008497fe45 from memory into f29
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xaaaaaaaa80000000 from memory into f22
fmax.s f28, f29, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x08fe4e50 # load x3 with 32 MSBs 0x0000000008fe4e50
sw x3, 0(x2) # store x3 (0x08fe4e50) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000008fe4e50
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000008fe4e50 from memory into f26
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000003f800000 from memory into f3
fmax.s f1, f26, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xd0db650a # load x3 with 32 MSBs 0x00000000d0db650a
sw x3, 0(x2) # store x3 (0xd0db650a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d0db650a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000d0db650a from memory into f3
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xdeadbeefbf800000 from memory into f19
fmax.s f28, f3, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x550c738c # load x3 with 32 MSBs 0x00000000550c738c
sw x3, 0(x2) # store x3 (0x550c738c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000550c738c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000550c738c from memory into f9
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xa1b2c3d400800000 from memory into f29
fmax.s f2, f9, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x52721d17 # load x3 with 32 MSBs 0x0000000052721d17
sw x3, 0(x2) # store x3 (0x52721d17) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000052721d17
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000052721d17 from memory into f12
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffffffef80800000 from memory into f28
fmax.s f21, f12, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xab1ee8b0 # load x3 with 32 MSBs 0x00000000ab1ee8b0
sw x3, 0(x2) # store x3 (0xab1ee8b0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ab1ee8b0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000ab1ee8b0 from memory into f31
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfeffffef7f7fffff from memory into f17
fmax.s f18, f31, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x34d582ee # load x3 with 32 MSBs 0x0000000034d582ee
sw x3, 0(x2) # store x3 (0x34d582ee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000034d582ee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000034d582ee from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f1
fmax.s f28, f20, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xa77c380c # load x3 with 32 MSBs 0x00000000a77c380c
sw x3, 0(x2) # store x3 (0xa77c380c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a77c380c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000a77c380c from memory into f30
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffff7f800000 from memory into f6
fmax.s f29, f30, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x204b4626 # load x3 with 32 MSBs 0x00000000204b4626
sw x3, 0(x2) # store x3 (0x204b4626) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000204b4626
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000204b4626 from memory into f24
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffffffeff800000 from memory into f2
fmax.s f18, f24, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x072d8d32 # load x3 with 32 MSBs 0x00000000072d8d32
sw x3, 0(x2) # store x3 (0x072d8d32) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000072d8d32
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000072d8d32 from memory into f11
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfeedbee57fc00000 from memory into f19
fmax.s f6, f11, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xcb9a3720 # load x3 with 32 MSBs 0x00000000cb9a3720
sw x3, 0(x2) # store x3 (0xcb9a3720) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb9a3720
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000cb9a3720 from memory into f15
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffc0deff7fffffff from memory into f16
fmax.s f26, f15, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x228afa9f # load x3 with 32 MSBs 0x00000000228afa9f
sw x3, 0(x2) # store x3 (0x228afa9f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000228afa9f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000228afa9f from memory into f16
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfeffffff7f800001 from memory into f6
fmax.s f7, f16, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xb36a1ab2 # load x3 with 32 MSBs 0x00000000b36a1ab2
sw x3, 0(x2) # store x3 (0xb36a1ab2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b36a1ab2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000b36a1ab2 from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffffeff7fbfffff from memory into f2
fmax.s f13, f9, f2 # perform operation

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
