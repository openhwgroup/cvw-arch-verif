///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.d.w.S
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
li x0, 0x860214f72846d6d9 # load immediate value into integer register
fcvt.d.w f5, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x70a477a5ae6d080c # load immediate value into integer register
fcvt.d.w f22, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x8ad4f6daf9f0781b # load immediate value into integer register
fcvt.d.w f13, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x4d9144db39df2245 # load immediate value into integer register
fcvt.d.w f29, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x0cfc17b2dd891a7a # load immediate value into integer register
fcvt.d.w f5, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
fsflagsi 0b00000 # clear all fflags
li x5, 0xad7aae6e4ad614c1 # load immediate value into integer register
fcvt.d.w f14, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x5e9cecd4e2d0d771 # load immediate value into integer register
fcvt.d.w f24, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0x49bf6f8380297ba6 # load immediate value into integer register
fcvt.d.w f6, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x914b110530b88173 # load immediate value into integer register
fcvt.d.w f6, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0xe33570f715d7563b # load immediate value into integer register
fcvt.d.w f31, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x117992201ec14517 # load immediate value into integer register
fcvt.d.w f6, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xfbf4f0930bc13c88 # load immediate value into integer register
fcvt.d.w f1, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x26af209f76dcacdd # load immediate value into integer register
fcvt.d.w f24, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x0b3ca1ed22bbee2d # load immediate value into integer register
fcvt.d.w f12, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xd427d9148e47480b # load immediate value into integer register
fcvt.d.w f26, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xf05295906a15c9e6 # load immediate value into integer register
fcvt.d.w f25, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0xdf752bd40b61571c # load immediate value into integer register
fcvt.d.w f19, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x84a4d15e7f9e7171 # load immediate value into integer register
fcvt.d.w f11, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xe813bea4b6ab1904 # load immediate value into integer register
fcvt.d.w f25, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x5b4e7907c5aea197 # load immediate value into integer register
fcvt.d.w f27, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x1a147e6f804d7d65 # load immediate value into integer register
fcvt.d.w f28, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xd444418bf8cba126 # load immediate value into integer register
fcvt.d.w f7, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x175808b882e66cc0 # load immediate value into integer register
fcvt.d.w f25, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x0efd1b1ba122dba6 # load immediate value into integer register
fcvt.d.w f11, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0xee4cb2aadaf23f77 # load immediate value into integer register
fcvt.d.w f16, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0xc75b792eda640fd3 # load immediate value into integer register
fcvt.d.w f30, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x2b309e58811f97fa # load immediate value into integer register
fcvt.d.w f9, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xcbeb31a152fc23dc # load immediate value into integer register
fcvt.d.w f16, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x0c4904826654e2d3 # load immediate value into integer register
fcvt.d.w f6, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x8923a8033e8c815d # load immediate value into integer register
fcvt.d.w f1, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x68064c128fab25aa # load immediate value into integer register
fcvt.d.w f15, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x2313dd1b3f82d74e # load immediate value into integer register
fcvt.d.w f10, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x5, 0x0000000000000000 # load immediate value into integer register
fcvt.d.w f8, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x9, 0x0000000000000001 # load immediate value into integer register
fcvt.d.w f28, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x27, 0x0000000000000002 # load immediate value into integer register
fcvt.d.w f30, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x28, 0x8000000000000000 # load immediate value into integer register
fcvt.d.w f23, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x25, 0x8000000000000001 # load immediate value into integer register
fcvt.d.w f6, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x21, 0x7fffffffffffffff # load immediate value into integer register
fcvt.d.w f19, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x21, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.d.w f17, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x10, 0xffffffffffffffff # load immediate value into integer register
fcvt.d.w f2, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x23, 0xfffffffffffffffe # load immediate value into integer register
fcvt.d.w f18, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x24, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.d.w f12, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x3, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.d.w f7, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x20, 0x5555555555555555 # load immediate value into integer register
fcvt.d.w f31, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x12, 0x00000000ffffffff # load immediate value into integer register
fcvt.d.w f18, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x6, 0x00000000fffffffe # load immediate value into integer register
fcvt.d.w f31, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x6, 0x0000000100000000 # load immediate value into integer register
fcvt.d.w f21, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x12, 0x0000000100000001 # load immediate value into integer register
fcvt.d.w f8, x12 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x14, x24 # perform first operation
fcvt.d.w f11, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x5, x8 # perform first operation
fcvt.d.w f2, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x24, x20 # perform first operation
fcvt.d.w f2, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f31, f15, f26 # perform first operation
fcvt.d.w f31, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f12, f8, f15 # perform first operation
fcvt.d.w f12, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f18, f19, f23 # perform first operation
fcvt.d.w f18, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f23, f21, f30 # perform first operation
fcvt.d.w f21, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f1, f20, f15 # perform first operation
fcvt.d.w f15, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f31, f23, f19 # perform first operation
fcvt.d.w f9, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x28, x31 # perform first operation
fcvt.d.w f1, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x25, x6 # perform first operation
fcvt.d.w f2, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x9, x6 # perform first operation
fcvt.d.w f2, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x13, x11 # perform first operation
fcvt.d.w f11, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x30, x1 # perform first operation
fcvt.d.w f1, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x31, x22 # perform first operation
fcvt.d.w f5, x7 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x29, 0xc8d518d6e2b098c6 # load immediate value into integer register
fcvt.d.w f0, x29 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x20, 0x4071a51846fa0168 # load immediate value into integer register
fcvt.d.w f1, x20 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x11, 0xbc03f4ccb4120543 # load immediate value into integer register
fcvt.d.w f2, x11 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x20, 0x739ad37752226186 # load immediate value into integer register
fcvt.d.w f3, x20 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x2104ce5ab062ca91 # load immediate value into integer register
fcvt.d.w f4, x6 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x3, 0xe2177c0716c84051 # load immediate value into integer register
fcvt.d.w f5, x3 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x11, 0xa23169304cfa84d5 # load immediate value into integer register
fcvt.d.w f6, x11 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x24, 0x547ae66d7c2ca4a7 # load immediate value into integer register
fcvt.d.w f7, x24 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x18, 0x52c784715bb68f6f # load immediate value into integer register
fcvt.d.w f8, x18 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x2, 0xfec0cb394ecd1abd # load immediate value into integer register
fcvt.d.w f9, x2 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x21, 0x174ff90e4f1d707a # load immediate value into integer register
fcvt.d.w f10, x21 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x17, 0x560194b646ae7c9a # load immediate value into integer register
fcvt.d.w f11, x17 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x26, 0x3faab5c7cd52ab85 # load immediate value into integer register
fcvt.d.w f12, x26 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x2, 0xdbf27533b738cde8 # load immediate value into integer register
fcvt.d.w f13, x2 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x15, 0xf8986d59344cc0ef # load immediate value into integer register
fcvt.d.w f14, x15 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x25, 0x46256b348ac3d5fe # load immediate value into integer register
fcvt.d.w f15, x25 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x15, 0x72237b614dc7d100 # load immediate value into integer register
fcvt.d.w f16, x15 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x5, 0x3ded59b2a21e3c13 # load immediate value into integer register
fcvt.d.w f17, x5 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x21, 0xb32d3195c705a730 # load immediate value into integer register
fcvt.d.w f18, x21 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x12, 0xae7ee2ef7a97dbfc # load immediate value into integer register
fcvt.d.w f19, x12 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x9, 0xc97c3d1dcb0c0fa4 # load immediate value into integer register
fcvt.d.w f20, x9 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x26, 0xadf56056fb4bae2b # load immediate value into integer register
fcvt.d.w f21, x26 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x7, 0xd05c05f4e28d54bc # load immediate value into integer register
fcvt.d.w f22, x7 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x11, 0xd3cfaae62286eeb4 # load immediate value into integer register
fcvt.d.w f23, x11 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x28, 0x366232a7b3a29700 # load immediate value into integer register
fcvt.d.w f24, x28 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x21, 0x28287c6e9b7df9d2 # load immediate value into integer register
fcvt.d.w f25, x21 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x27, 0x30c167e9f53bd628 # load immediate value into integer register
fcvt.d.w f26, x27 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x28f322f91e3eebdc # load immediate value into integer register
fcvt.d.w f27, x27 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x6, 0xf272162f2f6218eb # load immediate value into integer register
fcvt.d.w f28, x6 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x21, 0xbfdaae1348c25e23 # load immediate value into integer register
fcvt.d.w f29, x21 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x1, 0xb12548c6c9a2653f # load immediate value into integer register
fcvt.d.w f30, x1 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x1, 0xca2424b44f5cc686 # load immediate value into integer register
fcvt.d.w f31, x1 # perform operation

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
