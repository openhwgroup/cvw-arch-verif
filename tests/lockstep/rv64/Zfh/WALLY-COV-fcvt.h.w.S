///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fcvt.h.w.S
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
li x0, 0x657a5b7641718800 # load immediate value into integer register
fcvt.h.w f14, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x5710f6af96cf5e86 # load immediate value into integer register
fcvt.h.w f31, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x4f1b683ebac2385e # load immediate value into integer register
fcvt.h.w f16, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0xb05ceb6af6e69838 # load immediate value into integer register
fcvt.h.w f16, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xdc41021d01315ac0 # load immediate value into integer register
fcvt.h.w f27, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x34b8c2a3f79e3105 # load immediate value into integer register
fcvt.h.w f9, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0xca47aa81029cd982 # load immediate value into integer register
fcvt.h.w f15, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0x0e69ea42bdef43b0 # load immediate value into integer register
fcvt.h.w f22, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x4eaed38ec87e6dd9 # load immediate value into integer register
fcvt.h.w f18, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0xddad753754213c30 # load immediate value into integer register
fcvt.h.w f3, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0xb9318f3b15af6bb6 # load immediate value into integer register
fcvt.h.w f30, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0x17aad5ef28d8ccaa # load immediate value into integer register
fcvt.h.w f1, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xef0b867119d99291 # load immediate value into integer register
fcvt.h.w f16, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x372019c5ae5afa95 # load immediate value into integer register
fcvt.h.w f3, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xe18eab68e9bfcc76 # load immediate value into integer register
fcvt.h.w f30, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x9366b245842ee71e # load immediate value into integer register
fcvt.h.w f17, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x36dfab90ba504383 # load immediate value into integer register
fcvt.h.w f7, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xf8c8c6ea348bafc6 # load immediate value into integer register
fcvt.h.w f12, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x7610c7f9b8ab2838 # load immediate value into integer register
fcvt.h.w f7, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x742c9231ee74377f # load immediate value into integer register
fcvt.h.w f2, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0xd6a1f08a37d6e14a # load immediate value into integer register
fcvt.h.w f29, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xced4de7863665149 # load immediate value into integer register
fcvt.h.w f11, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x633af84b9aec0277 # load immediate value into integer register
fcvt.h.w f21, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x87e8dd70e61e38c5 # load immediate value into integer register
fcvt.h.w f15, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x016b193f113edb54 # load immediate value into integer register
fcvt.h.w f30, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x526dcaf8f42d9448 # load immediate value into integer register
fcvt.h.w f26, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x41cc5fdd83a3de72 # load immediate value into integer register
fcvt.h.w f2, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x8b40248413f1c48b # load immediate value into integer register
fcvt.h.w f6, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0xefad5f98192b63a8 # load immediate value into integer register
fcvt.h.w f29, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0xbcecf0dba7c95de7 # load immediate value into integer register
fcvt.h.w f13, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0xe6edf9cb2377b1c4 # load immediate value into integer register
fcvt.h.w f1, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x20b6526650e5f2a7 # load immediate value into integer register
fcvt.h.w f14, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x7, 0x0000000000000000 # load immediate value into integer register
fcvt.h.w f17, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x10, 0x0000000000000001 # load immediate value into integer register
fcvt.h.w f1, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x17, 0x0000000000000002 # load immediate value into integer register
fcvt.h.w f14, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x19, 0x8000000000000000 # load immediate value into integer register
fcvt.h.w f11, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x7, 0x8000000000000001 # load immediate value into integer register
fcvt.h.w f19, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x20, 0x7fffffffffffffff # load immediate value into integer register
fcvt.h.w f2, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x26, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.h.w f13, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x28, 0xffffffffffffffff # load immediate value into integer register
fcvt.h.w f11, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x11, 0xfffffffffffffffe # load immediate value into integer register
fcvt.h.w f1, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x21, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.h.w f12, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x27, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.h.w f31, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x26, 0x5555555555555555 # load immediate value into integer register
fcvt.h.w f2, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x5, 0x00000000ffffffff # load immediate value into integer register
fcvt.h.w f19, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x26, 0x00000000fffffffe # load immediate value into integer register
fcvt.h.w f27, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x8, 0x0000000100000000 # load immediate value into integer register
fcvt.h.w f29, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x22, 0x0000000100000001 # load immediate value into integer register
fcvt.h.w f5, x22 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x8, x7 # perform first operation
fcvt.h.w f28, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x2, x28 # perform first operation
fcvt.h.w f29, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x15, x27 # perform first operation
fcvt.h.w f26, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f7, f25, f5 # perform first operation
fcvt.h.w f7, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f2, f5 # perform first operation
fcvt.h.w f27, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f11, f24, f26 # perform first operation
fcvt.h.w f11, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f10, f11, f6 # perform first operation
fcvt.h.w f11, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f10, f26, f14 # perform first operation
fcvt.h.w f14, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f22, f8, f21 # perform first operation
fcvt.h.w f14, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x8, x3 # perform first operation
fcvt.h.w f22, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x19, x31 # perform first operation
fcvt.h.w f17, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x2, x3 # perform first operation
fcvt.h.w f29, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x27, x9 # perform first operation
fcvt.h.w f9, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x14, x13 # perform first operation
fcvt.h.w f14, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x30, x6 # perform first operation
fcvt.h.w f10, x17 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x10, 0xf9280b301f00e731 # load immediate value into integer register
fcvt.h.w f0, x10 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x14, 0xb3371ce2754158f4 # load immediate value into integer register
fcvt.h.w f1, x14 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x21, 0x5dcde73e74c0c9ba # load immediate value into integer register
fcvt.h.w f2, x21 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x24, 0x4412444fc0c1325e # load immediate value into integer register
fcvt.h.w f3, x24 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x11, 0x28d85cae4fa801d9 # load immediate value into integer register
fcvt.h.w f4, x11 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xd6ae2da9b247e0ae # load immediate value into integer register
fcvt.h.w f5, x4 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x14, 0x268e68e062d443d7 # load immediate value into integer register
fcvt.h.w f6, x14 # perform operation

