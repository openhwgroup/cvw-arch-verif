///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fmv.w.x.S
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


# Testcase cp_rs1 (Test source rs1 = x0)
fsflagsi 0b00000 # clear all fflags
li x0, 0x7bdbdefc # load immediate value into integer register
fmv.w.x f10, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x35198a11 # load immediate value into integer register
fmv.w.x f22, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x52ecf96d # load immediate value into integer register
fmv.w.x f16, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x9935db79 # load immediate value into integer register
fmv.w.x f25, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x4f8d3d55 # load immediate value into integer register
fmv.w.x f14, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x5af35f09 # load immediate value into integer register
fmv.w.x f2, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x0a8b9383 # load immediate value into integer register
fmv.w.x f3, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xb0de7329 # load immediate value into integer register
fmv.w.x f26, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x267642e2 # load immediate value into integer register
fmv.w.x f9, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x18748d89 # load immediate value into integer register
fmv.w.x f28, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x4c84c641 # load immediate value into integer register
fmv.w.x f27, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xc1b0263d # load immediate value into integer register
fmv.w.x f28, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xd2f13c77 # load immediate value into integer register
fmv.w.x f31, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0xb88d3fab # load immediate value into integer register
fmv.w.x f2, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xbf228391 # load immediate value into integer register
fmv.w.x f27, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xebec4ef4 # load immediate value into integer register
fmv.w.x f11, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x6ecb5c2a # load immediate value into integer register
fmv.w.x f8, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x1e33d628 # load immediate value into integer register
fmv.w.x f29, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xd716a95d # load immediate value into integer register
fmv.w.x f11, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x33e36ffb # load immediate value into integer register
fmv.w.x f24, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x564297b3 # load immediate value into integer register
fmv.w.x f25, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x38dfd3d8 # load immediate value into integer register
fmv.w.x f27, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0xfac6f2f0 # load immediate value into integer register
fmv.w.x f1, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x46e930b7 # load immediate value into integer register
fmv.w.x f28, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0xb294a458 # load immediate value into integer register
fmv.w.x f17, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x47ec93cf # load immediate value into integer register
fmv.w.x f17, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0xf95d8959 # load immediate value into integer register
fmv.w.x f18, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x747ab7f1 # load immediate value into integer register
fmv.w.x f7, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x98816143 # load immediate value into integer register
fmv.w.x f3, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x3c889862 # load immediate value into integer register
fmv.w.x f19, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0xeb494b39 # load immediate value into integer register
fmv.w.x f22, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0xc065e7d3 # load immediate value into integer register
fmv.w.x f10, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x3, 0x00000000 # load immediate value into integer register
fmv.w.x f11, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x14, 0x00000001 # load immediate value into integer register
fmv.w.x f2, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x18, 0x00000002 # load immediate value into integer register
fmv.w.x f1, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
li x12, 0x80000000 # load immediate value into integer register
fmv.w.x f24, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
li x8, 0x80000001 # load immediate value into integer register
fmv.w.x f25, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
li x20, 0x7fffffff # load immediate value into integer register
fmv.w.x f30, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
fsflagsi 0b00000 # clear all fflags
li x1, 0x7ffffffe # load immediate value into integer register
fmv.w.x f28, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x24, 0xffffffff # load immediate value into integer register
fmv.w.x f3, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x2, 0xfffffffe # load immediate value into integer register
fmv.w.x f15, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
fsflagsi 0b00000 # clear all fflags
li x12, 0x5bbc8872 # load immediate value into integer register
fmv.w.x f24, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x31, 0xaaaaaaaa # load immediate value into integer register
fmv.w.x f10, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
fsflagsi 0b00000 # clear all fflags
li x15, 0x55555555 # load immediate value into integer register
fmv.w.x f6, x15 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x30, x16 # perform first operation
fmv.w.x f1, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x6, x13 # perform first operation
fmv.w.x f29, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x3, x19 # perform first operation
fmv.w.x f27, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f7, f16, f3 # perform first operation
fmv.w.x f7, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f6, f13, f22 # perform first operation
fmv.w.x f6, x4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f28, f25 # perform first operation
fmv.w.x f20, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f31, f9 # perform first operation
fmv.w.x f31, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f22, f19, f10 # perform first operation
fmv.w.x f10, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f3, f10, f9 # perform first operation
fmv.w.x f28, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x1, x19 # perform first operation
fmv.w.x f24, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x14, x16 # perform first operation
fmv.w.x f31, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x22, x12 # perform first operation
fmv.w.x f9, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x19, x4 # perform first operation
fmv.w.x f10, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x14, x4 # perform first operation
fmv.w.x f13, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x23, x10 # perform first operation
fmv.w.x f6, x9 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x23, 0xfa394912 # load immediate value into integer register
fmv.w.x f0, x23 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x27, 0x7e2d0c18 # load immediate value into integer register
fmv.w.x f1, x27 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x16, 0xe8826119 # load immediate value into integer register
fmv.w.x f2, x16 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x30, 0xfc00a477 # load immediate value into integer register
fmv.w.x f3, x30 # perform operation

