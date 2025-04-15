///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaD/WALLY-COV-fmaxm.s.S
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
li x3, 0x00000000e47d7918 # load x3 with value 0x00000000e47d7918
sw x3, 0(x2) # store 0x00000000e47d7918 in memory
flw f13, 0(x2) # load 0x00000000e47d7918 from memory into f13
la x2, scratch
li x3, 0x00000000402daa26 # load x3 with value 0x00000000402daa26
sw x3, 0(x2) # store 0x00000000402daa26 in memory
flw f15, 0(x2) # load 0x00000000402daa26 from memory into f15
fmaxm.s f9, f13, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffffefff00000000 from memory into f2
la x2, scratch
li x3, 0xa6d2f368 # load x3 with 32 MSBs 0x00000000a6d2f368
sw x3, 0(x2) # store x3 (0xa6d2f368) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a6d2f368
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000a6d2f368 from memory into f17
fmaxm.s f6, f2, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xaaaaaaaa80000000 from memory into f20
la x2, scratch
li x3, 0xbf87a5cc # load x3 with 32 MSBs 0x00000000bf87a5cc
sw x3, 0(x2) # store x3 (0xbf87a5cc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf87a5cc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000bf87a5cc from memory into f21
fmaxm.s f28, f20, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000003f800000 from memory into f3
la x2, scratch
li x3, 0xb71acd62 # load x3 with 32 MSBs 0x00000000b71acd62
sw x3, 0(x2) # store x3 (0xb71acd62) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b71acd62
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000b71acd62 from memory into f13
fmaxm.s f16, f3, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xdeadbeefbf800000 from memory into f8
la x2, scratch
li x3, 0x8e245d5c # load x3 with 32 MSBs 0x000000008e245d5c
sw x3, 0(x2) # store x3 (0x8e245d5c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008e245d5c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008e245d5c from memory into f16
fmaxm.s f30, f8, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa1b2c3d400800000 from memory into f31
la x2, scratch
li x3, 0x9060b44e # load x3 with 32 MSBs 0x000000009060b44e
sw x3, 0(x2) # store x3 (0x9060b44e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009060b44e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000009060b44e from memory into f19
fmaxm.s f30, f31, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffffffef80800000 from memory into f19
la x2, scratch
li x3, 0x6f7dbc94 # load x3 with 32 MSBs 0x000000006f7dbc94
sw x3, 0(x2) # store x3 (0x6f7dbc94) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006f7dbc94
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000006f7dbc94 from memory into f30
fmaxm.s f22, f19, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfeffffef7f7fffff from memory into f1
la x2, scratch
li x3, 0xeabd1ae9 # load x3 with 32 MSBs 0x00000000eabd1ae9
sw x3, 0(x2) # store x3 (0xeabd1ae9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eabd1ae9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000eabd1ae9 from memory into f16
fmaxm.s f17, f1, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f5
la x2, scratch
li x3, 0xd8d16aa2 # load x3 with 32 MSBs 0x00000000d8d16aa2
sw x3, 0(x2) # store x3 (0xd8d16aa2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d8d16aa2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000d8d16aa2 from memory into f24
fmaxm.s f9, f5, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fffffff7f800000 from memory into f19
la x2, scratch
li x3, 0x172fb37e # load x3 with 32 MSBs 0x00000000172fb37e
sw x3, 0(x2) # store x3 (0x172fb37e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000172fb37e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000172fb37e from memory into f14
fmaxm.s f17, f19, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffffffeff800000 from memory into f9
la x2, scratch
li x3, 0xe905ae02 # load x3 with 32 MSBs 0x00000000e905ae02
sw x3, 0(x2) # store x3 (0xe905ae02) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e905ae02
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000e905ae02 from memory into f2
fmaxm.s f15, f9, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfeedbee57fc00000 from memory into f20
la x2, scratch
li x3, 0xe488375a # load x3 with 32 MSBs 0x00000000e488375a
sw x3, 0(x2) # store x3 (0xe488375a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e488375a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000e488375a from memory into f6
fmaxm.s f3, f20, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffc0deff7fffffff from memory into f13
la x2, scratch
li x3, 0x11a84ac6 # load x3 with 32 MSBs 0x0000000011a84ac6
sw x3, 0(x2) # store x3 (0x11a84ac6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000011a84ac6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000011a84ac6 from memory into f10
fmaxm.s f11, f13, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfeffffff7f800001 from memory into f31
la x2, scratch
li x3, 0xdc25fc75 # load x3 with 32 MSBs 0x00000000dc25fc75
sw x3, 0(x2) # store x3 (0xdc25fc75) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dc25fc75
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000dc25fc75 from memory into f8
fmaxm.s f5, f31, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffeff7fbfffff from memory into f20
la x2, scratch
li x3, 0x766d786b # load x3 with 32 MSBs 0x00000000766d786b
sw x3, 0(x2) # store x3 (0x766d786b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000766d786b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000766d786b from memory into f2
fmaxm.s f29, f20, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xc5765bc6 # load x3 with 32 MSBs 0x00000000c5765bc6
sw x3, 0(x2) # store x3 (0xc5765bc6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c5765bc6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000c5765bc6 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffefff00000000 from memory into f31
fmaxm.s f16, f22, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xc4f4b0af # load x3 with 32 MSBs 0x00000000c4f4b0af
sw x3, 0(x2) # store x3 (0xc4f4b0af) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c4f4b0af
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000c4f4b0af from memory into f21
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xaaaaaaaa80000000 from memory into f17
fmaxm.s f23, f21, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x807c68a6 # load x3 with 32 MSBs 0x00000000807c68a6
sw x3, 0(x2) # store x3 (0x807c68a6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000807c68a6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000807c68a6 from memory into f9
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000003f800000 from memory into f20
fmaxm.s f15, f9, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x2904fc69 # load x3 with 32 MSBs 0x000000002904fc69
sw x3, 0(x2) # store x3 (0x2904fc69) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002904fc69
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000002904fc69 from memory into f29
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xdeadbeefbf800000 from memory into f3
fmaxm.s f21, f29, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x888725c8 # load x3 with 32 MSBs 0x00000000888725c8
sw x3, 0(x2) # store x3 (0x888725c8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000888725c8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000888725c8 from memory into f30
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xa1b2c3d400800000 from memory into f25
fmaxm.s f5, f30, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x0e48b90c # load x3 with 32 MSBs 0x000000000e48b90c
sw x3, 0(x2) # store x3 (0x0e48b90c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000e48b90c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000000e48b90c from memory into f28
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffffffef80800000 from memory into f6
fmaxm.s f12, f28, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xea63c68c # load x3 with 32 MSBs 0x00000000ea63c68c
sw x3, 0(x2) # store x3 (0xea63c68c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea63c68c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000ea63c68c from memory into f20
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfeffffef7f7fffff from memory into f16
fmaxm.s f25, f20, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x65641eb8 # load x3 with 32 MSBs 0x0000000065641eb8
sw x3, 0(x2) # store x3 (0x65641eb8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000065641eb8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000065641eb8 from memory into f17
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f16
fmaxm.s f18, f17, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x45477a1e # load x3 with 32 MSBs 0x0000000045477a1e
sw x3, 0(x2) # store x3 (0x45477a1e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000045477a1e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000045477a1e from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7fffffff7f800000 from memory into f17
fmaxm.s f25, f16, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x1124d284 # load x3 with 32 MSBs 0x000000001124d284
sw x3, 0(x2) # store x3 (0x1124d284) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001124d284
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000001124d284 from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffffeff800000 from memory into f18
fmaxm.s f19, f26, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x08b4630f # load x3 with 32 MSBs 0x0000000008b4630f
sw x3, 0(x2) # store x3 (0x08b4630f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000008b4630f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000008b4630f from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeedbee57fc00000 from memory into f28
fmaxm.s f29, f23, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xac27fd62 # load x3 with 32 MSBs 0x00000000ac27fd62
sw x3, 0(x2) # store x3 (0xac27fd62) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ac27fd62
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000ac27fd62 from memory into f1
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffc0deff7fffffff from memory into f27
fmaxm.s f28, f1, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x967b6e8e # load x3 with 32 MSBs 0x00000000967b6e8e
sw x3, 0(x2) # store x3 (0x967b6e8e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000967b6e8e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000967b6e8e from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfeffffff7f800001 from memory into f11
fmaxm.s f13, f1, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x988612c7 # load x3 with 32 MSBs 0x00000000988612c7
sw x3, 0(x2) # store x3 (0x988612c7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000988612c7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000988612c7 from memory into f13
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfffffeff7fbfffff from memory into f6
fmaxm.s f16, f13, f6 # perform operation

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
