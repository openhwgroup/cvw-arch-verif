///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fcvt.s.wu.S
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
li x0, 0xc28a74c3571db917 # load immediate value into integer register
fcvt.s.wu f26, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x9ca34ce6786e7c9f # load immediate value into integer register
fcvt.s.wu f19, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0xb11d1ff556af41a5 # load immediate value into integer register
fcvt.s.wu f21, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0xc6cd2ec61ff970e3 # load immediate value into integer register
fcvt.s.wu f17, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xde200bf3a5402a0e # load immediate value into integer register
fcvt.s.wu f12, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x615d059e2e8009eb # load immediate value into integer register
fcvt.s.wu f9, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x00e9ae5931353697 # load immediate value into integer register
fcvt.s.wu f10, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xd1c47f55720e1c2e # load immediate value into integer register
fcvt.s.wu f30, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0xd063669a3cfdcd78 # load immediate value into integer register
fcvt.s.wu f20, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x4602b7a536add2d8 # load immediate value into integer register
fcvt.s.wu f11, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0xdea341a744190c92 # load immediate value into integer register
fcvt.s.wu f6, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0x6765a4e60773a6d3 # load immediate value into integer register
fcvt.s.wu f16, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xb19f1253a619c7ae # load immediate value into integer register
fcvt.s.wu f22, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0xb7fefe8b76f3f7a6 # load immediate value into integer register
fcvt.s.wu f30, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xbd1aab8197948acb # load immediate value into integer register
fcvt.s.wu f11, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x6f3e771e2ec93f8f # load immediate value into integer register
fcvt.s.wu f18, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x44fb547ca7d19695 # load immediate value into integer register
fcvt.s.wu f9, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x9ef4e748ea5aebc8 # load immediate value into integer register
fcvt.s.wu f21, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x2a28c1fb5d0b04ee # load immediate value into integer register
fcvt.s.wu f12, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x11424ede66130475 # load immediate value into integer register
fcvt.s.wu f2, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x1f5187c2fc1fc20b # load immediate value into integer register
fcvt.s.wu f14, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xc978fc2e0436018f # load immediate value into integer register
fcvt.s.wu f25, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0xf770fee7d0257c9b # load immediate value into integer register
fcvt.s.wu f21, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x27efe584640b0c24 # load immediate value into integer register
fcvt.s.wu f9, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0xbf7991086dc656f4 # load immediate value into integer register
fcvt.s.wu f16, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x9127ec41a572422e # load immediate value into integer register
fcvt.s.wu f27, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0xf01eabab155a99e1 # load immediate value into integer register
fcvt.s.wu f5, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xdd6105fafe44b5e5 # load immediate value into integer register
fcvt.s.wu f19, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x045823ff6c3aeb19 # load immediate value into integer register
fcvt.s.wu f21, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x494ce0f87413f78b # load immediate value into integer register
fcvt.s.wu f6, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0xd9a876a75161e486 # load immediate value into integer register
fcvt.s.wu f2, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x3da82c39af1dd3e6 # load immediate value into integer register
fcvt.s.wu f1, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x31, 0x0000000000000000 # load immediate value into integer register
fcvt.s.wu f7, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x19, 0x0000000000000001 # load immediate value into integer register
fcvt.s.wu f10, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x19, 0x0000000000000002 # load immediate value into integer register
fcvt.s.wu f15, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x21, 0x8000000000000000 # load immediate value into integer register
fcvt.s.wu f5, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x28, 0x8000000000000001 # load immediate value into integer register
fcvt.s.wu f21, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x27, 0x7fffffffffffffff # load immediate value into integer register
fcvt.s.wu f13, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x11, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.s.wu f9, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x31, 0xffffffffffffffff # load immediate value into integer register
fcvt.s.wu f1, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x8, 0xfffffffffffffffe # load immediate value into integer register
fcvt.s.wu f21, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x8, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.s.wu f9, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x13, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.s.wu f30, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x22, 0x5555555555555555 # load immediate value into integer register
fcvt.s.wu f21, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x26, 0x00000000ffffffff # load immediate value into integer register
fcvt.s.wu f31, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x17, 0x00000000fffffffe # load immediate value into integer register
fcvt.s.wu f23, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x23, 0x0000000100000000 # load immediate value into integer register
fcvt.s.wu f20, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x16, 0x0000000100000001 # load immediate value into integer register
fcvt.s.wu f15, x16 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x15, x16 # perform first operation
fcvt.s.wu f9, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x21, x8 # perform first operation
fcvt.s.wu f16, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x24, x29 # perform first operation
fcvt.s.wu f16, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f28, f9, f5 # perform first operation
fcvt.s.wu f28, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f3, f22, f7 # perform first operation
fcvt.s.wu f3, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f24, f30, f18 # perform first operation
fcvt.s.wu f24, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f2, f26, f1 # perform first operation
fcvt.s.wu f26, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f31, f13, f28 # perform first operation
fcvt.s.wu f28, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f5, f16, f30 # perform first operation
fcvt.s.wu f23, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x24, x23 # perform first operation
fcvt.s.wu f27, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x24, x16 # perform first operation
fcvt.s.wu f27, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x3, x8 # perform first operation
fcvt.s.wu f10, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x19, x21 # perform first operation
fcvt.s.wu f25, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x29, x16 # perform first operation
fcvt.s.wu f6, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x1, x12 # perform first operation
fcvt.s.wu f23, x25 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x6, 0x91fee2c47f86cc72 # load immediate value into integer register
fcvt.s.wu f0, x6 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x9, 0xad804c5ff9f830ac # load immediate value into integer register
fcvt.s.wu f1, x9 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x28, 0x20fe28a773e30d9f # load immediate value into integer register
fcvt.s.wu f2, x28 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x25, 0xa4fc3716b7743614 # load immediate value into integer register
fcvt.s.wu f3, x25 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x8dcd56528bbd1cef # load immediate value into integer register
fcvt.s.wu f4, x5 # perform operation

