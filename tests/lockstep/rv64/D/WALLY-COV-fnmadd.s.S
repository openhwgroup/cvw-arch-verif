///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fnmadd.s.S
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
li x3, 0xb5dc09db491b12ca # load x3 with value 0xb5dc09db491b12ca
sd x3, 0(x2) # store 0xb5dc09db491b12ca in memory
flw f14, 0(x2) # load 0xb5dc09db491b12ca from memory into f14
la x2, scratch
li x3, 0xcadd956f663dace4 # load x3 with value 0xcadd956f663dace4
sd x3, 0(x2) # store 0xcadd956f663dace4 in memory
flw f22, 0(x2) # load 0xcadd956f663dace4 from memory into f22
la x2, scratch
li x3, 0x63c3ef7f2a152d38 # load x3 with value 0x63c3ef7f2a152d38
sd x3, 0(x2) # store 0x63c3ef7f2a152d38 in memory
flw f6, 0(x2) # load 0x63c3ef7f2a152d38 from memory into f6
fnmadd.s f8, f14, f22, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f22, 0(x2) # load 0xffffefff00000000 from memory into f22
la x2, scratch
li x3, 0x39a7263aa358b60d # load x3 with value 0x39a7263aa358b60d
sd x3, 0(x2) # store 0x39a7263aa358b60d in memory
fld f12, 0(x2) # load 0x39a7263aa358b60d from memory into f12
la x2, scratch
li x3, 0xcbdbfda6989f1117 # load x3 with value 0xcbdbfda6989f1117
sd x3, 0(x2) # store 0xcbdbfda6989f1117 in memory
fld f5, 0(x2) # load 0xcbdbfda6989f1117 from memory into f5
fnmadd.s f25, f22, f12, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f3, 0(x2) # load 0xaaaaaaaa80000000 from memory into f3
la x2, scratch
li x3, 0x31a6020d87f30d44 # load x3 with value 0x31a6020d87f30d44
sd x3, 0(x2) # store 0x31a6020d87f30d44 in memory
fld f21, 0(x2) # load 0x31a6020d87f30d44 from memory into f21
la x2, scratch
li x3, 0xdfae964733026889 # load x3 with value 0xdfae964733026889
sd x3, 0(x2) # store 0xdfae964733026889 in memory
fld f22, 0(x2) # load 0xdfae964733026889 from memory into f22
fnmadd.s f26, f3, f21, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f18, 0(x2) # load 0x000000003f800000 from memory into f18
la x2, scratch
li x3, 0x77a8124b973470ff # load x3 with value 0x77a8124b973470ff
sd x3, 0(x2) # store 0x77a8124b973470ff in memory
fld f23, 0(x2) # load 0x77a8124b973470ff from memory into f23
la x2, scratch
li x3, 0xe560623c8d36cbc0 # load x3 with value 0xe560623c8d36cbc0
sd x3, 0(x2) # store 0xe560623c8d36cbc0 in memory
fld f15, 0(x2) # load 0xe560623c8d36cbc0 from memory into f15
fnmadd.s f11, f18, f23, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f22, 0(x2) # load 0xdeadbeefbf800000 from memory into f22
la x2, scratch
li x3, 0xa38070892af09399 # load x3 with value 0xa38070892af09399
sd x3, 0(x2) # store 0xa38070892af09399 in memory
fld f26, 0(x2) # load 0xa38070892af09399 from memory into f26
la x2, scratch
li x3, 0x38524e207d96498e # load x3 with value 0x38524e207d96498e
sd x3, 0(x2) # store 0x38524e207d96498e in memory
fld f21, 0(x2) # load 0x38524e207d96498e from memory into f21
fnmadd.s f30, f22, f26, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f27, 0(x2) # load 0xa1b2c3d400800000 from memory into f27
la x2, scratch
li x3, 0x2a799b225ae3e395 # load x3 with value 0x2a799b225ae3e395
sd x3, 0(x2) # store 0x2a799b225ae3e395 in memory
fld f2, 0(x2) # load 0x2a799b225ae3e395 from memory into f2
la x2, scratch
li x3, 0x3675a310b4498bca # load x3 with value 0x3675a310b4498bca
sd x3, 0(x2) # store 0x3675a310b4498bca in memory
fld f25, 0(x2) # load 0x3675a310b4498bca from memory into f25
fnmadd.s f9, f27, f2, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f24, 0(x2) # load 0xffffffef80800000 from memory into f24
la x2, scratch
li x3, 0x9cf9ea68696bfb4f # load x3 with value 0x9cf9ea68696bfb4f
sd x3, 0(x2) # store 0x9cf9ea68696bfb4f in memory
fld f21, 0(x2) # load 0x9cf9ea68696bfb4f from memory into f21
la x2, scratch
li x3, 0x64a559145e7626be # load x3 with value 0x64a559145e7626be
sd x3, 0(x2) # store 0x64a559145e7626be in memory
fld f19, 0(x2) # load 0x64a559145e7626be from memory into f19
fnmadd.s f14, f24, f21, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f7, 0(x2) # load 0xfeffffef7f7fffff from memory into f7
la x2, scratch
li x3, 0xbc4ebaf37f773519 # load x3 with value 0xbc4ebaf37f773519
sd x3, 0(x2) # store 0xbc4ebaf37f773519 in memory
fld f15, 0(x2) # load 0xbc4ebaf37f773519 from memory into f15
la x2, scratch
li x3, 0x92e1adcdc006d1de # load x3 with value 0x92e1adcdc006d1de
sd x3, 0(x2) # store 0x92e1adcdc006d1de in memory
fld f24, 0(x2) # load 0x92e1adcdc006d1de from memory into f24
fnmadd.s f30, f7, f15, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f17, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f17
la x2, scratch
li x3, 0xe6b85a9d5919d3b1 # load x3 with value 0xe6b85a9d5919d3b1
sd x3, 0(x2) # store 0xe6b85a9d5919d3b1 in memory
fld f9, 0(x2) # load 0xe6b85a9d5919d3b1 from memory into f9
la x2, scratch
li x3, 0xd7a8dc72402f00fd # load x3 with value 0xd7a8dc72402f00fd
sd x3, 0(x2) # store 0xd7a8dc72402f00fd in memory
fld f19, 0(x2) # load 0xd7a8dc72402f00fd from memory into f19
fnmadd.s f23, f17, f9, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f22, 0(x2) # load 0x7fffffff7f800000 from memory into f22
la x2, scratch
li x3, 0x9751060e7bbfd03b # load x3 with value 0x9751060e7bbfd03b
sd x3, 0(x2) # store 0x9751060e7bbfd03b in memory
fld f25, 0(x2) # load 0x9751060e7bbfd03b from memory into f25
la x2, scratch
li x3, 0x7e992418742517d2 # load x3 with value 0x7e992418742517d2
sd x3, 0(x2) # store 0x7e992418742517d2 in memory
fld f14, 0(x2) # load 0x7e992418742517d2 from memory into f14
fnmadd.s f5, f22, f25, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f31, 0(x2) # load 0xfffffffeff800000 from memory into f31
la x2, scratch
li x3, 0xa06fb7c70cc21a9c # load x3 with value 0xa06fb7c70cc21a9c
sd x3, 0(x2) # store 0xa06fb7c70cc21a9c in memory
fld f16, 0(x2) # load 0xa06fb7c70cc21a9c from memory into f16
la x2, scratch
li x3, 0xe64accba9352145f # load x3 with value 0xe64accba9352145f
sd x3, 0(x2) # store 0xe64accba9352145f in memory
fld f24, 0(x2) # load 0xe64accba9352145f from memory into f24
fnmadd.s f2, f31, f16, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f23, 0(x2) # load 0xfeedbee57fc00000 from memory into f23
la x2, scratch
li x3, 0x265a1017de41c1a4 # load x3 with value 0x265a1017de41c1a4
sd x3, 0(x2) # store 0x265a1017de41c1a4 in memory
fld f21, 0(x2) # load 0x265a1017de41c1a4 from memory into f21
la x2, scratch
li x3, 0x8135c6982f0dab05 # load x3 with value 0x8135c6982f0dab05
sd x3, 0(x2) # store 0x8135c6982f0dab05 in memory
fld f19, 0(x2) # load 0x8135c6982f0dab05 from memory into f19
fnmadd.s f18, f23, f21, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f6, 0(x2) # load 0xffc0deff7fffffff from memory into f6
la x2, scratch
li x3, 0x5d1c2b3236170e4d # load x3 with value 0x5d1c2b3236170e4d
sd x3, 0(x2) # store 0x5d1c2b3236170e4d in memory
fld f27, 0(x2) # load 0x5d1c2b3236170e4d from memory into f27
la x2, scratch
li x3, 0x217d97f0fb1f5472 # load x3 with value 0x217d97f0fb1f5472
sd x3, 0(x2) # store 0x217d97f0fb1f5472 in memory
fld f31, 0(x2) # load 0x217d97f0fb1f5472 from memory into f31
fnmadd.s f30, f6, f27, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f29, 0(x2) # load 0xfeffffff7f800001 from memory into f29
la x2, scratch
li x3, 0x0f610e72ec753b10 # load x3 with value 0x0f610e72ec753b10
sd x3, 0(x2) # store 0x0f610e72ec753b10 in memory
fld f9, 0(x2) # load 0x0f610e72ec753b10 from memory into f9
la x2, scratch
li x3, 0xabd003faa7d831b1 # load x3 with value 0xabd003faa7d831b1
sd x3, 0(x2) # store 0xabd003faa7d831b1 in memory
fld f7, 0(x2) # load 0xabd003faa7d831b1 from memory into f7
fnmadd.s f3, f29, f9, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f5, 0(x2) # load 0xfffffeff7fbfffff from memory into f5
la x2, scratch
li x3, 0xad11b3ee1b15c2fd # load x3 with value 0xad11b3ee1b15c2fd
sd x3, 0(x2) # store 0xad11b3ee1b15c2fd in memory
fld f25, 0(x2) # load 0xad11b3ee1b15c2fd from memory into f25
la x2, scratch
li x3, 0xef87c3de1a93d2b6 # load x3 with value 0xef87c3de1a93d2b6
sd x3, 0(x2) # store 0xef87c3de1a93d2b6 in memory
fld f27, 0(x2) # load 0xef87c3de1a93d2b6 from memory into f27
fnmadd.s f10, f5, f25, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x3a6463f1f141733c # load x3 with value 0x3a6463f1f141733c
sd x3, 0(x2) # store 0x3a6463f1f141733c in memory
fld f28, 0(x2) # load 0x3a6463f1f141733c from memory into f28
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f25, 0(x2) # load 0xffffefff00000000 from memory into f25
la x2, scratch
li x3, 0xd786d2a34bba0288 # load x3 with value 0xd786d2a34bba0288
sd x3, 0(x2) # store 0xd786d2a34bba0288 in memory
fld f12, 0(x2) # load 0xd786d2a34bba0288 from memory into f12
fnmadd.s f1, f28, f25, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x3962d393302a5153 # load x3 with value 0x3962d393302a5153
sd x3, 0(x2) # store 0x3962d393302a5153 in memory
fld f21, 0(x2) # load 0x3962d393302a5153 from memory into f21
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f20, 0(x2) # load 0xaaaaaaaa80000000 from memory into f20
la x2, scratch
li x3, 0xeb0b04679a4cc485 # load x3 with value 0xeb0b04679a4cc485
sd x3, 0(x2) # store 0xeb0b04679a4cc485 in memory
fld f23, 0(x2) # load 0xeb0b04679a4cc485 from memory into f23
fnmadd.s f18, f21, f20, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x910d8df2b10923bf # load x3 with value 0x910d8df2b10923bf
sd x3, 0(x2) # store 0x910d8df2b10923bf in memory
fld f26, 0(x2) # load 0x910d8df2b10923bf from memory into f26
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f17, 0(x2) # load 0x000000003f800000 from memory into f17
la x2, scratch
li x3, 0xab193f1532a395f9 # load x3 with value 0xab193f1532a395f9
sd x3, 0(x2) # store 0xab193f1532a395f9 in memory
fld f18, 0(x2) # load 0xab193f1532a395f9 from memory into f18
fnmadd.s f8, f26, f17, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x5c4cf9eebb11e8c7 # load x3 with value 0x5c4cf9eebb11e8c7
sd x3, 0(x2) # store 0x5c4cf9eebb11e8c7 in memory
fld f9, 0(x2) # load 0x5c4cf9eebb11e8c7 from memory into f9
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f10, 0(x2) # load 0xdeadbeefbf800000 from memory into f10
la x2, scratch
li x3, 0x476cb79e4ccb64af # load x3 with value 0x476cb79e4ccb64af
sd x3, 0(x2) # store 0x476cb79e4ccb64af in memory
fld f29, 0(x2) # load 0x476cb79e4ccb64af from memory into f29
fnmadd.s f17, f9, f10, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x25e35b70d2bd6d5e # load x3 with value 0x25e35b70d2bd6d5e
sd x3, 0(x2) # store 0x25e35b70d2bd6d5e in memory
fld f26, 0(x2) # load 0x25e35b70d2bd6d5e from memory into f26
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f17, 0(x2) # load 0xa1b2c3d400800000 from memory into f17
la x2, scratch
li x3, 0x41846335ab53a0cf # load x3 with value 0x41846335ab53a0cf
sd x3, 0(x2) # store 0x41846335ab53a0cf in memory
fld f20, 0(x2) # load 0x41846335ab53a0cf from memory into f20
fnmadd.s f8, f26, f17, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xe2d4e94c6acc1cea # load x3 with value 0xe2d4e94c6acc1cea
sd x3, 0(x2) # store 0xe2d4e94c6acc1cea in memory
fld f30, 0(x2) # load 0xe2d4e94c6acc1cea from memory into f30
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f31, 0(x2) # load 0xffffffef80800000 from memory into f31
la x2, scratch
li x3, 0x6a695c4b4390bb3a # load x3 with value 0x6a695c4b4390bb3a
sd x3, 0(x2) # store 0x6a695c4b4390bb3a in memory
fld f18, 0(x2) # load 0x6a695c4b4390bb3a from memory into f18
fnmadd.s f23, f30, f31, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x58c05077e23542aa # load x3 with value 0x58c05077e23542aa
sd x3, 0(x2) # store 0x58c05077e23542aa in memory
fld f18, 0(x2) # load 0x58c05077e23542aa from memory into f18
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f5, 0(x2) # load 0xfeffffef7f7fffff from memory into f5
la x2, scratch
li x3, 0x7aea846a96bb331a # load x3 with value 0x7aea846a96bb331a
sd x3, 0(x2) # store 0x7aea846a96bb331a in memory
fld f22, 0(x2) # load 0x7aea846a96bb331a from memory into f22
fnmadd.s f28, f18, f5, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x23d566ad9a697010 # load x3 with value 0x23d566ad9a697010
sd x3, 0(x2) # store 0x23d566ad9a697010 in memory
fld f3, 0(x2) # load 0x23d566ad9a697010 from memory into f3
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f8, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f8
la x2, scratch
li x3, 0x6dea0ad249e20736 # load x3 with value 0x6dea0ad249e20736
sd x3, 0(x2) # store 0x6dea0ad249e20736 in memory
fld f7, 0(x2) # load 0x6dea0ad249e20736 from memory into f7
fnmadd.s f19, f3, f8, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x611f53af4d6759d4 # load x3 with value 0x611f53af4d6759d4
sd x3, 0(x2) # store 0x611f53af4d6759d4 in memory
fld f24, 0(x2) # load 0x611f53af4d6759d4 from memory into f24
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f17, 0(x2) # load 0x7fffffff7f800000 from memory into f17
la x2, scratch
li x3, 0x9a0aad600c400514 # load x3 with value 0x9a0aad600c400514
sd x3, 0(x2) # store 0x9a0aad600c400514 in memory
fld f20, 0(x2) # load 0x9a0aad600c400514 from memory into f20
fnmadd.s f28, f24, f17, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xdb20ce68c760181f # load x3 with value 0xdb20ce68c760181f
sd x3, 0(x2) # store 0xdb20ce68c760181f in memory
fld f18, 0(x2) # load 0xdb20ce68c760181f from memory into f18
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f13, 0(x2) # load 0xfffffffeff800000 from memory into f13
la x2, scratch
li x3, 0x66b14e64391a0138 # load x3 with value 0x66b14e64391a0138
sd x3, 0(x2) # store 0x66b14e64391a0138 in memory
fld f16, 0(x2) # load 0x66b14e64391a0138 from memory into f16
fnmadd.s f20, f18, f13, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x44f0e0c79e9585a1 # load x3 with value 0x44f0e0c79e9585a1
sd x3, 0(x2) # store 0x44f0e0c79e9585a1 in memory
fld f30, 0(x2) # load 0x44f0e0c79e9585a1 from memory into f30
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f9, 0(x2) # load 0xfeedbee57fc00000 from memory into f9
la x2, scratch
li x3, 0x990a1d3bbf5a5b16 # load x3 with value 0x990a1d3bbf5a5b16
sd x3, 0(x2) # store 0x990a1d3bbf5a5b16 in memory
fld f8, 0(x2) # load 0x990a1d3bbf5a5b16 from memory into f8
fnmadd.s f19, f30, f9, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x12c1596c5e662369 # load x3 with value 0x12c1596c5e662369
sd x3, 0(x2) # store 0x12c1596c5e662369 in memory
fld f31, 0(x2) # load 0x12c1596c5e662369 from memory into f31
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f17, 0(x2) # load 0xffc0deff7fffffff from memory into f17
la x2, scratch
li x3, 0x04f646e3af8761e0 # load x3 with value 0x04f646e3af8761e0
sd x3, 0(x2) # store 0x04f646e3af8761e0 in memory
fld f15, 0(x2) # load 0x04f646e3af8761e0 from memory into f15
fnmadd.s f11, f31, f17, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xe916debf88cfbb95 # load x3 with value 0xe916debf88cfbb95
sd x3, 0(x2) # store 0xe916debf88cfbb95 in memory
fld f16, 0(x2) # load 0xe916debf88cfbb95 from memory into f16
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f29, 0(x2) # load 0xfeffffff7f800001 from memory into f29
la x2, scratch
li x3, 0xaf3eab856b740990 # load x3 with value 0xaf3eab856b740990
sd x3, 0(x2) # store 0xaf3eab856b740990 in memory
fld f11, 0(x2) # load 0xaf3eab856b740990 from memory into f11
fnmadd.s f13, f16, f29, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x3c02c682a069243b # load x3 with value 0x3c02c682a069243b
sd x3, 0(x2) # store 0x3c02c682a069243b in memory
fld f14, 0(x2) # load 0x3c02c682a069243b from memory into f14
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f6, 0(x2) # load 0xfffffeff7fbfffff from memory into f6
la x2, scratch
li x3, 0x9da7c26964acff0c # load x3 with value 0x9da7c26964acff0c
sd x3, 0(x2) # store 0x9da7c26964acff0c in memory
fld f30, 0(x2) # load 0x9da7c26964acff0c from memory into f30
fnmadd.s f17, f14, f6, f30 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xaf8aa5e0e2bd66df # load x3 with value 0xaf8aa5e0e2bd66df
sd x3, 0(x2) # store 0xaf8aa5e0e2bd66df in memory
fld f3, 0(x2) # load 0xaf8aa5e0e2bd66df from memory into f3
la x2, scratch
li x3, 0xb707003b65a55cc9 # load x3 with value 0xb707003b65a55cc9
sd x3, 0(x2) # store 0xb707003b65a55cc9 in memory
fld f25, 0(x2) # load 0xb707003b65a55cc9 from memory into f25
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f13, 0(x2) # load 0xffffefff00000000 from memory into f13
fnmadd.s f6, f3, f25, f13 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xe55e07f7618e8ccd # load x3 with value 0xe55e07f7618e8ccd
sd x3, 0(x2) # store 0xe55e07f7618e8ccd in memory
fld f22, 0(x2) # load 0xe55e07f7618e8ccd from memory into f22
la x2, scratch
li x3, 0x70f66fbed533a4c2 # load x3 with value 0x70f66fbed533a4c2
sd x3, 0(x2) # store 0x70f66fbed533a4c2 in memory
fld f25, 0(x2) # load 0x70f66fbed533a4c2 from memory into f25
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f17, 0(x2) # load 0xaaaaaaaa80000000 from memory into f17
fnmadd.s f14, f22, f25, f17 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x3f800000)
la x2, scratch
li x3, 0xd0683ebe7f0932e0 # load x3 with value 0xd0683ebe7f0932e0
sd x3, 0(x2) # store 0xd0683ebe7f0932e0 in memory
fld f17, 0(x2) # load 0xd0683ebe7f0932e0 from memory into f17
la x2, scratch
li x3, 0xf13329eefd794a91 # load x3 with value 0xf13329eefd794a91
sd x3, 0(x2) # store 0xf13329eefd794a91 in memory
fld f26, 0(x2) # load 0xf13329eefd794a91 from memory into f26
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f19, 0(x2) # load 0x000000003f800000 from memory into f19
fnmadd.s f8, f17, f26, f19 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xf5b7810ec9b84002 # load x3 with value 0xf5b7810ec9b84002
sd x3, 0(x2) # store 0xf5b7810ec9b84002 in memory
fld f14, 0(x2) # load 0xf5b7810ec9b84002 from memory into f14
la x2, scratch
li x3, 0xa681767a03aef495 # load x3 with value 0xa681767a03aef495
sd x3, 0(x2) # store 0xa681767a03aef495 in memory
fld f27, 0(x2) # load 0xa681767a03aef495 from memory into f27
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f12, 0(x2) # load 0xdeadbeefbf800000 from memory into f12
fnmadd.s f26, f14, f27, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x0ff918dad5b15895 # load x3 with value 0x0ff918dad5b15895
sd x3, 0(x2) # store 0x0ff918dad5b15895 in memory
fld f24, 0(x2) # load 0x0ff918dad5b15895 from memory into f24
la x2, scratch
li x3, 0x3425ec914b0abafe # load x3 with value 0x3425ec914b0abafe
sd x3, 0(x2) # store 0x3425ec914b0abafe in memory
fld f19, 0(x2) # load 0x3425ec914b0abafe from memory into f19
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f6, 0(x2) # load 0xa1b2c3d400800000 from memory into f6
fnmadd.s f9, f24, f19, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x28a67736be8fcaa5 # load x3 with value 0x28a67736be8fcaa5
sd x3, 0(x2) # store 0x28a67736be8fcaa5 in memory
fld f23, 0(x2) # load 0x28a67736be8fcaa5 from memory into f23
la x2, scratch
li x3, 0x2f010e78043b7bdf # load x3 with value 0x2f010e78043b7bdf
sd x3, 0(x2) # store 0x2f010e78043b7bdf in memory
fld f8, 0(x2) # load 0x2f010e78043b7bdf from memory into f8
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f13, 0(x2) # load 0xffffffef80800000 from memory into f13
fnmadd.s f14, f23, f8, f13 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x87a2376ed1a633ad # load x3 with value 0x87a2376ed1a633ad
sd x3, 0(x2) # store 0x87a2376ed1a633ad in memory
fld f9, 0(x2) # load 0x87a2376ed1a633ad from memory into f9
la x2, scratch
li x3, 0x235558294b12a5a7 # load x3 with value 0x235558294b12a5a7
sd x3, 0(x2) # store 0x235558294b12a5a7 in memory
fld f2, 0(x2) # load 0x235558294b12a5a7 from memory into f2
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f13, 0(x2) # load 0xfeffffef7f7fffff from memory into f13
fnmadd.s f25, f9, f2, f13 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xb8c063bff79fb85d # load x3 with value 0xb8c063bff79fb85d
sd x3, 0(x2) # store 0xb8c063bff79fb85d in memory
fld f20, 0(x2) # load 0xb8c063bff79fb85d from memory into f20
la x2, scratch
li x3, 0x4b5d780140e09923 # load x3 with value 0x4b5d780140e09923
sd x3, 0(x2) # store 0x4b5d780140e09923 in memory
fld f2, 0(x2) # load 0x4b5d780140e09923 from memory into f2
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f31, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f31
fnmadd.s f16, f20, f2, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x224f805b81e9f5fe # load x3 with value 0x224f805b81e9f5fe
sd x3, 0(x2) # store 0x224f805b81e9f5fe in memory
fld f10, 0(x2) # load 0x224f805b81e9f5fe from memory into f10
la x2, scratch
li x3, 0xbe55cb05062e2833 # load x3 with value 0xbe55cb05062e2833
sd x3, 0(x2) # store 0xbe55cb05062e2833 in memory
fld f11, 0(x2) # load 0xbe55cb05062e2833 from memory into f11
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f28, 0(x2) # load 0x7fffffff7f800000 from memory into f28
fnmadd.s f29, f10, f11, f28 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x17007f6e25cb1446 # load x3 with value 0x17007f6e25cb1446
sd x3, 0(x2) # store 0x17007f6e25cb1446 in memory
fld f19, 0(x2) # load 0x17007f6e25cb1446 from memory into f19
la x2, scratch
li x3, 0x3a994e060f3248c1 # load x3 with value 0x3a994e060f3248c1
sd x3, 0(x2) # store 0x3a994e060f3248c1 in memory
fld f14, 0(x2) # load 0x3a994e060f3248c1 from memory into f14
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f2, 0(x2) # load 0xfffffffeff800000 from memory into f2
fnmadd.s f31, f19, f14, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x73010ca85feb983e # load x3 with value 0x73010ca85feb983e
sd x3, 0(x2) # store 0x73010ca85feb983e in memory
fld f15, 0(x2) # load 0x73010ca85feb983e from memory into f15
la x2, scratch
li x3, 0x5128ab3479d2a2e4 # load x3 with value 0x5128ab3479d2a2e4
sd x3, 0(x2) # store 0x5128ab3479d2a2e4 in memory
fld f27, 0(x2) # load 0x5128ab3479d2a2e4 from memory into f27
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f18, 0(x2) # load 0xfeedbee57fc00000 from memory into f18
fnmadd.s f8, f15, f27, f18 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xcf115489eaca164f # load x3 with value 0xcf115489eaca164f
sd x3, 0(x2) # store 0xcf115489eaca164f in memory
fld f16, 0(x2) # load 0xcf115489eaca164f from memory into f16
la x2, scratch
li x3, 0xa2b14b2786c59763 # load x3 with value 0xa2b14b2786c59763
sd x3, 0(x2) # store 0xa2b14b2786c59763 in memory
fld f24, 0(x2) # load 0xa2b14b2786c59763 from memory into f24
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f18, 0(x2) # load 0xffc0deff7fffffff from memory into f18
fnmadd.s f17, f16, f24, f18 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x6e4b28c5c90631e3 # load x3 with value 0x6e4b28c5c90631e3
sd x3, 0(x2) # store 0x6e4b28c5c90631e3 in memory
fld f25, 0(x2) # load 0x6e4b28c5c90631e3 from memory into f25
la x2, scratch
li x3, 0xde18209a2bd5efad # load x3 with value 0xde18209a2bd5efad
sd x3, 0(x2) # store 0xde18209a2bd5efad in memory
fld f5, 0(x2) # load 0xde18209a2bd5efad from memory into f5
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f17, 0(x2) # load 0xfeffffff7f800001 from memory into f17
fnmadd.s f7, f25, f5, f17 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xfd3e7f3a283a5f58 # load x3 with value 0xfd3e7f3a283a5f58
sd x3, 0(x2) # store 0xfd3e7f3a283a5f58 in memory
fld f19, 0(x2) # load 0xfd3e7f3a283a5f58 from memory into f19
la x2, scratch
li x3, 0xb870278f39c38e07 # load x3 with value 0xb870278f39c38e07
sd x3, 0(x2) # store 0xb870278f39c38e07 in memory
fld f18, 0(x2) # load 0xb870278f39c38e07 from memory into f18
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f16, 0(x2) # load 0xfffffeff7fbfffff from memory into f16
fnmadd.s f31, f19, f18, f16 # perform operation

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