# Testcase cp_fd (Test destination fd = x4)
fsflagsi 0b00000 # clear all fflags
li x7, 0x75539c70 # load immediate value into integer register
fmv.w.x f4, x7 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x25, 0xd782cc07 # load immediate value into integer register
fmv.w.x f5, x25 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x10, 0x8aca47ad # load immediate value into integer register
fmv.w.x f6, x10 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x29, 0x0e2a917b # load immediate value into integer register
fmv.w.x f7, x29 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x12, 0xa30e48a0 # load immediate value into integer register
fmv.w.x f8, x12 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x6, 0x9023d8b4 # load immediate value into integer register
fmv.w.x f9, x6 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x17, 0x04414d3f # load immediate value into integer register
fmv.w.x f10, x17 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x25, 0x27b97f48 # load immediate value into integer register
fmv.w.x f11, x25 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x11, 0x2a82e8c7 # load immediate value into integer register
fmv.w.x f12, x11 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x12, 0x70485d92 # load immediate value into integer register
fmv.w.x f13, x12 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x23, 0x8f4041d9 # load immediate value into integer register
fmv.w.x f14, x23 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x2, 0xad12bfe6 # load immediate value into integer register
fmv.w.x f15, x2 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x28, 0x16542e26 # load immediate value into integer register
fmv.w.x f16, x28 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x9, 0x80c5edf2 # load immediate value into integer register
fmv.w.x f17, x9 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x24, 0xc185fc3a # load immediate value into integer register
fmv.w.x f18, x24 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x14, 0xe2b093d9 # load immediate value into integer register
fmv.w.x f19, x14 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x11, 0xa8f510c2 # load immediate value into integer register
fmv.w.x f20, x11 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x24, 0x740df547 # load immediate value into integer register
fmv.w.x f21, x24 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x10, 0x4af10282 # load immediate value into integer register
fmv.w.x f22, x10 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x14, 0x5014b947 # load immediate value into integer register
fmv.w.x f23, x14 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x16, 0x28cfc755 # load immediate value into integer register
fmv.w.x f24, x16 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x28, 0xb7286711 # load immediate value into integer register
fmv.w.x f25, x28 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x2, 0x456ed3e4 # load immediate value into integer register
fmv.w.x f26, x2 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x79b1696c # load immediate value into integer register
fmv.w.x f27, x27 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x6, 0xa2d5661b # load immediate value into integer register
fmv.w.x f28, x6 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x5, 0x933f8aa7 # load immediate value into integer register
fmv.w.x f29, x5 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x15, 0x4454cfad # load immediate value into integer register
fmv.w.x f30, x15 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x19, 0x041ac4c9 # load immediate value into integer register
fmv.w.x f31, x19 # perform operation

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