# Testcase cp_fd (Test destination fd = x5)
fsflagsi 0b00000 # clear all fflags
li x19, 0x795905d1c59165bb # load immediate value into integer register
fcvt.s.wu f5, x19 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x20, 0xf8c84e9c49b5968c # load immediate value into integer register
fcvt.s.wu f6, x20 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x26, 0x250a417063267ebd # load immediate value into integer register
fcvt.s.wu f7, x26 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x6, 0x9d9c4df74e42bcab # load immediate value into integer register
fcvt.s.wu f8, x6 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x23, 0x4f134ac774704b37 # load immediate value into integer register
fcvt.s.wu f9, x23 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x12, 0x59681b7f794ebc97 # load immediate value into integer register
fcvt.s.wu f10, x12 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x19, 0x6dff62701df1d5e0 # load immediate value into integer register
fcvt.s.wu f11, x19 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x24, 0x5edb7af611b72dc0 # load immediate value into integer register
fcvt.s.wu f12, x24 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x6, 0x7edb80c35c54ad8d # load immediate value into integer register
fcvt.s.wu f13, x6 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x13, 0x6138eee98d106cae # load immediate value into integer register
fcvt.s.wu f14, x13 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x7, 0x66fa1c5a0a010e27 # load immediate value into integer register
fcvt.s.wu f15, x7 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x6, 0x51cf07eaf975dc7c # load immediate value into integer register
fcvt.s.wu f16, x6 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x20, 0xbd5f5bbd419627ac # load immediate value into integer register
fcvt.s.wu f17, x20 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x1, 0xbb8ecda40c6611d2 # load immediate value into integer register
fcvt.s.wu f18, x1 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x10, 0x894f9a2f4f216a79 # load immediate value into integer register
fcvt.s.wu f19, x10 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x15, 0x1897989a5699cc76 # load immediate value into integer register
fcvt.s.wu f20, x15 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x14, 0x3ba10aaee0bc9a9e # load immediate value into integer register
fcvt.s.wu f21, x14 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x2, 0xa043ab424cb2d8b8 # load immediate value into integer register
fcvt.s.wu f22, x2 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x28, 0xafbec9d0f42942b2 # load immediate value into integer register
fcvt.s.wu f23, x28 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x1, 0xa292a6fbe1ab0487 # load immediate value into integer register
fcvt.s.wu f24, x1 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x27, 0x8c0e625272feb713 # load immediate value into integer register
fcvt.s.wu f25, x27 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x8, 0xad41bd1688872daa # load immediate value into integer register
fcvt.s.wu f26, x8 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x0b62dd34fdaf3691 # load immediate value into integer register
fcvt.s.wu f27, x27 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x2, 0xe7bedae72e861ab4 # load immediate value into integer register
fcvt.s.wu f28, x2 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x22, 0xced3ec8a23f19599 # load immediate value into integer register
fcvt.s.wu f29, x22 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x5, 0x8c9ff42a18105b76 # load immediate value into integer register
fcvt.s.wu f30, x5 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x25, 0x4c6e0c0feb0a6394 # load immediate value into integer register
fcvt.s.wu f31, x25 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x17, 0x191dc6afc0230a8f # load immediate value into integer register
fcvt.s.wu f25, x17, dyn # perform operation
fcvt.s.wu f25, x17, rdn # perform operation
fcvt.s.wu f25, x17, rmm # perform operation
fcvt.s.wu f25, x17, rne # perform operation
fcvt.s.wu f25, x17, rtz # perform operation
fcvt.s.wu f25, x17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.wu f25, x17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.wu f25, x17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.wu f25, x17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.wu f25, x17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.wu f25, x17 # perform operation


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
