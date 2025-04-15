///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fdiv.s.S
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
li x3, 0xac1f4d8b2b55932a # load x3 with value 0xac1f4d8b2b55932a
sd x3, 0(x2) # store 0xac1f4d8b2b55932a in memory
flw f27, 0(x2) # load 0xac1f4d8b2b55932a from memory into f27
la x2, scratch
li x3, 0x2baa6e6dbb39e5f5 # load x3 with value 0x2baa6e6dbb39e5f5
sd x3, 0(x2) # store 0x2baa6e6dbb39e5f5 in memory
flw f5, 0(x2) # load 0x2baa6e6dbb39e5f5 from memory into f5
fdiv.s f16, f27, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f15, 0(x2) # load 0xffffefff00000000 from memory into f15
la x2, scratch
li x3, 0x767182abe341cc2a # load x3 with value 0x767182abe341cc2a
sd x3, 0(x2) # store 0x767182abe341cc2a in memory
fld f8, 0(x2) # load 0x767182abe341cc2a from memory into f8
fdiv.s f9, f15, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f13, 0(x2) # load 0xaaaaaaaa80000000 from memory into f13
la x2, scratch
li x3, 0xe7f062e7b1017387 # load x3 with value 0xe7f062e7b1017387
sd x3, 0(x2) # store 0xe7f062e7b1017387 in memory
fld f22, 0(x2) # load 0xe7f062e7b1017387 from memory into f22
fdiv.s f6, f13, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f6, 0(x2) # load 0x000000003f800000 from memory into f6
la x2, scratch
li x3, 0xaa801a7ea475e20a # load x3 with value 0xaa801a7ea475e20a
sd x3, 0(x2) # store 0xaa801a7ea475e20a in memory
fld f15, 0(x2) # load 0xaa801a7ea475e20a from memory into f15
fdiv.s f26, f6, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f5, 0(x2) # load 0xdeadbeefbf800000 from memory into f5
la x2, scratch
li x3, 0x01674963625f8ce3 # load x3 with value 0x01674963625f8ce3
sd x3, 0(x2) # store 0x01674963625f8ce3 in memory
fld f20, 0(x2) # load 0x01674963625f8ce3 from memory into f20
fdiv.s f19, f5, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f18, 0(x2) # load 0xa1b2c3d400800000 from memory into f18
la x2, scratch
li x3, 0xa31f3ce479f02849 # load x3 with value 0xa31f3ce479f02849
sd x3, 0(x2) # store 0xa31f3ce479f02849 in memory
fld f20, 0(x2) # load 0xa31f3ce479f02849 from memory into f20
fdiv.s f29, f18, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f28, 0(x2) # load 0xffffffef80800000 from memory into f28
la x2, scratch
li x3, 0x34724751eeedfd7f # load x3 with value 0x34724751eeedfd7f
sd x3, 0(x2) # store 0x34724751eeedfd7f in memory
fld f6, 0(x2) # load 0x34724751eeedfd7f from memory into f6
fdiv.s f19, f28, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f5, 0(x2) # load 0xfeffffef7f7fffff from memory into f5
la x2, scratch
li x3, 0x9f678152871a59bf # load x3 with value 0x9f678152871a59bf
sd x3, 0(x2) # store 0x9f678152871a59bf in memory
fld f14, 0(x2) # load 0x9f678152871a59bf from memory into f14
fdiv.s f19, f5, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f30, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f30
la x2, scratch
li x3, 0xd6dd4931cee47c75 # load x3 with value 0xd6dd4931cee47c75
sd x3, 0(x2) # store 0xd6dd4931cee47c75 in memory
fld f8, 0(x2) # load 0xd6dd4931cee47c75 from memory into f8
fdiv.s f18, f30, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f29, 0(x2) # load 0x7fffffff7f800000 from memory into f29
la x2, scratch
li x3, 0xe60f46ec45f28fd7 # load x3 with value 0xe60f46ec45f28fd7
sd x3, 0(x2) # store 0xe60f46ec45f28fd7 in memory
fld f26, 0(x2) # load 0xe60f46ec45f28fd7 from memory into f26
fdiv.s f16, f29, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f7, 0(x2) # load 0xfffffffeff800000 from memory into f7
la x2, scratch
li x3, 0x57f5ab50ecb7dc2e # load x3 with value 0x57f5ab50ecb7dc2e
sd x3, 0(x2) # store 0x57f5ab50ecb7dc2e in memory
fld f3, 0(x2) # load 0x57f5ab50ecb7dc2e from memory into f3
fdiv.s f18, f7, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f9, 0(x2) # load 0xfeedbee57fc00000 from memory into f9
la x2, scratch
li x3, 0x6c02124253e83ac0 # load x3 with value 0x6c02124253e83ac0
sd x3, 0(x2) # store 0x6c02124253e83ac0 in memory
fld f17, 0(x2) # load 0x6c02124253e83ac0 from memory into f17
fdiv.s f13, f9, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f6, 0(x2) # load 0xffc0deff7fffffff from memory into f6
la x2, scratch
li x3, 0xcd755b6bc45a7547 # load x3 with value 0xcd755b6bc45a7547
sd x3, 0(x2) # store 0xcd755b6bc45a7547 in memory
fld f11, 0(x2) # load 0xcd755b6bc45a7547 from memory into f11
fdiv.s f9, f6, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f10, 0(x2) # load 0xfeffffff7f800001 from memory into f10
la x2, scratch
li x3, 0x758e07d3fba59516 # load x3 with value 0x758e07d3fba59516
sd x3, 0(x2) # store 0x758e07d3fba59516 in memory
fld f5, 0(x2) # load 0x758e07d3fba59516 from memory into f5
fdiv.s f14, f10, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f14, 0(x2) # load 0xfffffeff7fbfffff from memory into f14
la x2, scratch
li x3, 0x07218080300d96be # load x3 with value 0x07218080300d96be
sd x3, 0(x2) # store 0x07218080300d96be in memory
fld f2, 0(x2) # load 0x07218080300d96be from memory into f2
fdiv.s f30, f14, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x0562f6128619647e # load x3 with value 0x0562f6128619647e
sd x3, 0(x2) # store 0x0562f6128619647e in memory
fld f18, 0(x2) # load 0x0562f6128619647e from memory into f18
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f26, 0(x2) # load 0xffffefff00000000 from memory into f26
fdiv.s f27, f18, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x468afc12798d848c # load x3 with value 0x468afc12798d848c
sd x3, 0(x2) # store 0x468afc12798d848c in memory
fld f9, 0(x2) # load 0x468afc12798d848c from memory into f9
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f16, 0(x2) # load 0xaaaaaaaa80000000 from memory into f16
fdiv.s f15, f9, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xffc42e583b8e5521 # load x3 with value 0xffc42e583b8e5521
sd x3, 0(x2) # store 0xffc42e583b8e5521 in memory
fld f18, 0(x2) # load 0xffc42e583b8e5521 from memory into f18
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f21, 0(x2) # load 0x000000003f800000 from memory into f21
fdiv.s f29, f18, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xa5079cdd58abcb58 # load x3 with value 0xa5079cdd58abcb58
sd x3, 0(x2) # store 0xa5079cdd58abcb58 in memory
fld f30, 0(x2) # load 0xa5079cdd58abcb58 from memory into f30
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f15, 0(x2) # load 0xdeadbeefbf800000 from memory into f15
fdiv.s f18, f30, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x7d1022a96c80b882 # load x3 with value 0x7d1022a96c80b882
sd x3, 0(x2) # store 0x7d1022a96c80b882 in memory
fld f25, 0(x2) # load 0x7d1022a96c80b882 from memory into f25
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f11, 0(x2) # load 0xa1b2c3d400800000 from memory into f11
fdiv.s f16, f25, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xd68e3d15a3916d78 # load x3 with value 0xd68e3d15a3916d78
sd x3, 0(x2) # store 0xd68e3d15a3916d78 in memory
fld f6, 0(x2) # load 0xd68e3d15a3916d78 from memory into f6
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f21, 0(x2) # load 0xffffffef80800000 from memory into f21
fdiv.s f13, f6, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xe0e00e51ff4fb242 # load x3 with value 0xe0e00e51ff4fb242
sd x3, 0(x2) # store 0xe0e00e51ff4fb242 in memory
fld f31, 0(x2) # load 0xe0e00e51ff4fb242 from memory into f31
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f6, 0(x2) # load 0xfeffffef7f7fffff from memory into f6
fdiv.s f20, f31, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xa9ec6c82d1cb88bd # load x3 with value 0xa9ec6c82d1cb88bd
sd x3, 0(x2) # store 0xa9ec6c82d1cb88bd in memory
fld f17, 0(x2) # load 0xa9ec6c82d1cb88bd from memory into f17
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f18, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f18
fdiv.s f21, f17, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xc8a07fd4f999a4f4 # load x3 with value 0xc8a07fd4f999a4f4
sd x3, 0(x2) # store 0xc8a07fd4f999a4f4 in memory
fld f7, 0(x2) # load 0xc8a07fd4f999a4f4 from memory into f7
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f14, 0(x2) # load 0x7fffffff7f800000 from memory into f14
fdiv.s f5, f7, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x4219c59ea499d17b # load x3 with value 0x4219c59ea499d17b
sd x3, 0(x2) # store 0x4219c59ea499d17b in memory
fld f9, 0(x2) # load 0x4219c59ea499d17b from memory into f9
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f6, 0(x2) # load 0xfffffffeff800000 from memory into f6
fdiv.s f2, f9, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xb9fd572c129493e3 # load x3 with value 0xb9fd572c129493e3
sd x3, 0(x2) # store 0xb9fd572c129493e3 in memory
fld f17, 0(x2) # load 0xb9fd572c129493e3 from memory into f17
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f29, 0(x2) # load 0xfeedbee57fc00000 from memory into f29
fdiv.s f22, f17, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xadbf4dd4d4e206a5 # load x3 with value 0xadbf4dd4d4e206a5
sd x3, 0(x2) # store 0xadbf4dd4d4e206a5 in memory
fld f1, 0(x2) # load 0xadbf4dd4d4e206a5 from memory into f1
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f9, 0(x2) # load 0xffc0deff7fffffff from memory into f9
fdiv.s f11, f1, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xca431505e1c97cfb # load x3 with value 0xca431505e1c97cfb
sd x3, 0(x2) # store 0xca431505e1c97cfb in memory
fld f17, 0(x2) # load 0xca431505e1c97cfb from memory into f17
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f2, 0(x2) # load 0xfeffffff7f800001 from memory into f2
fdiv.s f15, f17, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xc1bbe38b2ba50831 # load x3 with value 0xc1bbe38b2ba50831
sd x3, 0(x2) # store 0xc1bbe38b2ba50831 in memory
fld f21, 0(x2) # load 0xc1bbe38b2ba50831 from memory into f21
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f13, 0(x2) # load 0xfffffeff7fbfffff from memory into f13
fdiv.s f11, f21, f13 # perform operation

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
