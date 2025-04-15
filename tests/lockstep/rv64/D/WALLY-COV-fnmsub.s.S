///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fnmsub.s.S
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
li x3, 0xf15629517ca83490 # load x3 with value 0xf15629517ca83490
sd x3, 0(x2) # store 0xf15629517ca83490 in memory
flw f16, 0(x2) # load 0xf15629517ca83490 from memory into f16
la x2, scratch
li x3, 0x67aaea84e7b8ef22 # load x3 with value 0x67aaea84e7b8ef22
sd x3, 0(x2) # store 0x67aaea84e7b8ef22 in memory
flw f20, 0(x2) # load 0x67aaea84e7b8ef22 from memory into f20
la x2, scratch
li x3, 0x65aa55ac281a98e8 # load x3 with value 0x65aa55ac281a98e8
sd x3, 0(x2) # store 0x65aa55ac281a98e8 in memory
flw f10, 0(x2) # load 0x65aa55ac281a98e8 from memory into f10
fnmsub.s f8, f16, f20, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f18, 0(x2) # load 0xffffefff00000000 from memory into f18
la x2, scratch
li x3, 0x1f6575166c709086 # load x3 with value 0x1f6575166c709086
sd x3, 0(x2) # store 0x1f6575166c709086 in memory
fld f22, 0(x2) # load 0x1f6575166c709086 from memory into f22
la x2, scratch
li x3, 0xc9540b9301651839 # load x3 with value 0xc9540b9301651839
sd x3, 0(x2) # store 0xc9540b9301651839 in memory
fld f31, 0(x2) # load 0xc9540b9301651839 from memory into f31
fnmsub.s f24, f18, f22, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f3, 0(x2) # load 0xaaaaaaaa80000000 from memory into f3
la x2, scratch
li x3, 0xd1632ad0c18634b6 # load x3 with value 0xd1632ad0c18634b6
sd x3, 0(x2) # store 0xd1632ad0c18634b6 in memory
fld f20, 0(x2) # load 0xd1632ad0c18634b6 from memory into f20
la x2, scratch
li x3, 0x2fc68c0487ffc063 # load x3 with value 0x2fc68c0487ffc063
sd x3, 0(x2) # store 0x2fc68c0487ffc063 in memory
fld f12, 0(x2) # load 0x2fc68c0487ffc063 from memory into f12
fnmsub.s f25, f3, f20, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f23, 0(x2) # load 0x000000003f800000 from memory into f23
la x2, scratch
li x3, 0x4f2444de9c30ea50 # load x3 with value 0x4f2444de9c30ea50
sd x3, 0(x2) # store 0x4f2444de9c30ea50 in memory
fld f16, 0(x2) # load 0x4f2444de9c30ea50 from memory into f16
la x2, scratch
li x3, 0x88baf9440d401cad # load x3 with value 0x88baf9440d401cad
sd x3, 0(x2) # store 0x88baf9440d401cad in memory
fld f28, 0(x2) # load 0x88baf9440d401cad from memory into f28
fnmsub.s f21, f23, f16, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f24, 0(x2) # load 0xdeadbeefbf800000 from memory into f24
la x2, scratch
li x3, 0xb0ab0c1593e002a0 # load x3 with value 0xb0ab0c1593e002a0
sd x3, 0(x2) # store 0xb0ab0c1593e002a0 in memory
fld f18, 0(x2) # load 0xb0ab0c1593e002a0 from memory into f18
la x2, scratch
li x3, 0x7395b0a413de35d1 # load x3 with value 0x7395b0a413de35d1
sd x3, 0(x2) # store 0x7395b0a413de35d1 in memory
fld f8, 0(x2) # load 0x7395b0a413de35d1 from memory into f8
fnmsub.s f13, f24, f18, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f17, 0(x2) # load 0xa1b2c3d400800000 from memory into f17
la x2, scratch
li x3, 0x0a37614acf9611df # load x3 with value 0x0a37614acf9611df
sd x3, 0(x2) # store 0x0a37614acf9611df in memory
fld f11, 0(x2) # load 0x0a37614acf9611df from memory into f11
la x2, scratch
li x3, 0x92a84c3d46747a61 # load x3 with value 0x92a84c3d46747a61
sd x3, 0(x2) # store 0x92a84c3d46747a61 in memory
fld f12, 0(x2) # load 0x92a84c3d46747a61 from memory into f12
fnmsub.s f5, f17, f11, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f21, 0(x2) # load 0xffffffef80800000 from memory into f21
la x2, scratch
li x3, 0x7aa664090dacb967 # load x3 with value 0x7aa664090dacb967
sd x3, 0(x2) # store 0x7aa664090dacb967 in memory
fld f11, 0(x2) # load 0x7aa664090dacb967 from memory into f11
la x2, scratch
li x3, 0x6dbfb3cf96948a3b # load x3 with value 0x6dbfb3cf96948a3b
sd x3, 0(x2) # store 0x6dbfb3cf96948a3b in memory
fld f8, 0(x2) # load 0x6dbfb3cf96948a3b from memory into f8
fnmsub.s f9, f21, f11, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f26, 0(x2) # load 0xfeffffef7f7fffff from memory into f26
la x2, scratch
li x3, 0xec98dac412e5f151 # load x3 with value 0xec98dac412e5f151
sd x3, 0(x2) # store 0xec98dac412e5f151 in memory
fld f11, 0(x2) # load 0xec98dac412e5f151 from memory into f11
la x2, scratch
li x3, 0x84b8a6c3d0dc37ad # load x3 with value 0x84b8a6c3d0dc37ad
sd x3, 0(x2) # store 0x84b8a6c3d0dc37ad in memory
fld f9, 0(x2) # load 0x84b8a6c3d0dc37ad from memory into f9
fnmsub.s f29, f26, f11, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f6, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f6
la x2, scratch
li x3, 0xc2da048a9b28fd70 # load x3 with value 0xc2da048a9b28fd70
sd x3, 0(x2) # store 0xc2da048a9b28fd70 in memory
fld f10, 0(x2) # load 0xc2da048a9b28fd70 from memory into f10
la x2, scratch
li x3, 0x9239bc8ca744fa35 # load x3 with value 0x9239bc8ca744fa35
sd x3, 0(x2) # store 0x9239bc8ca744fa35 in memory
fld f22, 0(x2) # load 0x9239bc8ca744fa35 from memory into f22
fnmsub.s f23, f6, f10, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f31, 0(x2) # load 0x7fffffff7f800000 from memory into f31
la x2, scratch
li x3, 0x48f423afee1a4503 # load x3 with value 0x48f423afee1a4503
sd x3, 0(x2) # store 0x48f423afee1a4503 in memory
fld f19, 0(x2) # load 0x48f423afee1a4503 from memory into f19
la x2, scratch
li x3, 0xde413078c5944a9a # load x3 with value 0xde413078c5944a9a
sd x3, 0(x2) # store 0xde413078c5944a9a in memory
fld f17, 0(x2) # load 0xde413078c5944a9a from memory into f17
fnmsub.s f30, f31, f19, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f16, 0(x2) # load 0xfffffffeff800000 from memory into f16
la x2, scratch
li x3, 0x9440638044304df0 # load x3 with value 0x9440638044304df0
sd x3, 0(x2) # store 0x9440638044304df0 in memory
fld f3, 0(x2) # load 0x9440638044304df0 from memory into f3
la x2, scratch
li x3, 0xb75c2017a2e983fd # load x3 with value 0xb75c2017a2e983fd
sd x3, 0(x2) # store 0xb75c2017a2e983fd in memory
fld f6, 0(x2) # load 0xb75c2017a2e983fd from memory into f6
fnmsub.s f24, f16, f3, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f31, 0(x2) # load 0xfeedbee57fc00000 from memory into f31
la x2, scratch
li x3, 0xbdbb91512384a973 # load x3 with value 0xbdbb91512384a973
sd x3, 0(x2) # store 0xbdbb91512384a973 in memory
fld f12, 0(x2) # load 0xbdbb91512384a973 from memory into f12
la x2, scratch
li x3, 0xa53a6991a279d470 # load x3 with value 0xa53a6991a279d470
sd x3, 0(x2) # store 0xa53a6991a279d470 in memory
fld f21, 0(x2) # load 0xa53a6991a279d470 from memory into f21
fnmsub.s f6, f31, f12, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f8, 0(x2) # load 0xffc0deff7fffffff from memory into f8
la x2, scratch
li x3, 0xb78b9d3aa64c8a7c # load x3 with value 0xb78b9d3aa64c8a7c
sd x3, 0(x2) # store 0xb78b9d3aa64c8a7c in memory
fld f13, 0(x2) # load 0xb78b9d3aa64c8a7c from memory into f13
la x2, scratch
li x3, 0xd6ff8feb17567052 # load x3 with value 0xd6ff8feb17567052
sd x3, 0(x2) # store 0xd6ff8feb17567052 in memory
fld f7, 0(x2) # load 0xd6ff8feb17567052 from memory into f7
fnmsub.s f14, f8, f13, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f8, 0(x2) # load 0xfeffffff7f800001 from memory into f8
la x2, scratch
li x3, 0x72493d9e6755627d # load x3 with value 0x72493d9e6755627d
sd x3, 0(x2) # store 0x72493d9e6755627d in memory
fld f12, 0(x2) # load 0x72493d9e6755627d from memory into f12
la x2, scratch
li x3, 0xa0c6382738e5419b # load x3 with value 0xa0c6382738e5419b
sd x3, 0(x2) # store 0xa0c6382738e5419b in memory
fld f23, 0(x2) # load 0xa0c6382738e5419b from memory into f23
fnmsub.s f5, f8, f12, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f3, 0(x2) # load 0xfffffeff7fbfffff from memory into f3
la x2, scratch
li x3, 0xf2c5eac723ea5b19 # load x3 with value 0xf2c5eac723ea5b19
sd x3, 0(x2) # store 0xf2c5eac723ea5b19 in memory
fld f10, 0(x2) # load 0xf2c5eac723ea5b19 from memory into f10
la x2, scratch
li x3, 0x1427760f91e410a4 # load x3 with value 0x1427760f91e410a4
sd x3, 0(x2) # store 0x1427760f91e410a4 in memory
fld f5, 0(x2) # load 0x1427760f91e410a4 from memory into f5
fnmsub.s f6, f3, f10, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x071d53c79eebc724 # load x3 with value 0x071d53c79eebc724
sd x3, 0(x2) # store 0x071d53c79eebc724 in memory
fld f17, 0(x2) # load 0x071d53c79eebc724 from memory into f17
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f28, 0(x2) # load 0xffffefff00000000 from memory into f28
la x2, scratch
li x3, 0xd1b24d28c980283b # load x3 with value 0xd1b24d28c980283b
sd x3, 0(x2) # store 0xd1b24d28c980283b in memory
fld f7, 0(x2) # load 0xd1b24d28c980283b from memory into f7
fnmsub.s f24, f17, f28, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xd8a05b76f0c90698 # load x3 with value 0xd8a05b76f0c90698
sd x3, 0(x2) # store 0xd8a05b76f0c90698 in memory
fld f15, 0(x2) # load 0xd8a05b76f0c90698 from memory into f15
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f18, 0(x2) # load 0xaaaaaaaa80000000 from memory into f18
la x2, scratch
li x3, 0xe6aa1cb502c8c9df # load x3 with value 0xe6aa1cb502c8c9df
sd x3, 0(x2) # store 0xe6aa1cb502c8c9df in memory
fld f28, 0(x2) # load 0xe6aa1cb502c8c9df from memory into f28
fnmsub.s f12, f15, f18, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x49b7558644a80ccc # load x3 with value 0x49b7558644a80ccc
sd x3, 0(x2) # store 0x49b7558644a80ccc in memory
fld f5, 0(x2) # load 0x49b7558644a80ccc from memory into f5
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f16, 0(x2) # load 0x000000003f800000 from memory into f16
la x2, scratch
li x3, 0xb36daa5fc5fa862c # load x3 with value 0xb36daa5fc5fa862c
sd x3, 0(x2) # store 0xb36daa5fc5fa862c in memory
fld f15, 0(x2) # load 0xb36daa5fc5fa862c from memory into f15
fnmsub.s f27, f5, f16, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xb3029499de894d80 # load x3 with value 0xb3029499de894d80
sd x3, 0(x2) # store 0xb3029499de894d80 in memory
fld f29, 0(x2) # load 0xb3029499de894d80 from memory into f29
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f23, 0(x2) # load 0xdeadbeefbf800000 from memory into f23
la x2, scratch
li x3, 0x993492a829d2c535 # load x3 with value 0x993492a829d2c535
sd x3, 0(x2) # store 0x993492a829d2c535 in memory
fld f26, 0(x2) # load 0x993492a829d2c535 from memory into f26
fnmsub.s f25, f29, f23, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xb7552f2538c26891 # load x3 with value 0xb7552f2538c26891
sd x3, 0(x2) # store 0xb7552f2538c26891 in memory
fld f12, 0(x2) # load 0xb7552f2538c26891 from memory into f12
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f17, 0(x2) # load 0xa1b2c3d400800000 from memory into f17
la x2, scratch
li x3, 0x1769b46bd673ffa2 # load x3 with value 0x1769b46bd673ffa2
sd x3, 0(x2) # store 0x1769b46bd673ffa2 in memory
fld f30, 0(x2) # load 0x1769b46bd673ffa2 from memory into f30
fnmsub.s f7, f12, f17, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x22506786e2aff0d3 # load x3 with value 0x22506786e2aff0d3
sd x3, 0(x2) # store 0x22506786e2aff0d3 in memory
fld f30, 0(x2) # load 0x22506786e2aff0d3 from memory into f30
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f15, 0(x2) # load 0xffffffef80800000 from memory into f15
la x2, scratch
li x3, 0x7bd6a229a97dd388 # load x3 with value 0x7bd6a229a97dd388
sd x3, 0(x2) # store 0x7bd6a229a97dd388 in memory
fld f26, 0(x2) # load 0x7bd6a229a97dd388 from memory into f26
fnmsub.s f16, f30, f15, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x11ee50b7f2f8ea11 # load x3 with value 0x11ee50b7f2f8ea11
sd x3, 0(x2) # store 0x11ee50b7f2f8ea11 in memory
fld f28, 0(x2) # load 0x11ee50b7f2f8ea11 from memory into f28
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f1, 0(x2) # load 0xfeffffef7f7fffff from memory into f1
la x2, scratch
li x3, 0xf87267854b87ea71 # load x3 with value 0xf87267854b87ea71
sd x3, 0(x2) # store 0xf87267854b87ea71 in memory
fld f17, 0(x2) # load 0xf87267854b87ea71 from memory into f17
fnmsub.s f6, f28, f1, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xb0ea2ffc8b804212 # load x3 with value 0xb0ea2ffc8b804212
sd x3, 0(x2) # store 0xb0ea2ffc8b804212 in memory
fld f9, 0(x2) # load 0xb0ea2ffc8b804212 from memory into f9
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f24, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f24
la x2, scratch
li x3, 0x91f9f308b472aadc # load x3 with value 0x91f9f308b472aadc
sd x3, 0(x2) # store 0x91f9f308b472aadc in memory
fld f11, 0(x2) # load 0x91f9f308b472aadc from memory into f11
fnmsub.s f2, f9, f24, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x8b928bb8477cbb0c # load x3 with value 0x8b928bb8477cbb0c
sd x3, 0(x2) # store 0x8b928bb8477cbb0c in memory
fld f26, 0(x2) # load 0x8b928bb8477cbb0c from memory into f26
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f10, 0(x2) # load 0x7fffffff7f800000 from memory into f10
la x2, scratch
li x3, 0x0c398c564716b5c0 # load x3 with value 0x0c398c564716b5c0
sd x3, 0(x2) # store 0x0c398c564716b5c0 in memory
fld f24, 0(x2) # load 0x0c398c564716b5c0 from memory into f24
fnmsub.s f30, f26, f10, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x2911d27b6eac34fd # load x3 with value 0x2911d27b6eac34fd
sd x3, 0(x2) # store 0x2911d27b6eac34fd in memory
fld f24, 0(x2) # load 0x2911d27b6eac34fd from memory into f24
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f25, 0(x2) # load 0xfffffffeff800000 from memory into f25
la x2, scratch
li x3, 0x2da6e81fab87b731 # load x3 with value 0x2da6e81fab87b731
sd x3, 0(x2) # store 0x2da6e81fab87b731 in memory
fld f29, 0(x2) # load 0x2da6e81fab87b731 from memory into f29
fnmsub.s f9, f24, f25, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x88228974f81aa27d # load x3 with value 0x88228974f81aa27d
sd x3, 0(x2) # store 0x88228974f81aa27d in memory
fld f28, 0(x2) # load 0x88228974f81aa27d from memory into f28
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f20, 0(x2) # load 0xfeedbee57fc00000 from memory into f20
la x2, scratch
li x3, 0x815ff45b9633e7e9 # load x3 with value 0x815ff45b9633e7e9
sd x3, 0(x2) # store 0x815ff45b9633e7e9 in memory
fld f21, 0(x2) # load 0x815ff45b9633e7e9 from memory into f21
fnmsub.s f30, f28, f20, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xdbf7b85fc12a60da # load x3 with value 0xdbf7b85fc12a60da
sd x3, 0(x2) # store 0xdbf7b85fc12a60da in memory
fld f10, 0(x2) # load 0xdbf7b85fc12a60da from memory into f10
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f17, 0(x2) # load 0xffc0deff7fffffff from memory into f17
la x2, scratch
li x3, 0xcf06747c91eea4f4 # load x3 with value 0xcf06747c91eea4f4
sd x3, 0(x2) # store 0xcf06747c91eea4f4 in memory
fld f6, 0(x2) # load 0xcf06747c91eea4f4 from memory into f6
fnmsub.s f2, f10, f17, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x525bc5faf5e6bf99 # load x3 with value 0x525bc5faf5e6bf99
sd x3, 0(x2) # store 0x525bc5faf5e6bf99 in memory
fld f17, 0(x2) # load 0x525bc5faf5e6bf99 from memory into f17
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f25, 0(x2) # load 0xfeffffff7f800001 from memory into f25
la x2, scratch
li x3, 0xf2106d1a3a29acd0 # load x3 with value 0xf2106d1a3a29acd0
sd x3, 0(x2) # store 0xf2106d1a3a29acd0 in memory
fld f29, 0(x2) # load 0xf2106d1a3a29acd0 from memory into f29
fnmsub.s f2, f17, f25, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xcdecb06d60be4969 # load x3 with value 0xcdecb06d60be4969
sd x3, 0(x2) # store 0xcdecb06d60be4969 in memory
fld f17, 0(x2) # load 0xcdecb06d60be4969 from memory into f17
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f29, 0(x2) # load 0xfffffeff7fbfffff from memory into f29
la x2, scratch
li x3, 0x80fcff12d7c96242 # load x3 with value 0x80fcff12d7c96242
sd x3, 0(x2) # store 0x80fcff12d7c96242 in memory
fld f3, 0(x2) # load 0x80fcff12d7c96242 from memory into f3
fnmsub.s f21, f17, f29, f3 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x2cac04fd3c4a773c # load x3 with value 0x2cac04fd3c4a773c
sd x3, 0(x2) # store 0x2cac04fd3c4a773c in memory
fld f26, 0(x2) # load 0x2cac04fd3c4a773c from memory into f26
la x2, scratch
li x3, 0xb2077de8a8a74d80 # load x3 with value 0xb2077de8a8a74d80
sd x3, 0(x2) # store 0xb2077de8a8a74d80 in memory
fld f28, 0(x2) # load 0xb2077de8a8a74d80 from memory into f28
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f20, 0(x2) # load 0xffffefff00000000 from memory into f20
fnmsub.s f3, f26, f28, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x92a4da59fb43b677 # load x3 with value 0x92a4da59fb43b677
sd x3, 0(x2) # store 0x92a4da59fb43b677 in memory
fld f5, 0(x2) # load 0x92a4da59fb43b677 from memory into f5
la x2, scratch
li x3, 0xe494ec9156360307 # load x3 with value 0xe494ec9156360307
sd x3, 0(x2) # store 0xe494ec9156360307 in memory
fld f19, 0(x2) # load 0xe494ec9156360307 from memory into f19
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f9, 0(x2) # load 0xaaaaaaaa80000000 from memory into f9
fnmsub.s f21, f5, f19, f9 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x3f800000)
la x2, scratch
li x3, 0x97f2cdf15f8f0225 # load x3 with value 0x97f2cdf15f8f0225
sd x3, 0(x2) # store 0x97f2cdf15f8f0225 in memory
fld f10, 0(x2) # load 0x97f2cdf15f8f0225 from memory into f10
la x2, scratch
li x3, 0x866553b5a22837c7 # load x3 with value 0x866553b5a22837c7
sd x3, 0(x2) # store 0x866553b5a22837c7 in memory
fld f19, 0(x2) # load 0x866553b5a22837c7 from memory into f19
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f14, 0(x2) # load 0x000000003f800000 from memory into f14
fnmsub.s f1, f10, f19, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xe64fdc41cc98ca6d # load x3 with value 0xe64fdc41cc98ca6d
sd x3, 0(x2) # store 0xe64fdc41cc98ca6d in memory
fld f5, 0(x2) # load 0xe64fdc41cc98ca6d from memory into f5
la x2, scratch
li x3, 0xa7dbba7fc3bc9ef9 # load x3 with value 0xa7dbba7fc3bc9ef9
sd x3, 0(x2) # store 0xa7dbba7fc3bc9ef9 in memory
fld f25, 0(x2) # load 0xa7dbba7fc3bc9ef9 from memory into f25
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f1, 0(x2) # load 0xdeadbeefbf800000 from memory into f1
fnmsub.s f28, f5, f25, f1 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x41f06cbe3a31f36e # load x3 with value 0x41f06cbe3a31f36e
sd x3, 0(x2) # store 0x41f06cbe3a31f36e in memory
fld f16, 0(x2) # load 0x41f06cbe3a31f36e from memory into f16
la x2, scratch
li x3, 0x5a9d4a98da817a38 # load x3 with value 0x5a9d4a98da817a38
sd x3, 0(x2) # store 0x5a9d4a98da817a38 in memory
fld f1, 0(x2) # load 0x5a9d4a98da817a38 from memory into f1
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f26, 0(x2) # load 0xa1b2c3d400800000 from memory into f26
fnmsub.s f15, f16, f1, f26 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x8ec7fd0b915aadf5 # load x3 with value 0x8ec7fd0b915aadf5
sd x3, 0(x2) # store 0x8ec7fd0b915aadf5 in memory
fld f20, 0(x2) # load 0x8ec7fd0b915aadf5 from memory into f20
la x2, scratch
li x3, 0x2340959376920fa1 # load x3 with value 0x2340959376920fa1
sd x3, 0(x2) # store 0x2340959376920fa1 in memory
fld f25, 0(x2) # load 0x2340959376920fa1 from memory into f25
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f13, 0(x2) # load 0xffffffef80800000 from memory into f13
fnmsub.s f15, f20, f25, f13 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xcf1bfa3e82e00ddf # load x3 with value 0xcf1bfa3e82e00ddf
sd x3, 0(x2) # store 0xcf1bfa3e82e00ddf in memory
fld f23, 0(x2) # load 0xcf1bfa3e82e00ddf from memory into f23
la x2, scratch
li x3, 0x0137c4a91ebf3d3a # load x3 with value 0x0137c4a91ebf3d3a
sd x3, 0(x2) # store 0x0137c4a91ebf3d3a in memory
fld f2, 0(x2) # load 0x0137c4a91ebf3d3a from memory into f2
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f13, 0(x2) # load 0xfeffffef7f7fffff from memory into f13
fnmsub.s f1, f23, f2, f13 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xe67f8220274c0b8f # load x3 with value 0xe67f8220274c0b8f
sd x3, 0(x2) # store 0xe67f8220274c0b8f in memory
fld f22, 0(x2) # load 0xe67f8220274c0b8f from memory into f22
la x2, scratch
li x3, 0x95e293db5fe3626f # load x3 with value 0x95e293db5fe3626f
sd x3, 0(x2) # store 0x95e293db5fe3626f in memory
fld f8, 0(x2) # load 0x95e293db5fe3626f from memory into f8
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f19, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f19
fnmsub.s f21, f22, f8, f19 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x7c5596455425450a # load x3 with value 0x7c5596455425450a
sd x3, 0(x2) # store 0x7c5596455425450a in memory
fld f23, 0(x2) # load 0x7c5596455425450a from memory into f23
la x2, scratch
li x3, 0x060523a8426b2cef # load x3 with value 0x060523a8426b2cef
sd x3, 0(x2) # store 0x060523a8426b2cef in memory
fld f29, 0(x2) # load 0x060523a8426b2cef from memory into f29
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f12, 0(x2) # load 0x7fffffff7f800000 from memory into f12
fnmsub.s f9, f23, f29, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xd7351e89d0c4bb04 # load x3 with value 0xd7351e89d0c4bb04
sd x3, 0(x2) # store 0xd7351e89d0c4bb04 in memory
fld f3, 0(x2) # load 0xd7351e89d0c4bb04 from memory into f3
la x2, scratch
li x3, 0x0659609e7c691bf6 # load x3 with value 0x0659609e7c691bf6
sd x3, 0(x2) # store 0x0659609e7c691bf6 in memory
fld f28, 0(x2) # load 0x0659609e7c691bf6 from memory into f28
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f1, 0(x2) # load 0xfffffffeff800000 from memory into f1
fnmsub.s f23, f3, f28, f1 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xbbc4d8f00841c6ff # load x3 with value 0xbbc4d8f00841c6ff
sd x3, 0(x2) # store 0xbbc4d8f00841c6ff in memory
fld f9, 0(x2) # load 0xbbc4d8f00841c6ff from memory into f9
la x2, scratch
li x3, 0x9b76f85f1775f7a7 # load x3 with value 0x9b76f85f1775f7a7
sd x3, 0(x2) # store 0x9b76f85f1775f7a7 in memory
fld f15, 0(x2) # load 0x9b76f85f1775f7a7 from memory into f15
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f19, 0(x2) # load 0xfeedbee57fc00000 from memory into f19
fnmsub.s f21, f9, f15, f19 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x97dc06ee4000b8d0 # load x3 with value 0x97dc06ee4000b8d0
sd x3, 0(x2) # store 0x97dc06ee4000b8d0 in memory
fld f20, 0(x2) # load 0x97dc06ee4000b8d0 from memory into f20
la x2, scratch
li x3, 0x8e8f63749ede1528 # load x3 with value 0x8e8f63749ede1528
sd x3, 0(x2) # store 0x8e8f63749ede1528 in memory
fld f1, 0(x2) # load 0x8e8f63749ede1528 from memory into f1
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f2, 0(x2) # load 0xffc0deff7fffffff from memory into f2
fnmsub.s f11, f20, f1, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x8932eb7d94ef57f7 # load x3 with value 0x8932eb7d94ef57f7
sd x3, 0(x2) # store 0x8932eb7d94ef57f7 in memory
fld f12, 0(x2) # load 0x8932eb7d94ef57f7 from memory into f12
la x2, scratch
li x3, 0x3299b183b99649ba # load x3 with value 0x3299b183b99649ba
sd x3, 0(x2) # store 0x3299b183b99649ba in memory
fld f9, 0(x2) # load 0x3299b183b99649ba from memory into f9
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f31, 0(x2) # load 0xfeffffff7f800001 from memory into f31
fnmsub.s f29, f12, f9, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xf66d062239cec254 # load x3 with value 0xf66d062239cec254
sd x3, 0(x2) # store 0xf66d062239cec254 in memory
fld f27, 0(x2) # load 0xf66d062239cec254 from memory into f27
la x2, scratch
li x3, 0xc6932cdaef2c7d55 # load x3 with value 0xc6932cdaef2c7d55
sd x3, 0(x2) # store 0xc6932cdaef2c7d55 in memory
fld f11, 0(x2) # load 0xc6932cdaef2c7d55 from memory into f11
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f5, 0(x2) # load 0xfffffeff7fbfffff from memory into f5
fnmsub.s f29, f27, f11, f5 # perform operation

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
