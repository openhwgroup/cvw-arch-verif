///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaD/WALLY-COV-fli.d.S
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
fli.d f18, -1.0 # perform operation

# Testcase cp_rs1_fli (Immediate = min with rs1 encoding 5'b00001)
fli.d f17, min # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-16 with rs1 encoding 5'b00010)
fli.d f26, 0x1p-16 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-15 with rs1 encoding 5'b00011)
fli.d f24, 0x1p-15 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-8 with rs1 encoding 5'b00100)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fli.d f24, 0x1p-8 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-7 with rs1 encoding 5'b00101)
mv x7, x5 # switch signature pointer register to avoid conflict with test
fli.d f6, 0x1p-7 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.0625 with rs1 encoding 5'b00110)
fli.d f28, 0.0625 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.125 with rs1 encoding 5'b00111)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fli.d f22, 0.125 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.25 with rs1 encoding 5'b01000)
fli.d f7, 0.25 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.3125 with rs1 encoding 5'b01001)
fli.d f27, 0.3125 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.375 with rs1 encoding 5'b01010)
fli.d f30, 0.375 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.4375 with rs1 encoding 5'b01011)
fli.d f22, 0.4375 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.5 with rs1 encoding 5'b01100)
fli.d f26, 0.5 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.625 with rs1 encoding 5'b01101)
fli.d f26, 0.625 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.75 with rs1 encoding 5'b01110)
fli.d f28, 0.75 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.875 with rs1 encoding 5'b01111)
fli.d f28, 0.875 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.0 with rs1 encoding 5'b10000)
fli.d f6, 1.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.25 with rs1 encoding 5'b10001)
fli.d f12, 1.25 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.5 with rs1 encoding 5'b10010)
fli.d f12, 1.5 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.75 with rs1 encoding 5'b10011)
fli.d f21, 1.75 # perform operation

# Testcase cp_rs1_fli (Immediate = 2.0 with rs1 encoding 5'b10100)
fli.d f25, 2.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 2.5 with rs1 encoding 5'b10101)
fli.d f31, 2.5 # perform operation

# Testcase cp_rs1_fli (Immediate = 3.0 with rs1 encoding 5'b10110)
fli.d f28, 3.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 4.0 with rs1 encoding 5'b10111)
fli.d f8, 4.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 8.0 with rs1 encoding 5'b11000)
fli.d f27, 8.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 16.0 with rs1 encoding 5'b11001)
fli.d f15, 16.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 128.0 with rs1 encoding 5'b11010)
fli.d f22, 128.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 256.0 with rs1 encoding 5'b11011)
fli.d f8, 256.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p15 with rs1 encoding 5'b11100)
fli.d f11, 0x1p15 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p16 with rs1 encoding 5'b11101)
fli.d f27, 0x1p16 # perform operation

# Testcase cp_rs1_fli (Immediate = inf with rs1 encoding 5'b11110)
fli.d f22, inf # perform operation

# Testcase cp_rs1_fli (Immediate = nan with rs1 encoding 5'b11111)
fli.d f15, nan # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x17, x21 # perform first operation
fli.d f9, inf # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x17, x8 # perform first operation
fli.d f5, 0x1p16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x3, x21 # perform first operation
fli.d f28, 2.5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f15, f25, f6 # perform first operation
fli.d f15, 0.4375 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f16, f18, f6 # perform first operation
fli.d f16, 256.0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f21, f11, f20 # perform first operation
fli.d f21, 0x1p-8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f14, f22, f15 # perform first operation
fli.d f22, 0.75 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f28, f26, f18 # perform first operation
fli.d f18, 1.5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f30, f23, f19 # perform first operation
fli.d f28, 0.375 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fli.d f0, 0.75 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fli.d f1, 16.0 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fli.d f2, 0.4375 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fli.d f3, 8.0 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fli.d f4, 0x1p-15 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fli.d f5, 0.75 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fli.d f6, 1.0 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fli.d f7, 256.0 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fli.d f8, 1.5 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fli.d f9, inf # perform operation

# Testcase cp_fd (Test destination fd = x10)
fli.d f10, 0.375 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fli.d f11, 0.125 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fli.d f12, 2.0 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fli.d f13, 8.0 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fli.d f14, 0.0625 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fli.d f15, inf # perform operation

# Testcase cp_fd (Test destination fd = x16)
fli.d f16, 0.25 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fli.d f17, 0.875 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fli.d f18, 4.0 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fli.d f19, 0x1p-15 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fli.d f20, 256.0 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fli.d f21, 4.0 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fli.d f22, 1.0 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fli.d f23, 0x1p15 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fli.d f24, 0.25 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fli.d f25, 0.0625 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fli.d f26, 1.0 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fli.d f27, 0.4375 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fli.d f28, 2.0 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fli.d f29, 3.0 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fli.d f30, 0.0625 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fli.d f31, min # perform operation

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
