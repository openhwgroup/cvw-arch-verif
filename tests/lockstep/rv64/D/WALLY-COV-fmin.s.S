///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fmin.s.S
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
li x3, 0x214123b1c0127931 # load x3 with value 0x214123b1c0127931
sd x3, 0(x2) # store 0x214123b1c0127931 in memory
flw f31, 0(x2) # load 0x214123b1c0127931 from memory into f31
la x2, scratch
li x3, 0x54c3ad67bdeaffd3 # load x3 with value 0x54c3ad67bdeaffd3
sd x3, 0(x2) # store 0x54c3ad67bdeaffd3 in memory
flw f17, 0(x2) # load 0x54c3ad67bdeaffd3 from memory into f17
fmin.s f10, f31, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f14, 0(x2) # load 0xffffefff00000000 from memory into f14
la x2, scratch
li x3, 0x6eea3d1c2211f9fd # load x3 with value 0x6eea3d1c2211f9fd
sd x3, 0(x2) # store 0x6eea3d1c2211f9fd in memory
fld f3, 0(x2) # load 0x6eea3d1c2211f9fd from memory into f3
fmin.s f18, f14, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f24, 0(x2) # load 0xaaaaaaaa80000000 from memory into f24
la x2, scratch
li x3, 0xe7f435d20427a005 # load x3 with value 0xe7f435d20427a005
sd x3, 0(x2) # store 0xe7f435d20427a005 in memory
fld f11, 0(x2) # load 0xe7f435d20427a005 from memory into f11
fmin.s f27, f24, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f24, 0(x2) # load 0x000000003f800000 from memory into f24
la x2, scratch
li x3, 0x80f1066b160f6739 # load x3 with value 0x80f1066b160f6739
sd x3, 0(x2) # store 0x80f1066b160f6739 in memory
fld f13, 0(x2) # load 0x80f1066b160f6739 from memory into f13
fmin.s f11, f24, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f18, 0(x2) # load 0xdeadbeefbf800000 from memory into f18
la x2, scratch
li x3, 0x9692bfadef97f10c # load x3 with value 0x9692bfadef97f10c
sd x3, 0(x2) # store 0x9692bfadef97f10c in memory
fld f3, 0(x2) # load 0x9692bfadef97f10c from memory into f3
fmin.s f7, f18, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f7, 0(x2) # load 0xa1b2c3d400800000 from memory into f7
la x2, scratch
li x3, 0x1d03f652f9f65eab # load x3 with value 0x1d03f652f9f65eab
sd x3, 0(x2) # store 0x1d03f652f9f65eab in memory
fld f11, 0(x2) # load 0x1d03f652f9f65eab from memory into f11
fmin.s f8, f7, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f7, 0(x2) # load 0xffffffef80800000 from memory into f7
la x2, scratch
li x3, 0x5ab8afcb26b9f87d # load x3 with value 0x5ab8afcb26b9f87d
sd x3, 0(x2) # store 0x5ab8afcb26b9f87d in memory
fld f20, 0(x2) # load 0x5ab8afcb26b9f87d from memory into f20
fmin.s f6, f7, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f19, 0(x2) # load 0xfeffffef7f7fffff from memory into f19
la x2, scratch
li x3, 0x336536fc9a138886 # load x3 with value 0x336536fc9a138886
sd x3, 0(x2) # store 0x336536fc9a138886 in memory
fld f23, 0(x2) # load 0x336536fc9a138886 from memory into f23
fmin.s f15, f19, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f2, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f2
la x2, scratch
li x3, 0xbbb45068a57b4945 # load x3 with value 0xbbb45068a57b4945
sd x3, 0(x2) # store 0xbbb45068a57b4945 in memory
fld f22, 0(x2) # load 0xbbb45068a57b4945 from memory into f22
fmin.s f21, f2, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f19, 0(x2) # load 0x7fffffff7f800000 from memory into f19
la x2, scratch
li x3, 0x2a25dabd3b303ae7 # load x3 with value 0x2a25dabd3b303ae7
sd x3, 0(x2) # store 0x2a25dabd3b303ae7 in memory
fld f25, 0(x2) # load 0x2a25dabd3b303ae7 from memory into f25
fmin.s f14, f19, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f23, 0(x2) # load 0xfffffffeff800000 from memory into f23
la x2, scratch
li x3, 0xa8af18585bb279c5 # load x3 with value 0xa8af18585bb279c5
sd x3, 0(x2) # store 0xa8af18585bb279c5 in memory
fld f3, 0(x2) # load 0xa8af18585bb279c5 from memory into f3
fmin.s f14, f23, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f19, 0(x2) # load 0xfeedbee57fc00000 from memory into f19
la x2, scratch
li x3, 0xa436b8298540f827 # load x3 with value 0xa436b8298540f827
sd x3, 0(x2) # store 0xa436b8298540f827 in memory
fld f20, 0(x2) # load 0xa436b8298540f827 from memory into f20
fmin.s f5, f19, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f1, 0(x2) # load 0xffc0deff7fffffff from memory into f1
la x2, scratch
li x3, 0xc14df832ef7f9af0 # load x3 with value 0xc14df832ef7f9af0
sd x3, 0(x2) # store 0xc14df832ef7f9af0 in memory
fld f19, 0(x2) # load 0xc14df832ef7f9af0 from memory into f19
fmin.s f24, f1, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f14, 0(x2) # load 0xfeffffff7f800001 from memory into f14
la x2, scratch
li x3, 0x88ec88a19eaeb83e # load x3 with value 0x88ec88a19eaeb83e
sd x3, 0(x2) # store 0x88ec88a19eaeb83e in memory
fld f15, 0(x2) # load 0x88ec88a19eaeb83e from memory into f15
fmin.s f11, f14, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f14, 0(x2) # load 0xfffffeff7fbfffff from memory into f14
la x2, scratch
li x3, 0xfd89d0585152af3d # load x3 with value 0xfd89d0585152af3d
sd x3, 0(x2) # store 0xfd89d0585152af3d in memory
fld f18, 0(x2) # load 0xfd89d0585152af3d from memory into f18
fmin.s f8, f14, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x16f3d05c265b7ecd # load x3 with value 0x16f3d05c265b7ecd
sd x3, 0(x2) # store 0x16f3d05c265b7ecd in memory
fld f20, 0(x2) # load 0x16f3d05c265b7ecd from memory into f20
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
fmin.s f7, f20, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x91fb136bbe8fa73a # load x3 with value 0x91fb136bbe8fa73a
sd x3, 0(x2) # store 0x91fb136bbe8fa73a in memory
fld f14, 0(x2) # load 0x91fb136bbe8fa73a from memory into f14
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f2, 0(x2) # load 0xaaaaaaaa80000000 from memory into f2
fmin.s f16, f14, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x367a63ef462b4773 # load x3 with value 0x367a63ef462b4773
sd x3, 0(x2) # store 0x367a63ef462b4773 in memory
fld f28, 0(x2) # load 0x367a63ef462b4773 from memory into f28
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f11, 0(x2) # load 0x000000003f800000 from memory into f11
fmin.s f24, f28, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x3fef354699c58bdc # load x3 with value 0x3fef354699c58bdc
sd x3, 0(x2) # store 0x3fef354699c58bdc in memory
fld f2, 0(x2) # load 0x3fef354699c58bdc from memory into f2
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f28, 0(x2) # load 0xdeadbeefbf800000 from memory into f28
fmin.s f24, f2, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x1be97d79cb3b99b7 # load x3 with value 0x1be97d79cb3b99b7
sd x3, 0(x2) # store 0x1be97d79cb3b99b7 in memory
fld f31, 0(x2) # load 0x1be97d79cb3b99b7 from memory into f31
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f8, 0(x2) # load 0xa1b2c3d400800000 from memory into f8
fmin.s f27, f31, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xcf145b93762b6ec9 # load x3 with value 0xcf145b93762b6ec9
sd x3, 0(x2) # store 0xcf145b93762b6ec9 in memory
fld f30, 0(x2) # load 0xcf145b93762b6ec9 from memory into f30
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f31, 0(x2) # load 0xffffffef80800000 from memory into f31
fmin.s f11, f30, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xfaeca5f9f73b133a # load x3 with value 0xfaeca5f9f73b133a
sd x3, 0(x2) # store 0xfaeca5f9f73b133a in memory
fld f29, 0(x2) # load 0xfaeca5f9f73b133a from memory into f29
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f24, 0(x2) # load 0xfeffffef7f7fffff from memory into f24
fmin.s f17, f29, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xc63997080d57a04a # load x3 with value 0xc63997080d57a04a
sd x3, 0(x2) # store 0xc63997080d57a04a in memory
fld f20, 0(x2) # load 0xc63997080d57a04a from memory into f20
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f9, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f9
fmin.s f12, f20, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x0adefee47eca7624 # load x3 with value 0x0adefee47eca7624
sd x3, 0(x2) # store 0x0adefee47eca7624 in memory
fld f23, 0(x2) # load 0x0adefee47eca7624 from memory into f23
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f6, 0(x2) # load 0x7fffffff7f800000 from memory into f6
fmin.s f15, f23, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xfd7cd2604ebbf516 # load x3 with value 0xfd7cd2604ebbf516
sd x3, 0(x2) # store 0xfd7cd2604ebbf516 in memory
fld f12, 0(x2) # load 0xfd7cd2604ebbf516 from memory into f12
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f31, 0(x2) # load 0xfffffffeff800000 from memory into f31
fmin.s f10, f12, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x15bb1d7db8cef41d # load x3 with value 0x15bb1d7db8cef41d
sd x3, 0(x2) # store 0x15bb1d7db8cef41d in memory
fld f3, 0(x2) # load 0x15bb1d7db8cef41d from memory into f3
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f11, 0(x2) # load 0xfeedbee57fc00000 from memory into f11
fmin.s f26, f3, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x617948f9d846c137 # load x3 with value 0x617948f9d846c137
sd x3, 0(x2) # store 0x617948f9d846c137 in memory
fld f21, 0(x2) # load 0x617948f9d846c137 from memory into f21
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f2, 0(x2) # load 0xffc0deff7fffffff from memory into f2
fmin.s f23, f21, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x8ac69ef45fbc6ad4 # load x3 with value 0x8ac69ef45fbc6ad4
sd x3, 0(x2) # store 0x8ac69ef45fbc6ad4 in memory
fld f7, 0(x2) # load 0x8ac69ef45fbc6ad4 from memory into f7
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f24, 0(x2) # load 0xfeffffff7f800001 from memory into f24
fmin.s f14, f7, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xe0666c113000cded # load x3 with value 0xe0666c113000cded
sd x3, 0(x2) # store 0xe0666c113000cded in memory
fld f16, 0(x2) # load 0xe0666c113000cded from memory into f16
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f10, 0(x2) # load 0xfffffeff7fbfffff from memory into f10
fmin.s f18, f16, f10 # perform operation

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
