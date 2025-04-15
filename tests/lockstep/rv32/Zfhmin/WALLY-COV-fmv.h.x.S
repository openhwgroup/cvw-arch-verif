///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfhmin/WALLY-COV-fmv.h.x.S
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
li x0, 0xe7277035 # load immediate value into integer register
fmv.h.x f1, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x07998c3c # load immediate value into integer register
fmv.h.x f5, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x3e5f9ffb # load immediate value into integer register
fmv.h.x f20, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x6ae04e3a # load immediate value into integer register
fmv.h.x f29, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x3eb12db8 # load immediate value into integer register
fmv.h.x f29, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x20314453 # load immediate value into integer register
fmv.h.x f7, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0xe472d485 # load immediate value into integer register
fmv.h.x f23, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xeba865e2 # load immediate value into integer register
fmv.h.x f20, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0xfeae54c4 # load immediate value into integer register
fmv.h.x f2, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x122085b4 # load immediate value into integer register
fmv.h.x f13, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x239d4806 # load immediate value into integer register
fmv.h.x f16, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xa233bcda # load immediate value into integer register
fmv.h.x f30, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x90fab891 # load immediate value into integer register
fmv.h.x f20, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0xe2655675 # load immediate value into integer register
fmv.h.x f23, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xb84667a8 # load immediate value into integer register
fmv.h.x f20, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x1f37ca47 # load immediate value into integer register
fmv.h.x f30, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x207a6858 # load immediate value into integer register
fmv.h.x f10, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x4f126800 # load immediate value into integer register
fmv.h.x f31, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x55d34602 # load immediate value into integer register
fmv.h.x f27, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x51eb7907 # load immediate value into integer register
fmv.h.x f28, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x310b2650 # load immediate value into integer register
fmv.h.x f3, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x75c6b402 # load immediate value into integer register
fmv.h.x f2, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0xf92ea4bc # load immediate value into integer register
fmv.h.x f13, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x64569278 # load immediate value into integer register
fmv.h.x f21, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0xad40e4f7 # load immediate value into integer register
fmv.h.x f15, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0xa9a9e6fe # load immediate value into integer register
fmv.h.x f14, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x6dd5e5cd # load immediate value into integer register
fmv.h.x f28, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xe91a757d # load immediate value into integer register
fmv.h.x f10, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0xefad6a9c # load immediate value into integer register
fmv.h.x f20, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x1f2332a4 # load immediate value into integer register
fmv.h.x f5, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0xf758be43 # load immediate value into integer register
fmv.h.x f7, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x5e218e9b # load immediate value into integer register
fmv.h.x f25, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x23, 0x00000000 # load immediate value into integer register
fmv.h.x f11, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x15, 0x00000001 # load immediate value into integer register
fmv.h.x f9, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x00000002 # load immediate value into integer register
fmv.h.x f29, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
li x31, 0x80000000 # load immediate value into integer register
fmv.h.x f12, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
li x2, 0x80000001 # load immediate value into integer register
fmv.h.x f23, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
li x28, 0x7fffffff # load immediate value into integer register
fmv.h.x f12, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
fsflagsi 0b00000 # clear all fflags
li x30, 0x7ffffffe # load immediate value into integer register
fmv.h.x f1, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x11, 0xffffffff # load immediate value into integer register
fmv.h.x f21, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x11, 0xfffffffe # load immediate value into integer register
fmv.h.x f13, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
fsflagsi 0b00000 # clear all fflags
li x25, 0x5bbc8872 # load immediate value into integer register
fmv.h.x f14, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x25, 0xaaaaaaaa # load immediate value into integer register
fmv.h.x f18, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
fsflagsi 0b00000 # clear all fflags
li x23, 0x55555555 # load immediate value into integer register
fmv.h.x f6, x23 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x24, x16 # perform first operation
fmv.h.x f17, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x15, x30 # perform first operation
fmv.h.x f6, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x14, x27 # perform first operation
fmv.h.x f17, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f28, f23, f31 # perform first operation
fmv.h.x f28, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f21, f24, f10 # perform first operation
fmv.h.x f21, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f16, f26, f15 # perform first operation
fmv.h.x f16, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f29, f28 # perform first operation
fmv.h.x f29, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f22, f16, f23 # perform first operation
fmv.h.x f23, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f19, f31, f21 # perform first operation
fmv.h.x f30, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x27, x21 # perform first operation
fmv.h.x f22, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x22, x18 # perform first operation
fmv.h.x f12, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x26, x12 # perform first operation
fmv.h.x f30, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x24, x18 # perform first operation
fmv.h.x f26, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x9, x10 # perform first operation
fmv.h.x f9, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x15, x14 # perform first operation
fmv.h.x f15, x31 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x18, 0xa66ee81e # load immediate value into integer register
fmv.h.x f0, x18 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x7, 0x445c6c64 # load immediate value into integer register
fmv.h.x f1, x7 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x16, 0x61ee5731 # load immediate value into integer register
fmv.h.x f2, x16 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x25, 0x72f38350 # load immediate value into integer register
fmv.h.x f3, x25 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x24, 0xd00f70af # load immediate value into integer register
fmv.h.x f4, x24 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x16, 0xad105a80 # load immediate value into integer register
fmv.h.x f5, x16 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x16, 0x70a5ca3a # load immediate value into integer register
fmv.h.x f6, x16 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x28, 0x70c40e89 # load immediate value into integer register
fmv.h.x f7, x28 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x16, 0x79fee92b # load immediate value into integer register
fmv.h.x f8, x16 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x26, 0x8fe5d417 # load immediate value into integer register
fmv.h.x f9, x26 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x11, 0x733d5067 # load immediate value into integer register
fmv.h.x f10, x11 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x13, 0x9750b650 # load immediate value into integer register
fmv.h.x f11, x13 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x6, 0xd71cf46b # load immediate value into integer register
fmv.h.x f12, x6 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x31, 0x54affc98 # load immediate value into integer register
fmv.h.x f13, x31 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x18, 0x1f5ddbcf # load immediate value into integer register
fmv.h.x f14, x18 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x26, 0xca7c66fb # load immediate value into integer register
fmv.h.x f15, x26 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x23, 0x6144a64c # load immediate value into integer register
fmv.h.x f16, x23 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x10, 0x8c6e235c # load immediate value into integer register
fmv.h.x f17, x10 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x23, 0x9dc671c7 # load immediate value into integer register
fmv.h.x f18, x23 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x20, 0x81f47c30 # load immediate value into integer register
fmv.h.x f19, x20 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x14, 0x4c72bc59 # load immediate value into integer register
fmv.h.x f20, x14 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x30, 0x8d5de388 # load immediate value into integer register
fmv.h.x f21, x30 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x24, 0x321ea368 # load immediate value into integer register
fmv.h.x f22, x24 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x18, 0x390bdeb9 # load immediate value into integer register
fmv.h.x f23, x18 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x27, 0x58b4b87c # load immediate value into integer register
fmv.h.x f24, x27 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x19, 0x4e60076e # load immediate value into integer register
fmv.h.x f25, x19 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x12, 0x73b69705 # load immediate value into integer register
fmv.h.x f26, x12 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x25, 0xf6ea9464 # load immediate value into integer register
fmv.h.x f27, x25 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x26, 0xd6805cc0 # load immediate value into integer register
fmv.h.x f28, x26 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x18, 0x66286eab # load immediate value into integer register
fmv.h.x f29, x18 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x3, 0x949a785e # load immediate value into integer register
fmv.h.x f30, x3 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x15, 0xa6240794 # load immediate value into integer register
fmv.h.x f31, x15 # perform operation

# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x11, 0x6895d780 # load immediate value into integer register
fmv.h.x f8, x11 # perform operation

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
