///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fcvt.h.lu.S
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
li x0, 0xb89f0f0e54dc5e76 # load immediate value into integer register
fcvt.h.lu f10, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x3d20987cb39a1870 # load immediate value into integer register
fcvt.h.lu f29, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x8fccbbbf3738733d # load immediate value into integer register
fcvt.h.lu f28, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0xe0bb449d55b3ca49 # load immediate value into integer register
fcvt.h.lu f13, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x44230688fe691544 # load immediate value into integer register
fcvt.h.lu f27, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x15e77bd98abafe5b # load immediate value into integer register
fcvt.h.lu f25, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x0eea4c43126d065b # load immediate value into integer register
fcvt.h.lu f30, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xacd9d2a3b4e5329d # load immediate value into integer register
fcvt.h.lu f19, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x522cdbd0bfd497d6 # load immediate value into integer register
fcvt.h.lu f25, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x6e6d628e5f536ddb # load immediate value into integer register
fcvt.h.lu f10, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x0bbfe041b2c2d874 # load immediate value into integer register
fcvt.h.lu f31, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0x14e894c3023eb86a # load immediate value into integer register
fcvt.h.lu f25, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x3451b1ab1e062782 # load immediate value into integer register
fcvt.h.lu f31, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x961c94f0d8c8549b # load immediate value into integer register
fcvt.h.lu f22, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xa1e306d7852b0621 # load immediate value into integer register
fcvt.h.lu f8, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x0472b3a89164cec3 # load immediate value into integer register
fcvt.h.lu f12, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x3cdf4d30ed49e4bd # load immediate value into integer register
fcvt.h.lu f9, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x2e10128c06c744be # load immediate value into integer register
fcvt.h.lu f30, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x32afb9d7ff156a65 # load immediate value into integer register
fcvt.h.lu f23, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0xf57dae8ef618d160 # load immediate value into integer register
fcvt.h.lu f9, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x9eeed06ad2bd5cd8 # load immediate value into integer register
fcvt.h.lu f12, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xf96aa85a4ded599d # load immediate value into integer register
fcvt.h.lu f8, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x974273cc7879b01c # load immediate value into integer register
fcvt.h.lu f26, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0xebe6fc93b897819d # load immediate value into integer register
fcvt.h.lu f31, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x722172b9e15b2ee2 # load immediate value into integer register
fcvt.h.lu f28, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x2577abe5a5a3e459 # load immediate value into integer register
fcvt.h.lu f24, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x9df2a00b5f4eaf68 # load immediate value into integer register
fcvt.h.lu f30, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x833d6828eb051be4 # load immediate value into integer register
fcvt.h.lu f6, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0xe4e698af1a35ba14 # load immediate value into integer register
fcvt.h.lu f18, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0xaf30d27a792b8278 # load immediate value into integer register
fcvt.h.lu f7, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x61c79cfe32424e62 # load immediate value into integer register
fcvt.h.lu f25, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x2de387eff44d924a # load immediate value into integer register
fcvt.h.lu f26, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x7, 0x0000000000000000 # load immediate value into integer register
fcvt.h.lu f31, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x28, 0x0000000000000001 # load immediate value into integer register
fcvt.h.lu f11, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x10, 0x0000000000000002 # load immediate value into integer register
fcvt.h.lu f18, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x26, 0x8000000000000000 # load immediate value into integer register
fcvt.h.lu f13, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x5, 0x8000000000000001 # load immediate value into integer register
fcvt.h.lu f25, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x28, 0x7fffffffffffffff # load immediate value into integer register
fcvt.h.lu f9, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x16, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.h.lu f18, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x20, 0xffffffffffffffff # load immediate value into integer register
fcvt.h.lu f27, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x13, 0xfffffffffffffffe # load immediate value into integer register
fcvt.h.lu f15, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x31, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.h.lu f26, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x13, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.h.lu f28, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x16, 0x5555555555555555 # load immediate value into integer register
fcvt.h.lu f2, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x26, 0x00000000ffffffff # load immediate value into integer register
fcvt.h.lu f7, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x31, 0x00000000fffffffe # load immediate value into integer register
fcvt.h.lu f5, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x16, 0x0000000100000000 # load immediate value into integer register
fcvt.h.lu f11, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x25, 0x0000000100000001 # load immediate value into integer register
fcvt.h.lu f9, x25 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x27, x24 # perform first operation
fcvt.h.lu f14, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x25, x24 # perform first operation
fcvt.h.lu f3, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x20, x8 # perform first operation
fcvt.h.lu f10, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f24, f28, f1 # perform first operation
fcvt.h.lu f24, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f14, f5, f21 # perform first operation
fcvt.h.lu f14, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f2, f10 # perform first operation
fcvt.h.lu f20, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f16, f8, f15 # perform first operation
fcvt.h.lu f8, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f30, f7, f10 # perform first operation
fcvt.h.lu f10, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f24, f29, f26 # perform first operation
fcvt.h.lu f9, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x15, x28 # perform first operation
fcvt.h.lu f19, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x7, x21 # perform first operation
fcvt.h.lu f13, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x14, x12 # perform first operation
fcvt.h.lu f1, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x19, x17 # perform first operation
fcvt.h.lu f19, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x24, x8 # perform first operation
fcvt.h.lu f8, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x3, x8 # perform first operation
fcvt.h.lu f3, x28 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x15, 0xb03e8dc198f1993f # load immediate value into integer register
fcvt.h.lu f0, x15 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x16, 0x7da4478630768c6a # load immediate value into integer register
fcvt.h.lu f1, x16 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x29, 0x249ff348fe02e97a # load immediate value into integer register
fcvt.h.lu f2, x29 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x29, 0xad0318df848738b9 # load immediate value into integer register
fcvt.h.lu f3, x29 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x13, 0x250c12d00009aae0 # load immediate value into integer register
fcvt.h.lu f4, x13 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x21, 0xb032475720be5eca # load immediate value into integer register
fcvt.h.lu f5, x21 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x29, 0x1f4d28af5e3c9705 # load immediate value into integer register
fcvt.h.lu f6, x29 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x17, 0x36a5e8f8068407d8 # load immediate value into integer register
fcvt.h.lu f7, x17 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x19, 0x47c430bd1fdcaba0 # load immediate value into integer register
fcvt.h.lu f8, x19 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x22, 0xf5469fd8de0fadd7 # load immediate value into integer register
fcvt.h.lu f9, x22 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x16, 0xe858dbbe1ab8e817 # load immediate value into integer register
fcvt.h.lu f10, x16 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x28, 0x695d137692f51231 # load immediate value into integer register
fcvt.h.lu f11, x28 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x28, 0x500d97cef541ac12 # load immediate value into integer register
fcvt.h.lu f12, x28 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x21, 0x4883d7342576e5a1 # load immediate value into integer register
fcvt.h.lu f13, x21 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x29, 0x476b6c0b9e1191c4 # load immediate value into integer register
fcvt.h.lu f14, x29 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x6, 0x2f756a70a6688448 # load immediate value into integer register
fcvt.h.lu f15, x6 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x18, 0xbc1cb4c44f011b28 # load immediate value into integer register
fcvt.h.lu f16, x18 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x19, 0x00bb8df7d91a028e # load immediate value into integer register
fcvt.h.lu f17, x19 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x21, 0xb637def5bfd69cdf # load immediate value into integer register
fcvt.h.lu f18, x21 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x15, 0x7c8462cc8afe4f43 # load immediate value into integer register
fcvt.h.lu f19, x15 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x18, 0x3918deddd174886f # load immediate value into integer register
fcvt.h.lu f20, x18 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x25, 0x3c95c5f6bfa9f551 # load immediate value into integer register
fcvt.h.lu f21, x25 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x18, 0xa9c884a96195d9ca # load immediate value into integer register
fcvt.h.lu f22, x18 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x6, 0xbc8fd88a66611f99 # load immediate value into integer register
fcvt.h.lu f23, x6 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x27, 0x84ec088a9669c831 # load immediate value into integer register
fcvt.h.lu f24, x27 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x23, 0xcd9eb1762364f053 # load immediate value into integer register
fcvt.h.lu f25, x23 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x13, 0x6c83ec2da811c951 # load immediate value into integer register
fcvt.h.lu f26, x13 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x5, 0xdd0ba2a6f7e58bd3 # load immediate value into integer register
fcvt.h.lu f27, x5 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x15, 0xfcd3b85b3b882807 # load immediate value into integer register
fcvt.h.lu f28, x15 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x28, 0x5b8355cff2be96d3 # load immediate value into integer register
fcvt.h.lu f29, x28 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x10, 0x1d13ec2f01360e53 # load immediate value into integer register
fcvt.h.lu f30, x10 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x12, 0x82a9c8adc26fa3cc # load immediate value into integer register
fcvt.h.lu f31, x12 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x7, 0x864fcaad061f07b5 # load immediate value into integer register
fcvt.h.lu f24, x7, dyn # perform operation
fcvt.h.lu f24, x7, rdn # perform operation
fcvt.h.lu f24, x7, rmm # perform operation
fcvt.h.lu f24, x7, rne # perform operation
fcvt.h.lu f24, x7, rtz # perform operation
fcvt.h.lu f24, x7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.lu f24, x7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.lu f24, x7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.lu f24, x7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.lu f24, x7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.lu f24, x7 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x17, 0x3036306213be0668 # load immediate value into integer register
fcvt.h.lu f29, x17 # perform operation

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
