///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fcvt.wu.s.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffffefff00000000 from memory into f8
fcvt.wu.s x10, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xaaaaaaaa80000000 from memory into f28
fcvt.wu.s x7, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 4)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000003f800000 from memory into f28
fcvt.wu.s x18, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xdeadbeefbf800000 from memory into f26
fcvt.wu.s x13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xa1b2c3d400800000 from memory into f13
fcvt.wu.s x18, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffef80800000 from memory into f15
fcvt.wu.s x2, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 20)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfeffffef7f7fffff from memory into f29
fcvt.wu.s x11, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f13
fcvt.wu.s x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fffffff7f800000 from memory into f19
fcvt.wu.s x15, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfffffffeff800000 from memory into f10
fcvt.wu.s x25, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfeedbee57fc00000 from memory into f7
fcvt.wu.s x10, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffc0deff7fffffff from memory into f13
fcvt.wu.s x23, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 44)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfeffffff7f800001 from memory into f13
fcvt.wu.s x26, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfffffeff7fbfffff from memory into f14
fcvt.wu.s x16, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 52)

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
