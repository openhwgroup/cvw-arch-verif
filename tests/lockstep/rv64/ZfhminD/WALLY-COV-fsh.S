///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhminD/WALLY-COV-fsh.S
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


# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
la x21, scratch # base address
addi x21, x21, 235 # sub immediate from rs1 to counter offset
fsh f9, -235(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f8, 0(x2) # load 0xfffffffffffe8000 from memory into f8
la x28, scratch # base address
addi x28, x28, -106 # sub immediate from rs1 to counter offset
fsh f8, 106(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f10, 0(x2) # load 0x7fffffffffff3c00 from memory into f10
la x24, scratch # base address
addi x24, x24, 572 # sub immediate from rs1 to counter offset
fsh f10, -572(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f15, 0(x2) # load 0xfeedbee5beefbc00 from memory into f15
la x23, scratch # base address
addi x23, x23, -1632 # sub immediate from rs1 to counter offset
fsh f15, 1632(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f19, 0(x2) # load 0xffffffefffff0400 from memory into f19
la x8, scratch # base address
addi x8, x8, -1541 # sub immediate from rs1 to counter offset
fsh f19, 1541(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f5, 0(x2) # load 0x00000000ffff8400 from memory into f5
la x14, scratch # base address
addi x14, x14, -885 # sub immediate from rs1 to counter offset
fsh f5, 885(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
la x1, scratch # base address
addi x1, x1, 1301 # sub immediate from rs1 to counter offset
fsh f25, -1301(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f13, 0(x2) # load 0xc0dec0dec0defbff from memory into f13
la x24, scratch # base address
addi x24, x24, -1010 # sub immediate from rs1 to counter offset
fsh f13, 1010(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f16, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f16
la x21, scratch # base address
addi x21, x21, 474 # sub immediate from rs1 to counter offset
fsh f16, -474(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f5, 0(x2) # load 0xffffffff0ffffc00 from memory into f5
la x15, scratch # base address
addi x15, x15, -1645 # sub immediate from rs1 to counter offset
fsh f5, 1645(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f3, 0(x2) # load 0xfffeffffffff7e00 from memory into f3
la x19, scratch # base address
addi x19, x19, 1927 # sub immediate from rs1 to counter offset
fsh f3, -1927(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
la x11, scratch # base address
addi x11, x11, -462 # sub immediate from rs1 to counter offset
fsh f13, 462(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f17, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f17
la x6, scratch # base address
addi x6, x6, -1975 # sub immediate from rs1 to counter offset
fsh f17, 1975(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f29, 0(x2) # load 0xfffffffcffff7dff from memory into f29
la x5, scratch # base address
addi x5, x5, 391 # sub immediate from rs1 to counter offset
fsh f29, -391(x5) # perform operation

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
