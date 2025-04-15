///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.j.S
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

    
# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: nop
c.j 1b # backward branch
3: nop # done with sequence

.align 2 # Start at an address multiple of 4. Required for covering 2 byte jump.

# Testcase cp_imm_corners_jal 1
.align 13
 # start all tests on a multiple of the largest one
c.j 1f
1: 
c.j f2_c.j

# Testcase cp_imm_corners_jal 2
.align 1
b1_c.j:
c.j f3_c.j # jump to aligned address to stress immediate
.align 1
f2_c.j:
c.j b1_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 3
.align 2
b2_c.j:
c.j f4_c.j # jump to aligned address to stress immediate
.align 2
f3_c.j:
c.j b2_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 4
.align 3
b3_c.j:
c.j f5_c.j # jump to aligned address to stress immediate
.align 3
f4_c.j:
c.j b3_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 5
.align 4
b4_c.j:
c.j f6_c.j # jump to aligned address to stress immediate
.align 4
f5_c.j:
c.j b4_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 6
.align 5
b5_c.j:
c.j f7_c.j # jump to aligned address to stress immediate
.align 5
f6_c.j:
c.j b5_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 7
.align 6
b6_c.j:
c.j f8_c.j # jump to aligned address to stress immediate
.align 6
f7_c.j:
c.j b6_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 8
.align 7
b7_c.j:
c.j f9_c.j # jump to aligned address to stress immediate
.align 7
f8_c.j:
c.j b7_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 9
.align 8
b8_c.j:
c.j f10_c.j # jump to aligned address to stress immediate
.align 8
f9_c.j:
c.j b8_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 10
.align 9
b9_c.j:
c.j f11_c.j # jump to aligned address to stress immediate
.align 9
f10_c.j:
c.j b9_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 11
.align 10
b10_c.j:
c.j f12_c.j # jump to aligned address to stress immediate
.align 10
f11_c.j:
c.j b10_c.j # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 12
.align 11
b11_c.j:
c.j f13_c.j # jump to aligned address to stress immediate
.align 11
f12_c.j:
.half 0xB001 # backward j by -2048 to b12; GCC is not generating this compressed branch properly per https://github.com/riscv-collab/riscv-gnu-toolchain/issues/1647
f13_c.j:

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
