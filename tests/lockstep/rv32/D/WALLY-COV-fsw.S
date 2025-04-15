///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fsw.S
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
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffefff00000000 from memory into f29
la x24, scratch # base address
addi x24, x24, 1844 # sub immediate from rs1 to counter offset
fsw f29, -1844(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xaaaaaaaa80000000 from memory into f16
la x21, scratch # base address
addi x21, x21, -1704 # sub immediate from rs1 to counter offset
fsw f16, 1704(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003f800000 from memory into f29
la x22, scratch # base address
addi x22, x22, -871 # sub immediate from rs1 to counter offset
fsw f29, 871(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xdeadbeefbf800000 from memory into f9
la x3, scratch # base address
addi x3, x3, -962 # sub immediate from rs1 to counter offset
fsw f9, 962(x3) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xa1b2c3d400800000 from memory into f25
la x10, scratch # base address
addi x10, x10, 1506 # sub immediate from rs1 to counter offset
fsw f25, -1506(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffffffef80800000 from memory into f10
la x30, scratch # base address
addi x30, x30, -474 # sub immediate from rs1 to counter offset
fsw f10, 474(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfeffffef7f7fffff from memory into f25
la x22, scratch # base address
addi x22, x22, -63 # sub immediate from rs1 to counter offset
fsw f25, 63(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f29
la x13, scratch # base address
addi x13, x13, -1387 # sub immediate from rs1 to counter offset
fsw f29, 1387(x13) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7fffffff7f800000 from memory into f18
la x27, scratch # base address
addi x27, x27, 1096 # sub immediate from rs1 to counter offset
fsw f18, -1096(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffffffeff800000 from memory into f12
la x10, scratch # base address
addi x10, x10, 2020 # sub immediate from rs1 to counter offset
fsw f12, -2020(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeedbee57fc00000 from memory into f3
la x16, scratch # base address
addi x16, x16, -1042 # sub immediate from rs1 to counter offset
fsw f3, 1042(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffc0deff7fffffff from memory into f21
la x20, scratch # base address
addi x20, x20, -78 # sub immediate from rs1 to counter offset
fsw f21, 78(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfeffffff7f800001 from memory into f7
la x18, scratch # base address
addi x18, x18, -1307 # sub immediate from rs1 to counter offset
fsw f7, 1307(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffffeff7fbfffff from memory into f29
la x13, scratch # base address
addi x13, x13, -1488 # sub immediate from rs1 to counter offset
fsw f29, 1488(x13) # perform operation

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
