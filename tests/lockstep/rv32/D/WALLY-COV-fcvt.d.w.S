///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fcvt.d.w.S
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
li x0, 0xb47f0205 # load immediate value into integer register
fcvt.d.w f5, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0xf5b45015 # load immediate value into integer register
fcvt.d.w f29, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0xae6d080c # load immediate value into integer register
fcvt.d.w f27, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0xcac4c7ba # load immediate value into integer register
fcvt.d.w f10, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xa2e9dbf6 # load immediate value into integer register
fcvt.d.w f27, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0xfa6d632c # load immediate value into integer register
fcvt.d.w f15, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x3d69973d # load immediate value into integer register
fcvt.d.w f16, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0x0cfc17b2 # load immediate value into integer register
fcvt.d.w f28, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x5a4823ed # load immediate value into integer register
fcvt.d.w f10, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0xda0d6c9c # load immediate value into integer register
fcvt.d.w f28, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0xc55dae86 # load immediate value into integer register
fcvt.d.w f8, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xfe71dce5 # load immediate value into integer register
fcvt.d.w f24, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x2d8cebdb # load immediate value into integer register
fcvt.d.w f30, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x83db644c # load immediate value into integer register
fcvt.d.w f29, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xf4d17d42 # load immediate value into integer register
fcvt.d.w f5, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xb6e88917 # load immediate value into integer register
fcvt.d.w f28, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x36ee3a58 # load immediate value into integer register
fcvt.d.w f19, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x4d09b544 # load immediate value into integer register
fcvt.d.w f16, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xd0f7365a # load immediate value into integer register
fcvt.d.w f1, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0xc5d6296e # load immediate value into integer register
fcvt.d.w f17, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x7d8f2a61 # load immediate value into integer register
fcvt.d.w f12, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xc8597578 # load immediate value into integer register
fcvt.d.w f27, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x4a6c097f # load immediate value into integer register
fcvt.d.w f21, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0xed7f8a86 # load immediate value into integer register
fcvt.d.w f19, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x98edc105 # load immediate value into integer register
fcvt.d.w f18, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x75b0298c # load immediate value into integer register
fcvt.d.w f19, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x0fdbaddc # load immediate value into integer register
fcvt.d.w f9, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x0b27e750 # load immediate value into integer register
fcvt.d.w f11, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x33bae744 # load immediate value into integer register
fcvt.d.w f7, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0xc5aea197 # load immediate value into integer register
fcvt.d.w f23, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x3b410622 # load immediate value into integer register
fcvt.d.w f20, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0xf67237f9 # load immediate value into integer register
fcvt.d.w f2, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x5, 0x00000000 # load immediate value into integer register
fcvt.d.w f8, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x31, 0x00000001 # load immediate value into integer register
fcvt.d.w f29, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x15, 0x00000002 # load immediate value into integer register
fcvt.d.w f26, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
li x6, 0x80000000 # load immediate value into integer register
fcvt.d.w f27, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
li x10, 0x80000001 # load immediate value into integer register
fcvt.d.w f24, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
li x11, 0x7fffffff # load immediate value into integer register
fcvt.d.w f17, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
fsflagsi 0b00000 # clear all fflags
li x20, 0x7ffffffe # load immediate value into integer register
fcvt.d.w f6, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x21, 0xffffffff # load immediate value into integer register
fcvt.d.w f25, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x19, 0xfffffffe # load immediate value into integer register
fcvt.d.w f23, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
fsflagsi 0b00000 # clear all fflags
li x16, 0x5bbc8872 # load immediate value into integer register
fcvt.d.w f17, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x21, 0xaaaaaaaa # load immediate value into integer register
fcvt.d.w f11, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
fsflagsi 0b00000 # clear all fflags
li x3, 0x55555555 # load immediate value into integer register
fcvt.d.w f27, x3 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x14, x24 # perform first operation
fcvt.d.w f30, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x9, x28 # perform first operation
fcvt.d.w f6, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x1, x2 # perform first operation
fcvt.d.w f20, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f30, f22, f26 # perform first operation
fcvt.d.w f30, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f26, f10, f6 # perform first operation
fcvt.d.w f26, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f14, f13 # perform first operation
fcvt.d.w f8, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f5, f7, f9 # perform first operation
fcvt.d.w f7, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f30, f14, f25 # perform first operation
fcvt.d.w f25, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f27, f6, f17 # perform first operation
fcvt.d.w f20, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x28, x31 # perform first operation
fcvt.d.w f1, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x16, x9 # perform first operation
fcvt.d.w f1, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x31, x7 # perform first operation
fcvt.d.w f30, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x3, x27 # perform first operation
fcvt.d.w f19, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x11, x25 # perform first operation
fcvt.d.w f18, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x11, x27 # perform first operation
fcvt.d.w f30, x25 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x29, 0x48c48150 # load immediate value into integer register
fcvt.d.w f0, x29 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x5, 0x553e98ba # load immediate value into integer register
fcvt.d.w f1, x5 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x9, 0x25219bf7 # load immediate value into integer register
fcvt.d.w f2, x9 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x10, 0x5792eaf4 # load immediate value into integer register
fcvt.d.w f3, x10 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x10, 0x5afb3e8f # load immediate value into integer register
fcvt.d.w f4, x10 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x30, 0xc1669b41 # load immediate value into integer register
fcvt.d.w f5, x30 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x25, 0x63b64b37 # load immediate value into integer register
fcvt.d.w f6, x25 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x30, 0xf429dd5b # load immediate value into integer register
fcvt.d.w f7, x30 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x3, 0x974e4ab6 # load immediate value into integer register
fcvt.d.w f8, x3 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x30, 0xe4288209 # load immediate value into integer register
fcvt.d.w f9, x30 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x8, 0x162d48f5 # load immediate value into integer register
fcvt.d.w f10, x8 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x24, 0x37352189 # load immediate value into integer register
fcvt.d.w f11, x24 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x31, 0xe600f859 # load immediate value into integer register
fcvt.d.w f12, x31 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x11, 0x7e2136dd # load immediate value into integer register
fcvt.d.w f13, x11 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x12, 0x9e40c185 # load immediate value into integer register
fcvt.d.w f14, x12 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x3, 0x144bfeaa # load immediate value into integer register
fcvt.d.w f15, x3 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x12, 0xb9ea9ad3 # load immediate value into integer register
fcvt.d.w f16, x12 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x15, 0xb9bad72a # load immediate value into integer register
fcvt.d.w f17, x15 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x19, 0x50220d14 # load immediate value into integer register
fcvt.d.w f18, x19 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x6, 0x638a846f # load immediate value into integer register
fcvt.d.w f19, x6 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x17, 0x32859b11 # load immediate value into integer register
fcvt.d.w f20, x17 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x9, 0x766e1cb6 # load immediate value into integer register
fcvt.d.w f21, x9 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x18, 0xdcf713cb # load immediate value into integer register
fcvt.d.w f22, x18 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x17, 0x3ded59b2 # load immediate value into integer register
fcvt.d.w f23, x17 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x26, 0xfe2bed6e # load immediate value into integer register
fcvt.d.w f24, x26 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x15, 0xcfbb4e26 # load immediate value into integer register
fcvt.d.w f25, x15 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x30, 0x017cc145 # load immediate value into integer register
fcvt.d.w f26, x30 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x7, 0x28edaaa1 # load immediate value into integer register
fcvt.d.w f27, x7 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x9, 0xfd02828e # load immediate value into integer register
fcvt.d.w f28, x9 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x15, 0xe56b20c6 # load immediate value into integer register
fcvt.d.w f29, x15 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x13, 0x6d964b65 # load immediate value into integer register
fcvt.d.w f30, x13 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x5, 0x69e2cf24 # load immediate value into integer register
fcvt.d.w f31, x5 # perform operation

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
