///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfh/WALLY-COV-fcvt.h.wu.S
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
li x0, 0x5cc16f6f # load immediate value into integer register
fcvt.h.wu f28, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x7b1fa4f1 # load immediate value into integer register
fcvt.h.wu f17, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x8de3ab5d # load immediate value into integer register
fcvt.h.wu f19, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x1f84ad6a # load immediate value into integer register
fcvt.h.wu f10, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x9f6de799 # load immediate value into integer register
fcvt.h.wu f26, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0xe386667f # load immediate value into integer register
fcvt.h.wu f26, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x34ea512e # load immediate value into integer register
fcvt.h.wu f11, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xa7e3c8ba # load immediate value into integer register
fcvt.h.wu f10, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x2306659c # load immediate value into integer register
fcvt.h.wu f15, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x4b34ac96 # load immediate value into integer register
fcvt.h.wu f22, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x73a05b98 # load immediate value into integer register
fcvt.h.wu f31, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xd1fd4bef # load immediate value into integer register
fcvt.h.wu f20, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x6659c433 # load immediate value into integer register
fcvt.h.wu f23, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x2d800f66 # load immediate value into integer register
fcvt.h.wu f9, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x2046d25b # load immediate value into integer register
fcvt.h.wu f1, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xe24db1eb # load immediate value into integer register
fcvt.h.wu f5, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0xde19fe36 # load immediate value into integer register
fcvt.h.wu f21, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x4cba0db8 # load immediate value into integer register
fcvt.h.wu f10, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xc12e9632 # load immediate value into integer register
fcvt.h.wu f16, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x34032bd2 # load immediate value into integer register
fcvt.h.wu f23, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x06c202a1 # load immediate value into integer register
fcvt.h.wu f16, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x77a5a2f4 # load immediate value into integer register
fcvt.h.wu f26, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x4d21eb4f # load immediate value into integer register
fcvt.h.wu f30, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x1ca55711 # load immediate value into integer register
fcvt.h.wu f1, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x25ea0a87 # load immediate value into integer register
fcvt.h.wu f2, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x968bf2a2 # load immediate value into integer register
fcvt.h.wu f12, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0xf59a6b22 # load immediate value into integer register
fcvt.h.wu f5, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x920ca35c # load immediate value into integer register
fcvt.h.wu f3, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x6c197534 # load immediate value into integer register
fcvt.h.wu f1, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0xd6762c9c # load immediate value into integer register
fcvt.h.wu f19, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x3a8ee3eb # load immediate value into integer register
fcvt.h.wu f24, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x2b278b9b # load immediate value into integer register
fcvt.h.wu f17, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x26, 0x00000000 # load immediate value into integer register
fcvt.h.wu f1, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x22, 0x00000001 # load immediate value into integer register
fcvt.h.wu f14, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x16, 0x00000002 # load immediate value into integer register
fcvt.h.wu f3, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
li x30, 0x80000000 # load immediate value into integer register
fcvt.h.wu f13, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
li x6, 0x80000001 # load immediate value into integer register
fcvt.h.wu f31, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
li x16, 0x7fffffff # load immediate value into integer register
fcvt.h.wu f31, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
fsflagsi 0b00000 # clear all fflags
li x24, 0x7ffffffe # load immediate value into integer register
fcvt.h.wu f29, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x24, 0xffffffff # load immediate value into integer register
fcvt.h.wu f28, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x29, 0xfffffffe # load immediate value into integer register
fcvt.h.wu f23, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
fsflagsi 0b00000 # clear all fflags
li x5, 0x5bbc8872 # load immediate value into integer register
fcvt.h.wu f25, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x13, 0xaaaaaaaa # load immediate value into integer register
fcvt.h.wu f25, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
fsflagsi 0b00000 # clear all fflags
li x17, 0x55555555 # load immediate value into integer register
fcvt.h.wu f18, x17 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x3, x6 # perform first operation
fcvt.h.wu f15, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x19, x25 # perform first operation
fcvt.h.wu f11, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x2, x18 # perform first operation
fcvt.h.wu f30, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f15, f7, f26 # perform first operation
fcvt.h.wu f15, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f30, f23, f18 # perform first operation
fcvt.h.wu f30, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f15, f11, f18 # perform first operation
fcvt.h.wu f15, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f30, f2, f29 # perform first operation
fcvt.h.wu f2, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f31, f30, f25 # perform first operation
fcvt.h.wu f25, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f23, f8, f9 # perform first operation
fcvt.h.wu f16, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x19, x16 # perform first operation
fcvt.h.wu f23, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x16, x18 # perform first operation
fcvt.h.wu f26, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x11, x31 # perform first operation
fcvt.h.wu f17, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x1, x20 # perform first operation
fcvt.h.wu f1, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x1, x30 # perform first operation
fcvt.h.wu f7, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x13, x1 # perform first operation
fcvt.h.wu f1, x30 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x2, 0x664dca7b # load immediate value into integer register
fcvt.h.wu f0, x2 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x26, 0x80308192 # load immediate value into integer register
fcvt.h.wu f1, x26 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x29, 0x470b39ba # load immediate value into integer register
fcvt.h.wu f2, x29 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x28, 0xc02ae981 # load immediate value into integer register
fcvt.h.wu f3, x28 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x30, 0xc6537ec0 # load immediate value into integer register
fcvt.h.wu f4, x30 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x2, 0xc88163b6 # load immediate value into integer register
fcvt.h.wu f5, x2 # perform operation

