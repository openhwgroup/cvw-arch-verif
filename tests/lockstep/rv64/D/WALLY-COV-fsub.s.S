///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fsub.s.S
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
li x3, 0x6d1c2f392197356b # load x3 with value 0x6d1c2f392197356b
sd x3, 0(x2) # store 0x6d1c2f392197356b in memory
flw f2, 0(x2) # load 0x6d1c2f392197356b from memory into f2
la x2, scratch
li x3, 0x3e572524052ec53a # load x3 with value 0x3e572524052ec53a
sd x3, 0(x2) # store 0x3e572524052ec53a in memory
flw f22, 0(x2) # load 0x3e572524052ec53a from memory into f22
fsub.s f20, f2, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f31, 0(x2) # load 0xffffefff00000000 from memory into f31
la x2, scratch
li x3, 0xd8c29e59032ac93f # load x3 with value 0xd8c29e59032ac93f
sd x3, 0(x2) # store 0xd8c29e59032ac93f in memory
fld f8, 0(x2) # load 0xd8c29e59032ac93f from memory into f8
fsub.s f22, f31, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f30, 0(x2) # load 0xaaaaaaaa80000000 from memory into f30
la x2, scratch
li x3, 0xd23e588d566520cb # load x3 with value 0xd23e588d566520cb
sd x3, 0(x2) # store 0xd23e588d566520cb in memory
fld f3, 0(x2) # load 0xd23e588d566520cb from memory into f3
fsub.s f2, f30, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f29, 0(x2) # load 0x000000003f800000 from memory into f29
la x2, scratch
li x3, 0x030d328fd04a569a # load x3 with value 0x030d328fd04a569a
sd x3, 0(x2) # store 0x030d328fd04a569a in memory
fld f23, 0(x2) # load 0x030d328fd04a569a from memory into f23
fsub.s f28, f29, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f1, 0(x2) # load 0xdeadbeefbf800000 from memory into f1
la x2, scratch
li x3, 0x6b7c9a2b2c905682 # load x3 with value 0x6b7c9a2b2c905682
sd x3, 0(x2) # store 0x6b7c9a2b2c905682 in memory
fld f14, 0(x2) # load 0x6b7c9a2b2c905682 from memory into f14
fsub.s f2, f1, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f20, 0(x2) # load 0xa1b2c3d400800000 from memory into f20
la x2, scratch
li x3, 0x6eb551a1624e5c3b # load x3 with value 0x6eb551a1624e5c3b
sd x3, 0(x2) # store 0x6eb551a1624e5c3b in memory
fld f17, 0(x2) # load 0x6eb551a1624e5c3b from memory into f17
fsub.s f30, f20, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f14, 0(x2) # load 0xffffffef80800000 from memory into f14
la x2, scratch
li x3, 0xfbb3f2392de16679 # load x3 with value 0xfbb3f2392de16679
sd x3, 0(x2) # store 0xfbb3f2392de16679 in memory
fld f13, 0(x2) # load 0xfbb3f2392de16679 from memory into f13
fsub.s f21, f14, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f24, 0(x2) # load 0xfeffffef7f7fffff from memory into f24
la x2, scratch
li x3, 0x45029cf1c5b9dac5 # load x3 with value 0x45029cf1c5b9dac5
sd x3, 0(x2) # store 0x45029cf1c5b9dac5 in memory
fld f3, 0(x2) # load 0x45029cf1c5b9dac5 from memory into f3
fsub.s f29, f24, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f7, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f7
la x2, scratch
li x3, 0x473807fc54762b85 # load x3 with value 0x473807fc54762b85
sd x3, 0(x2) # store 0x473807fc54762b85 in memory
fld f13, 0(x2) # load 0x473807fc54762b85 from memory into f13
fsub.s f18, f7, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f14, 0(x2) # load 0x7fffffff7f800000 from memory into f14
la x2, scratch
li x3, 0x60a5e7c646dfd80b # load x3 with value 0x60a5e7c646dfd80b
sd x3, 0(x2) # store 0x60a5e7c646dfd80b in memory
fld f7, 0(x2) # load 0x60a5e7c646dfd80b from memory into f7
fsub.s f22, f14, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f13, 0(x2) # load 0xfffffffeff800000 from memory into f13
la x2, scratch
li x3, 0x18ecc808f2ec3604 # load x3 with value 0x18ecc808f2ec3604
sd x3, 0(x2) # store 0x18ecc808f2ec3604 in memory
fld f10, 0(x2) # load 0x18ecc808f2ec3604 from memory into f10
fsub.s f31, f13, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f14, 0(x2) # load 0xfeedbee57fc00000 from memory into f14
la x2, scratch
li x3, 0xd5bed5f48bedfa6c # load x3 with value 0xd5bed5f48bedfa6c
sd x3, 0(x2) # store 0xd5bed5f48bedfa6c in memory
fld f28, 0(x2) # load 0xd5bed5f48bedfa6c from memory into f28
fsub.s f27, f14, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f17, 0(x2) # load 0xffc0deff7fffffff from memory into f17
la x2, scratch
li x3, 0x60adc5a746b11395 # load x3 with value 0x60adc5a746b11395
sd x3, 0(x2) # store 0x60adc5a746b11395 in memory
fld f16, 0(x2) # load 0x60adc5a746b11395 from memory into f16
fsub.s f30, f17, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f11, 0(x2) # load 0xfeffffff7f800001 from memory into f11
la x2, scratch
li x3, 0xf9c0af1452fe390a # load x3 with value 0xf9c0af1452fe390a
sd x3, 0(x2) # store 0xf9c0af1452fe390a in memory
fld f12, 0(x2) # load 0xf9c0af1452fe390a from memory into f12
fsub.s f8, f11, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f20, 0(x2) # load 0xfffffeff7fbfffff from memory into f20
la x2, scratch
li x3, 0xd660fbbe6ef75538 # load x3 with value 0xd660fbbe6ef75538
sd x3, 0(x2) # store 0xd660fbbe6ef75538 in memory
fld f21, 0(x2) # load 0xd660fbbe6ef75538 from memory into f21
fsub.s f3, f20, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xd66a21c229b06b78 # load x3 with value 0xd66a21c229b06b78
sd x3, 0(x2) # store 0xd66a21c229b06b78 in memory
fld f25, 0(x2) # load 0xd66a21c229b06b78 from memory into f25
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f24, 0(x2) # load 0xffffefff00000000 from memory into f24
fsub.s f15, f25, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x4bc910c0c094921c # load x3 with value 0x4bc910c0c094921c
sd x3, 0(x2) # store 0x4bc910c0c094921c in memory
fld f1, 0(x2) # load 0x4bc910c0c094921c from memory into f1
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f24, 0(x2) # load 0xaaaaaaaa80000000 from memory into f24
fsub.s f20, f1, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xb2f13a41eb8f8652 # load x3 with value 0xb2f13a41eb8f8652
sd x3, 0(x2) # store 0xb2f13a41eb8f8652 in memory
fld f20, 0(x2) # load 0xb2f13a41eb8f8652 from memory into f20
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f29, 0(x2) # load 0x000000003f800000 from memory into f29
fsub.s f9, f20, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x53c9045f0009e588 # load x3 with value 0x53c9045f0009e588
sd x3, 0(x2) # store 0x53c9045f0009e588 in memory
fld f19, 0(x2) # load 0x53c9045f0009e588 from memory into f19
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f12, 0(x2) # load 0xdeadbeefbf800000 from memory into f12
fsub.s f31, f19, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x83e46907f6a405b1 # load x3 with value 0x83e46907f6a405b1
sd x3, 0(x2) # store 0x83e46907f6a405b1 in memory
fld f18, 0(x2) # load 0x83e46907f6a405b1 from memory into f18
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f7, 0(x2) # load 0xa1b2c3d400800000 from memory into f7
fsub.s f22, f18, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xe127c0eaa990bf23 # load x3 with value 0xe127c0eaa990bf23
sd x3, 0(x2) # store 0xe127c0eaa990bf23 in memory
fld f29, 0(x2) # load 0xe127c0eaa990bf23 from memory into f29
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f7, 0(x2) # load 0xffffffef80800000 from memory into f7
fsub.s f2, f29, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xfc50f08b56de63ad # load x3 with value 0xfc50f08b56de63ad
sd x3, 0(x2) # store 0xfc50f08b56de63ad in memory
fld f16, 0(x2) # load 0xfc50f08b56de63ad from memory into f16
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f25, 0(x2) # load 0xfeffffef7f7fffff from memory into f25
fsub.s f7, f16, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xf4d2ab762255b8cf # load x3 with value 0xf4d2ab762255b8cf
sd x3, 0(x2) # store 0xf4d2ab762255b8cf in memory
fld f10, 0(x2) # load 0xf4d2ab762255b8cf from memory into f10
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f3, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f3
fsub.s f16, f10, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x3ece55792adb3029 # load x3 with value 0x3ece55792adb3029
sd x3, 0(x2) # store 0x3ece55792adb3029 in memory
fld f2, 0(x2) # load 0x3ece55792adb3029 from memory into f2
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f18, 0(x2) # load 0x7fffffff7f800000 from memory into f18
fsub.s f10, f2, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x70ca790fa519c337 # load x3 with value 0x70ca790fa519c337
sd x3, 0(x2) # store 0x70ca790fa519c337 in memory
fld f29, 0(x2) # load 0x70ca790fa519c337 from memory into f29
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f6, 0(x2) # load 0xfffffffeff800000 from memory into f6
fsub.s f30, f29, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x93d7151a1823fd64 # load x3 with value 0x93d7151a1823fd64
sd x3, 0(x2) # store 0x93d7151a1823fd64 in memory
fld f28, 0(x2) # load 0x93d7151a1823fd64 from memory into f28
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f1, 0(x2) # load 0xfeedbee57fc00000 from memory into f1
fsub.s f21, f28, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xba9b008b5800d28b # load x3 with value 0xba9b008b5800d28b
sd x3, 0(x2) # store 0xba9b008b5800d28b in memory
fld f6, 0(x2) # load 0xba9b008b5800d28b from memory into f6
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f11, 0(x2) # load 0xffc0deff7fffffff from memory into f11
fsub.s f29, f6, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x0e21cde74114a8d2 # load x3 with value 0x0e21cde74114a8d2
sd x3, 0(x2) # store 0x0e21cde74114a8d2 in memory
fld f10, 0(x2) # load 0x0e21cde74114a8d2 from memory into f10
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f25, 0(x2) # load 0xfeffffff7f800001 from memory into f25
fsub.s f26, f10, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x9aa13ec8ee088a19 # load x3 with value 0x9aa13ec8ee088a19
sd x3, 0(x2) # store 0x9aa13ec8ee088a19 in memory
fld f13, 0(x2) # load 0x9aa13ec8ee088a19 from memory into f13
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f28, 0(x2) # load 0xfffffeff7fbfffff from memory into f28
fsub.s f7, f13, f28 # perform operation

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
