///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaD/WALLY-COV-fround.s.S
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
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x57eb4cb6ad6e923d # load x3 with value 0x57eb4cb6ad6e923d
sd x3, 0(x2) # store 0x57eb4cb6ad6e923d in memory
flw f12, 0(x2) # load 0x57eb4cb6ad6e923d from memory into f12
fround.s f27, f12 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f1, 0(x2) # load 0xffffefff00000000 from memory into f1
fround.s f24, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f21, 0(x2) # load 0xaaaaaaaa80000000 from memory into f21
fround.s f8, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f5)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f5, 0(x2) # load 0x000000003f800000 from memory into f5
fround.s f3, f5 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f6, 0(x2) # load 0xdeadbeefbf800000 from memory into f6
fround.s f15, f6 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f19, 0(x2) # load 0xa1b2c3d400800000 from memory into f19
fround.s f24, f19 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f1, 0(x2) # load 0xffffffef80800000 from memory into f1
fround.s f19, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f22, 0(x2) # load 0xfeffffef7f7fffff from memory into f22
fround.s f18, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f12, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f12
fround.s f22, f12 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f24)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f24, 0(x2) # load 0x7fffffff7f800000 from memory into f24
fround.s f7, f24 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f3, 0(x2) # load 0xfffffffeff800000 from memory into f3
fround.s f17, f3 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f27, 0(x2) # load 0xfeedbee57fc00000 from memory into f27
fround.s f6, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f22, 0(x2) # load 0xffc0deff7fffffff from memory into f22
fround.s f14, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f22, 0(x2) # load 0xfeffffff7f800001 from memory into f22
fround.s f21, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f21, 0(x2) # load 0xfffffeff7fbfffff from memory into f21
fround.s f30, f21 # perform operation second time to make sure flags don't change

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
