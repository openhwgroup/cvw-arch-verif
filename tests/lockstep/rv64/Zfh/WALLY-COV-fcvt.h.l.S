///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fcvt.h.l.S
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
li x0, 0x70042edc7b37bd0b # load immediate value into integer register
fcvt.h.l f14, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0xa4366acc0f587858 # load immediate value into integer register
fcvt.h.l f12, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x84ffbc3b9efa3856 # load immediate value into integer register
fcvt.h.l f16, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x0af626a7409d9fae # load immediate value into integer register
fcvt.h.l f20, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x48b50d9319d662bd # load immediate value into integer register
fcvt.h.l f13, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x171469fcecdad453 # load immediate value into integer register
fcvt.h.l f27, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x67721197c7c5375a # load immediate value into integer register
fcvt.h.l f12, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
fsflagsi 0b00000 # clear all fflags
li x7, 0x3ca6cdadf5176841 # load immediate value into integer register
fcvt.h.l f9, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x09c1059456b4f489 # load immediate value into integer register
fcvt.h.l f3, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0xcc8dbb5f64a3d0c7 # load immediate value into integer register
fcvt.h.l f23, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0xc78e964e1655e5a1 # load immediate value into integer register
fcvt.h.l f15, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0x2782f8170ab663f5 # load immediate value into integer register
fcvt.h.l f31, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xa5d5df975d8b1637 # load immediate value into integer register
fcvt.h.l f19, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0xa006eeb762365fe0 # load immediate value into integer register
fcvt.h.l f15, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x210871d3dab2ccc6 # load immediate value into integer register
fcvt.h.l f8, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x46d90a83074033b9 # load immediate value into integer register
fcvt.h.l f24, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x0671a3f2f0e5c15f # load immediate value into integer register
fcvt.h.l f19, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xc2b285a1cffd7ab5 # load immediate value into integer register
fcvt.h.l f7, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x2b6e7f89d37faa7f # load immediate value into integer register
fcvt.h.l f26, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x9b4735d606404d33 # load immediate value into integer register
fcvt.h.l f31, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x288a123de8b6e253 # load immediate value into integer register
fcvt.h.l f14, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xc89dc34dc2c834ce # load immediate value into integer register
fcvt.h.l f14, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0xad3ffe1912b6e17a # load immediate value into integer register
fcvt.h.l f8, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0xb71d800820111ae6 # load immediate value into integer register
fcvt.h.l f2, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x1ad7652c5e859b8d # load immediate value into integer register
fcvt.h.l f6, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0xc74b26e609aff332 # load immediate value into integer register
fcvt.h.l f28, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0xdc3118b781aadb3b # load immediate value into integer register
fcvt.h.l f17, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x84970341e1b1ba04 # load immediate value into integer register
fcvt.h.l f21, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x7eaebe83005f1142 # load immediate value into integer register
fcvt.h.l f5, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0xeead0355e59cd433 # load immediate value into integer register
fcvt.h.l f23, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0xd673d7126edbee2e # load immediate value into integer register
fcvt.h.l f31, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0xf734c0ceb7a51dfd # load immediate value into integer register
fcvt.h.l f22, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x7, 0x0000000000000000 # load immediate value into integer register
fcvt.h.l f30, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x15, 0x0000000000000001 # load immediate value into integer register
fcvt.h.l f26, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x30, 0x0000000000000002 # load immediate value into integer register
fcvt.h.l f28, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x20, 0x8000000000000000 # load immediate value into integer register
fcvt.h.l f14, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x6, 0x8000000000000001 # load immediate value into integer register
fcvt.h.l f26, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x22, 0x7fffffffffffffff # load immediate value into integer register
fcvt.h.l f26, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x17, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.h.l f16, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x14, 0xffffffffffffffff # load immediate value into integer register
fcvt.h.l f22, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x20, 0xfffffffffffffffe # load immediate value into integer register
fcvt.h.l f2, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x14, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.h.l f30, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x10, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.h.l f26, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x22, 0x5555555555555555 # load immediate value into integer register
fcvt.h.l f24, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x21, 0x00000000ffffffff # load immediate value into integer register
fcvt.h.l f31, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x15, 0x00000000fffffffe # load immediate value into integer register
fcvt.h.l f3, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x20, 0x0000000100000000 # load immediate value into integer register
fcvt.h.l f31, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x12, 0x0000000100000001 # load immediate value into integer register
fcvt.h.l f5, x12 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x12, x3 # perform first operation
fcvt.h.l f10, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x2, x19 # perform first operation
fcvt.h.l f3, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x14, x20 # perform first operation
fcvt.h.l f3, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f29, f5, f12 # perform first operation
fcvt.h.l f29, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f1, f30, f7 # perform first operation
fcvt.h.l f1, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f26, f2, f1 # perform first operation
fcvt.h.l f26, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f16, f26, f30 # perform first operation
fcvt.h.l f26, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f16, f30, f3 # perform first operation
fcvt.h.l f3, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f27, f22, f19 # perform first operation
fcvt.h.l f25, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x23, x11 # perform first operation
fcvt.h.l f20, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x5, x8 # perform first operation
fcvt.h.l f22, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x16, x1 # perform first operation
fcvt.h.l f6, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x17, x29 # perform first operation
fcvt.h.l f6, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x24, x1 # perform first operation
fcvt.h.l f7, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x17, x2 # perform first operation
fcvt.h.l f26, x10 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x8, 0x162f8836900f731c # load immediate value into integer register
fcvt.h.l f0, x8 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x21, 0xf99b87ad21621d84 # load immediate value into integer register
fcvt.h.l f1, x21 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x11, 0xfa74aad40086ff80 # load immediate value into integer register
fcvt.h.l f2, x11 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x22, 0x8d5abcdacc8e3695 # load immediate value into integer register
fcvt.h.l f3, x22 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x22, 0xd2cab34fd119fdf8 # load immediate value into integer register
fcvt.h.l f4, x22 # perform operation

