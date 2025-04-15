///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fcvt.s.w.S
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
li x0, 0xfbadd9bd71867858 # load immediate value into integer register
fcvt.s.w f28, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0xe9747830ad1f8f7d # load immediate value into integer register
fcvt.s.w f8, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0xd85ef3d623acfa3a # load immediate value into integer register
fcvt.s.w f31, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x704d9626ba33c182 # load immediate value into integer register
fcvt.s.w f13, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x2c19c51e3b47bc62 # load immediate value into integer register
fcvt.s.w f2, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x2dd57c5076de2398 # load immediate value into integer register
fcvt.s.w f4, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0xc92c5a82611e1137 # load immediate value into integer register
fcvt.s.w f12, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0x7a75fd6828c1dd10 # load immediate value into integer register
fcvt.s.w f11, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0xc36b5045213c5016 # load immediate value into integer register
fcvt.s.w f9, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0xa87b2b1402ef95fa # load immediate value into integer register
fcvt.s.w f20, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x93da1dede7dd3045 # load immediate value into integer register
fcvt.s.w f16, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xb471e5e4e5c14667 # load immediate value into integer register
fcvt.s.w f13, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xea6dbe45023bbc67 # load immediate value into integer register
fcvt.s.w f22, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x85f8c2480f38e197 # load immediate value into integer register
fcvt.s.w f26, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xcb02df212b970d4c # load immediate value into integer register
fcvt.s.w f2, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x7377c5240c35af06 # load immediate value into integer register
fcvt.s.w f22, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x210c2260a611abe9 # load immediate value into integer register
fcvt.s.w f5, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xaed9d1c961e34fb4 # load immediate value into integer register
fcvt.s.w f11, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x817321bda0e84bd9 # load immediate value into integer register
fcvt.s.w f22, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x07b73d34566b1c3c # load immediate value into integer register
fcvt.s.w f3, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0xc1576297c62ed6bf # load immediate value into integer register
fcvt.s.w f26, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x946458f37e591771 # load immediate value into integer register
fcvt.s.w f31, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x68ff99a7e4f3b6de # load immediate value into integer register
fcvt.s.w f16, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x2cdc30956beabfca # load immediate value into integer register
fcvt.s.w f1, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x3082148c9c8a54b0 # load immediate value into integer register
fcvt.s.w f21, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x14191232b348907d # load immediate value into integer register
fcvt.s.w f24, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x3a8d41e439cb2810 # load immediate value into integer register
fcvt.s.w f15, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xe596251f8a0c30ac # load immediate value into integer register
fcvt.s.w f14, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x05126838274f85e4 # load immediate value into integer register
fcvt.s.w f10, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x08da8be78ed05504 # load immediate value into integer register
fcvt.s.w f1, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0xb4a752950b93cfb8 # load immediate value into integer register
fcvt.s.w f23, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x439844b6ed7cf520 # load immediate value into integer register
fcvt.s.w f10, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x14, 0x0000000000000000 # load immediate value into integer register
fcvt.s.w f8, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x27, 0x0000000000000001 # load immediate value into integer register
fcvt.s.w f23, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x8, 0x0000000000000002 # load immediate value into integer register
fcvt.s.w f1, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x6, 0x8000000000000000 # load immediate value into integer register
fcvt.s.w f5, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x11, 0x8000000000000001 # load immediate value into integer register
fcvt.s.w f15, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x21, 0x7fffffffffffffff # load immediate value into integer register
fcvt.s.w f14, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x9, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.s.w f1, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x2, 0xffffffffffffffff # load immediate value into integer register
fcvt.s.w f8, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x16, 0xfffffffffffffffe # load immediate value into integer register
fcvt.s.w f3, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x20, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.s.w f1, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x28, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.s.w f21, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x18, 0x5555555555555555 # load immediate value into integer register
fcvt.s.w f11, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x11, 0x00000000ffffffff # load immediate value into integer register
fcvt.s.w f16, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x1, 0x00000000fffffffe # load immediate value into integer register
fcvt.s.w f27, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x3, 0x0000000100000000 # load immediate value into integer register
fcvt.s.w f30, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x24, 0x0000000100000001 # load immediate value into integer register
fcvt.s.w f25, x24 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x26, x14 # perform first operation
fcvt.s.w f18, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x11, x8 # perform first operation
fcvt.s.w f28, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x31, x19 # perform first operation
fcvt.s.w f7, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f5, f12 # perform first operation
fcvt.s.w f19, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f10, f22, f9 # perform first operation
fcvt.s.w f10, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f6, f3, f29 # perform first operation
fcvt.s.w f6, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f22, f26, f18 # perform first operation
fcvt.s.w f26, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f27, f11, f12 # perform first operation
fcvt.s.w f12, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f2, f26, f23 # perform first operation
fcvt.s.w f16, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x6, x15 # perform first operation
fcvt.s.w f16, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x1, x24 # perform first operation
fcvt.s.w f14, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x7, x5 # perform first operation
fcvt.s.w f16, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x29, x14 # perform first operation
fcvt.s.w f14, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x3, x6 # perform first operation
fcvt.s.w f3, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x15, x24 # perform first operation
fcvt.s.w f24, x27 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x8, 0x485e30d6fb62f96d # load immediate value into integer register
fcvt.s.w f0, x8 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x7, 0x8255c04d23e5ba22 # load immediate value into integer register
fcvt.s.w f1, x7 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x30, 0x57b0fae177b2e928 # load immediate value into integer register
fcvt.s.w f2, x30 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x7d458c61b032883b # load immediate value into integer register
fcvt.s.w f3, x3 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x30, 0x05b4f113a5a49540 # load immediate value into integer register
fcvt.s.w f4, x30 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x19, 0x317e2de9c46708aa # load immediate value into integer register
fcvt.s.w f5, x19 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x25, 0x12a236db11d07b3e # load immediate value into integer register
fcvt.s.w f6, x25 # perform operation