# Testcase cp_fd (Test destination fd = x6)
fsflagsi 0b00000 # clear all fflags
li x13, 0xceeec3dd # load immediate value into integer register
fcvt.h.wu f6, x13 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x908529c5 # load immediate value into integer register
fcvt.h.wu f7, x5 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x14, 0xecfcde64 # load immediate value into integer register
fcvt.h.wu f8, x14 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x27, 0x3a977bed # load immediate value into integer register
fcvt.h.wu f9, x27 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x2, 0xa9205b0a # load immediate value into integer register
fcvt.h.wu f10, x2 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x27, 0x46f0cdc4 # load immediate value into integer register
fcvt.h.wu f11, x27 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x28, 0x2ce19e6c # load immediate value into integer register
fcvt.h.wu f12, x28 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x15, 0xde4a6af6 # load immediate value into integer register
fcvt.h.wu f13, x15 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x23, 0xfd7e40c9 # load immediate value into integer register
fcvt.h.wu f14, x23 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x31, 0xc6534ea9 # load immediate value into integer register
fcvt.h.wu f15, x31 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x6, 0xd1908370 # load immediate value into integer register
fcvt.h.wu f16, x6 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x1, 0x096f4d10 # load immediate value into integer register
fcvt.h.wu f17, x1 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x697cfb19 # load immediate value into integer register
fcvt.h.wu f18, x18 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x28, 0x01703213 # load immediate value into integer register
fcvt.h.wu f19, x28 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x13, 0x8046c469 # load immediate value into integer register
fcvt.h.wu f20, x13 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x31, 0x4ecfa0ab # load immediate value into integer register
fcvt.h.wu f21, x31 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x30, 0x56bc1d96 # load immediate value into integer register
fcvt.h.wu f22, x30 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x17, 0xa641cecf # load immediate value into integer register
fcvt.h.wu f23, x17 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x15, 0xbd10aac7 # load immediate value into integer register
fcvt.h.wu f24, x15 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x19, 0x958f1b42 # load immediate value into integer register
fcvt.h.wu f25, x19 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x18, 0xf496d6e7 # load immediate value into integer register
fcvt.h.wu f26, x18 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x20, 0x161575dd # load immediate value into integer register
fcvt.h.wu f27, x20 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x7, 0xac0825d5 # load immediate value into integer register
fcvt.h.wu f28, x7 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x25, 0xf2d4e747 # load immediate value into integer register
fcvt.h.wu f29, x25 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x23, 0x699f2c6a # load immediate value into integer register
fcvt.h.wu f30, x23 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x17, 0x9afe4b83 # load immediate value into integer register
fcvt.h.wu f31, x17 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x6, 0x6d334ed6 # load immediate value into integer register
fcvt.h.wu f17, x6, dyn # perform operation
fcvt.h.wu f17, x6, rdn # perform operation
fcvt.h.wu f17, x6, rmm # perform operation
fcvt.h.wu f17, x6, rne # perform operation
fcvt.h.wu f17, x6, rtz # perform operation
fcvt.h.wu f17, x6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.wu f17, x6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.wu f17, x6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.wu f17, x6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.wu f17, x6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.wu f17, x6 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x16, 0x4bd1c8d8 # load immediate value into integer register
fcvt.h.wu f17, x16 # perform operation

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
