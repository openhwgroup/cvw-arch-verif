///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fcvt.d.wu.S
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
li x0, 0x5cb57531 # load immediate value into integer register
fcvt.d.wu f31, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x2197025f # load immediate value into integer register
fcvt.d.wu f30, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x2703df4f # load immediate value into integer register
fcvt.d.wu f5, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x402aa0fb # load immediate value into integer register
fcvt.d.wu f12, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xdcdaf2ce # load immediate value into integer register
fcvt.d.wu f18, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x0193fb80 # load immediate value into integer register
fcvt.d.wu f20, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x11b40739 # load immediate value into integer register
fcvt.d.wu f22, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0x14d5b8f6 # load immediate value into integer register
fcvt.d.wu f19, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x122c1986 # load immediate value into integer register
fcvt.d.wu f15, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x927d6913 # load immediate value into integer register
fcvt.d.wu f6, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x39dc0d51 # load immediate value into integer register
fcvt.d.wu f16, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0x3c48448d # load immediate value into integer register
fcvt.d.wu f14, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xb234976b # load immediate value into integer register
fcvt.d.wu f19, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x1012f19a # load immediate value into integer register
fcvt.d.wu f14, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x4c2700dd # load immediate value into integer register
fcvt.d.wu f7, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x179ccd27 # load immediate value into integer register
fcvt.d.wu f18, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x4aa985ed # load immediate value into integer register
fcvt.d.wu f8, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x0f9f6919 # load immediate value into integer register
fcvt.d.wu f16, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xd1aefe95 # load immediate value into integer register
fcvt.d.wu f29, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x0123378a # load immediate value into integer register
fcvt.d.wu f18, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0xb17c2ce1 # load immediate value into integer register
fcvt.d.wu f11, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x4b2a296b # load immediate value into integer register
fcvt.d.wu f3, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x0b14ddf7 # load immediate value into integer register
fcvt.d.wu f11, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x85acb1b6 # load immediate value into integer register
fcvt.d.wu f17, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0xcc874efc # load immediate value into integer register
fcvt.d.wu f17, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0xedbfcb8b # load immediate value into integer register
fcvt.d.wu f13, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x56a197af # load immediate value into integer register
fcvt.d.wu f19, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xbeca51ea # load immediate value into integer register
fcvt.d.wu f8, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x275a1981 # load immediate value into integer register
fcvt.d.wu f20, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x7ca1eecd # load immediate value into integer register
fcvt.d.wu f30, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x1e22a425 # load immediate value into integer register
fcvt.d.wu f31, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x73bc9848 # load immediate value into integer register
fcvt.d.wu f24, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x31, 0x00000000 # load immediate value into integer register
fcvt.d.wu f5, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x28, 0x00000001 # load immediate value into integer register
fcvt.d.wu f21, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x29, 0x00000002 # load immediate value into integer register
fcvt.d.wu f16, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
li x13, 0x80000000 # load immediate value into integer register
fcvt.d.wu f2, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
li x6, 0x80000001 # load immediate value into integer register
fcvt.d.wu f18, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
li x22, 0x7fffffff # load immediate value into integer register
fcvt.d.wu f1, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
fsflagsi 0b00000 # clear all fflags
li x13, 0x7ffffffe # load immediate value into integer register
fcvt.d.wu f30, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x9, 0xffffffff # load immediate value into integer register
fcvt.d.wu f30, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x8, 0xfffffffe # load immediate value into integer register
fcvt.d.wu f14, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
fsflagsi 0b00000 # clear all fflags
li x24, 0x5bbc8872 # load immediate value into integer register
fcvt.d.wu f27, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x3, 0xaaaaaaaa # load immediate value into integer register
fcvt.d.wu f19, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
fsflagsi 0b00000 # clear all fflags
li x12, 0x55555555 # load immediate value into integer register
fcvt.d.wu f18, x12 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x26, x25 # perform first operation
fcvt.d.wu f18, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x13, x6 # perform first operation
fcvt.d.wu f21, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x25, x10 # perform first operation
fcvt.d.wu f29, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f31, f29, f27 # perform first operation
fcvt.d.wu f31, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f6, f13, f15 # perform first operation
fcvt.d.wu f6, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f15, f21, f30 # perform first operation
fcvt.d.wu f15, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f16, f3, f20 # perform first operation
fcvt.d.wu f3, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f7, f25, f27 # perform first operation
fcvt.d.wu f27, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f9, f16, f3 # perform first operation
fcvt.d.wu f23, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x1, x24 # perform first operation
fcvt.d.wu f18, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x24, x19 # perform first operation
fcvt.d.wu f12, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x31, x10 # perform first operation
fcvt.d.wu f8, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x8, x10 # perform first operation
fcvt.d.wu f23, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x22, x29 # perform first operation
fcvt.d.wu f22, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x13, x22 # perform first operation
fcvt.d.wu f13, x21 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x2, 0x901732cf # load immediate value into integer register
fcvt.d.wu f0, x2 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x7, 0x19751f57 # load immediate value into integer register
fcvt.d.wu f1, x7 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x3, 0xbf7abe53 # load immediate value into integer register
fcvt.d.wu f2, x3 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x12, 0x8d9a59de # load immediate value into integer register
fcvt.d.wu f3, x12 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x15, 0x73edda47 # load immediate value into integer register
fcvt.d.wu f4, x15 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x12, 0x891efafa # load immediate value into integer register
fcvt.d.wu f5, x12 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x16, 0x22b0da76 # load immediate value into integer register
fcvt.d.wu f6, x16 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x24, 0xeed48051 # load immediate value into integer register
fcvt.d.wu f7, x24 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x2, 0x5be74692 # load immediate value into integer register
fcvt.d.wu f8, x2 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x8, 0x2c0bf11d # load immediate value into integer register
fcvt.d.wu f9, x8 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x5, 0xe255e48e # load immediate value into integer register
fcvt.d.wu f10, x5 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x26, 0xeb157586 # load immediate value into integer register
fcvt.d.wu f11, x26 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x29, 0x197f9d85 # load immediate value into integer register
fcvt.d.wu f12, x29 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x3, 0xd9cfb5cf # load immediate value into integer register
fcvt.d.wu f13, x3 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x25, 0x36fa62b9 # load immediate value into integer register
fcvt.d.wu f14, x25 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x07ac81ac # load immediate value into integer register
fcvt.d.wu f15, x15 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x6, 0x4d229ee0 # load immediate value into integer register
fcvt.d.wu f16, x6 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x19, 0xa422f855 # load immediate value into integer register
fcvt.d.wu f17, x19 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x30, 0xca5e1b04 # load immediate value into integer register
fcvt.d.wu f18, x30 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x28, 0xe240e7f1 # load immediate value into integer register
fcvt.d.wu f19, x28 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x31, 0x2bcca7f6 # load immediate value into integer register
fcvt.d.wu f20, x31 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xe210f60d # load immediate value into integer register
fcvt.d.wu f21, x21 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x31, 0x9cdfa46c # load immediate value into integer register
fcvt.d.wu f22, x31 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x26, 0xb649c07d # load immediate value into integer register
fcvt.d.wu f23, x26 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x30, 0x46b06996 # load immediate value into integer register
fcvt.d.wu f24, x30 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x3, 0x13772b6d # load immediate value into integer register
fcvt.d.wu f25, x3 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x56d16fe0 # load immediate value into integer register
fcvt.d.wu f26, x26 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x20, 0x72d4f193 # load immediate value into integer register
fcvt.d.wu f27, x20 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x13, 0x9580f923 # load immediate value into integer register
fcvt.d.wu f28, x13 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x17, 0x68eacc17 # load immediate value into integer register
fcvt.d.wu f29, x17 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x5, 0x41a81df5 # load immediate value into integer register
fcvt.d.wu f30, x5 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x11, 0x43107ead # load immediate value into integer register
fcvt.d.wu f31, x11 # perform operation

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
