///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaF/WALLY-COV-fli.s.S
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


# Testcase cp_rs1_fli (Immediate = -1.0 with rs1 encoding 5'b00000)
fli.s f1, -1.0 # perform operation

# Testcase cp_rs1_fli (Immediate = min with rs1 encoding 5'b00001)
fli.s f2, min # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-16 with rs1 encoding 5'b00010)
fli.s f11, 0x1p-16 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-15 with rs1 encoding 5'b00011)
fli.s f5, 0x1p-15 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-8 with rs1 encoding 5'b00100)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fli.s f13, 0x1p-8 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-7 with rs1 encoding 5'b00101)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fli.s f27, 0x1p-7 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.0625 with rs1 encoding 5'b00110)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fli.s f8, 0.0625 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.125 with rs1 encoding 5'b00111)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fli.s f1, 0.125 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.25 with rs1 encoding 5'b01000)
fli.s f20, 0.25 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.3125 with rs1 encoding 5'b01001)
fli.s f11, 0.3125 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.375 with rs1 encoding 5'b01010)
fli.s f12, 0.375 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.4375 with rs1 encoding 5'b01011)
fli.s f12, 0.4375 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.5 with rs1 encoding 5'b01100)
fli.s f16, 0.5 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.625 with rs1 encoding 5'b01101)
fli.s f20, 0.625 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.75 with rs1 encoding 5'b01110)
fli.s f26, 0.75 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.875 with rs1 encoding 5'b01111)
fli.s f18, 0.875 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.0 with rs1 encoding 5'b10000)
fli.s f5, 1.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.25 with rs1 encoding 5'b10001)
fli.s f14, 1.25 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.5 with rs1 encoding 5'b10010)
fli.s f7, 1.5 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.75 with rs1 encoding 5'b10011)
fli.s f22, 1.75 # perform operation

# Testcase cp_rs1_fli (Immediate = 2.0 with rs1 encoding 5'b10100)
fli.s f5, 2.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 2.5 with rs1 encoding 5'b10101)
fli.s f18, 2.5 # perform operation

# Testcase cp_rs1_fli (Immediate = 3.0 with rs1 encoding 5'b10110)
fli.s f28, 3.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 4.0 with rs1 encoding 5'b10111)
fli.s f30, 4.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 8.0 with rs1 encoding 5'b11000)
fli.s f5, 8.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 16.0 with rs1 encoding 5'b11001)
fli.s f13, 16.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 128.0 with rs1 encoding 5'b11010)
fli.s f24, 128.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 256.0 with rs1 encoding 5'b11011)
fli.s f24, 256.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p15 with rs1 encoding 5'b11100)
fli.s f30, 0x1p15 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p16 with rs1 encoding 5'b11101)
fli.s f18, 0x1p16 # perform operation

# Testcase cp_rs1_fli (Immediate = inf with rs1 encoding 5'b11110)
fli.s f22, inf # perform operation

# Testcase cp_rs1_fli (Immediate = nan with rs1 encoding 5'b11111)
fli.s f6, nan # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x30, x15 # perform first operation
fli.s f19, 0.875 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x1, x5 # perform first operation
fli.s f3, 128.0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x17, x29 # perform first operation
fli.s f5, 0.5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f3, f6, f22 # perform first operation
fli.s f3, 8.0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f2, f31, f26 # perform first operation
fli.s f2, 0.75 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f14, f20, f25 # perform first operation
fli.s f14, 4.0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f2, f25, f14 # perform first operation
fli.s f25, -1.0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f17, f28, f9 # perform first operation
fli.s f9, 0.375 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f9, f17, f30 # perform first operation
fli.s f10, nan # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fli.s f0, 0.0625 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fli.s f1, 8.0 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fli.s f2, 0.75 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fli.s f3, 0x1p15 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fli.s f4, 0.625 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fli.s f5, 2.5 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fli.s f6, 0.875 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fli.s f7, 0x1p-16 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fli.s f8, 0.75 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fli.s f9, 0.125 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fli.s f10, 0.5 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fli.s f11, 0x1p-7 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fli.s f12, 0.125 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fli.s f13, 0x1p16 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fli.s f14, 0.625 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fli.s f15, 0x1p16 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fli.s f16, 128.0 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fli.s f17, inf # perform operation

# Testcase cp_fd (Test destination fd = x18)
fli.s f18, 8.0 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fli.s f19, 2.5 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fli.s f20, 0.375 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fli.s f21, 0.0625 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fli.s f22, 0x1p-7 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fli.s f23, 8.0 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fli.s f24, 1.5 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fli.s f25, 8.0 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fli.s f26, 16.0 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fli.s f27, 256.0 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fli.s f28, 0.625 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fli.s f29, min # perform operation

# Testcase cp_fd (Test destination fd = x30)
fli.s f30, 16.0 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fli.s f31, nan # perform operation

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
