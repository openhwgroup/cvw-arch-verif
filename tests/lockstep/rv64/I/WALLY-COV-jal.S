///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-jal.S
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

    
# Testcase cp_rd (Test destination rd = x0)
jal x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x1)
jal x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x2)
jal x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x3)
jal x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
jal x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
jal x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
jal x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
jal x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x8)
jal x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x9)
jal x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x10)
jal x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x11)
jal x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x12)
jal x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x13)
jal x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x14)
jal x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x15)
jal x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x16)
jal x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x17)
jal x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x18)
jal x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x19)
jal x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x20)
jal x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x21)
jal x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x22)
jal x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x23)
jal x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x24)
jal x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x25)
jal x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x26)
jal x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x27)
jal x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x28)
jal x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x29)
jal x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x30)
jal x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x31)
jal x31, 1f # perform operation
nop
nop
1:

# Testcase cp_imm_corners_jal 2
.align 14
 # start all tests on a multiple of the largest one
jal x1, 1f
1: 
jal x1, f3_jal

# Testcase cp_imm_corners_jal 3
.align 2
b2_jal:
jal x9, f4_jal # jump to aligned address to stress immediate
.align 2
f3_jal:
jal x9, b2_jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 4
.align 3
b3_jal:
jal x29, f5_jal # jump to aligned address to stress immediate
.align 3
f4_jal:
jal x29, b3_jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 5
.align 4
b4_jal:
jal x9, f6_jal # jump to aligned address to stress immediate
.align 4
f5_jal:
jal x9, b4_jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 6
.align 5
b5_jal:
jal x31, f7_jal # jump to aligned address to stress immediate
.align 5
f6_jal:
jal x31, b5_jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 7
.align 6
b6_jal:
jal x7, f8_jal # jump to aligned address to stress immediate
.align 6
f7_jal:
jal x7, b6_jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 8
.align 7
b7_jal:
jal x12, f9_jal # jump to aligned address to stress immediate
.align 7
f8_jal:
jal x12, b7_jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 9
.align 8
b8_jal:
jal x2, f10_jal # jump to aligned address to stress immediate
.align 8
f9_jal:
jal x2, b8_jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 10
.align 9
b9_jal:
jal x29, f11_jal # jump to aligned address to stress immediate
.align 9
f10_jal:
jal x29, b9_jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 11
.align 10
b10_jal:
jal x31, f12_jal # jump to aligned address to stress immediate
.align 10
f11_jal:
jal x31, b10_jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 12
.align 11
b11_jal:
jal x31, f13_jal # jump to aligned address to stress immediate
.align 11
f12_jal:
jal x31, b11_jal # jump to aligned address to stress immediate

# Testcase cp_imm_corners_jal 13
.align 12
b12_jal:
jal x12, f14_jal # jump to aligned address to stress immediate
.align 12
f13_jal:
jal x12, b12_jal # jump to aligned address to stress immediate
f14_jal:

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x5, x16 # perform first operation
jal x8, arbitraryLabel151
nop
arbitraryLabel151:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x17, x30 # perform first operation
jal x10, arbitraryLabel152
nop
arbitraryLabel152:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x13, x22 # perform first operation
jal x18, arbitraryLabel153
nop
arbitraryLabel153:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x10, x16 # perform first operation
jal x30, arbitraryLabel154
nop
arbitraryLabel154:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x10, x21 # perform first operation
jal x12, arbitraryLabel155
nop
arbitraryLabel155:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x16, x11 # perform first operation
jal x5, arbitraryLabel156
nop
arbitraryLabel156:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x5, x31 # perform first operation
jal x5, arbitraryLabel157
nop
arbitraryLabel157:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x14, x20 # perform first operation
jal x20, arbitraryLabel158
nop
arbitraryLabel158:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x10, x11 # perform first operation
jal x9, arbitraryLabel159
nop
arbitraryLabel159:
nop
 # perform second (triggering) operation

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
