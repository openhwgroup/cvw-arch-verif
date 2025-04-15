///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fsgnj.s.S
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
li x3, 0xbc4eea768fc87b3c # load x3 with value 0xbc4eea768fc87b3c
sd x3, 0(x2) # store 0xbc4eea768fc87b3c in memory
flw f23, 0(x2) # load 0xbc4eea768fc87b3c from memory into f23
la x2, scratch
li x3, 0x73c82dd90a55020d # load x3 with value 0x73c82dd90a55020d
sd x3, 0(x2) # store 0x73c82dd90a55020d in memory
flw f18, 0(x2) # load 0x73c82dd90a55020d from memory into f18
fsgnj.s f6, f23, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
la x2, scratch
li x3, 0x80d832ea81dd3d7c # load x3 with value 0x80d832ea81dd3d7c
sd x3, 0(x2) # store 0x80d832ea81dd3d7c in memory
fld f20, 0(x2) # load 0x80d832ea81dd3d7c from memory into f20
fsgnj.s f28, f24, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f26, 0(x2) # load 0xaaaaaaaa80000000 from memory into f26
la x2, scratch
li x3, 0x35c90cc12f1d04e2 # load x3 with value 0x35c90cc12f1d04e2
sd x3, 0(x2) # store 0x35c90cc12f1d04e2 in memory
fld f30, 0(x2) # load 0x35c90cc12f1d04e2 from memory into f30
fsgnj.s f12, f26, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f7, 0(x2) # load 0x000000003f800000 from memory into f7
la x2, scratch
li x3, 0xb689d900e4c1502c # load x3 with value 0xb689d900e4c1502c
sd x3, 0(x2) # store 0xb689d900e4c1502c in memory
fld f28, 0(x2) # load 0xb689d900e4c1502c from memory into f28
fsgnj.s f21, f7, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f24, 0(x2) # load 0xdeadbeefbf800000 from memory into f24
la x2, scratch
li x3, 0x8a181c11d378016f # load x3 with value 0x8a181c11d378016f
sd x3, 0(x2) # store 0x8a181c11d378016f in memory
fld f22, 0(x2) # load 0x8a181c11d378016f from memory into f22
fsgnj.s f5, f24, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f5, 0(x2) # load 0xa1b2c3d400800000 from memory into f5
la x2, scratch
li x3, 0xd6ad77280e65edea # load x3 with value 0xd6ad77280e65edea
sd x3, 0(x2) # store 0xd6ad77280e65edea in memory
fld f13, 0(x2) # load 0xd6ad77280e65edea from memory into f13
fsgnj.s f15, f5, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f24, 0(x2) # load 0xffffffef80800000 from memory into f24
la x2, scratch
li x3, 0x49743ba6b9a02924 # load x3 with value 0x49743ba6b9a02924
sd x3, 0(x2) # store 0x49743ba6b9a02924 in memory
fld f16, 0(x2) # load 0x49743ba6b9a02924 from memory into f16
fsgnj.s f12, f24, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f19, 0(x2) # load 0xfeffffef7f7fffff from memory into f19
la x2, scratch
li x3, 0x9f84d82be24a370a # load x3 with value 0x9f84d82be24a370a
sd x3, 0(x2) # store 0x9f84d82be24a370a in memory
fld f21, 0(x2) # load 0x9f84d82be24a370a from memory into f21
fsgnj.s f12, f19, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f3, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f3
la x2, scratch
li x3, 0xe0e8f432cb3b1055 # load x3 with value 0xe0e8f432cb3b1055
sd x3, 0(x2) # store 0xe0e8f432cb3b1055 in memory
fld f9, 0(x2) # load 0xe0e8f432cb3b1055 from memory into f9
fsgnj.s f22, f3, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f3, 0(x2) # load 0x7fffffff7f800000 from memory into f3
la x2, scratch
li x3, 0xc3484a5cc6543148 # load x3 with value 0xc3484a5cc6543148
sd x3, 0(x2) # store 0xc3484a5cc6543148 in memory
fld f30, 0(x2) # load 0xc3484a5cc6543148 from memory into f30
fsgnj.s f19, f3, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f30, 0(x2) # load 0xfffffffeff800000 from memory into f30
la x2, scratch
li x3, 0x5292b19d3dc479d0 # load x3 with value 0x5292b19d3dc479d0
sd x3, 0(x2) # store 0x5292b19d3dc479d0 in memory
fld f9, 0(x2) # load 0x5292b19d3dc479d0 from memory into f9
fsgnj.s f10, f30, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f1, 0(x2) # load 0xfeedbee57fc00000 from memory into f1
la x2, scratch
li x3, 0x76e5d4340045fee4 # load x3 with value 0x76e5d4340045fee4
sd x3, 0(x2) # store 0x76e5d4340045fee4 in memory
fld f14, 0(x2) # load 0x76e5d4340045fee4 from memory into f14
fsgnj.s f15, f1, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f25, 0(x2) # load 0xffc0deff7fffffff from memory into f25
la x2, scratch
li x3, 0xdadb387382687ead # load x3 with value 0xdadb387382687ead
sd x3, 0(x2) # store 0xdadb387382687ead in memory
fld f8, 0(x2) # load 0xdadb387382687ead from memory into f8
fsgnj.s f30, f25, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f16, 0(x2) # load 0xfeffffff7f800001 from memory into f16
la x2, scratch
li x3, 0x23094f30a0804c12 # load x3 with value 0x23094f30a0804c12
sd x3, 0(x2) # store 0x23094f30a0804c12 in memory
fld f20, 0(x2) # load 0x23094f30a0804c12 from memory into f20
fsgnj.s f13, f16, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f9, 0(x2) # load 0xfffffeff7fbfffff from memory into f9
la x2, scratch
li x3, 0xfa4eee257a1af1cf # load x3 with value 0xfa4eee257a1af1cf
sd x3, 0(x2) # store 0xfa4eee257a1af1cf in memory
fld f31, 0(x2) # load 0xfa4eee257a1af1cf from memory into f31
fsgnj.s f3, f9, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xcd6c3db1262eec04 # load x3 with value 0xcd6c3db1262eec04
sd x3, 0(x2) # store 0xcd6c3db1262eec04 in memory
fld f8, 0(x2) # load 0xcd6c3db1262eec04 from memory into f8
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
fsgnj.s f16, f8, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x65d425ae1e6a0bdc # load x3 with value 0x65d425ae1e6a0bdc
sd x3, 0(x2) # store 0x65d425ae1e6a0bdc in memory
fld f20, 0(x2) # load 0x65d425ae1e6a0bdc from memory into f20
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f15, 0(x2) # load 0xaaaaaaaa80000000 from memory into f15
fsgnj.s f16, f20, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x1b272582ee76ea91 # load x3 with value 0x1b272582ee76ea91
sd x3, 0(x2) # store 0x1b272582ee76ea91 in memory
fld f15, 0(x2) # load 0x1b272582ee76ea91 from memory into f15
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f23, 0(x2) # load 0x000000003f800000 from memory into f23
fsgnj.s f2, f15, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xf088904b1f1d106b # load x3 with value 0xf088904b1f1d106b
sd x3, 0(x2) # store 0xf088904b1f1d106b in memory
fld f3, 0(x2) # load 0xf088904b1f1d106b from memory into f3
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f24, 0(x2) # load 0xdeadbeefbf800000 from memory into f24
fsgnj.s f29, f3, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x564396bf6809d90f # load x3 with value 0x564396bf6809d90f
sd x3, 0(x2) # store 0x564396bf6809d90f in memory
fld f3, 0(x2) # load 0x564396bf6809d90f from memory into f3
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f27, 0(x2) # load 0xa1b2c3d400800000 from memory into f27
fsgnj.s f5, f3, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x3f950703a98106e0 # load x3 with value 0x3f950703a98106e0
sd x3, 0(x2) # store 0x3f950703a98106e0 in memory
fld f13, 0(x2) # load 0x3f950703a98106e0 from memory into f13
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f10, 0(x2) # load 0xffffffef80800000 from memory into f10
fsgnj.s f17, f13, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x06accbc6fb8615c9 # load x3 with value 0x06accbc6fb8615c9
sd x3, 0(x2) # store 0x06accbc6fb8615c9 in memory
fld f20, 0(x2) # load 0x06accbc6fb8615c9 from memory into f20
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f25, 0(x2) # load 0xfeffffef7f7fffff from memory into f25
fsgnj.s f12, f20, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x1f230b27f116ba02 # load x3 with value 0x1f230b27f116ba02
sd x3, 0(x2) # store 0x1f230b27f116ba02 in memory
fld f2, 0(x2) # load 0x1f230b27f116ba02 from memory into f2
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f18, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f18
fsgnj.s f7, f2, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x21355f7b931e9ce3 # load x3 with value 0x21355f7b931e9ce3
sd x3, 0(x2) # store 0x21355f7b931e9ce3 in memory
fld f1, 0(x2) # load 0x21355f7b931e9ce3 from memory into f1
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f13, 0(x2) # load 0x7fffffff7f800000 from memory into f13
fsgnj.s f17, f1, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x0989a2bd6c98fbd8 # load x3 with value 0x0989a2bd6c98fbd8
sd x3, 0(x2) # store 0x0989a2bd6c98fbd8 in memory
fld f13, 0(x2) # load 0x0989a2bd6c98fbd8 from memory into f13
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f5, 0(x2) # load 0xfffffffeff800000 from memory into f5
fsgnj.s f28, f13, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x70f57e459115730e # load x3 with value 0x70f57e459115730e
sd x3, 0(x2) # store 0x70f57e459115730e in memory
fld f5, 0(x2) # load 0x70f57e459115730e from memory into f5
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f9, 0(x2) # load 0xfeedbee57fc00000 from memory into f9
fsgnj.s f20, f5, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x63972a0bf909f2c9 # load x3 with value 0x63972a0bf909f2c9
sd x3, 0(x2) # store 0x63972a0bf909f2c9 in memory
fld f24, 0(x2) # load 0x63972a0bf909f2c9 from memory into f24
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f21, 0(x2) # load 0xffc0deff7fffffff from memory into f21
fsgnj.s f30, f24, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xb811bd7bdd166e0c # load x3 with value 0xb811bd7bdd166e0c
sd x3, 0(x2) # store 0xb811bd7bdd166e0c in memory
fld f13, 0(x2) # load 0xb811bd7bdd166e0c from memory into f13
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f17, 0(x2) # load 0xfeffffff7f800001 from memory into f17
fsgnj.s f18, f13, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xd70b4d8a59237f71 # load x3 with value 0xd70b4d8a59237f71
sd x3, 0(x2) # store 0xd70b4d8a59237f71 in memory
fld f31, 0(x2) # load 0xd70b4d8a59237f71 from memory into f31
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f23, 0(x2) # load 0xfffffeff7fbfffff from memory into f23
fsgnj.s f29, f31, f23 # perform operation

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
