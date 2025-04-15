///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fcvt.s.lu.S
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
li x0, 0x4ebccbd5b8adbfef # load immediate value into integer register
fcvt.s.lu f10, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x77bc560301d37f15 # load immediate value into integer register
fcvt.s.lu f22, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x47370eaedc806e32 # load immediate value into integer register
fcvt.s.lu f21, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x89179cbb65206a83 # load immediate value into integer register
fcvt.s.lu f16, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x51f4e189679400ee # load immediate value into integer register
fcvt.s.lu f24, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x855c2a951f12068c # load immediate value into integer register
fcvt.s.lu f24, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x40c89b7f751f06e3 # load immediate value into integer register
fcvt.s.lu f8, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0x40711df47197e2f0 # load immediate value into integer register
fcvt.s.lu f1, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x039d8205c041c833 # load immediate value into integer register
fcvt.s.lu f16, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x92200b0cc06ee897 # load immediate value into integer register
fcvt.s.lu f28, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0xcf0da4f6a1f4ad70 # load immediate value into integer register
fcvt.s.lu f14, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xac6695470c8e5f5f # load immediate value into integer register
fcvt.s.lu f7, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x6db99d501c0ba901 # load immediate value into integer register
fcvt.s.lu f17, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x66439d5de16b1dcf # load immediate value into integer register
fcvt.s.lu f30, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xa0417018826fb2a9 # load immediate value into integer register
fcvt.s.lu f18, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xdf47770bf669444d # load immediate value into integer register
fcvt.s.lu f19, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0xcf3da93f4589c787 # load immediate value into integer register
fcvt.s.lu f5, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x3a6c23661ffe35dc # load immediate value into integer register
fcvt.s.lu f5, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x423146394930da37 # load immediate value into integer register
fcvt.s.lu f1, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0xc0743c3d4821f12f # load immediate value into integer register
fcvt.s.lu f27, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x734c32dd6c80e76f # load immediate value into integer register
fcvt.s.lu f15, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x5be1713e872a0a5a # load immediate value into integer register
fcvt.s.lu f22, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0xab25d67ebb566d0e # load immediate value into integer register
fcvt.s.lu f8, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x26d3288a83c84230 # load immediate value into integer register
fcvt.s.lu f29, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x1714e3006e1e2803 # load immediate value into integer register
fcvt.s.lu f15, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x54519f322d0d4993 # load immediate value into integer register
fcvt.s.lu f15, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0xb947945aaae18bd4 # load immediate value into integer register
fcvt.s.lu f10, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xe63477569f377c02 # load immediate value into integer register
fcvt.s.lu f16, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x5e0eead246d303b0 # load immediate value into integer register
fcvt.s.lu f16, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x91e31ce68d081db4 # load immediate value into integer register
fcvt.s.lu f28, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x263687ec3a18ee2e # load immediate value into integer register
fcvt.s.lu f17, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x686ba743b3cfb526 # load immediate value into integer register
fcvt.s.lu f12, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x31, 0x0000000000000000 # load immediate value into integer register
fcvt.s.lu f14, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x27, 0x0000000000000001 # load immediate value into integer register
fcvt.s.lu f29, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x18, 0x0000000000000002 # load immediate value into integer register
fcvt.s.lu f24, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x27, 0x8000000000000000 # load immediate value into integer register
fcvt.s.lu f22, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x19, 0x8000000000000001 # load immediate value into integer register
fcvt.s.lu f18, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x29, 0x7fffffffffffffff # load immediate value into integer register
fcvt.s.lu f14, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x2, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.s.lu f28, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x17, 0xffffffffffffffff # load immediate value into integer register
fcvt.s.lu f16, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x9, 0xfffffffffffffffe # load immediate value into integer register
fcvt.s.lu f3, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x17, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.s.lu f5, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x18, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.s.lu f12, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x30, 0x5555555555555555 # load immediate value into integer register
fcvt.s.lu f23, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x21, 0x00000000ffffffff # load immediate value into integer register
fcvt.s.lu f28, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x5, 0x00000000fffffffe # load immediate value into integer register
fcvt.s.lu f24, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x20, 0x0000000100000000 # load immediate value into integer register
fcvt.s.lu f29, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x1, 0x0000000100000001 # load immediate value into integer register
fcvt.s.lu f27, x1 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x9, x10 # perform first operation
fcvt.s.lu f19, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x28, x16 # perform first operation
fcvt.s.lu f1, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x31, x22 # perform first operation
fcvt.s.lu f8, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f22, f31, f25 # perform first operation
fcvt.s.lu f22, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f2, f15, f20 # perform first operation
fcvt.s.lu f2, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f2, f26, f14 # perform first operation
fcvt.s.lu f2, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f19, f25, f29 # perform first operation
fcvt.s.lu f25, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f31, f6, f17 # perform first operation
fcvt.s.lu f17, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f28, f14, f15 # perform first operation
fcvt.s.lu f19, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x26, x31 # perform first operation
fcvt.s.lu f6, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x14, x20 # perform first operation
fcvt.s.lu f10, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x5, x10 # perform first operation
fcvt.s.lu f3, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x7, x2 # perform first operation
fcvt.s.lu f11, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x29, x17 # perform first operation
fcvt.s.lu f29, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x23, x18 # perform first operation
fcvt.s.lu f18, x22 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x31, 0x815b8c1a9ace9f87 # load immediate value into integer register
fcvt.s.lu f0, x31 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x25, 0x9d0fbab98440cb21 # load immediate value into integer register
fcvt.s.lu f1, x25 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x15, 0x28bbaef6992c5a77 # load immediate value into integer register
fcvt.s.lu f2, x15 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x16, 0x892fc6aa302e274f # load immediate value into integer register
fcvt.s.lu f3, x16 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x314666eb26e2b7bd # load immediate value into integer register
fcvt.s.lu f4, x5 # perform operation

