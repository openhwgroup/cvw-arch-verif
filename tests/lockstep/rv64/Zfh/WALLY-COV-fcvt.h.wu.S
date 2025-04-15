///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fcvt.h.wu.S
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
li x0, 0x486b243e5cc16f6f # load immediate value into integer register
fcvt.h.wu f28, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x5d3706938de3ab5d # load immediate value into integer register
fcvt.h.wu f13, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x21a920c19b5f2af9 # load immediate value into integer register
fcvt.h.wu f27, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x8c85d396ce168dab # load immediate value into integer register
fcvt.h.wu f25, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xab6e4553370a1311 # load immediate value into integer register
fcvt.h.wu f30, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x0cdda7282306659c # load immediate value into integer register
fcvt.h.wu f23, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x2fe5e14a74531e1e # load immediate value into integer register
fcvt.h.wu f9, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xd1fd4bef9cd49037 # load immediate value into integer register
fcvt.h.wu f23, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x7a3362accd175085 # load immediate value into integer register
fcvt.h.wu f23, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x06888c22806b4312 # load immediate value into integer register
fcvt.h.wu f17, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x9e381f1d0059aa15 # load immediate value into integer register
fcvt.h.wu f17, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0x37542e22d659f954 # load immediate value into integer register
fcvt.h.wu f1, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xc0b713acee1f7a5e # load immediate value into integer register
fcvt.h.wu f10, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0xf2bc875c77998852 # load immediate value into integer register
fcvt.h.wu f27, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x84f464db827f0e4c # load immediate value into integer register
fcvt.h.wu f24, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xdcb342c2e7ebd000 # load immediate value into integer register
fcvt.h.wu f11, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x60e31552ca85ddfc # load immediate value into integer register
fcvt.h.wu f31, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xa8994c75e291eb21 # load immediate value into integer register
fcvt.h.wu f24, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xd1608e64036e630f # load immediate value into integer register
fcvt.h.wu f20, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x44dfbd2fa6357780 # load immediate value into integer register
fcvt.h.wu f30, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0xd3aa5a066e28fb45 # load immediate value into integer register
fcvt.h.wu f14, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x4b86fee15dedb5d1 # load immediate value into integer register
fcvt.h.wu f19, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x7e0dc2b3f746747f # load immediate value into integer register
fcvt.h.wu f25, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0xdb441eb7f99d8aaf # load immediate value into integer register
fcvt.h.wu f29, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0xf7a9398a80df228a # load immediate value into integer register
fcvt.h.wu f19, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x8d50f20d56206298 # load immediate value into integer register
fcvt.h.wu f19, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x8d639168ea168b2b # load immediate value into integer register
fcvt.h.wu f4, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xf942ef2062c18fcc # load immediate value into integer register
fcvt.h.wu f3, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x59ee6ca6f1ab5385 # load immediate value into integer register
fcvt.h.wu f26, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0xca16710a72d914a9 # load immediate value into integer register
fcvt.h.wu f2, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x8d41f74154f8ef6e # load immediate value into integer register
fcvt.h.wu f24, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x58b5dffdbcb6344d # load immediate value into integer register
fcvt.h.wu f23, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x26, 0x0000000000000000 # load immediate value into integer register
fcvt.h.wu f1, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x19, 0x0000000000000001 # load immediate value into integer register
fcvt.h.wu f22, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x13, 0x0000000000000002 # load immediate value into integer register
fcvt.h.wu f12, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x28, 0x8000000000000000 # load immediate value into integer register
fcvt.h.wu f25, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x14, 0x8000000000000001 # load immediate value into integer register
fcvt.h.wu f13, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x6, 0x7fffffffffffffff # load immediate value into integer register
fcvt.h.wu f24, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x18, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.h.wu f24, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x25, 0xffffffffffffffff # load immediate value into integer register
fcvt.h.wu f19, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x6, 0xfffffffffffffffe # load immediate value into integer register
fcvt.h.wu f18, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x15, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.h.wu f19, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x15, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.h.wu f12, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x17, 0x5555555555555555 # load immediate value into integer register
fcvt.h.wu f18, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x30, 0x00000000ffffffff # load immediate value into integer register
fcvt.h.wu f16, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x31, 0x00000000fffffffe # load immediate value into integer register
fcvt.h.wu f3, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x15, 0x0000000100000000 # load immediate value into integer register
fcvt.h.wu f7, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x4, 0x0000000100000001 # load immediate value into integer register
fcvt.h.wu f19, x4 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x3, x6 # perform first operation
fcvt.h.wu f30, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x9, x8 # perform first operation
fcvt.h.wu f6, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x9, x30 # perform first operation
fcvt.h.wu f15, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f6, f9, f2 # perform first operation
fcvt.h.wu f6, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f30, f11, f29 # perform first operation
fcvt.h.wu f30, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f29, f16, f20 # perform first operation
fcvt.h.wu f29, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f8, f26, f15 # perform first operation
fcvt.h.wu f26, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f29, f24, f13 # perform first operation
fcvt.h.wu f13, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f20, f4, f25 # perform first operation
fcvt.h.wu f27, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x19, x16 # perform first operation
fcvt.h.wu f21, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x4, x14, x30 # perform first operation
fcvt.h.wu f2, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x21, x14 # perform first operation
fcvt.h.wu f28, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x23, x30 # perform first operation
fcvt.h.wu f17, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x3, x31 # perform first operation
fcvt.h.wu f3, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x9, x3 # perform first operation
fcvt.h.wu f7, x29 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x2, 0x24642cc880675c96 # load immediate value into integer register
fcvt.h.wu f0, x2 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x2, 0x3663ca5081226756 # load immediate value into integer register
fcvt.h.wu f1, x2 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x3, 0xc6537ec0a7bfe44a # load immediate value into integer register
fcvt.h.wu f2, x3 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x6, 0x75ab0c45a4eb04b7 # load immediate value into integer register
fcvt.h.wu f3, x6 # perform operation

