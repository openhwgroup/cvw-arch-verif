///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.d.wu.S
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
li x0, 0xd39387ba863f672f # load immediate value into integer register
fcvt.d.wu f31, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x8795d77dd7b0eea1 # load immediate value into integer register
fcvt.d.wu f30, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x9e6256bd8921449a # load immediate value into integer register
fcvt.d.wu f22, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x950d3e454d370aba # load immediate value into integer register
fcvt.d.wu f12, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x5baea76234772951 # load immediate value into integer register
fcvt.d.wu f18, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x23bf0c5f93a688fa # load immediate value into integer register
fcvt.d.wu f22, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x10a0b02b26513472 # load immediate value into integer register
fcvt.d.wu f8, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0x927d6913ab50df27 # load immediate value into integer register
fcvt.d.wu f18, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0xbe86438c4c42c718 # load immediate value into integer register
fcvt.d.wu f14, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x511c80dd7ee8251f # load immediate value into integer register
fcvt.d.wu f29, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x304a4f302dd1b1f5 # load immediate value into integer register
fcvt.d.wu f14, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0x8a664fb77dc2c9ea # load immediate value into integer register
fcvt.d.wu f18, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xfb1535695144a847 # load immediate value into integer register
fcvt.d.wu f7, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x17971c6b44431734 # load immediate value into integer register
fcvt.d.wu f2, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xd17b177a4ae6f3b6 # load immediate value into integer register
fcvt.d.wu f11, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xeae24dac3dfcad53 # load immediate value into integer register
fcvt.d.wu f28, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x3fd86726a7092c44 # load immediate value into integer register
fcvt.d.wu f3, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xd85c1099a36163e0 # load immediate value into integer register
fcvt.d.wu f18, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xb1efb4290054841b # load immediate value into integer register
fcvt.d.wu f27, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x42d3f521b2948893 # load immediate value into integer register
fcvt.d.wu f16, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x6b98324dbeca51ea # load immediate value into integer register
fcvt.d.wu f8, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xbe878897cae1063b # load immediate value into integer register
fcvt.d.wu f1, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0xcf8ad2a90a0065a3 # load immediate value into integer register
fcvt.d.wu f25, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0xa93a5b2b809490d6 # load immediate value into integer register
fcvt.d.wu f19, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x0f32aa3710aa7f23 # load immediate value into integer register
fcvt.d.wu f16, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x612e498213b1529a # load immediate value into integer register
fcvt.d.wu f16, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x3553c9c1eb0f806a # load immediate value into integer register
fcvt.d.wu f2, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xb4d0bd0f549a1e6a # load immediate value into integer register
fcvt.d.wu f29, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0xa48e812b2bd7ba59 # load immediate value into integer register
fcvt.d.wu f17, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0xff78d5c4c1860828 # load immediate value into integer register
fcvt.d.wu f7, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x5d4d8f4420c1c9a1 # load immediate value into integer register
fcvt.d.wu f9, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0xb8b01258d2403796 # load immediate value into integer register
fcvt.d.wu f14, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x31, 0x0000000000000000 # load immediate value into integer register
fcvt.d.wu f5, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x19, 0x0000000000000001 # load immediate value into integer register
fcvt.d.wu f5, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x23, 0x0000000000000002 # load immediate value into integer register
fcvt.d.wu f13, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x5, 0x8000000000000000 # load immediate value into integer register
fcvt.d.wu f11, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x29, 0x8000000000000001 # load immediate value into integer register
fcvt.d.wu f21, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x29, 0x7fffffffffffffff # load immediate value into integer register
fcvt.d.wu f27, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x25, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.d.wu f30, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x1, 0xffffffffffffffff # load immediate value into integer register
fcvt.d.wu f21, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x26, 0xfffffffffffffffe # load immediate value into integer register
fcvt.d.wu f24, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x23, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.d.wu f17, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x25, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.d.wu f17, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x8, 0x5555555555555555 # load immediate value into integer register
fcvt.d.wu f14, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x5, 0x00000000ffffffff # load immediate value into integer register
fcvt.d.wu f29, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x8, 0x00000000fffffffe # load immediate value into integer register
fcvt.d.wu f11, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x24, 0x0000000100000000 # load immediate value into integer register
fcvt.d.wu f2, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x21, 0x0000000100000001 # load immediate value into integer register
fcvt.d.wu f12, x21 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x26, x25 # perform first operation
fcvt.d.wu f29, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x21, x12 # perform first operation
fcvt.d.wu f22, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x5, x14 # perform first operation
fcvt.d.wu f28, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f11, f1 # perform first operation
fcvt.d.wu f20, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f25, f28, f13 # perform first operation
fcvt.d.wu f25, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f9, f6, f3 # perform first operation
fcvt.d.wu f9, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f17, f18, f11 # perform first operation
fcvt.d.wu f18, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f6, f29 # perform first operation
fcvt.d.wu f29, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f9, f30 # perform first operation
fcvt.d.wu f5, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x1, x24 # perform first operation
fcvt.d.wu f12, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x21, x5 # perform first operation
fcvt.d.wu f31, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x27, x1 # perform first operation
fcvt.d.wu f28, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x23, x29 # perform first operation
fcvt.d.wu f5, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x16, x6 # perform first operation
fcvt.d.wu f16, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x21, x14 # perform first operation
fcvt.d.wu f14, x1 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x2, 0xf3c5a0d659d8b7a4 # load immediate value into integer register
fcvt.d.wu f0, x2 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x20, 0xe6629f72da03563c # load immediate value into integer register
fcvt.d.wu f1, x20 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x10, 0x705a9b700d6cfacf # load immediate value into integer register
fcvt.d.wu f2, x10 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x5, 0xde9a458c82553ec6 # load immediate value into integer register
fcvt.d.wu f3, x5 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x9df8a092449444e3 # load immediate value into integer register
fcvt.d.wu f4, x5 # perform operation