# Testcase cp_fd (Test destination fd = x5)
fsflagsi 0b00000 # clear all fflags
li x15, 0x9561347b392d22a1 # load immediate value into integer register
fcvt.h.l f5, x15 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x8, 0xccf6c3162badb494 # load immediate value into integer register
fcvt.h.l f6, x8 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x28, 0x06e5de5b81962758 # load immediate value into integer register
fcvt.h.l f7, x28 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x28, 0x08caf106f5253878 # load immediate value into integer register
fcvt.h.l f8, x28 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x20, 0x8890ddb735251456 # load immediate value into integer register
fcvt.h.l f9, x20 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x20, 0x0282ddc876e85e9b # load immediate value into integer register
fcvt.h.l f10, x20 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x17, 0x6853347ee0dd56f3 # load immediate value into integer register
fcvt.h.l f11, x17 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x25, 0x3ac0f531b3035043 # load immediate value into integer register
fcvt.h.l f12, x25 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x25, 0xc12a3517faedcb1f # load immediate value into integer register
fcvt.h.l f13, x25 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x19, 0xe02d48b62da7ba67 # load immediate value into integer register
fcvt.h.l f14, x19 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x13, 0x57c84115ff7c8627 # load immediate value into integer register
fcvt.h.l f15, x13 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x12, 0x36240989788c2a93 # load immediate value into integer register
fcvt.h.l f16, x12 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x6, 0xabe76b4b2def7537 # load immediate value into integer register
fcvt.h.l f17, x6 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x3, 0xd9d23dfdf9fcc1d4 # load immediate value into integer register
fcvt.h.l f18, x3 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x12, 0x1aa2df0b61f8bb6f # load immediate value into integer register
fcvt.h.l f19, x12 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x12, 0x164f21226b85ab22 # load immediate value into integer register
fcvt.h.l f20, x12 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x10, 0xc65b26eee4281581 # load immediate value into integer register
fcvt.h.l f21, x10 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x21, 0x18ea0a228fbcc49e # load immediate value into integer register
fcvt.h.l f22, x21 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x8, 0x7dc765d1d965bf8c # load immediate value into integer register
fcvt.h.l f23, x8 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x1, 0x5e8f44f16a78c523 # load immediate value into integer register
fcvt.h.l f24, x1 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x28, 0xb0f9825169e00c91 # load immediate value into integer register
fcvt.h.l f25, x28 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x21, 0xaa28bae44e8314f0 # load immediate value into integer register
fcvt.h.l f26, x21 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x17, 0xc39a52c5f7904975 # load immediate value into integer register
fcvt.h.l f27, x17 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x31, 0xd57bf562503f44bf # load immediate value into integer register
fcvt.h.l f28, x31 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x15, 0xa69f82fd68792ec9 # load immediate value into integer register
fcvt.h.l f29, x15 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x23, 0x930bf78daa9d8b4b # load immediate value into integer register
fcvt.h.l f30, x23 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x17, 0xf21b3f2559d34219 # load immediate value into integer register
fcvt.h.l f31, x17 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x24, 0xb675948e19fda86a # load immediate value into integer register
fcvt.h.l f22, x24, dyn # perform operation
fcvt.h.l f22, x24, rdn # perform operation
fcvt.h.l f22, x24, rmm # perform operation
fcvt.h.l f22, x24, rne # perform operation
fcvt.h.l f22, x24, rtz # perform operation
fcvt.h.l f22, x24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.l f22, x24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.l f22, x24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.l f22, x24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.l f22, x24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.l f22, x24 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x30, 0x98bac52d3f9f9f42 # load immediate value into integer register
fcvt.h.l f27, x30 # perform operation

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
