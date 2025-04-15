///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fcvt.s.w.S
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
li x0, 0x83e0e96c # load immediate value into integer register
fcvt.s.w f28, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x6525f965 # load immediate value into integer register
fcvt.s.w f7, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0xea9c37a4 # load immediate value into integer register
fcvt.s.w f28, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0xcbca83ca # load immediate value into integer register
fcvt.s.w f11, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xf3a84ef1 # load immediate value into integer register
fcvt.s.w f31, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x420dfeb8 # load immediate value into integer register
fcvt.s.w f24, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x2a141bb1 # load immediate value into integer register
fcvt.s.w f12, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xdc53abf3 # load immediate value into integer register
fcvt.s.w f8, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x05e34968 # load immediate value into integer register
fcvt.s.w f12, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x7d213ca3 # load immediate value into integer register
fcvt.s.w f3, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x9b9ed81c # load immediate value into integer register
fcvt.s.w f12, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0x7a444e3e # load immediate value into integer register
fcvt.s.w f16, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x06fa9c1f # load immediate value into integer register
fcvt.s.w f9, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0xfc7e9c96 # load immediate value into integer register
fcvt.s.w f9, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x2a2c4d59 # load immediate value into integer register
fcvt.s.w f12, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x65c3a73e # load immediate value into integer register
fcvt.s.w f29, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x93da1ded # load immediate value into integer register
fcvt.s.w f3, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xcb601f03 # load immediate value into integer register
fcvt.s.w f8, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x6a5732a3 # load immediate value into integer register
fcvt.s.w f19, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x7e227fc6 # load immediate value into integer register
fcvt.s.w f3, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0xca57da94 # load immediate value into integer register
fcvt.s.w f28, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x242a2d92 # load immediate value into integer register
fcvt.s.w f11, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x0fc45b7b # load immediate value into integer register
fcvt.s.w f12, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x7377c524 # load immediate value into integer register
fcvt.s.w f2, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0xb7e5e765 # load immediate value into integer register
fcvt.s.w f19, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x210c2260 # load immediate value into integer register
fcvt.s.w f21, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0xcc2f53c7 # load immediate value into integer register
fcvt.s.w f11, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x817321bd # load immediate value into integer register
fcvt.s.w f2, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x109b564d # load immediate value into integer register
fcvt.s.w f14, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x13f271d4 # load immediate value into integer register
fcvt.s.w f6, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0xdd55498f # load immediate value into integer register
fcvt.s.w f22, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0xc9e68f93 # load immediate value into integer register
fcvt.s.w f13, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x14, 0x00000000 # load immediate value into integer register
fcvt.s.w f8, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x13, 0x00000001 # load immediate value into integer register
fcvt.s.w f20, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x25, 0x00000002 # load immediate value into integer register
fcvt.s.w f9, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
li x1, 0x80000000 # load immediate value into integer register
fcvt.s.w f14, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
li x18, 0x80000001 # load immediate value into integer register
fcvt.s.w f19, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
li x17, 0x7fffffff # load immediate value into integer register
fcvt.s.w f3, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
fsflagsi 0b00000 # clear all fflags
li x25, 0x7ffffffe # load immediate value into integer register
fcvt.s.w f22, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x2, 0xffffffff # load immediate value into integer register
fcvt.s.w f16, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x21, 0xfffffffe # load immediate value into integer register
fcvt.s.w f14, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
fsflagsi 0b00000 # clear all fflags
li x10, 0x5bbc8872 # load immediate value into integer register
fcvt.s.w f12, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x7, 0xaaaaaaaa # load immediate value into integer register
fcvt.s.w f12, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
fsflagsi 0b00000 # clear all fflags
li x22, 0x55555555 # load immediate value into integer register
fcvt.s.w f28, x22 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x26, x14 # perform first operation
fcvt.s.w f3, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x9, x5 # perform first operation
fcvt.s.w f12, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x2, x14 # perform first operation
fcvt.s.w f29, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f14, f11, f10 # perform first operation
fcvt.s.w f14, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f10, f5, f12 # perform first operation
fcvt.s.w f10, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f2, f24, f31 # perform first operation
fcvt.s.w f2, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f7, f31, f20 # perform first operation
fcvt.s.w f31, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f6, f29, f2 # perform first operation
fcvt.s.w f2, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f21, f23, f5 # perform first operation
fcvt.s.w f9, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x6, x15 # perform first operation
fcvt.s.w f5, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x20, x31 # perform first operation
fcvt.s.w f14, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x5, x10 # perform first operation
fcvt.s.w f15, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x14, x12 # perform first operation
fcvt.s.w f14, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x27, x26 # perform first operation
fcvt.s.w f27, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x19, x31 # perform first operation
fcvt.s.w f31, x17 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x8, 0xe805eb99 # load immediate value into integer register
fcvt.s.w f0, x8 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x11, 0x4e9ecc1a # load immediate value into integer register
fcvt.s.w f1, x11 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x31, 0x1e06e2d0 # load immediate value into integer register
fcvt.s.w f2, x31 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x12, 0x08bed3a3 # load immediate value into integer register
fcvt.s.w f3, x12 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x11, 0xd517e060 # load immediate value into integer register
fcvt.s.w f4, x11 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x25, 0xb9e69be5 # load immediate value into integer register
fcvt.s.w f5, x25 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x29, 0x3a9d7e21 # load immediate value into integer register
fcvt.s.w f6, x29 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x10, 0xf90b2633 # load immediate value into integer register
fcvt.s.w f7, x10 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x28, 0x4c3b5e83 # load immediate value into integer register
fcvt.s.w f8, x28 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x10, 0x367cd77a # load immediate value into integer register
fcvt.s.w f9, x10 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x24, 0x8bb77100 # load immediate value into integer register
fcvt.s.w f10, x24 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x12, 0x277839fc # load immediate value into integer register
fcvt.s.w f11, x12 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x27, 0x19a7c219 # load immediate value into integer register
fcvt.s.w f12, x27 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x21, 0x7092c244 # load immediate value into integer register
fcvt.s.w f13, x21 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x23, 0xd9e179de # load immediate value into integer register
fcvt.s.w f14, x23 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x31, 0x4e197130 # load immediate value into integer register
fcvt.s.w f15, x31 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x26, 0x8679aacb # load immediate value into integer register
fcvt.s.w f16, x26 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x5, 0x977e2e34 # load immediate value into integer register
fcvt.s.w f17, x5 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x13, 0x1cba2ec1 # load immediate value into integer register
fcvt.s.w f18, x13 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x21, 0xad05bda4 # load immediate value into integer register
fcvt.s.w f19, x21 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x9, 0x42bae971 # load immediate value into integer register
fcvt.s.w f20, x9 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x11, 0xc2eeed18 # load immediate value into integer register
fcvt.s.w f21, x11 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x12, 0x1c588306 # load immediate value into integer register
fcvt.s.w f22, x12 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x10, 0x7c7b3997 # load immediate value into integer register
fcvt.s.w f23, x10 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x9, 0xba6a94d8 # load immediate value into integer register
fcvt.s.w f24, x9 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x19, 0x1d83d028 # load immediate value into integer register
fcvt.s.w f25, x19 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x12, 0x7f45f3e8 # load immediate value into integer register
fcvt.s.w f26, x12 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xd74d372c # load immediate value into integer register
fcvt.s.w f27, x27 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x21, 0xa728079f # load immediate value into integer register
fcvt.s.w f28, x21 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x24, 0x754fd123 # load immediate value into integer register
fcvt.s.w f29, x24 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x7, 0x0d26ab7b # load immediate value into integer register
fcvt.s.w f30, x7 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x22, 0xc8fc2599 # load immediate value into integer register
fcvt.s.w f31, x22 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x9, 0x2a8260b3 # load immediate value into integer register
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
