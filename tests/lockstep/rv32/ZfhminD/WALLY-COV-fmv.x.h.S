///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhminD/WALLY-COV-fmv.x.h.S
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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
fmv.x.h x6, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfffffffffffe8000 from memory into f6
fmv.x.h x16, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7fffffffffff3c00 from memory into f18
fmv.x.h x29, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeedbee5beefbc00 from memory into f3
fmv.x.h x13, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffefffff0400 from memory into f14
fmv.x.h x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ffff8400 from memory into f9
fmv.x.h x23, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
fmv.x.h x17, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xc0dec0dec0defbff from memory into f6
fmv.x.h x8, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f9
fmv.x.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffffffff0ffffc00 from memory into f25
fmv.x.h x3, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfffeffffffff7e00 from memory into f1
fmv.x.h x5, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
fmv.x.h x2, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f19
fmv.x.h x2, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffcffff7dff from memory into f5
fmv.x.h x3, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 52)

.EQU SIGSIZE,56


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
