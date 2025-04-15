///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaD/WALLY-COV-fleq.s.S
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
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f6, 0(x2) # load 0xffffefff00000000 from memory into f6
la x2, scratch
li x3, 0xf1ab2e7f6251902b # load x3 with value 0xf1ab2e7f6251902b
sd x3, 0(x2) # store 0xf1ab2e7f6251902b in memory
fld f1, 0(x2) # load 0xf1ab2e7f6251902b from memory into f1
fleq.s x7, f6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f17, 0(x2) # load 0xaaaaaaaa80000000 from memory into f17
la x2, scratch
li x3, 0x8a1644e1666ef818 # load x3 with value 0x8a1644e1666ef818
sd x3, 0(x2) # store 0x8a1644e1666ef818 in memory
fld f24, 0(x2) # load 0x8a1644e1666ef818 from memory into f24
fleq.s x6, f17, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f22, 0(x2) # load 0x000000003f800000 from memory into f22
la x2, scratch
li x3, 0x74d5ac2e340e6458 # load x3 with value 0x74d5ac2e340e6458
sd x3, 0(x2) # store 0x74d5ac2e340e6458 in memory
fld f28, 0(x2) # load 0x74d5ac2e340e6458 from memory into f28
fleq.s x6, f22, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f14, 0(x2) # load 0xdeadbeefbf800000 from memory into f14
la x2, scratch
li x3, 0xca9983ba1af500c1 # load x3 with value 0xca9983ba1af500c1
sd x3, 0(x2) # store 0xca9983ba1af500c1 in memory
fld f28, 0(x2) # load 0xca9983ba1af500c1 from memory into f28
fleq.s x22, f14, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f17, 0(x2) # load 0xa1b2c3d400800000 from memory into f17
la x2, scratch
li x3, 0x92832428d99cbc0f # load x3 with value 0x92832428d99cbc0f
sd x3, 0(x2) # store 0x92832428d99cbc0f in memory
fld f8, 0(x2) # load 0x92832428d99cbc0f from memory into f8
fleq.s x11, f17, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f12, 0(x2) # load 0xffffffef80800000 from memory into f12
la x2, scratch
li x3, 0x0564ffe24b93c4ba # load x3 with value 0x0564ffe24b93c4ba
sd x3, 0(x2) # store 0x0564ffe24b93c4ba in memory
fld f31, 0(x2) # load 0x0564ffe24b93c4ba from memory into f31
fleq.s x9, f12, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f31, 0(x2) # load 0xfeffffef7f7fffff from memory into f31
la x2, scratch
li x3, 0x51382b2ec599a1c0 # load x3 with value 0x51382b2ec599a1c0
sd x3, 0(x2) # store 0x51382b2ec599a1c0 in memory
fld f8, 0(x2) # load 0x51382b2ec599a1c0 from memory into f8
fleq.s x18, f31, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f29, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f29
la x2, scratch
li x3, 0x115e0e1da31a7dca # load x3 with value 0x115e0e1da31a7dca
sd x3, 0(x2) # store 0x115e0e1da31a7dca in memory
fld f3, 0(x2) # load 0x115e0e1da31a7dca from memory into f3
fleq.s x11, f29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f6, 0(x2) # load 0x7fffffff7f800000 from memory into f6
la x2, scratch
li x3, 0xb73409bc5a01e2a6 # load x3 with value 0xb73409bc5a01e2a6
sd x3, 0(x2) # store 0xb73409bc5a01e2a6 in memory
fld f3, 0(x2) # load 0xb73409bc5a01e2a6 from memory into f3
fleq.s x8, f6, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f26, 0(x2) # load 0xfffffffeff800000 from memory into f26
la x2, scratch
li x3, 0xf350bfabfd19e245 # load x3 with value 0xf350bfabfd19e245
sd x3, 0(x2) # store 0xf350bfabfd19e245 in memory
fld f22, 0(x2) # load 0xf350bfabfd19e245 from memory into f22
fleq.s x12, f26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f19, 0(x2) # load 0xfeedbee57fc00000 from memory into f19
la x2, scratch
li x3, 0x541033a53c3aaa06 # load x3 with value 0x541033a53c3aaa06
sd x3, 0(x2) # store 0x541033a53c3aaa06 in memory
fld f9, 0(x2) # load 0x541033a53c3aaa06 from memory into f9
fleq.s x17, f19, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f29, 0(x2) # load 0xffc0deff7fffffff from memory into f29
la x2, scratch
li x3, 0xfbf524fff705cab8 # load x3 with value 0xfbf524fff705cab8
sd x3, 0(x2) # store 0xfbf524fff705cab8 in memory
fld f13, 0(x2) # load 0xfbf524fff705cab8 from memory into f13
fleq.s x5, f29, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f2, 0(x2) # load 0xfeffffff7f800001 from memory into f2
la x2, scratch
li x3, 0x8629fc9f422e881d # load x3 with value 0x8629fc9f422e881d
sd x3, 0(x2) # store 0x8629fc9f422e881d in memory
fld f13, 0(x2) # load 0x8629fc9f422e881d from memory into f13
fleq.s x6, f2, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f27, 0(x2) # load 0xfffffeff7fbfffff from memory into f27
la x2, scratch
li x3, 0x007fbef3a3f00520 # load x3 with value 0x007fbef3a3f00520
sd x3, 0(x2) # store 0x007fbef3a3f00520 in memory
fld f14, 0(x2) # load 0x007fbef3a3f00520 from memory into f14
fleq.s x3, f27, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x8de957e7eb68f18a # load x3 with value 0x8de957e7eb68f18a
sd x3, 0(x2) # store 0x8de957e7eb68f18a in memory
fld f31, 0(x2) # load 0x8de957e7eb68f18a from memory into f31
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f1, 0(x2) # load 0xffffefff00000000 from memory into f1
fleq.s x28, f31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x105eb0ef2dfca49c # load x3 with value 0x105eb0ef2dfca49c
sd x3, 0(x2) # store 0x105eb0ef2dfca49c in memory
fld f25, 0(x2) # load 0x105eb0ef2dfca49c from memory into f25
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f22, 0(x2) # load 0xaaaaaaaa80000000 from memory into f22
fleq.s x7, f25, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xd63123b6f81a472e # load x3 with value 0xd63123b6f81a472e
sd x3, 0(x2) # store 0xd63123b6f81a472e in memory
fld f6, 0(x2) # load 0xd63123b6f81a472e from memory into f6
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f5, 0(x2) # load 0x000000003f800000 from memory into f5
fleq.s x20, f6, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x728b6daf0e4560a5 # load x3 with value 0x728b6daf0e4560a5
sd x3, 0(x2) # store 0x728b6daf0e4560a5 in memory
fld f9, 0(x2) # load 0x728b6daf0e4560a5 from memory into f9
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f13, 0(x2) # load 0xdeadbeefbf800000 from memory into f13
fleq.s x26, f9, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xa1becaae8f3224b0 # load x3 with value 0xa1becaae8f3224b0
sd x3, 0(x2) # store 0xa1becaae8f3224b0 in memory
fld f23, 0(x2) # load 0xa1becaae8f3224b0 from memory into f23
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f12, 0(x2) # load 0xa1b2c3d400800000 from memory into f12
fleq.s x21, f23, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x14505cd7f4dd9eed # load x3 with value 0x14505cd7f4dd9eed
sd x3, 0(x2) # store 0x14505cd7f4dd9eed in memory
fld f14, 0(x2) # load 0x14505cd7f4dd9eed from memory into f14
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f18, 0(x2) # load 0xffffffef80800000 from memory into f18
fleq.s x27, f14, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x90e8a87824b803a7 # load x3 with value 0x90e8a87824b803a7
sd x3, 0(x2) # store 0x90e8a87824b803a7 in memory
fld f3, 0(x2) # load 0x90e8a87824b803a7 from memory into f3
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f24, 0(x2) # load 0xfeffffef7f7fffff from memory into f24
fleq.s x12, f3, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xe4aece1a212ab562 # load x3 with value 0xe4aece1a212ab562
sd x3, 0(x2) # store 0xe4aece1a212ab562 in memory
fld f27, 0(x2) # load 0xe4aece1a212ab562 from memory into f27
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f20, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f20
fleq.s x31, f27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x3833891426179d4f # load x3 with value 0x3833891426179d4f
sd x3, 0(x2) # store 0x3833891426179d4f in memory
fld f16, 0(x2) # load 0x3833891426179d4f from memory into f16
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f5, 0(x2) # load 0x7fffffff7f800000 from memory into f5
fleq.s x22, f16, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x525954e330454910 # load x3 with value 0x525954e330454910
sd x3, 0(x2) # store 0x525954e330454910 in memory
fld f30, 0(x2) # load 0x525954e330454910 from memory into f30
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f13, 0(x2) # load 0xfffffffeff800000 from memory into f13
fleq.s x25, f30, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xefa5e35e13e0be52 # load x3 with value 0xefa5e35e13e0be52
sd x3, 0(x2) # store 0xefa5e35e13e0be52 in memory
fld f20, 0(x2) # load 0xefa5e35e13e0be52 from memory into f20
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f8, 0(x2) # load 0xfeedbee57fc00000 from memory into f8
fleq.s x16, f20, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x545b5b50da1026c4 # load x3 with value 0x545b5b50da1026c4
sd x3, 0(x2) # store 0x545b5b50da1026c4 in memory
fld f15, 0(x2) # load 0x545b5b50da1026c4 from memory into f15
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f8, 0(x2) # load 0xffc0deff7fffffff from memory into f8
fleq.s x31, f15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x9ad8e06c0aedecaf # load x3 with value 0x9ad8e06c0aedecaf
sd x3, 0(x2) # store 0x9ad8e06c0aedecaf in memory
fld f15, 0(x2) # load 0x9ad8e06c0aedecaf from memory into f15
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f19, 0(x2) # load 0xfeffffff7f800001 from memory into f19
fleq.s x12, f15, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xdaede154c2832498 # load x3 with value 0xdaede154c2832498
sd x3, 0(x2) # store 0xdaede154c2832498 in memory
fld f21, 0(x2) # load 0xdaede154c2832498 from memory into f21
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f28, 0(x2) # load 0xfffffeff7fbfffff from memory into f28
fleq.s x19, f21, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

.EQU SIGSIZE,224


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
