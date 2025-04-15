///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.l.s.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f18, 0(x2) # load 0xffffefff00000000 from memory into f18
fcvt.l.s x7, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f17, 0(x2) # load 0xaaaaaaaa80000000 from memory into f17
fcvt.l.s x29, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f24, 0(x2) # load 0x000000003f800000 from memory into f24
fcvt.l.s x16, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f10, 0(x2) # load 0xdeadbeefbf800000 from memory into f10
fcvt.l.s x6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 24)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f8, 0(x2) # load 0xa1b2c3d400800000 from memory into f8
fcvt.l.s x12, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f7, 0(x2) # load 0xffffffef80800000 from memory into f7
fcvt.l.s x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f28, 0(x2) # load 0xfeffffef7f7fffff from memory into f28
fcvt.l.s x30, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f13, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f13
fcvt.l.s x1, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f1, 0(x2) # load 0x7fffffff7f800000 from memory into f1
fcvt.l.s x10, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f31, 0(x2) # load 0xfffffffeff800000 from memory into f31
fcvt.l.s x23, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f10, 0(x2) # load 0xfeedbee57fc00000 from memory into f10
fcvt.l.s x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f6, 0(x2) # load 0xffc0deff7fffffff from memory into f6
fcvt.l.s x13, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f3, 0(x2) # load 0xfeffffff7f800001 from memory into f3
fcvt.l.s x11, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f9, 0(x2) # load 0xfffffeff7fbfffff from memory into f9
fcvt.l.s x1, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

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
