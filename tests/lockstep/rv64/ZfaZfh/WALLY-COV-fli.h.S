///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaZfh/WALLY-COV-fli.h.S
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
fli.h f10, -1.0 # perform operation

# Testcase cp_rs1_fli (Immediate = min with rs1 encoding 5'b00001)
fli.h f14, min # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-16 with rs1 encoding 5'b00010)
fli.h f29, 0x1p-16 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-15 with rs1 encoding 5'b00011)
fli.h f2, 0x1p-15 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-8 with rs1 encoding 5'b00100)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fli.h f26, 0x1p-8 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p-7 with rs1 encoding 5'b00101)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fli.h f7, 0x1p-7 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.0625 with rs1 encoding 5'b00110)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fli.h f4, 0.0625 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.125 with rs1 encoding 5'b00111)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fli.h f25, 0.125 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.25 with rs1 encoding 5'b01000)
fli.h f11, 0.25 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.3125 with rs1 encoding 5'b01001)
fli.h f19, 0.3125 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.375 with rs1 encoding 5'b01010)
fli.h f24, 0.375 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.4375 with rs1 encoding 5'b01011)
fli.h f23, 0.4375 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.5 with rs1 encoding 5'b01100)
fli.h f14, 0.5 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.625 with rs1 encoding 5'b01101)
fli.h f10, 0.625 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.75 with rs1 encoding 5'b01110)
fli.h f3, 0.75 # perform operation

# Testcase cp_rs1_fli (Immediate = 0.875 with rs1 encoding 5'b01111)
fli.h f23, 0.875 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.0 with rs1 encoding 5'b10000)
fli.h f24, 1.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.25 with rs1 encoding 5'b10001)
fli.h f7, 1.25 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.5 with rs1 encoding 5'b10010)
fli.h f10, 1.5 # perform operation

# Testcase cp_rs1_fli (Immediate = 1.75 with rs1 encoding 5'b10011)
fli.h f5, 1.75 # perform operation

# Testcase cp_rs1_fli (Immediate = 2.0 with rs1 encoding 5'b10100)
fli.h f28, 2.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 2.5 with rs1 encoding 5'b10101)
fli.h f13, 2.5 # perform operation

# Testcase cp_rs1_fli (Immediate = 3.0 with rs1 encoding 5'b10110)
fli.h f19, 3.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 4.0 with rs1 encoding 5'b10111)
fli.h f27, 4.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 8.0 with rs1 encoding 5'b11000)
fli.h f29, 8.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 16.0 with rs1 encoding 5'b11001)
fli.h f20, 16.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 128.0 with rs1 encoding 5'b11010)
fli.h f14, 128.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 256.0 with rs1 encoding 5'b11011)
fli.h f2, 256.0 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p15 with rs1 encoding 5'b11100)
fli.h f23, 0x1p15 # perform operation

# Testcase cp_rs1_fli (Immediate = 0x1p16 with rs1 encoding 5'b11101)
fli.h f13, 0x1p16 # perform operation

# Testcase cp_rs1_fli (Immediate = inf with rs1 encoding 5'b11110)
fli.h f31, inf # perform operation

# Testcase cp_rs1_fli (Immediate = nan with rs1 encoding 5'b11111)
fli.h f11, nan # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x26, x11 # perform first operation
fli.h f31, 0.875 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x31, x9 # perform first operation
fli.h f22, 0x1p-8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x3, x1 # perform first operation
fli.h f14, 16.0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f16, f26, f7 # perform first operation
fli.h f16, 1.5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f1, f3 # perform first operation
fli.h f19, 2.0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f16, f3, f7 # perform first operation
fli.h f16, 0.25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f12, f29, f16 # perform first operation
fli.h f29, 4.0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f18, f28, f8 # perform first operation
fli.h f8, 0.875 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f9, f10, f27 # perform first operation
fli.h f26, 256.0 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fli.h f0, 0.375 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fli.h f1, 1.5 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fli.h f2, 0.875 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fli.h f3, 0x1p-16 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fli.h f4, 0.875 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fli.h f5, inf # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fli.h f6, 0.75 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fli.h f7, 0.4375 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fli.h f8, 0.25 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fli.h f9, 0.625 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fli.h f10, 0.4375 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fli.h f11, 0.0625 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fli.h f12, nan # perform operation

# Testcase cp_fd (Test destination fd = x13)
fli.h f13, 1.25 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fli.h f14, 1.0 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fli.h f15, 1.0 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fli.h f16, 8.0 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fli.h f17, 4.0 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fli.h f18, 0x1p-15 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fli.h f19, 1.0 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fli.h f20, 1.0 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fli.h f21, nan # perform operation

# Testcase cp_fd (Test destination fd = x22)
fli.h f22, 0.5 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fli.h f23, 0.4375 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fli.h f24, min # perform operation

# Testcase cp_fd (Test destination fd = x25)
fli.h f25, 1.25 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fli.h f26, 128.0 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fli.h f27, 0.625 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fli.h f28, 1.0 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fli.h f29, 1.25 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fli.h f30, 0.125 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fli.h f31, 0.125 # perform operation

# Testcase Random test for cp_NaNBox 
fli.h f5, 3.0 # perform operation

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