# Testcase cp_fd (Test destination fd = x5)
fsflagsi 0b00000 # clear all fflags
li x15, 0xab21e0643fbf7fb1 # load immediate value into integer register
fcvt.s.lu f5, x15 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x9, 0x769f19166b22bcca # load immediate value into integer register
fcvt.s.lu f6, x9 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x31, 0x467e3307c6f3895c # load immediate value into integer register
fcvt.s.lu f7, x31 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x21, 0x7b982992c45e5943 # load immediate value into integer register
fcvt.s.lu f8, x21 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x7, 0xe06eb41a8d077417 # load immediate value into integer register
fcvt.s.lu f9, x7 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x7, 0xfa13b1375a014eb5 # load immediate value into integer register
fcvt.s.lu f10, x7 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x5, 0xe39dfc98b31325a1 # load immediate value into integer register
fcvt.s.lu f11, x5 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x1, 0x43680b9bb3d9401b # load immediate value into integer register
fcvt.s.lu f12, x1 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x21, 0x1ea2542558c62a86 # load immediate value into integer register
fcvt.s.lu f13, x21 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x1, 0xa156ab14bf2fa17f # load immediate value into integer register
fcvt.s.lu f14, x1 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x12, 0xc4df6cfab5646d36 # load immediate value into integer register
fcvt.s.lu f15, x12 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x30, 0xd76cedc5f95fe8c1 # load immediate value into integer register
fcvt.s.lu f16, x30 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x9, 0x81d0d2b8516c5951 # load immediate value into integer register
fcvt.s.lu f17, x9 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x25, 0x8d7aac4d19c0d95c # load immediate value into integer register
fcvt.s.lu f18, x25 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x13, 0x0145414dd8d3affe # load immediate value into integer register
fcvt.s.lu f19, x13 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x3, 0x978bd62193ffb59f # load immediate value into integer register
fcvt.s.lu f20, x3 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x15, 0xe098108c129e1468 # load immediate value into integer register
fcvt.s.lu f21, x15 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x12, 0xc1f8e0ed968b6948 # load immediate value into integer register
fcvt.s.lu f22, x12 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x21, 0xb4fd038f58de30d5 # load immediate value into integer register
fcvt.s.lu f23, x21 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x27, 0xb650f65011c7cec4 # load immediate value into integer register
fcvt.s.lu f24, x27 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x10, 0x265c071b96000d44 # load immediate value into integer register
fcvt.s.lu f25, x10 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x10, 0x9d8d19d4445118e1 # load immediate value into integer register
fcvt.s.lu f26, x10 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x12, 0x2c29756bc786967f # load immediate value into integer register
fcvt.s.lu f27, x12 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x7, 0xe75202a01d235161 # load immediate value into integer register
fcvt.s.lu f28, x7 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x7, 0x9aa567787a3aa459 # load immediate value into integer register
fcvt.s.lu f29, x7 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x11, 0xa31e1db8d4b2c6ee # load immediate value into integer register
fcvt.s.lu f30, x11 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x3, 0xc5c1db76fb4e7dad # load immediate value into integer register
fcvt.s.lu f31, x3 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x5, 0x7372c5369763f2ea # load immediate value into integer register
fcvt.s.lu f30, x5, dyn # perform operation
fcvt.s.lu f30, x5, rdn # perform operation
fcvt.s.lu f30, x5, rmm # perform operation
fcvt.s.lu f30, x5, rne # perform operation
fcvt.s.lu f30, x5, rtz # perform operation
fcvt.s.lu f30, x5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.lu f30, x5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.lu f30, x5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.lu f30, x5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.lu f30, x5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.lu f30, x5 # perform operation


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
