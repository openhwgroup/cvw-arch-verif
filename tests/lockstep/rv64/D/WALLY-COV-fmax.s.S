///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fmax.s.S
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
li x3, 0x6e5ad9de8a774dc4 # load x3 with value 0x6e5ad9de8a774dc4
sd x3, 0(x2) # store 0x6e5ad9de8a774dc4 in memory
flw f29, 0(x2) # load 0x6e5ad9de8a774dc4 from memory into f29
la x2, scratch
li x3, 0x1b992d41d887b7ec # load x3 with value 0x1b992d41d887b7ec
sd x3, 0(x2) # store 0x1b992d41d887b7ec in memory
flw f22, 0(x2) # load 0x1b992d41d887b7ec from memory into f22
fmax.s f27, f29, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f26, 0(x2) # load 0xffffefff00000000 from memory into f26
la x2, scratch
li x3, 0x9c54662bfe1661e4 # load x3 with value 0x9c54662bfe1661e4
sd x3, 0(x2) # store 0x9c54662bfe1661e4 in memory
fld f19, 0(x2) # load 0x9c54662bfe1661e4 from memory into f19
fmax.s f10, f26, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f2, 0(x2) # load 0xaaaaaaaa80000000 from memory into f2
la x2, scratch
li x3, 0x404759fe24b197f0 # load x3 with value 0x404759fe24b197f0
sd x3, 0(x2) # store 0x404759fe24b197f0 in memory
fld f11, 0(x2) # load 0x404759fe24b197f0 from memory into f11
fmax.s f13, f2, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f15, 0(x2) # load 0x000000003f800000 from memory into f15
la x2, scratch
li x3, 0x63a9937ef9488216 # load x3 with value 0x63a9937ef9488216
sd x3, 0(x2) # store 0x63a9937ef9488216 in memory
fld f11, 0(x2) # load 0x63a9937ef9488216 from memory into f11
fmax.s f6, f15, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f1, 0(x2) # load 0xdeadbeefbf800000 from memory into f1
la x2, scratch
li x3, 0x34a34083db6e265a # load x3 with value 0x34a34083db6e265a
sd x3, 0(x2) # store 0x34a34083db6e265a in memory
fld f16, 0(x2) # load 0x34a34083db6e265a from memory into f16
fmax.s f24, f1, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f2, 0(x2) # load 0xa1b2c3d400800000 from memory into f2
la x2, scratch
li x3, 0xdd9e2c2941deacb6 # load x3 with value 0xdd9e2c2941deacb6
sd x3, 0(x2) # store 0xdd9e2c2941deacb6 in memory
fld f1, 0(x2) # load 0xdd9e2c2941deacb6 from memory into f1
fmax.s f11, f2, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f28, 0(x2) # load 0xffffffef80800000 from memory into f28
la x2, scratch
li x3, 0x859e2f93c648b998 # load x3 with value 0x859e2f93c648b998
sd x3, 0(x2) # store 0x859e2f93c648b998 in memory
fld f12, 0(x2) # load 0x859e2f93c648b998 from memory into f12
fmax.s f21, f28, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f5, 0(x2) # load 0xfeffffef7f7fffff from memory into f5
la x2, scratch
li x3, 0xd746bab1c9c6aa34 # load x3 with value 0xd746bab1c9c6aa34
sd x3, 0(x2) # store 0xd746bab1c9c6aa34 in memory
fld f27, 0(x2) # load 0xd746bab1c9c6aa34 from memory into f27
fmax.s f21, f5, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f28, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f28
la x2, scratch
li x3, 0x34ba20eecc6153ec # load x3 with value 0x34ba20eecc6153ec
sd x3, 0(x2) # store 0x34ba20eecc6153ec in memory
fld f8, 0(x2) # load 0x34ba20eecc6153ec from memory into f8
fmax.s f30, f28, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f9, 0(x2) # load 0x7fffffff7f800000 from memory into f9
la x2, scratch
li x3, 0xac634a941ba773f5 # load x3 with value 0xac634a941ba773f5
sd x3, 0(x2) # store 0xac634a941ba773f5 in memory
fld f28, 0(x2) # load 0xac634a941ba773f5 from memory into f28
fmax.s f21, f9, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f2, 0(x2) # load 0xfffffffeff800000 from memory into f2
la x2, scratch
li x3, 0x83d40a3b305ac861 # load x3 with value 0x83d40a3b305ac861
sd x3, 0(x2) # store 0x83d40a3b305ac861 in memory
fld f7, 0(x2) # load 0x83d40a3b305ac861 from memory into f7
fmax.s f21, f2, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f17, 0(x2) # load 0xfeedbee57fc00000 from memory into f17
la x2, scratch
li x3, 0x38dfd1ebdcd6bc6d # load x3 with value 0x38dfd1ebdcd6bc6d
sd x3, 0(x2) # store 0x38dfd1ebdcd6bc6d in memory
fld f5, 0(x2) # load 0x38dfd1ebdcd6bc6d from memory into f5
fmax.s f8, f17, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f19, 0(x2) # load 0xffc0deff7fffffff from memory into f19
la x2, scratch
li x3, 0x901b07d8693cfd04 # load x3 with value 0x901b07d8693cfd04
sd x3, 0(x2) # store 0x901b07d8693cfd04 in memory
fld f7, 0(x2) # load 0x901b07d8693cfd04 from memory into f7
fmax.s f2, f19, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f15, 0(x2) # load 0xfeffffff7f800001 from memory into f15
la x2, scratch
li x3, 0xa39533515f512749 # load x3 with value 0xa39533515f512749
sd x3, 0(x2) # store 0xa39533515f512749 in memory
fld f21, 0(x2) # load 0xa39533515f512749 from memory into f21
fmax.s f31, f15, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f19, 0(x2) # load 0xfffffeff7fbfffff from memory into f19
la x2, scratch
li x3, 0x88c27c882af68907 # load x3 with value 0x88c27c882af68907
sd x3, 0(x2) # store 0x88c27c882af68907 in memory
fld f2, 0(x2) # load 0x88c27c882af68907 from memory into f2
fmax.s f31, f19, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x40a9ed679f9b101c # load x3 with value 0x40a9ed679f9b101c
sd x3, 0(x2) # store 0x40a9ed679f9b101c in memory
fld f15, 0(x2) # load 0x40a9ed679f9b101c from memory into f15
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f23, 0(x2) # load 0xffffefff00000000 from memory into f23
fmax.s f11, f15, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xadd89a2d4915fd13 # load x3 with value 0xadd89a2d4915fd13
sd x3, 0(x2) # store 0xadd89a2d4915fd13 in memory
fld f28, 0(x2) # load 0xadd89a2d4915fd13 from memory into f28
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f17, 0(x2) # load 0xaaaaaaaa80000000 from memory into f17
fmax.s f29, f28, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x5e2992b15354601c # load x3 with value 0x5e2992b15354601c
sd x3, 0(x2) # store 0x5e2992b15354601c in memory
fld f22, 0(x2) # load 0x5e2992b15354601c from memory into f22
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f31, 0(x2) # load 0x000000003f800000 from memory into f31
fmax.s f28, f22, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x52721d179b375a7a # load x3 with value 0x52721d179b375a7a
sd x3, 0(x2) # store 0x52721d179b375a7a in memory
fld f7, 0(x2) # load 0x52721d179b375a7a from memory into f7
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f2, 0(x2) # load 0xdeadbeefbf800000 from memory into f2
fmax.s f12, f7, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x553ce182792c9b5f # load x3 with value 0x553ce182792c9b5f
sd x3, 0(x2) # store 0x553ce182792c9b5f in memory
fld f27, 0(x2) # load 0x553ce182792c9b5f from memory into f27
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f11, 0(x2) # load 0xa1b2c3d400800000 from memory into f11
fmax.s f28, f27, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xa4476e6ef834ee19 # load x3 with value 0xa4476e6ef834ee19
sd x3, 0(x2) # store 0xa4476e6ef834ee19 in memory
fld f28, 0(x2) # load 0xa4476e6ef834ee19 from memory into f28
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f9, 0(x2) # load 0xffffffef80800000 from memory into f9
fmax.s f8, f28, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x1c7f283d70267ab9 # load x3 with value 0x1c7f283d70267ab9
sd x3, 0(x2) # store 0x1c7f283d70267ab9 in memory
fld f27, 0(x2) # load 0x1c7f283d70267ab9 from memory into f27
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f25, 0(x2) # load 0xfeffffef7f7fffff from memory into f25
fmax.s f31, f27, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xcdbdee8bce784ea3 # load x3 with value 0xcdbdee8bce784ea3
sd x3, 0(x2) # store 0xcdbdee8bce784ea3 in memory
fld f27, 0(x2) # load 0xcdbdee8bce784ea3 from memory into f27
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f13, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f13
fmax.s f10, f27, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x508b1899b36a1ab2 # load x3 with value 0x508b1899b36a1ab2
sd x3, 0(x2) # store 0x508b1899b36a1ab2 in memory
fld f2, 0(x2) # load 0x508b1899b36a1ab2 from memory into f2
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f9, 0(x2) # load 0x7fffffff7f800000 from memory into f9
fmax.s f13, f2, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x480611c3f10c81a7 # load x3 with value 0x480611c3f10c81a7
sd x3, 0(x2) # store 0x480611c3f10c81a7 in memory
fld f28, 0(x2) # load 0x480611c3f10c81a7 from memory into f28
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f5, 0(x2) # load 0xfffffffeff800000 from memory into f5
fmax.s f13, f28, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x543574191b4d9535 # load x3 with value 0x543574191b4d9535
sd x3, 0(x2) # store 0x543574191b4d9535 in memory
fld f24, 0(x2) # load 0x543574191b4d9535 from memory into f24
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f18, 0(x2) # load 0xfeedbee57fc00000 from memory into f18
fmax.s f30, f24, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x88486d9d129c62c4 # load x3 with value 0x88486d9d129c62c4
sd x3, 0(x2) # store 0x88486d9d129c62c4 in memory
fld f14, 0(x2) # load 0x88486d9d129c62c4 from memory into f14
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f20, 0(x2) # load 0xffc0deff7fffffff from memory into f20
fmax.s f17, f14, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x21e92e2d6871c386 # load x3 with value 0x21e92e2d6871c386
sd x3, 0(x2) # store 0x21e92e2d6871c386 in memory
fld f14, 0(x2) # load 0x21e92e2d6871c386 from memory into f14
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f28, 0(x2) # load 0xfeffffff7f800001 from memory into f28
fmax.s f20, f14, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xc511177541cb0f3d # load x3 with value 0xc511177541cb0f3d
sd x3, 0(x2) # store 0xc511177541cb0f3d in memory
fld f15, 0(x2) # load 0xc511177541cb0f3d from memory into f15
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f22, 0(x2) # load 0xfffffeff7fbfffff from memory into f22
fmax.s f30, f15, f22 # perform operation

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
