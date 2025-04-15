///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfh/WALLY-COV-fcvt.h.w.S
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
li x0, 0x41718800 # load immediate value into integer register
fcvt.h.w f14, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0xe3bdb191 # load immediate value into integer register
fcvt.h.w f15, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x5710f6af # load immediate value into integer register
fcvt.h.w f23, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x42f2dc6a # load immediate value into integer register
fcvt.h.w f7, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xe80ae15c # load immediate value into integer register
fcvt.h.w f16, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x763313b1 # load immediate value into integer register
fcvt.h.w f11, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x79ed2a13 # load immediate value into integer register
fcvt.h.w f17, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xdc41021d # load immediate value into integer register
fcvt.h.w f1, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0xd662fffb # load immediate value into integer register
fcvt.h.w f26, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0xa2080f72 # load immediate value into integer register
fcvt.h.w f27, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0xc4a27d60 # load immediate value into integer register
fcvt.h.w f17, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xbdef43b0 # load immediate value into integer register
fcvt.h.w f12, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xb8a4bbea # load immediate value into integer register
fcvt.h.w f18, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x9a49d8bf # load immediate value into integer register
fcvt.h.w f14, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x78f90f7a # load immediate value into integer register
fcvt.h.w f18, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xb37c5879 # load immediate value into integer register
fcvt.h.w f22, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x85e0e86f # load immediate value into integer register
fcvt.h.w f6, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x0719dab3 # load immediate value into integer register
fcvt.h.w f10, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x2769e3a3 # load immediate value into integer register
fcvt.h.w f22, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0xdd45923e # load immediate value into integer register
fcvt.h.w f13, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0xda2bc007 # load immediate value into integer register
fcvt.h.w f30, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x63461d35 # load immediate value into integer register
fcvt.h.w f15, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x07d73efb # load immediate value into integer register
fcvt.h.w f17, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x4e806f79 # load immediate value into integer register
fcvt.h.w f11, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x32c2b899 # load immediate value into integer register
fcvt.h.w f19, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0xba504383 # load immediate value into integer register
fcvt.h.w f30, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x1c3e13e4 # load immediate value into integer register
fcvt.h.w f21, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xb638b46e # load immediate value into integer register
fcvt.h.w f7, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x248b8b6c # load immediate value into integer register
fcvt.h.w f24, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x90eb77e0 # load immediate value into integer register
fcvt.h.w f26, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x7bafda66 # load immediate value into integer register
fcvt.h.w f29, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x524eee39 # load immediate value into integer register
fcvt.h.w f7, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x7, 0x00000000 # load immediate value into integer register
fcvt.h.w f17, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x26, 0x00000001 # load immediate value into integer register
fcvt.h.w f25, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x24, 0x00000002 # load immediate value into integer register
fcvt.h.w f12, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
li x30, 0x80000000 # load immediate value into integer register
fcvt.h.w f23, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
li x22, 0x80000001 # load immediate value into integer register
fcvt.h.w f20, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
li x31, 0x7fffffff # load immediate value into integer register
fcvt.h.w f3, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
fsflagsi 0b00000 # clear all fflags
li x3, 0x7ffffffe # load immediate value into integer register
fcvt.h.w f20, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x14, 0xffffffff # load immediate value into integer register
fcvt.h.w f23, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x26, 0xfffffffe # load immediate value into integer register
fcvt.h.w f7, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
fsflagsi 0b00000 # clear all fflags
li x23, 0x5bbc8872 # load immediate value into integer register
fcvt.h.w f14, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x20, 0xaaaaaaaa # load immediate value into integer register
fcvt.h.w f26, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
fsflagsi 0b00000 # clear all fflags
li x22, 0x55555555 # load immediate value into integer register
fcvt.h.w f27, x22 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x8, x7 # perform first operation
fcvt.h.w f29, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x11, x31 # perform first operation
fcvt.h.w f9, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x22, x11 # perform first operation
fcvt.h.w f19, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f9, f19, f21 # perform first operation
fcvt.h.w f9, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f29, f10 # perform first operation
fcvt.h.w f27, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f26, f7 # perform first operation
fcvt.h.w f19, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f28, f21, f30 # perform first operation
fcvt.h.w f21, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f7, f14, f25 # perform first operation
fcvt.h.w f25, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f2, f18, f5 # perform first operation
fcvt.h.w f6, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x8, x3 # perform first operation
fcvt.h.w f19, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x19, x18 # perform first operation
fcvt.h.w f14, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x2, x3 # perform first operation
fcvt.h.w f26, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x30, x7 # perform first operation
fcvt.h.w f26, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x29, x27 # perform first operation
fcvt.h.w f29, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x18, x25 # perform first operation
fcvt.h.w f18, x21 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x10, 0xb5da2d5f # load immediate value into integer register
fcvt.h.w f0, x10 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x30, 0xc2593a2a # load immediate value into integer register
fcvt.h.w f1, x30 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x13, 0x90110305 # load immediate value into integer register
fcvt.h.w f2, x13 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x20, 0xc2b6d3f4 # load immediate value into integer register
fcvt.h.w f3, x20 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x19, 0xda3eb8ee # load immediate value into integer register
fcvt.h.w f4, x19 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x26, 0x1974f44b # load immediate value into integer register
fcvt.h.w f5, x26 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x3, 0x88e7433e # load immediate value into integer register
fcvt.h.w f6, x3 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x30, 0x1aeebf61 # load immediate value into integer register
fcvt.h.w f7, x30 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x14, 0x8ca32288 # load immediate value into integer register
fcvt.h.w f8, x14 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x13, 0x7bd0ec1c # load immediate value into integer register
fcvt.h.w f9, x13 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x9, 0x440e4119 # load immediate value into integer register
fcvt.h.w f10, x9 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x10, 0x64792d99 # load immediate value into integer register
fcvt.h.w f11, x10 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x16, 0x304060e3 # load immediate value into integer register
fcvt.h.w f12, x16 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x5, 0xf38d79ed # load immediate value into integer register
fcvt.h.w f13, x5 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x23, 0x32046ef7 # load immediate value into integer register
fcvt.h.w f14, x23 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x16, 0x7bc3808c # load immediate value into integer register
fcvt.h.w f15, x16 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x12, 0x7825a0ac # load immediate value into integer register
fcvt.h.w f16, x12 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x14, 0x1c31db32 # load immediate value into integer register
fcvt.h.w f17, x14 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x9, 0xe7cb0e53 # load immediate value into integer register
fcvt.h.w f18, x9 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x8, 0x33150e56 # load immediate value into integer register
fcvt.h.w f19, x8 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x24, 0x1bb4d4a3 # load immediate value into integer register
fcvt.h.w f20, x24 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x24, 0xff910564 # load immediate value into integer register
fcvt.h.w f21, x24 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x23, 0x3ef21ef4 # load immediate value into integer register
fcvt.h.w f22, x23 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x31, 0x80882f3b # load immediate value into integer register
fcvt.h.w f23, x31 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x15, 0x799a257e # load immediate value into integer register
fcvt.h.w f24, x15 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x12, 0x5f3c1ac3 # load immediate value into integer register
fcvt.h.w f25, x12 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x19, 0x6969aa7a # load immediate value into integer register
fcvt.h.w f26, x19 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x15, 0xd9d2fd81 # load immediate value into integer register
fcvt.h.w f27, x15 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x21, 0xe2a39edb # load immediate value into integer register
fcvt.h.w f28, x21 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x22, 0x073fdfa2 # load immediate value into integer register
fcvt.h.w f29, x22 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x3, 0xa9c136da # load immediate value into integer register
fcvt.h.w f30, x3 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x9, 0x57632a79 # load immediate value into integer register
fcvt.h.w f31, x9 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x18, 0xfdc9836d # load immediate value into integer register
fcvt.h.w f28, x18, dyn # perform operation
fcvt.h.w f28, x18, rdn # perform operation
fcvt.h.w f28, x18, rmm # perform operation
fcvt.h.w f28, x18, rne # perform operation
fcvt.h.w f28, x18, rtz # perform operation
fcvt.h.w f28, x18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.w f28, x18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.w f28, x18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.w f28, x18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.w f28, x18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.w f28, x18 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x5, 0xdb61d542 # load immediate value into integer register
fcvt.h.w f1, x5 # perform operation

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
