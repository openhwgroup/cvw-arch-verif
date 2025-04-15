///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fmv.x.h.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
fmv.x.h x6, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f8, 0(x2) # load 0xfffffffffffe8000 from memory into f8
fmv.x.h x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f29, 0(x2) # load 0x7fffffffffff3c00 from memory into f29
fmv.x.h x12, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f13, 0(x2) # load 0xfeedbee5beefbc00 from memory into f13
fmv.x.h x17, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f1, 0(x2) # load 0xffffffefffff0400 from memory into f1
fmv.x.h x15, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f23, 0(x2) # load 0x00000000ffff8400 from memory into f23
fmv.x.h x8, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f9, 0(x2) # load 0xefffffffffff7bff from memory into f9
fmv.x.h x19, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f24, 0(x2) # load 0xc0dec0dec0defbff from memory into f24
fmv.x.h x22, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f30, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f30
fmv.x.h x25, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f1, 0(x2) # load 0xffffffff0ffffc00 from memory into f1
fmv.x.h x5, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f13, 0(x2) # load 0xfffeffffffff7e00 from memory into f13
fmv.x.h x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
fmv.x.h x12, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f16, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f16
fmv.x.h x8, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f1, 0(x2) # load 0xfffffffcffff7dff from memory into f1
fmv.x.h x18, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

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
