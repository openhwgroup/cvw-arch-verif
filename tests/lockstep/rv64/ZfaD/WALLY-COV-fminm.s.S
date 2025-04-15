///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaD/WALLY-COV-fminm.s.S
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
li x3, 0xff5fa30c20ebf8e0 # load x3 with value 0xff5fa30c20ebf8e0
sd x3, 0(x2) # store 0xff5fa30c20ebf8e0 in memory
flw f3, 0(x2) # load 0xff5fa30c20ebf8e0 from memory into f3
la x2, scratch
li x3, 0xcc7d22a0dd4b2ace # load x3 with value 0xcc7d22a0dd4b2ace
sd x3, 0(x2) # store 0xcc7d22a0dd4b2ace in memory
flw f27, 0(x2) # load 0xcc7d22a0dd4b2ace from memory into f27
fminm.s f10, f3, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f17, 0(x2) # load 0xffffefff00000000 from memory into f17
la x2, scratch
li x3, 0x924107b665230f6b # load x3 with value 0x924107b665230f6b
sd x3, 0(x2) # store 0x924107b665230f6b in memory
fld f28, 0(x2) # load 0x924107b665230f6b from memory into f28
fminm.s f12, f17, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f11, 0(x2) # load 0xaaaaaaaa80000000 from memory into f11
la x2, scratch
li x3, 0xd1bb52f6d605650c # load x3 with value 0xd1bb52f6d605650c
sd x3, 0(x2) # store 0xd1bb52f6d605650c in memory
fld f16, 0(x2) # load 0xd1bb52f6d605650c from memory into f16
fminm.s f30, f11, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f24, 0(x2) # load 0x000000003f800000 from memory into f24
la x2, scratch
li x3, 0x5e8a9c62d52f4e7e # load x3 with value 0x5e8a9c62d52f4e7e
sd x3, 0(x2) # store 0x5e8a9c62d52f4e7e in memory
fld f6, 0(x2) # load 0x5e8a9c62d52f4e7e from memory into f6
fminm.s f29, f24, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f25, 0(x2) # load 0xdeadbeefbf800000 from memory into f25
la x2, scratch
li x3, 0xba539f31150d9a6a # load x3 with value 0xba539f31150d9a6a
sd x3, 0(x2) # store 0xba539f31150d9a6a in memory
fld f24, 0(x2) # load 0xba539f31150d9a6a from memory into f24
fminm.s f9, f25, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f29, 0(x2) # load 0xa1b2c3d400800000 from memory into f29
la x2, scratch
li x3, 0x85ead074a4291e78 # load x3 with value 0x85ead074a4291e78
sd x3, 0(x2) # store 0x85ead074a4291e78 in memory
fld f8, 0(x2) # load 0x85ead074a4291e78 from memory into f8
fminm.s f5, f29, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f13, 0(x2) # load 0xffffffef80800000 from memory into f13
la x2, scratch
li x3, 0x2b370386887d8224 # load x3 with value 0x2b370386887d8224
sd x3, 0(x2) # store 0x2b370386887d8224 in memory
fld f19, 0(x2) # load 0x2b370386887d8224 from memory into f19
fminm.s f11, f13, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f15, 0(x2) # load 0xfeffffef7f7fffff from memory into f15
la x2, scratch
li x3, 0x210be8e3bfb14798 # load x3 with value 0x210be8e3bfb14798
sd x3, 0(x2) # store 0x210be8e3bfb14798 in memory
fld f28, 0(x2) # load 0x210be8e3bfb14798 from memory into f28
fminm.s f22, f15, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f18, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f18
la x2, scratch
li x3, 0x9969e70eea2d5b65 # load x3 with value 0x9969e70eea2d5b65
sd x3, 0(x2) # store 0x9969e70eea2d5b65 in memory
fld f1, 0(x2) # load 0x9969e70eea2d5b65 from memory into f1
fminm.s f14, f18, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f15, 0(x2) # load 0x7fffffff7f800000 from memory into f15
la x2, scratch
li x3, 0x2dfe9357ab0162be # load x3 with value 0x2dfe9357ab0162be
sd x3, 0(x2) # store 0x2dfe9357ab0162be in memory
fld f3, 0(x2) # load 0x2dfe9357ab0162be from memory into f3
fminm.s f27, f15, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f15, 0(x2) # load 0xfffffffeff800000 from memory into f15
la x2, scratch
li x3, 0xf36b351c2c2ebc64 # load x3 with value 0xf36b351c2c2ebc64
sd x3, 0(x2) # store 0xf36b351c2c2ebc64 in memory
fld f17, 0(x2) # load 0xf36b351c2c2ebc64 from memory into f17
fminm.s f20, f15, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f17, 0(x2) # load 0xfeedbee57fc00000 from memory into f17
la x2, scratch
li x3, 0x8628423981af17d1 # load x3 with value 0x8628423981af17d1
sd x3, 0(x2) # store 0x8628423981af17d1 in memory
fld f30, 0(x2) # load 0x8628423981af17d1 from memory into f30
fminm.s f25, f17, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f13, 0(x2) # load 0xffc0deff7fffffff from memory into f13
la x2, scratch
li x3, 0xebf0d03e8285d9bd # load x3 with value 0xebf0d03e8285d9bd
sd x3, 0(x2) # store 0xebf0d03e8285d9bd in memory
fld f14, 0(x2) # load 0xebf0d03e8285d9bd from memory into f14
fminm.s f31, f13, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f23, 0(x2) # load 0xfeffffff7f800001 from memory into f23
la x2, scratch
li x3, 0xc1888b7b1ba8dc16 # load x3 with value 0xc1888b7b1ba8dc16
sd x3, 0(x2) # store 0xc1888b7b1ba8dc16 in memory
fld f9, 0(x2) # load 0xc1888b7b1ba8dc16 from memory into f9
fminm.s f17, f23, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f24, 0(x2) # load 0xfffffeff7fbfffff from memory into f24
la x2, scratch
li x3, 0xac4d0ef3fa6e67fa # load x3 with value 0xac4d0ef3fa6e67fa
sd x3, 0(x2) # store 0xac4d0ef3fa6e67fa in memory
fld f10, 0(x2) # load 0xac4d0ef3fa6e67fa from memory into f10
fminm.s f17, f24, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x4bbf067d4ced7b20 # load x3 with value 0x4bbf067d4ced7b20
sd x3, 0(x2) # store 0x4bbf067d4ced7b20 in memory
fld f10, 0(x2) # load 0x4bbf067d4ced7b20 from memory into f10
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f25, 0(x2) # load 0xffffefff00000000 from memory into f25
fminm.s f26, f10, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xff2b4d2b88438ceb # load x3 with value 0xff2b4d2b88438ceb
sd x3, 0(x2) # store 0xff2b4d2b88438ceb in memory
fld f9, 0(x2) # load 0xff2b4d2b88438ceb from memory into f9
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f26, 0(x2) # load 0xaaaaaaaa80000000 from memory into f26
fminm.s f6, f9, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xf574776b2f9803c4 # load x3 with value 0xf574776b2f9803c4
sd x3, 0(x2) # store 0xf574776b2f9803c4 in memory
fld f25, 0(x2) # load 0xf574776b2f9803c4 from memory into f25
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f18, 0(x2) # load 0x000000003f800000 from memory into f18
fminm.s f1, f25, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x33db3490b4fcbc54 # load x3 with value 0x33db3490b4fcbc54
sd x3, 0(x2) # store 0x33db3490b4fcbc54 in memory
fld f10, 0(x2) # load 0x33db3490b4fcbc54 from memory into f10
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f23, 0(x2) # load 0xdeadbeefbf800000 from memory into f23
fminm.s f17, f10, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x702f7aa3d7994db1 # load x3 with value 0x702f7aa3d7994db1
sd x3, 0(x2) # store 0x702f7aa3d7994db1 in memory
fld f21, 0(x2) # load 0x702f7aa3d7994db1 from memory into f21
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f25, 0(x2) # load 0xa1b2c3d400800000 from memory into f25
fminm.s f17, f21, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x24782ba7d53244b7 # load x3 with value 0x24782ba7d53244b7
sd x3, 0(x2) # store 0x24782ba7d53244b7 in memory
fld f19, 0(x2) # load 0x24782ba7d53244b7 from memory into f19
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f15, 0(x2) # load 0xffffffef80800000 from memory into f15
fminm.s f12, f19, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x3f876f08fc9fbb3e # load x3 with value 0x3f876f08fc9fbb3e
sd x3, 0(x2) # store 0x3f876f08fc9fbb3e in memory
fld f10, 0(x2) # load 0x3f876f08fc9fbb3e from memory into f10
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f11, 0(x2) # load 0xfeffffef7f7fffff from memory into f11
fminm.s f25, f10, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xadd09bf09fb0d226 # load x3 with value 0xadd09bf09fb0d226
sd x3, 0(x2) # store 0xadd09bf09fb0d226 in memory
fld f24, 0(x2) # load 0xadd09bf09fb0d226 from memory into f24
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f21, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f21
fminm.s f23, f24, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xd995b7b8f817dc99 # load x3 with value 0xd995b7b8f817dc99
sd x3, 0(x2) # store 0xd995b7b8f817dc99 in memory
fld f15, 0(x2) # load 0xd995b7b8f817dc99 from memory into f15
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f30, 0(x2) # load 0x7fffffff7f800000 from memory into f30
fminm.s f3, f15, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x7da6d466f3f2ac94 # load x3 with value 0x7da6d466f3f2ac94
sd x3, 0(x2) # store 0x7da6d466f3f2ac94 in memory
fld f31, 0(x2) # load 0x7da6d466f3f2ac94 from memory into f31
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f24, 0(x2) # load 0xfffffffeff800000 from memory into f24
fminm.s f19, f31, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x9d103cc15dcad765 # load x3 with value 0x9d103cc15dcad765
sd x3, 0(x2) # store 0x9d103cc15dcad765 in memory
fld f12, 0(x2) # load 0x9d103cc15dcad765 from memory into f12
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f17, 0(x2) # load 0xfeedbee57fc00000 from memory into f17
fminm.s f25, f12, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x127e7f563ea2c325 # load x3 with value 0x127e7f563ea2c325
sd x3, 0(x2) # store 0x127e7f563ea2c325 in memory
fld f16, 0(x2) # load 0x127e7f563ea2c325 from memory into f16
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f13, 0(x2) # load 0xffc0deff7fffffff from memory into f13
fminm.s f22, f16, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xe69fa01951b16127 # load x3 with value 0xe69fa01951b16127
sd x3, 0(x2) # store 0xe69fa01951b16127 in memory
fld f26, 0(x2) # load 0xe69fa01951b16127 from memory into f26
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f10, 0(x2) # load 0xfeffffff7f800001 from memory into f10
fminm.s f20, f26, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xb6931c48c2d3cc82 # load x3 with value 0xb6931c48c2d3cc82
sd x3, 0(x2) # store 0xb6931c48c2d3cc82 in memory
fld f1, 0(x2) # load 0xb6931c48c2d3cc82 from memory into f1
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f6, 0(x2) # load 0xfffffeff7fbfffff from memory into f6
fminm.s f14, f1, f6 # perform operation

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
