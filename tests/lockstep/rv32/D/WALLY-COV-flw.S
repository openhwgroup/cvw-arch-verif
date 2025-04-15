///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-flw.S
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


# Testcase Random test for cp_NaNBox 
la x9, scratch # base address 
addi x9, x9, -619 # sub immediate from rs1 to counter offset
li x12, 0x00000000 # load x3 with 32 LSBs of 0x000000001f7405c9
li x14, 0x1f7405c9 # load x3 with 32 MSBs 0x000000001f7405c9
sw x12, 619(x9) # store x3 (0x00000000) in memory
addi x9, x9, 4 # move address up by 4
sw x14, 619(x9) # store x4 (0x1f7405c9) in memory 4 bytes after x3
addi x9, x9, - 4 # move back to scratch
flw f25, 619(x9) # perform operation

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
