///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fcvt.w.h.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffffffff00000000 from memory into f20
fcvt.w.h x24, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfffffffffffe8000 from memory into f19
fcvt.w.h x24, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7fffffffffff3c00 from memory into f11
fcvt.w.h x22, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfeedbee5beefbc00 from memory into f2
fcvt.w.h x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffefffff0400 from memory into f21
fcvt.w.h x19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
fcvt.w.h x26, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xefffffffffff7bff from memory into f9
fcvt.w.h x28, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc0dec0dec0defbff from memory into f21
fcvt.w.h x18, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f8
fcvt.w.h x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffff0ffffc00 from memory into f10
fcvt.w.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfffeffffffff7e00 from memory into f15
fcvt.w.h x25, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffefffff7fff from memory into f10
fcvt.w.h x3, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f20
fcvt.w.h x27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffffffcffff7dff from memory into f29
fcvt.w.h x3, f29 # perform operation
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