# Testcase cp_fd (Test destination fd = x4)
fsflagsi 0b00000 # clear all fflags
li x23, 0x6315845d505603fd # load immediate value into integer register
fcvt.h.wu f4, x23 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x26, 0xbac908963965223e # load immediate value into integer register
fcvt.h.wu f5, x26 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x3, 0x048404ca6fdfa8f3 # load immediate value into integer register
fcvt.h.wu f6, x3 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x22, 0xad7186312269dd73 # load immediate value into integer register
fcvt.h.wu f7, x22 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x17, 0xb78d06e4748e310e # load immediate value into integer register
fcvt.h.wu f8, x17 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x29, 0x5ca4bb0c354459f9 # load immediate value into integer register
fcvt.h.wu f9, x29 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x1, 0xddf712fd447bcfb9 # load immediate value into integer register
fcvt.h.wu f10, x1 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x23, 0x9b312ee9fae6c9f3 # load immediate value into integer register
fcvt.h.wu f11, x23 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x16, 0x01703213796be15f # load immediate value into integer register
fcvt.h.wu f12, x16 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x30, 0xf7bb29912d3f3e3d # load immediate value into integer register
fcvt.h.wu f13, x30 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x19, 0x3cc9cefc72f67d25 # load immediate value into integer register
fcvt.h.wu f14, x19 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x345dbffde7c708ea # load immediate value into integer register
fcvt.h.wu f15, x15 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x9f9b2a036aee700b # load immediate value into integer register
fcvt.h.wu f16, x16 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x10, 0x08452abff61237d2 # load immediate value into integer register
fcvt.h.wu f17, x10 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x5, 0xef60572b28cb20ca # load immediate value into integer register
fcvt.h.wu f18, x5 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x15, 0xbc46f41a63d567c4 # load immediate value into integer register
fcvt.h.wu f19, x15 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x30, 0x174eb4da1391918a # load immediate value into integer register
fcvt.h.wu f20, x30 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x17, 0x9ca81df4cf923f6e # load immediate value into integer register
fcvt.h.wu f21, x17 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x5, 0x19b1a0e91ecef3c4 # load immediate value into integer register
fcvt.h.wu f22, x5 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x20, 0x0cece53b32ce7a31 # load immediate value into integer register
fcvt.h.wu f23, x20 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x13, 0x63a94520311b4f7f # load immediate value into integer register
fcvt.h.wu f24, x13 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x7, 0x8319f169d5d09f45 # load immediate value into integer register
fcvt.h.wu f25, x7 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x6, 0x6219a07c7e0ae04a # load immediate value into integer register
fcvt.h.wu f26, x6 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x25, 0xfff8bcda84fd9984 # load immediate value into integer register
fcvt.h.wu f27, x25 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x21, 0x2a6e78cc03040976 # load immediate value into integer register
fcvt.h.wu f28, x21 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x28, 0x86fbce6d55af539d # load immediate value into integer register
fcvt.h.wu f29, x28 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x14, 0x3fa2a7eafdc8e53b # load immediate value into integer register
fcvt.h.wu f30, x14 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x1, 0xfa1b819620419965 # load immediate value into integer register
fcvt.h.wu f31, x1 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x6, 0x06a959a5ab2e17da # load immediate value into integer register
fcvt.h.wu f2, x6, dyn # perform operation
fcvt.h.wu f2, x6, rdn # perform operation
fcvt.h.wu f2, x6, rmm # perform operation
fcvt.h.wu f2, x6, rne # perform operation
fcvt.h.wu f2, x6, rtz # perform operation
fcvt.h.wu f2, x6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.wu f2, x6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.wu f2, x6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.wu f2, x6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.wu f2, x6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.wu f2, x6 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x16, 0xda685fa775d81829 # load immediate value into integer register
fcvt.h.wu f12, x16 # perform operation

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
