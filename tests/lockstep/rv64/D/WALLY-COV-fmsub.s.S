///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fmsub.s.S
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
li x3, 0x240b038b0b2f5122 # load x3 with value 0x240b038b0b2f5122
sd x3, 0(x2) # store 0x240b038b0b2f5122 in memory
flw f20, 0(x2) # load 0x240b038b0b2f5122 from memory into f20
la x2, scratch
li x3, 0x1f30da8c3e26e8cc # load x3 with value 0x1f30da8c3e26e8cc
sd x3, 0(x2) # store 0x1f30da8c3e26e8cc in memory
flw f9, 0(x2) # load 0x1f30da8c3e26e8cc from memory into f9
la x2, scratch
li x3, 0xfb22695598d18648 # load x3 with value 0xfb22695598d18648
sd x3, 0(x2) # store 0xfb22695598d18648 in memory
flw f28, 0(x2) # load 0xfb22695598d18648 from memory into f28
fmsub.s f25, f20, f9, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f28, 0(x2) # load 0xffffefff00000000 from memory into f28
la x2, scratch
li x3, 0xf37d894558c2a239 # load x3 with value 0xf37d894558c2a239
sd x3, 0(x2) # store 0xf37d894558c2a239 in memory
fld f20, 0(x2) # load 0xf37d894558c2a239 from memory into f20
la x2, scratch
li x3, 0x3bc5f16b285610bb # load x3 with value 0x3bc5f16b285610bb
sd x3, 0(x2) # store 0x3bc5f16b285610bb in memory
fld f14, 0(x2) # load 0x3bc5f16b285610bb from memory into f14
fmsub.s f5, f28, f20, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f26, 0(x2) # load 0xaaaaaaaa80000000 from memory into f26
la x2, scratch
li x3, 0x092723a1c1328ffd # load x3 with value 0x092723a1c1328ffd
sd x3, 0(x2) # store 0x092723a1c1328ffd in memory
fld f6, 0(x2) # load 0x092723a1c1328ffd from memory into f6
la x2, scratch
li x3, 0x22e6f2393070a460 # load x3 with value 0x22e6f2393070a460
sd x3, 0(x2) # store 0x22e6f2393070a460 in memory
fld f15, 0(x2) # load 0x22e6f2393070a460 from memory into f15
fmsub.s f9, f26, f6, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f29, 0(x2) # load 0x000000003f800000 from memory into f29
la x2, scratch
li x3, 0x574166bd67939405 # load x3 with value 0x574166bd67939405
sd x3, 0(x2) # store 0x574166bd67939405 in memory
fld f7, 0(x2) # load 0x574166bd67939405 from memory into f7
la x2, scratch
li x3, 0x19ee2a8c499a5c4b # load x3 with value 0x19ee2a8c499a5c4b
sd x3, 0(x2) # store 0x19ee2a8c499a5c4b in memory
fld f3, 0(x2) # load 0x19ee2a8c499a5c4b from memory into f3
fmsub.s f16, f29, f7, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f24, 0(x2) # load 0xdeadbeefbf800000 from memory into f24
la x2, scratch
li x3, 0xef6cee8d3f29b789 # load x3 with value 0xef6cee8d3f29b789
sd x3, 0(x2) # store 0xef6cee8d3f29b789 in memory
fld f10, 0(x2) # load 0xef6cee8d3f29b789 from memory into f10
la x2, scratch
li x3, 0xc2041a47c75701f1 # load x3 with value 0xc2041a47c75701f1
sd x3, 0(x2) # store 0xc2041a47c75701f1 in memory
fld f12, 0(x2) # load 0xc2041a47c75701f1 from memory into f12
fmsub.s f27, f24, f10, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f24, 0(x2) # load 0xa1b2c3d400800000 from memory into f24
la x2, scratch
li x3, 0x61f32361bdca9fe8 # load x3 with value 0x61f32361bdca9fe8
sd x3, 0(x2) # store 0x61f32361bdca9fe8 in memory
fld f30, 0(x2) # load 0x61f32361bdca9fe8 from memory into f30
la x2, scratch
li x3, 0xa48ea45b58c73fc8 # load x3 with value 0xa48ea45b58c73fc8
sd x3, 0(x2) # store 0xa48ea45b58c73fc8 in memory
fld f22, 0(x2) # load 0xa48ea45b58c73fc8 from memory into f22
fmsub.s f3, f24, f30, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f8, 0(x2) # load 0xffffffef80800000 from memory into f8
la x2, scratch
li x3, 0x99b49d5cc6e1a8c6 # load x3 with value 0x99b49d5cc6e1a8c6
sd x3, 0(x2) # store 0x99b49d5cc6e1a8c6 in memory
fld f16, 0(x2) # load 0x99b49d5cc6e1a8c6 from memory into f16
la x2, scratch
li x3, 0x0e7b842debe1360c # load x3 with value 0x0e7b842debe1360c
sd x3, 0(x2) # store 0x0e7b842debe1360c in memory
fld f5, 0(x2) # load 0x0e7b842debe1360c from memory into f5
fmsub.s f15, f8, f16, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f15, 0(x2) # load 0xfeffffef7f7fffff from memory into f15
la x2, scratch
li x3, 0xf38271a66671f8cf # load x3 with value 0xf38271a66671f8cf
sd x3, 0(x2) # store 0xf38271a66671f8cf in memory
fld f22, 0(x2) # load 0xf38271a66671f8cf from memory into f22
la x2, scratch
li x3, 0xc1590edfbccbdfc1 # load x3 with value 0xc1590edfbccbdfc1
sd x3, 0(x2) # store 0xc1590edfbccbdfc1 in memory
fld f27, 0(x2) # load 0xc1590edfbccbdfc1 from memory into f27
fmsub.s f12, f15, f22, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f29, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f29
la x2, scratch
li x3, 0x4ac694bd8a8b16e5 # load x3 with value 0x4ac694bd8a8b16e5
sd x3, 0(x2) # store 0x4ac694bd8a8b16e5 in memory
fld f19, 0(x2) # load 0x4ac694bd8a8b16e5 from memory into f19
la x2, scratch
li x3, 0xca4df6f2ec86d60b # load x3 with value 0xca4df6f2ec86d60b
sd x3, 0(x2) # store 0xca4df6f2ec86d60b in memory
fld f7, 0(x2) # load 0xca4df6f2ec86d60b from memory into f7
fmsub.s f30, f29, f19, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f24, 0(x2) # load 0x7fffffff7f800000 from memory into f24
la x2, scratch
li x3, 0xaa679c7f03ee1876 # load x3 with value 0xaa679c7f03ee1876
sd x3, 0(x2) # store 0xaa679c7f03ee1876 in memory
fld f29, 0(x2) # load 0xaa679c7f03ee1876 from memory into f29
la x2, scratch
li x3, 0x02ee5cc27c18d4ec # load x3 with value 0x02ee5cc27c18d4ec
sd x3, 0(x2) # store 0x02ee5cc27c18d4ec in memory
fld f16, 0(x2) # load 0x02ee5cc27c18d4ec from memory into f16
fmsub.s f23, f24, f29, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f9, 0(x2) # load 0xfffffffeff800000 from memory into f9
la x2, scratch
li x3, 0xe6ab63501d577aa1 # load x3 with value 0xe6ab63501d577aa1
sd x3, 0(x2) # store 0xe6ab63501d577aa1 in memory
fld f18, 0(x2) # load 0xe6ab63501d577aa1 from memory into f18
la x2, scratch
li x3, 0x7261c07e11a13590 # load x3 with value 0x7261c07e11a13590
sd x3, 0(x2) # store 0x7261c07e11a13590 in memory
fld f26, 0(x2) # load 0x7261c07e11a13590 from memory into f26
fmsub.s f31, f9, f18, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f3, 0(x2) # load 0xfeedbee57fc00000 from memory into f3
la x2, scratch
li x3, 0x17f4a7abdb5237f6 # load x3 with value 0x17f4a7abdb5237f6
sd x3, 0(x2) # store 0x17f4a7abdb5237f6 in memory
fld f5, 0(x2) # load 0x17f4a7abdb5237f6 from memory into f5
la x2, scratch
li x3, 0x2eea62c8725741cb # load x3 with value 0x2eea62c8725741cb
sd x3, 0(x2) # store 0x2eea62c8725741cb in memory
fld f20, 0(x2) # load 0x2eea62c8725741cb from memory into f20
fmsub.s f6, f3, f5, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f24, 0(x2) # load 0xffc0deff7fffffff from memory into f24
la x2, scratch
li x3, 0xe72aac864d9977f2 # load x3 with value 0xe72aac864d9977f2
sd x3, 0(x2) # store 0xe72aac864d9977f2 in memory
fld f21, 0(x2) # load 0xe72aac864d9977f2 from memory into f21
la x2, scratch
li x3, 0x2016c9ef14483321 # load x3 with value 0x2016c9ef14483321
sd x3, 0(x2) # store 0x2016c9ef14483321 in memory
fld f17, 0(x2) # load 0x2016c9ef14483321 from memory into f17
fmsub.s f22, f24, f21, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f2, 0(x2) # load 0xfeffffff7f800001 from memory into f2
la x2, scratch
li x3, 0x0d4a7c3ae7895177 # load x3 with value 0x0d4a7c3ae7895177
sd x3, 0(x2) # store 0x0d4a7c3ae7895177 in memory
fld f1, 0(x2) # load 0x0d4a7c3ae7895177 from memory into f1
la x2, scratch
li x3, 0xda73b30706086cb9 # load x3 with value 0xda73b30706086cb9
sd x3, 0(x2) # store 0xda73b30706086cb9 in memory
fld f27, 0(x2) # load 0xda73b30706086cb9 from memory into f27
fmsub.s f18, f2, f1, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f29, 0(x2) # load 0xfffffeff7fbfffff from memory into f29
la x2, scratch
li x3, 0xfa551f04cb431058 # load x3 with value 0xfa551f04cb431058
sd x3, 0(x2) # store 0xfa551f04cb431058 in memory
fld f16, 0(x2) # load 0xfa551f04cb431058 from memory into f16
la x2, scratch
li x3, 0x409f434d8b2dbf23 # load x3 with value 0x409f434d8b2dbf23
sd x3, 0(x2) # store 0x409f434d8b2dbf23 in memory
fld f18, 0(x2) # load 0x409f434d8b2dbf23 from memory into f18
fmsub.s f3, f29, f16, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xfd8fd7276d21ef76 # load x3 with value 0xfd8fd7276d21ef76
sd x3, 0(x2) # store 0xfd8fd7276d21ef76 in memory
fld f30, 0(x2) # load 0xfd8fd7276d21ef76 from memory into f30
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f27, 0(x2) # load 0xffffefff00000000 from memory into f27
la x2, scratch
li x3, 0x40f093c2661fe7ab # load x3 with value 0x40f093c2661fe7ab
sd x3, 0(x2) # store 0x40f093c2661fe7ab in memory
fld f25, 0(x2) # load 0x40f093c2661fe7ab from memory into f25
fmsub.s f7, f30, f27, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xacb4132cf60c40c0 # load x3 with value 0xacb4132cf60c40c0
sd x3, 0(x2) # store 0xacb4132cf60c40c0 in memory
fld f14, 0(x2) # load 0xacb4132cf60c40c0 from memory into f14
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f20, 0(x2) # load 0xaaaaaaaa80000000 from memory into f20
la x2, scratch
li x3, 0x06f0167e671f283a # load x3 with value 0x06f0167e671f283a
sd x3, 0(x2) # store 0x06f0167e671f283a in memory
fld f13, 0(x2) # load 0x06f0167e671f283a from memory into f13
fmsub.s f2, f14, f20, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x81125bf20a69f168 # load x3 with value 0x81125bf20a69f168
sd x3, 0(x2) # store 0x81125bf20a69f168 in memory
fld f21, 0(x2) # load 0x81125bf20a69f168 from memory into f21
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f17, 0(x2) # load 0x000000003f800000 from memory into f17
la x2, scratch
li x3, 0x702bf95c8629f3a8 # load x3 with value 0x702bf95c8629f3a8
sd x3, 0(x2) # store 0x702bf95c8629f3a8 in memory
fld f25, 0(x2) # load 0x702bf95c8629f3a8 from memory into f25
fmsub.s f26, f21, f17, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x5ee843cab92d7fb4 # load x3 with value 0x5ee843cab92d7fb4
sd x3, 0(x2) # store 0x5ee843cab92d7fb4 in memory
fld f28, 0(x2) # load 0x5ee843cab92d7fb4 from memory into f28
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f19, 0(x2) # load 0xdeadbeefbf800000 from memory into f19
la x2, scratch
li x3, 0x6d20fa503de13eb7 # load x3 with value 0x6d20fa503de13eb7
sd x3, 0(x2) # store 0x6d20fa503de13eb7 in memory
fld f14, 0(x2) # load 0x6d20fa503de13eb7 from memory into f14
fmsub.s f1, f28, f19, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xeac83483e0826e94 # load x3 with value 0xeac83483e0826e94
sd x3, 0(x2) # store 0xeac83483e0826e94 in memory
fld f29, 0(x2) # load 0xeac83483e0826e94 from memory into f29
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f2, 0(x2) # load 0xa1b2c3d400800000 from memory into f2
la x2, scratch
li x3, 0x87f826cad3cac170 # load x3 with value 0x87f826cad3cac170
sd x3, 0(x2) # store 0x87f826cad3cac170 in memory
fld f22, 0(x2) # load 0x87f826cad3cac170 from memory into f22
fmsub.s f9, f29, f2, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x65a35dbf0a866bfd # load x3 with value 0x65a35dbf0a866bfd
sd x3, 0(x2) # store 0x65a35dbf0a866bfd in memory
fld f12, 0(x2) # load 0x65a35dbf0a866bfd from memory into f12
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f23, 0(x2) # load 0xffffffef80800000 from memory into f23
la x2, scratch
li x3, 0xee0dc904a44a3fde # load x3 with value 0xee0dc904a44a3fde
sd x3, 0(x2) # store 0xee0dc904a44a3fde in memory
fld f9, 0(x2) # load 0xee0dc904a44a3fde from memory into f9
fmsub.s f8, f12, f23, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xb98f8f230a652f33 # load x3 with value 0xb98f8f230a652f33
sd x3, 0(x2) # store 0xb98f8f230a652f33 in memory
fld f12, 0(x2) # load 0xb98f8f230a652f33 from memory into f12
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f10, 0(x2) # load 0xfeffffef7f7fffff from memory into f10
la x2, scratch
li x3, 0xc6a26a531a99eeb5 # load x3 with value 0xc6a26a531a99eeb5
sd x3, 0(x2) # store 0xc6a26a531a99eeb5 in memory
fld f30, 0(x2) # load 0xc6a26a531a99eeb5 from memory into f30
fmsub.s f21, f12, f10, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xe0916ba255486ecd # load x3 with value 0xe0916ba255486ecd
sd x3, 0(x2) # store 0xe0916ba255486ecd in memory
fld f12, 0(x2) # load 0xe0916ba255486ecd from memory into f12
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f20, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f20
la x2, scratch
li x3, 0xe0003733fcf22e5b # load x3 with value 0xe0003733fcf22e5b
sd x3, 0(x2) # store 0xe0003733fcf22e5b in memory
fld f14, 0(x2) # load 0xe0003733fcf22e5b from memory into f14
fmsub.s f10, f12, f20, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xdf5c44c1e4f831e2 # load x3 with value 0xdf5c44c1e4f831e2
sd x3, 0(x2) # store 0xdf5c44c1e4f831e2 in memory
fld f10, 0(x2) # load 0xdf5c44c1e4f831e2 from memory into f10
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f24, 0(x2) # load 0x7fffffff7f800000 from memory into f24
la x2, scratch
li x3, 0x9ca317cbbccd7388 # load x3 with value 0x9ca317cbbccd7388
sd x3, 0(x2) # store 0x9ca317cbbccd7388 in memory
fld f11, 0(x2) # load 0x9ca317cbbccd7388 from memory into f11
fmsub.s f28, f10, f24, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x8f401d88286b10e5 # load x3 with value 0x8f401d88286b10e5
sd x3, 0(x2) # store 0x8f401d88286b10e5 in memory
fld f10, 0(x2) # load 0x8f401d88286b10e5 from memory into f10
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f17, 0(x2) # load 0xfffffffeff800000 from memory into f17
la x2, scratch
li x3, 0x9ca02426c8172efb # load x3 with value 0x9ca02426c8172efb
sd x3, 0(x2) # store 0x9ca02426c8172efb in memory
fld f2, 0(x2) # load 0x9ca02426c8172efb from memory into f2
fmsub.s f7, f10, f17, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xeb2458900e058a5a # load x3 with value 0xeb2458900e058a5a
sd x3, 0(x2) # store 0xeb2458900e058a5a in memory
fld f2, 0(x2) # load 0xeb2458900e058a5a from memory into f2
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f23, 0(x2) # load 0xfeedbee57fc00000 from memory into f23
la x2, scratch
li x3, 0x07bde9defbb88366 # load x3 with value 0x07bde9defbb88366
sd x3, 0(x2) # store 0x07bde9defbb88366 in memory
fld f28, 0(x2) # load 0x07bde9defbb88366 from memory into f28
fmsub.s f10, f2, f23, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xa3a199f42a75762a # load x3 with value 0xa3a199f42a75762a
sd x3, 0(x2) # store 0xa3a199f42a75762a in memory
fld f6, 0(x2) # load 0xa3a199f42a75762a from memory into f6
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f13, 0(x2) # load 0xffc0deff7fffffff from memory into f13
la x2, scratch
li x3, 0xd97ea85a852f8bbd # load x3 with value 0xd97ea85a852f8bbd
sd x3, 0(x2) # store 0xd97ea85a852f8bbd in memory
fld f28, 0(x2) # load 0xd97ea85a852f8bbd from memory into f28
fmsub.s f30, f6, f13, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x55a5da118e2f33b0 # load x3 with value 0x55a5da118e2f33b0
sd x3, 0(x2) # store 0x55a5da118e2f33b0 in memory
fld f13, 0(x2) # load 0x55a5da118e2f33b0 from memory into f13
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f18, 0(x2) # load 0xfeffffff7f800001 from memory into f18
la x2, scratch
li x3, 0x813c1766d9b04070 # load x3 with value 0x813c1766d9b04070
sd x3, 0(x2) # store 0x813c1766d9b04070 in memory
fld f17, 0(x2) # load 0x813c1766d9b04070 from memory into f17
fmsub.s f9, f13, f18, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x439616279204fce2 # load x3 with value 0x439616279204fce2
sd x3, 0(x2) # store 0x439616279204fce2 in memory
fld f22, 0(x2) # load 0x439616279204fce2 from memory into f22
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f27, 0(x2) # load 0xfffffeff7fbfffff from memory into f27
la x2, scratch
li x3, 0xc10c966a75235b84 # load x3 with value 0xc10c966a75235b84
sd x3, 0(x2) # store 0xc10c966a75235b84 in memory
fld f13, 0(x2) # load 0xc10c966a75235b84 from memory into f13
fmsub.s f31, f22, f27, f13 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x9871326af3500a28 # load x3 with value 0x9871326af3500a28
sd x3, 0(x2) # store 0x9871326af3500a28 in memory
fld f9, 0(x2) # load 0x9871326af3500a28 from memory into f9
la x2, scratch
li x3, 0x3eb847d0d55c063b # load x3 with value 0x3eb847d0d55c063b
sd x3, 0(x2) # store 0x3eb847d0d55c063b in memory
fld f22, 0(x2) # load 0x3eb847d0d55c063b from memory into f22
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f26, 0(x2) # load 0xffffefff00000000 from memory into f26
fmsub.s f20, f9, f22, f26 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x507f3914c39b2cda # load x3 with value 0x507f3914c39b2cda
sd x3, 0(x2) # store 0x507f3914c39b2cda in memory
fld f6, 0(x2) # load 0x507f3914c39b2cda from memory into f6
la x2, scratch
li x3, 0xd2b8ec29b41d6859 # load x3 with value 0xd2b8ec29b41d6859
sd x3, 0(x2) # store 0xd2b8ec29b41d6859 in memory
fld f19, 0(x2) # load 0xd2b8ec29b41d6859 from memory into f19
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f23, 0(x2) # load 0xaaaaaaaa80000000 from memory into f23
fmsub.s f3, f6, f19, f23 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x3f800000)
la x2, scratch
li x3, 0x767ef5c582742ae9 # load x3 with value 0x767ef5c582742ae9
sd x3, 0(x2) # store 0x767ef5c582742ae9 in memory
fld f30, 0(x2) # load 0x767ef5c582742ae9 from memory into f30
la x2, scratch
li x3, 0x95dfb4b1a498ed58 # load x3 with value 0x95dfb4b1a498ed58
sd x3, 0(x2) # store 0x95dfb4b1a498ed58 in memory
fld f8, 0(x2) # load 0x95dfb4b1a498ed58 from memory into f8
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f17, 0(x2) # load 0x000000003f800000 from memory into f17
fmsub.s f26, f30, f8, f17 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x95633bb1f9ed2aac # load x3 with value 0x95633bb1f9ed2aac
sd x3, 0(x2) # store 0x95633bb1f9ed2aac in memory
fld f1, 0(x2) # load 0x95633bb1f9ed2aac from memory into f1
la x2, scratch
li x3, 0xc8db2c39496cd237 # load x3 with value 0xc8db2c39496cd237
sd x3, 0(x2) # store 0xc8db2c39496cd237 in memory
fld f2, 0(x2) # load 0xc8db2c39496cd237 from memory into f2
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f20, 0(x2) # load 0xdeadbeefbf800000 from memory into f20
fmsub.s f6, f1, f2, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x4c335c92782c8ac7 # load x3 with value 0x4c335c92782c8ac7
sd x3, 0(x2) # store 0x4c335c92782c8ac7 in memory
fld f23, 0(x2) # load 0x4c335c92782c8ac7 from memory into f23
la x2, scratch
li x3, 0x7f78e10d2d189d1d # load x3 with value 0x7f78e10d2d189d1d
sd x3, 0(x2) # store 0x7f78e10d2d189d1d in memory
fld f14, 0(x2) # load 0x7f78e10d2d189d1d from memory into f14
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f9, 0(x2) # load 0xa1b2c3d400800000 from memory into f9
fmsub.s f10, f23, f14, f9 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xf0b07c78f8a3a371 # load x3 with value 0xf0b07c78f8a3a371
sd x3, 0(x2) # store 0xf0b07c78f8a3a371 in memory
fld f3, 0(x2) # load 0xf0b07c78f8a3a371 from memory into f3
la x2, scratch
li x3, 0x80d2a91c32d482e1 # load x3 with value 0x80d2a91c32d482e1
sd x3, 0(x2) # store 0x80d2a91c32d482e1 in memory
fld f25, 0(x2) # load 0x80d2a91c32d482e1 from memory into f25
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f2, 0(x2) # load 0xffffffef80800000 from memory into f2
fmsub.s f28, f3, f25, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xa44d8cf94a64f74e # load x3 with value 0xa44d8cf94a64f74e
sd x3, 0(x2) # store 0xa44d8cf94a64f74e in memory
fld f21, 0(x2) # load 0xa44d8cf94a64f74e from memory into f21
la x2, scratch
li x3, 0xe64e7bdb11a011b9 # load x3 with value 0xe64e7bdb11a011b9
sd x3, 0(x2) # store 0xe64e7bdb11a011b9 in memory
fld f14, 0(x2) # load 0xe64e7bdb11a011b9 from memory into f14
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f23, 0(x2) # load 0xfeffffef7f7fffff from memory into f23
fmsub.s f17, f21, f14, f23 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x487c178b2c9b48c1 # load x3 with value 0x487c178b2c9b48c1
sd x3, 0(x2) # store 0x487c178b2c9b48c1 in memory
fld f11, 0(x2) # load 0x487c178b2c9b48c1 from memory into f11
la x2, scratch
li x3, 0x7f043cd04e497659 # load x3 with value 0x7f043cd04e497659
sd x3, 0(x2) # store 0x7f043cd04e497659 in memory
fld f10, 0(x2) # load 0x7f043cd04e497659 from memory into f10
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f26, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f26
fmsub.s f22, f11, f10, f26 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xdedb735fdd170b95 # load x3 with value 0xdedb735fdd170b95
sd x3, 0(x2) # store 0xdedb735fdd170b95 in memory
fld f22, 0(x2) # load 0xdedb735fdd170b95 from memory into f22
la x2, scratch
li x3, 0x589705ce74650576 # load x3 with value 0x589705ce74650576
sd x3, 0(x2) # store 0x589705ce74650576 in memory
fld f14, 0(x2) # load 0x589705ce74650576 from memory into f14
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f27, 0(x2) # load 0x7fffffff7f800000 from memory into f27
fmsub.s f9, f22, f14, f27 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x1fd4336fd835c089 # load x3 with value 0x1fd4336fd835c089
sd x3, 0(x2) # store 0x1fd4336fd835c089 in memory
fld f9, 0(x2) # load 0x1fd4336fd835c089 from memory into f9
la x2, scratch
li x3, 0x20e589a243b05bb7 # load x3 with value 0x20e589a243b05bb7
sd x3, 0(x2) # store 0x20e589a243b05bb7 in memory
fld f29, 0(x2) # load 0x20e589a243b05bb7 from memory into f29
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f11, 0(x2) # load 0xfffffffeff800000 from memory into f11
fmsub.s f30, f9, f29, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x922bfc3dd1d6d20f # load x3 with value 0x922bfc3dd1d6d20f
sd x3, 0(x2) # store 0x922bfc3dd1d6d20f in memory
fld f2, 0(x2) # load 0x922bfc3dd1d6d20f from memory into f2
la x2, scratch
li x3, 0x05ba98c10e9c30ad # load x3 with value 0x05ba98c10e9c30ad
sd x3, 0(x2) # store 0x05ba98c10e9c30ad in memory
fld f29, 0(x2) # load 0x05ba98c10e9c30ad from memory into f29
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f14, 0(x2) # load 0xfeedbee57fc00000 from memory into f14
fmsub.s f19, f2, f29, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xa337203d872ae687 # load x3 with value 0xa337203d872ae687
sd x3, 0(x2) # store 0xa337203d872ae687 in memory
fld f3, 0(x2) # load 0xa337203d872ae687 from memory into f3
la x2, scratch
li x3, 0x4432c3f9fe6774b0 # load x3 with value 0x4432c3f9fe6774b0
sd x3, 0(x2) # store 0x4432c3f9fe6774b0 in memory
fld f14, 0(x2) # load 0x4432c3f9fe6774b0 from memory into f14
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f25, 0(x2) # load 0xffc0deff7fffffff from memory into f25
fmsub.s f17, f3, f14, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x5c16ef7b46fc4abd # load x3 with value 0x5c16ef7b46fc4abd
sd x3, 0(x2) # store 0x5c16ef7b46fc4abd in memory
fld f7, 0(x2) # load 0x5c16ef7b46fc4abd from memory into f7
la x2, scratch
li x3, 0xf9ac8d38e073cc1a # load x3 with value 0xf9ac8d38e073cc1a
sd x3, 0(x2) # store 0xf9ac8d38e073cc1a in memory
fld f23, 0(x2) # load 0xf9ac8d38e073cc1a from memory into f23
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f17, 0(x2) # load 0xfeffffff7f800001 from memory into f17
fmsub.s f6, f7, f23, f17 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x60605c1178ba1ec2 # load x3 with value 0x60605c1178ba1ec2
sd x3, 0(x2) # store 0x60605c1178ba1ec2 in memory
fld f22, 0(x2) # load 0x60605c1178ba1ec2 from memory into f22
la x2, scratch
li x3, 0x0863d41df349beda # load x3 with value 0x0863d41df349beda
sd x3, 0(x2) # store 0x0863d41df349beda in memory
fld f24, 0(x2) # load 0x0863d41df349beda from memory into f24
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f2, 0(x2) # load 0xfffffeff7fbfffff from memory into f2
fmsub.s f26, f22, f24, f2 # perform operation

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
