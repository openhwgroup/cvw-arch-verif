///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.lu.s.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f20, 0(x2) # load 0xffffefff00000000 from memory into f20
fcvt.lu.s x17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f3, 0(x2) # load 0xaaaaaaaa80000000 from memory into f3
fcvt.lu.s x26, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 8)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f30, 0(x2) # load 0x000000003f800000 from memory into f30
fcvt.lu.s x22, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 16)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f1, 0(x2) # load 0xdeadbeefbf800000 from memory into f1
fcvt.lu.s x12, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f29, 0(x2) # load 0xa1b2c3d400800000 from memory into f29
fcvt.lu.s x9, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f9, 0(x2) # load 0xffffffef80800000 from memory into f9
fcvt.lu.s x22, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 40)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f25, 0(x2) # load 0xfeffffef7f7fffff from memory into f25
fcvt.lu.s x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f1, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f1
fcvt.lu.s x17, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f27, 0(x2) # load 0x7fffffff7f800000 from memory into f27
fcvt.lu.s x6, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f9, 0(x2) # load 0xfffffffeff800000 from memory into f9
fcvt.lu.s x11, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f2, 0(x2) # load 0xfeedbee57fc00000 from memory into f2
fcvt.lu.s x18, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f20, 0(x2) # load 0xffc0deff7fffffff from memory into f20
fcvt.lu.s x2, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f16, 0(x2) # load 0xfeffffff7f800001 from memory into f16
fcvt.lu.s x1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f26, 0(x2) # load 0xfffffeff7fbfffff from memory into f26
fcvt.lu.s x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

.EQU SIGSIZE,112


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