# Testcase cp_fd (Test destination fd = x7)
fsflagsi 0b00000 # clear all fflags
li x22, 0x4dd9a5b890c47bdb # load immediate value into integer register
fcvt.s.w f7, x22 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x17, 0xf6de151864165482 # load immediate value into integer register
fcvt.s.w f8, x17 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x19, 0x510a9eb3d9e179de # load immediate value into integer register
fcvt.s.w f9, x19 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x18, 0xb012659a39382800 # load immediate value into integer register
fcvt.s.w f10, x18 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x2, 0x428ce4bfdc89059d # load immediate value into integer register
fcvt.s.w f11, x2 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x27, 0xf1c1f10cbe7f8e6f # load immediate value into integer register
fcvt.s.w f12, x27 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x3, 0xf763ff5f250f7f8a # load immediate value into integer register
fcvt.s.w f13, x3 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x12, 0xb179b4a00e451d56 # load immediate value into integer register
fcvt.s.w f14, x12 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x23, 0x424ed7b96856a350 # load immediate value into integer register
fcvt.s.w f15, x23 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x30, 0x50f84a771d83d028 # load immediate value into integer register
fcvt.s.w f16, x30 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x28, 0xb3ab7e659fa59240 # load immediate value into integer register
fcvt.s.w f17, x28 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x5, 0xf20ea877ad4ea723 # load immediate value into integer register
fcvt.s.w f18, x5 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x24, 0x754fd123c626ebf6 # load immediate value into integer register
fcvt.s.w f19, x24 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x25, 0x95be03a999184e53 # load immediate value into integer register
fcvt.s.w f20, x25 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xbc1bfa8ba5b7b696 # load immediate value into integer register
fcvt.s.w f21, x21 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x27, 0x5bd53ed7673c471e # load immediate value into integer register
fcvt.s.w f22, x27 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x24, 0xa091370f28fdf398 # load immediate value into integer register
fcvt.s.w f23, x24 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x5, 0x18cf7a1c17e20e00 # load immediate value into integer register
fcvt.s.w f24, x5 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x28, 0x619dfe083e2700ae # load immediate value into integer register
fcvt.s.w f25, x28 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x1, 0xf2b4282234e7ff89 # load immediate value into integer register
fcvt.s.w f26, x1 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x31, 0x010431d243419024 # load immediate value into integer register
fcvt.s.w f27, x31 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x2, 0x38daca463ef91127 # load immediate value into integer register
fcvt.s.w f28, x2 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x7, 0xf57658b64340d4a0 # load immediate value into integer register
fcvt.s.w f29, x7 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x27, 0xfa831ac6a51cf155 # load immediate value into integer register
fcvt.s.w f30, x27 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x1, 0x787bb81064399032 # load immediate value into integer register
fcvt.s.w f31, x1 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x9, 0xa5036267f876c069 # load immediate value into integer register
fcvt.s.w f28, x9, dyn # perform operation
fcvt.s.w f28, x9, rdn # perform operation
fcvt.s.w f28, x9, rmm # perform operation
fcvt.s.w f28, x9, rne # perform operation
fcvt.s.w f28, x9, rtz # perform operation
fcvt.s.w f28, x9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.w f28, x9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.w f28, x9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.w f28, x9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.w f28, x9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.w f28, x9 # perform operation


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