# Testcase cp_fd (Test destination fd = x7)
fsflagsi 0b00000 # clear all fflags
li x12, 0x980225bf02f036d8 # load immediate value into integer register
fcvt.h.w f7, x12 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x14, 0x37eac1f426213c81 # load immediate value into integer register
fcvt.h.w f8, x14 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x24, 0xca1b8a1e2dec82c3 # load immediate value into integer register
fcvt.h.w f9, x24 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x5, 0xcc31c93ee15145ce # load immediate value into integer register
fcvt.h.w f10, x5 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x31, 0x0f800d160127bc56 # load immediate value into integer register
fcvt.h.w f11, x31 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x16, 0x65c226870da24cc9 # load immediate value into integer register
fcvt.h.w f12, x16 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x14, 0x0b6461c91559d887 # load immediate value into integer register
fcvt.h.w f13, x14 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x20, 0x64135887f90f4ea1 # load immediate value into integer register
fcvt.h.w f14, x20 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x9, 0x705ed1f1a43677eb # load immediate value into integer register
fcvt.h.w f15, x9 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x22, 0xbe8f14ad38991229 # load immediate value into integer register
fcvt.h.w f16, x22 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x26, 0xfbb2c698761e8cde # load immediate value into integer register
fcvt.h.w f17, x26 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x15, 0xddc2c6537509b16a # load immediate value into integer register
fcvt.h.w f18, x15 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x30, 0xcad32538109b8054 # load immediate value into integer register
fcvt.h.w f19, x30 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x5, 0x4fdaa04a9dd3e573 # load immediate value into integer register
fcvt.h.w f20, x5 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x31, 0xe6b95e3696677017 # load immediate value into integer register
fcvt.h.w f21, x31 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x14, 0x16e9d7490b7dad48 # load immediate value into integer register
fcvt.h.w f22, x14 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x25, 0x57632a79e64306eb # load immediate value into integer register
fcvt.h.w f23, x25 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x14, 0x888594a990bffcdc # load immediate value into integer register
fcvt.h.w f24, x14 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x15, 0x965221bdfa4eebf4 # load immediate value into integer register
fcvt.h.w f25, x15 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x8, 0xaa4a74d498ba0c8c # load immediate value into integer register
fcvt.h.w f26, x8 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x30, 0xa6f0b86c3e17254d # load immediate value into integer register
fcvt.h.w f27, x30 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x31, 0xc6d84063991a051a # load immediate value into integer register
fcvt.h.w f28, x31 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x11, 0xb92d2d948bf35d81 # load immediate value into integer register
fcvt.h.w f29, x11 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x16, 0x25e592b974815ae1 # load immediate value into integer register
fcvt.h.w f30, x16 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x11, 0x5922dd3a74a1fe61 # load immediate value into integer register
fcvt.h.w f31, x11 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x18, 0x13e09879d5728e06 # load immediate value into integer register
fcvt.h.w f7, x18, dyn # perform operation
fcvt.h.w f7, x18, rdn # perform operation
fcvt.h.w f7, x18, rmm # perform operation
fcvt.h.w f7, x18, rne # perform operation
fcvt.h.w f7, x18, rtz # perform operation
fcvt.h.w f7, x18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.w f7, x18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.w f7, x18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.w f7, x18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.w f7, x18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.w f7, x18 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x5, 0xebe8dfca0ec4a1da # load immediate value into integer register
fcvt.h.w f12, x5 # perform operation

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
