///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fmv.w.x.S
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
li x0, 0x7bdbdefc9ed4c92b # load immediate value into integer register
fmv.w.x f10, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x6646e84435198a11 # load immediate value into integer register
fmv.w.x f29, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x52ecf96d78aeb315 # load immediate value into integer register
fmv.w.x f5, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x86e98042b0ce4f2f # load immediate value into integer register
fmv.w.x f14, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xcac76299e49735b2 # load immediate value into integer register
fmv.w.x f7, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0xc39701ca2292b330 # load immediate value into integer register
fmv.w.x f14, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0xeb2728202492aa45 # load immediate value into integer register
fmv.w.x f7, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
fsflagsi 0b00000 # clear all fflags
li x7, 0xb49a432e965c9c46 # load immediate value into integer register
fmv.w.x f25, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0xe30a0d97b648d095 # load immediate value into integer register
fmv.w.x f2, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x6ff4ea56ed38166f # load immediate value into integer register
fmv.w.x f20, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x76abb40b8e7586f9 # load immediate value into integer register
fmv.w.x f24, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xe5f3614c5ab9045b # load immediate value into integer register
fmv.w.x f17, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x3cdf5524142d2ca6 # load immediate value into integer register
fmv.w.x f16, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0xbfccb8809bcdcc90 # load immediate value into integer register
fmv.w.x f1, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x84043dd44ecb951f # load immediate value into integer register
fmv.w.x f27, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x6ed933bf488a0a74 # load immediate value into integer register
fmv.w.x f22, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0xf0188cafd3b24323 # load immediate value into integer register
fmv.w.x f1, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xd8936d2fb70d7032 # load immediate value into integer register
fmv.w.x f31, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xec1e7e283c95b364 # load immediate value into integer register
fmv.w.x f15, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x591faceff95d8959 # load immediate value into integer register
fmv.w.x f13, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x36b664e885e9c3c2 # load immediate value into integer register
fmv.w.x f21, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x91291ddf34b18cff # load immediate value into integer register
fmv.w.x f7, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x9a8b9b0fc72cbfe8 # load immediate value into integer register
fmv.w.x f12, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x7d60bd6bcc75ccd9 # load immediate value into integer register
fmv.w.x f21, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x76dc94a99d95599b # load immediate value into integer register
fmv.w.x f18, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x3ad14d30946e4bdf # load immediate value into integer register
fmv.w.x f15, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x529ff0d539df4e49 # load immediate value into integer register
fmv.w.x f3, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x91b8d2f703f0b425 # load immediate value into integer register
fmv.w.x f8, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x507354d347fed6fa # load immediate value into integer register
fmv.w.x f24, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0xb4ba952a8ecfee02 # load immediate value into integer register
fmv.w.x f27, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0xb1d45949683f2132 # load immediate value into integer register
fmv.w.x f13, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0xc54eaea0ad8e2bf9 # load immediate value into integer register
fmv.w.x f25, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x3, 0x0000000000000000 # load immediate value into integer register
fmv.w.x f11, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x20, 0x0000000000000001 # load immediate value into integer register
fmv.w.x f23, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x22, 0x0000000000000002 # load immediate value into integer register
fmv.w.x f15, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x7, 0x8000000000000000 # load immediate value into integer register
fmv.w.x f1, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x20, 0x8000000000000001 # load immediate value into integer register
fmv.w.x f25, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x6, 0x7fffffffffffffff # load immediate value into integer register
fmv.w.x f28, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x12, 0x7ffffffffffffffe # load immediate value into integer register
fmv.w.x f22, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x16, 0xffffffffffffffff # load immediate value into integer register
fmv.w.x f6, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x1, 0xfffffffffffffffe # load immediate value into integer register
fmv.w.x f31, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x14, 0x5bbc887763ae86f2 # load immediate value into integer register
fmv.w.x f5, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x16, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fmv.w.x f18, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x22, 0x5555555555555555 # load immediate value into integer register
fmv.w.x f28, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x16, 0x00000000ffffffff # load immediate value into integer register
fmv.w.x f28, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x14, 0x00000000fffffffe # load immediate value into integer register
fmv.w.x f18, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x22, 0x0000000100000000 # load immediate value into integer register
fmv.w.x f21, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x3, 0x0000000100000001 # load immediate value into integer register
fmv.w.x f30, x3 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x30, x16 # perform first operation
fmv.w.x f2, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x22, x27 # perform first operation
fmv.w.x f29, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x1, x12 # perform first operation
fmv.w.x f22, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f3, f12, f5 # perform first operation
fmv.w.x f3, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f22, f15, f27 # perform first operation
fmv.w.x f22, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f14, f30, f1 # perform first operation
fmv.w.x f14, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f8, f6, f10 # perform first operation
fmv.w.x f6, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f29, f28, f17 # perform first operation
fmv.w.x f17, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f29, f28, f15 # perform first operation
fmv.w.x f11, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x1, x19 # perform first operation
fmv.w.x f15, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x15, x30 # perform first operation
fmv.w.x f11, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x16, x12 # perform first operation
fmv.w.x f7, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x11, x31 # perform first operation
fmv.w.x f31, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x21, x25 # perform first operation
fmv.w.x f25, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x31, x14 # perform first operation
fmv.w.x f14, x15 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x23, 0x304aabb46ace228d # load immediate value into integer register
fmv.w.x f0, x23 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x2, 0x4af877b50c9654a4 # load immediate value into integer register
fmv.w.x f1, x2 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x23, 0x2b8e64eca197385f # load immediate value into integer register
fmv.w.x f2, x23 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x8, 0x08b264e4b44c8592 # load immediate value into integer register
fmv.w.x f3, x8 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x3, 0x5807b6f85ba5b461 # load immediate value into integer register
fmv.w.x f4, x3 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x25, 0xd371189b3892a398 # load immediate value into integer register
fmv.w.x f5, x25 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x28, 0x77cd489297acc563 # load immediate value into integer register
fmv.w.x f6, x28 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x22, 0x547e8e0638a96f26 # load immediate value into integer register
fmv.w.x f7, x22 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x6, 0xe046674de6829229 # load immediate value into integer register
fmv.w.x f8, x6 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x22, 0x1ba4b55e09514ecc # load immediate value into integer register
fmv.w.x f9, x22 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x24, 0x0503ca4838217d61 # load immediate value into integer register
fmv.w.x f10, x24 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x23, 0x1802767f2594542d # load immediate value into integer register
fmv.w.x f11, x23 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x26, 0x515fcb359b6d470d # load immediate value into integer register
fmv.w.x f12, x26 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x6, 0xb528a4c60dd759b9 # load immediate value into integer register
fmv.w.x f13, x6 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x29, 0xef1db49503df42a9 # load immediate value into integer register
fmv.w.x f14, x29 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x20, 0x26fd952f5c339bd6 # load immediate value into integer register
fmv.w.x f15, x20 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x9, 0xb0b619549b467e53 # load immediate value into integer register
fmv.w.x f16, x9 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x20, 0x90e19a05cfb114bd # load immediate value into integer register
fmv.w.x f17, x20 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x10, 0x6fff91696540de43 # load immediate value into integer register
fmv.w.x f18, x10 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x7, 0xc271a6d450d726d3 # load immediate value into integer register
fmv.w.x f19, x7 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x5, 0x88b96d36f7f0e37f # load immediate value into integer register
fmv.w.x f20, x5 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x17, 0xa70b8f9a61b6e89c # load immediate value into integer register
fmv.w.x f21, x17 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x8, 0x9dc0613e67a7c919 # load immediate value into integer register
fmv.w.x f22, x8 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x5, 0xf0ce7bb8ffaca97c # load immediate value into integer register
fmv.w.x f23, x5 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x11, 0x6cea38706ccca081 # load immediate value into integer register
fmv.w.x f24, x11 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x8, 0xd57db563ab38acc2 # load immediate value into integer register
fmv.w.x f25, x8 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x21, 0x124a3a0268f3af86 # load immediate value into integer register
fmv.w.x f26, x21 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x10, 0xc1a6280eed0bb782 # load immediate value into integer register
fmv.w.x f27, x10 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0xdd3d513bd6990df2 # load immediate value into integer register
fmv.w.x f28, x28 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x26, 0xfbe15b55f2551c00 # load immediate value into integer register
fmv.w.x f29, x26 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x2, 0xb6dbbe54b84ee4c7 # load immediate value into integer register
fmv.w.x f30, x2 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x22, 0x11c95d51523a7e37 # load immediate value into integer register
fmv.w.x f31, x22 # perform operation

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
