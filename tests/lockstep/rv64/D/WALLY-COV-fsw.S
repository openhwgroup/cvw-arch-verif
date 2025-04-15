///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fsw.S
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


# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f29, 0(x2) # load 0xffffefff00000000 from memory into f29
la x24, scratch # base address
addi x24, x24, 882 # sub immediate from rs1 to counter offset
fsw f29, -882(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f19, 0(x2) # load 0xaaaaaaaa80000000 from memory into f19
la x25, scratch # base address
addi x25, x25, -1118 # sub immediate from rs1 to counter offset
fsw f19, 1118(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f13, 0(x2) # load 0x000000003f800000 from memory into f13
la x30, scratch # base address
addi x30, x30, -366 # sub immediate from rs1 to counter offset
fsw f13, 366(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f17, 0(x2) # load 0xdeadbeefbf800000 from memory into f17
la x25, scratch # base address
addi x25, x25, 1419 # sub immediate from rs1 to counter offset
fsw f17, -1419(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f23, 0(x2) # load 0xa1b2c3d400800000 from memory into f23
la x22, scratch # base address
addi x22, x22, -1857 # sub immediate from rs1 to counter offset
fsw f23, 1857(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f13, 0(x2) # load 0xffffffef80800000 from memory into f13
la x12, scratch # base address
addi x12, x12, 1697 # sub immediate from rs1 to counter offset
fsw f13, -1697(x12) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f19, 0(x2) # load 0xfeffffef7f7fffff from memory into f19
la x6, scratch # base address
addi x6, x6, -203 # sub immediate from rs1 to counter offset
fsw f19, 203(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f30, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f30
la x7, scratch # base address
addi x7, x7, 1398 # sub immediate from rs1 to counter offset
fsw f30, -1398(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f6, 0(x2) # load 0x7fffffff7f800000 from memory into f6
la x11, scratch # base address
addi x11, x11, -1870 # sub immediate from rs1 to counter offset
fsw f6, 1870(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f16, 0(x2) # load 0xfffffffeff800000 from memory into f16
la x26, scratch # base address
addi x26, x26, 799 # sub immediate from rs1 to counter offset
fsw f16, -799(x26) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f17, 0(x2) # load 0xfeedbee57fc00000 from memory into f17
la x5, scratch # base address
addi x5, x5, 669 # sub immediate from rs1 to counter offset
fsw f17, -669(x5) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f14, 0(x2) # load 0xffc0deff7fffffff from memory into f14
la x28, scratch # base address
addi x28, x28, 1881 # sub immediate from rs1 to counter offset
fsw f14, -1881(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f21, 0(x2) # load 0xfeffffff7f800001 from memory into f21
la x1, scratch # base address
addi x1, x1, 737 # sub immediate from rs1 to counter offset
fsw f21, -737(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f20, 0(x2) # load 0xfffffeff7fbfffff from memory into f20
la x17, scratch # base address
addi x17, x17, -2031 # sub immediate from rs1 to counter offset
fsw f20, 2031(x17) # perform operation

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