# Testcase cp_fd (Test destination fd = x5)
fsflagsi 0b00000 # clear all fflags
li x28, 0x959c621e54ee1dd4 # load immediate value into integer register
fcvt.d.wu f5, x28 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x24, 0x30db13e527c36280 # load immediate value into integer register
fcvt.d.wu f6, x24 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x25, 0xeb157586475607f4 # load immediate value into integer register
fcvt.d.wu f7, x25 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x14, 0x3dc0f768197f9d85 # load immediate value into integer register
fcvt.d.wu f8, x14 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x28, 0xb5c63f0d49bc46da # load immediate value into integer register
fcvt.d.wu f9, x28 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x24, 0x11bc4cb807ac81ac # load immediate value into integer register
fcvt.d.wu f10, x24 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x26, 0x7f8e28ef179d0f00 # load immediate value into integer register
fcvt.d.wu f11, x26 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x11, 0xeae406dd310e90cb # load immediate value into integer register
fcvt.d.wu f12, x11 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x19, 0xaba5470cbfc69ec9 # load immediate value into integer register
fcvt.d.wu f13, x19 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x7, 0x99c8bee0a0198411 # load immediate value into integer register
fcvt.d.wu f14, x7 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x28, 0xf7c97d3d2057a9d5 # load immediate value into integer register
fcvt.d.wu f15, x28 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x26, 0x4732a05262705961 # load immediate value into integer register
fcvt.d.wu f16, x26 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xd6a8999fe293bceb # load immediate value into integer register
fcvt.d.wu f17, x17 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x28, 0x97833e98869c7f28 # load immediate value into integer register
fcvt.d.wu f18, x28 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x2, 0x7f3487e972d4f193 # load immediate value into integer register
fcvt.d.wu f19, x2 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x23, 0x43760736d3c16e4e # load immediate value into integer register
fcvt.d.wu f20, x23 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x31, 0xabc232f57495fa93 # load immediate value into integer register
fcvt.d.wu f21, x31 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x12, 0x5738236441b1d1ef # load immediate value into integer register
fcvt.d.wu f22, x12 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x9, 0xe0a9a82fb0d4d369 # load immediate value into integer register
fcvt.d.wu f23, x9 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x31, 0xc9ef2a1a19b9fa7e # load immediate value into integer register
fcvt.d.wu f24, x31 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x1, 0x068dbb002a93b40e # load immediate value into integer register
fcvt.d.wu f25, x1 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x10, 0xba5d82366f8e5b19 # load immediate value into integer register
fcvt.d.wu f26, x10 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x2, 0x0e34391de33c17bd # load immediate value into integer register
fcvt.d.wu f27, x2 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x8, 0x7fc00f165f1e3344 # load immediate value into integer register
fcvt.d.wu f28, x8 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x12, 0x74555f7698b57a1f # load immediate value into integer register
fcvt.d.wu f29, x12 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x14, 0xbb7b971e0c42adea # load immediate value into integer register
fcvt.d.wu f30, x14 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x28, 0x89f6e0384faddce5 # load immediate value into integer register
fcvt.d.wu f31, x28 # perform operation

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
