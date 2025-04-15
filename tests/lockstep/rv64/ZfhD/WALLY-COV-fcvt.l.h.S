///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fcvt.l.h.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f31, 0(x2) # load 0xffffffff00000000 from memory into f31
fcvt.l.h x24, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f11, 0(x2) # load 0xfffffffffffe8000 from memory into f11
fcvt.l.h x30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f14, 0(x2) # load 0x7fffffffffff3c00 from memory into f14
fcvt.l.h x24, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f16, 0(x2) # load 0xfeedbee5beefbc00 from memory into f16
fcvt.l.h x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f25, 0(x2) # load 0xffffffefffff0400 from memory into f25
fcvt.l.h x12, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f8, 0(x2) # load 0x00000000ffff8400 from memory into f8
fcvt.l.h x5, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f29, 0(x2) # load 0xefffffffffff7bff from memory into f29
fcvt.l.h x23, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
fcvt.l.h x18, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f9, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f9
fcvt.l.h x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f13, 0(x2) # load 0xffffffff0ffffc00 from memory into f13
fcvt.l.h x21, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f21, 0(x2) # load 0xfffeffffffff7e00 from memory into f21
fcvt.l.h x8, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f25, 0(x2) # load 0xffffffefffff7fff from memory into f25
fcvt.l.h x26, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
fcvt.l.h x23, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f23, 0(x2) # load 0xfffffffcffff7dff from memory into f23
fcvt.l.h x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

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
