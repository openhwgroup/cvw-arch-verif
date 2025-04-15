///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fcvt.s.wu.S
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
li x0, 0x5436ad4a # load immediate value into integer register
fcvt.s.wu f26, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0xa4c7fa06 # load immediate value into integer register
fcvt.s.wu f22, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0xe6d367ce # load immediate value into integer register
fcvt.s.wu f16, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x3cc5b57d # load immediate value into integer register
fcvt.s.wu f21, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x7846ac30 # load immediate value into integer register
fcvt.s.wu f5, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
fsflagsi 0b00000 # clear all fflags
li x5, 0x26653ded # load immediate value into integer register
fcvt.s.wu f12, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x517234a3 # load immediate value into integer register
fcvt.s.wu f16, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xadcae793 # load immediate value into integer register
fcvt.s.wu f5, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0xa2b897c2 # load immediate value into integer register
fcvt.s.wu f27, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0xd4ede552 # load immediate value into integer register
fcvt.s.wu f10, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x5514ea54 # load immediate value into integer register
fcvt.s.wu f14, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xa681845a # load immediate value into integer register
fcvt.s.wu f21, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x371d2e92 # load immediate value into integer register
fcvt.s.wu f20, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x487e46b9 # load immediate value into integer register
fcvt.s.wu f23, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x0c3252f2 # load immediate value into integer register
fcvt.s.wu f21, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x29918e34 # load immediate value into integer register
fcvt.s.wu f24, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x7e239052 # load immediate value into integer register
fcvt.s.wu f19, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xc1d64a66 # load immediate value into integer register
fcvt.s.wu f29, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xd749bd23 # load immediate value into integer register
fcvt.s.wu f17, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x306a6a35 # load immediate value into integer register
fcvt.s.wu f14, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x3ebae283 # load immediate value into integer register
fcvt.s.wu f31, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xbd1aab81 # load immediate value into integer register
fcvt.s.wu f19, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0xcb906c90 # load immediate value into integer register
fcvt.s.wu f19, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0xb4f4b7ea # load immediate value into integer register
fcvt.s.wu f11, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0xcbbbd5cb # load immediate value into integer register
fcvt.s.wu f28, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x34a0fc04 # load immediate value into integer register
fcvt.s.wu f19, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0xdd06d82c # load immediate value into integer register
fcvt.s.wu f27, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x319a6c63 # load immediate value into integer register
fcvt.s.wu f13, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x7027cb6c # load immediate value into integer register
fcvt.s.wu f5, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x906e8092 # load immediate value into integer register
fcvt.s.wu f2, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x088b06a0 # load immediate value into integer register
fcvt.s.wu f18, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x04948116 # load immediate value into integer register
fcvt.s.wu f26, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x31, 0x00000000 # load immediate value into integer register
fcvt.s.wu f7, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x23, 0x00000001 # load immediate value into integer register
fcvt.s.wu f12, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x10, 0x00000002 # load immediate value into integer register
fcvt.s.wu f6, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
li x16, 0x80000000 # load immediate value into integer register
fcvt.s.wu f13, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
li x15, 0x80000001 # load immediate value into integer register
fcvt.s.wu f25, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
li x3, 0x7fffffff # load immediate value into integer register
fcvt.s.wu f11, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
fsflagsi 0b00000 # clear all fflags
li x21, 0x7ffffffe # load immediate value into integer register
fcvt.s.wu f5, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x30, 0xffffffff # load immediate value into integer register
fcvt.s.wu f31, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x10, 0xfffffffe # load immediate value into integer register
fcvt.s.wu f25, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
fsflagsi 0b00000 # clear all fflags
li x14, 0x5bbc8872 # load immediate value into integer register
fcvt.s.wu f10, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x29, 0xaaaaaaaa # load immediate value into integer register
fcvt.s.wu f31, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
fsflagsi 0b00000 # clear all fflags
li x6, 0x55555555 # load immediate value into integer register
fcvt.s.wu f18, x6 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x15, x16 # perform first operation
fcvt.s.wu f27, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x20, x3 # perform first operation
fcvt.s.wu f19, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x8, x21 # perform first operation
fcvt.s.wu f24, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f18, f13, f26 # perform first operation
fcvt.s.wu f18, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f2, f31, f16 # perform first operation
fcvt.s.wu f2, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f25, f30, f14 # perform first operation
fcvt.s.wu f25, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f23, f7, f25 # perform first operation
fcvt.s.wu f7, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f21, f6, f1 # perform first operation
fcvt.s.wu f1, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f1, f6, f2 # perform first operation
fcvt.s.wu f10, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x24, x23 # perform first operation
fcvt.s.wu f31, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x29, x26 # perform first operation
fcvt.s.wu f5, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x12, x2 # perform first operation
fcvt.s.wu f27, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x24, x18 # perform first operation
fcvt.s.wu f27, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x11, x24 # perform first operation
fcvt.s.wu f11, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x23, x15 # perform first operation
fcvt.s.wu f15, x29 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x6, 0x880bedaf # load immediate value into integer register
fcvt.s.wu f0, x6 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x2, 0x4cfdec21 # load immediate value into integer register
fcvt.s.wu f1, x2 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x6, 0x0eadbfc4 # load immediate value into integer register
fcvt.s.wu f2, x6 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x13, 0xc53c889a # load immediate value into integer register
fcvt.s.wu f3, x13 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x20, 0xa9d348cb # load immediate value into integer register
fcvt.s.wu f4, x20 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x22, 0x506983d9 # load immediate value into integer register
fcvt.s.wu f5, x22 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xf5d1e797 # load immediate value into integer register
fcvt.s.wu f6, x4 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x18, 0xfd98cd04 # load immediate value into integer register
fcvt.s.wu f7, x18 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x31, 0xf59dee09 # load immediate value into integer register
fcvt.s.wu f8, x31 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x14, 0x4d6cdc35 # load immediate value into integer register
fcvt.s.wu f9, x14 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x24, 0x24776e7e # load immediate value into integer register
fcvt.s.wu f10, x24 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x8, 0x1e130325 # load immediate value into integer register
fcvt.s.wu f11, x8 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x20, 0x347ef8e8 # load immediate value into integer register
fcvt.s.wu f12, x20 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x22, 0x9fb7a522 # load immediate value into integer register
fcvt.s.wu f13, x22 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x30, 0x8578b6fa # load immediate value into integer register
fcvt.s.wu f14, x30 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x28, 0xb219e43c # load immediate value into integer register
fcvt.s.wu f15, x28 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x22, 0xc4b98f27 # load immediate value into integer register
fcvt.s.wu f16, x22 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x6, 0x6e735598 # load immediate value into integer register
fcvt.s.wu f17, x6 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x29, 0x6ee03ddb # load immediate value into integer register
fcvt.s.wu f18, x29 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x13, 0x8c3c2ba1 # load immediate value into integer register
fcvt.s.wu f19, x13 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x19, 0x25e0f560 # load immediate value into integer register
fcvt.s.wu f20, x19 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x2, 0x9ecca097 # load immediate value into integer register
fcvt.s.wu f21, x2 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x10, 0xde67bdf3 # load immediate value into integer register
fcvt.s.wu f22, x10 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x20, 0xb9c355b2 # load immediate value into integer register
fcvt.s.wu f23, x20 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x26, 0x6bee1655 # load immediate value into integer register
fcvt.s.wu f24, x26 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x8, 0x931674e4 # load immediate value into integer register
fcvt.s.wu f25, x8 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x17, 0x9f148523 # load immediate value into integer register
fcvt.s.wu f26, x17 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x11, 0x6aee3ed0 # load immediate value into integer register
fcvt.s.wu f27, x11 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x30, 0xee437b4f # load immediate value into integer register
fcvt.s.wu f28, x30 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x2, 0x4224322e # load immediate value into integer register
fcvt.s.wu f29, x2 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x12, 0x2dead926 # load immediate value into integer register
fcvt.s.wu f30, x12 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x5, 0x49eb1bca # load immediate value into integer register
fcvt.s.wu f31, x5 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x17, 0xce01af88 # load immediate value into integer register
fcvt.s.wu f14, x17, dyn # perform operation
fcvt.s.wu f14, x17, rdn # perform operation
fcvt.s.wu f14, x17, rmm # perform operation
fcvt.s.wu f14, x17, rne # perform operation
fcvt.s.wu f14, x17, rtz # perform operation
fcvt.s.wu f14, x17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.wu f14, x17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.wu f14, x17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.wu f14, x17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.wu f14, x17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.wu f14, x17 # perform operation


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
