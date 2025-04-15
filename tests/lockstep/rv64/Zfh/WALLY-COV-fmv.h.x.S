///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fmv.h.x.S
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
li x0, 0x7291e37fe7277035 # load immediate value into integer register
fmv.h.x f1, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x7eb8b118dd0f557e # load immediate value into integer register
fmv.h.x f23, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0xc7e4584f8c681ae5 # load immediate value into integer register
fmv.h.x f16, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x0e168588e6ce3627 # load immediate value into integer register
fmv.h.x f23, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xf3bc8bd21c2deb85 # load immediate value into integer register
fmv.h.x f12, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x5d8d85ca4ae568c2 # load immediate value into integer register
fmv.h.x f27, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0xabb0bdbbff886990 # load immediate value into integer register
fmv.h.x f18, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xc64bca657a82cc85 # load immediate value into integer register
fmv.h.x f1, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x72858fb390fab891 # load immediate value into integer register
fmv.h.x f9, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0xbc6cb1e36cbb6c98 # load immediate value into integer register
fmv.h.x f1, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x1f37ca47f1c07931 # load immediate value into integer register
fmv.h.x f17, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xde06b07f375894cc # load immediate value into integer register
fmv.h.x f24, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x8a43a25b1fd34489 # load immediate value into integer register
fmv.h.x f2, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x51eb7907d8c898d2 # load immediate value into integer register
fmv.h.x f22, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x03f0505259844b4a # load immediate value into integer register
fmv.h.x f24, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xd463a59621384cca # load immediate value into integer register
fmv.h.x f16, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0xadaf4bf42cd702e7 # load immediate value into integer register
fmv.h.x f24, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xeb8be7fa97f599bf # load immediate value into integer register
fmv.h.x f14, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xfd5229de28639341 # load immediate value into integer register
fmv.h.x f17, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x11e182616fe02bab # load immediate value into integer register
fmv.h.x f5, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0xf56737b34ab9c5c2 # load immediate value into integer register
fmv.h.x f17, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xc28564b188ce4eb2 # load immediate value into integer register
fmv.h.x f15, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x16d179cdf9704134 # load immediate value into integer register
fmv.h.x f31, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0xbbc1bbc4b2c77e24 # load immediate value into integer register
fmv.h.x f12, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x63be22d2a1b87379 # load immediate value into integer register
fmv.h.x f28, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x4d5aee358f1a80b9 # load immediate value into integer register
fmv.h.x f28, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x7e0ef81544200a35 # load immediate value into integer register
fmv.h.x f1, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xcb32c2de72feab28 # load immediate value into integer register
fmv.h.x f16, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x59b0afc2e5ef035f # load immediate value into integer register
fmv.h.x f5, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0xa4d36462aa66503c # load immediate value into integer register
fmv.h.x f16, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x33fdff6f94ee336c # load immediate value into integer register
fmv.h.x f7, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x341ccbc01a859798 # load immediate value into integer register
fmv.h.x f7, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x23, 0x0000000000000000 # load immediate value into integer register
fmv.h.x f11, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x7, 0x0000000000000001 # load immediate value into integer register
fmv.h.x f23, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x19, 0x0000000000000002 # load immediate value into integer register
fmv.h.x f24, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x20, 0x8000000000000000 # load immediate value into integer register
fmv.h.x f16, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x18, 0x8000000000000001 # load immediate value into integer register
fmv.h.x f25, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x23, 0x7fffffffffffffff # load immediate value into integer register
fmv.h.x f22, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x6, 0x7ffffffffffffffe # load immediate value into integer register
fmv.h.x f28, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x21, 0xffffffffffffffff # load immediate value into integer register
fmv.h.x f20, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x23, 0xfffffffffffffffe # load immediate value into integer register
fmv.h.x f6, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x3, 0x5bbc887763ae86f2 # load immediate value into integer register
fmv.h.x f22, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x17, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fmv.h.x f1, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x3, 0x5555555555555555 # load immediate value into integer register
fmv.h.x f21, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x2, 0x00000000ffffffff # load immediate value into integer register
fmv.h.x f5, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x22, 0x00000000fffffffe # load immediate value into integer register
fmv.h.x f25, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x25, 0x0000000100000000 # load immediate value into integer register
fmv.h.x f19, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x13, 0x0000000100000001 # load immediate value into integer register
fmv.h.x f3, x13 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x24, x16 # perform first operation
fmv.h.x f13, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x19, x1 # perform first operation
fmv.h.x f9, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x7, x28 # perform first operation
fmv.h.x f3, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f3, f25, f10 # perform first operation
fmv.h.x f3, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f2, f10 # perform first operation
fmv.h.x f19, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f31, f25, f13 # perform first operation
fmv.h.x f31, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f1, f5, f8 # perform first operation
fmv.h.x f5, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f11, f10, f28 # perform first operation
fmv.h.x f28, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f29, f19, f11 # perform first operation
fmv.h.x f3, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x27, x21 # perform first operation
fmv.h.x f23, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x18, x9 # perform first operation
fmv.h.x f10, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x31, x5 # perform first operation
fmv.h.x f8, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x18, x6 # perform first operation
fmv.h.x f25, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x22, x20 # perform first operation
fmv.h.x f29, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x22, x2 # perform first operation
fmv.h.x f22, x9 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x18, 0x42e05ce7a66ee81e # load immediate value into integer register
fmv.h.x f0, x18 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x18, 0x6b9c18483f96f65d # load immediate value into integer register
fmv.h.x f1, x18 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x19, 0x6f0f8ce657a3380e # load immediate value into integer register
fmv.h.x f2, x19 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x24, 0x74d6050bb7f2d208 # load immediate value into integer register
fmv.h.x f3, x24 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0x00211f0b93e3abd9 # load immediate value into integer register
fmv.h.x f4, x7 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x21, 0xef8aec56b2346d11 # load immediate value into integer register
fmv.h.x f5, x21 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x16, 0x644a07a3822e6d0d # load immediate value into integer register
fmv.h.x f6, x16 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x25, 0x44d8a99a12d89397 # load immediate value into integer register
fmv.h.x f7, x25 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x18, 0x701f2cb91624d3a5 # load immediate value into integer register
fmv.h.x f8, x18 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x12, 0x1040bff84b5e4eec # load immediate value into integer register
fmv.h.x f9, x12 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x23, 0xd57a554beaa192eb # load immediate value into integer register
fmv.h.x f10, x23 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x18, 0xbf5857de0d298c7d # load immediate value into integer register
fmv.h.x f11, x18 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x19, 0x654c84bd6144a64c # load immediate value into integer register
fmv.h.x f12, x19 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x30, 0xb36d4f4c073753ac # load immediate value into integer register
fmv.h.x f13, x30 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x17, 0x1c19fbf0b9d14963 # load immediate value into integer register
fmv.h.x f14, x17 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x88d575df0a203de7 # load immediate value into integer register
fmv.h.x f15, x15 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x10, 0x5233ffe4843e92f3 # load immediate value into integer register
fmv.h.x f16, x10 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x27, 0xa55c22181f8b51aa # load immediate value into integer register
fmv.h.x f17, x27 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x27, 0xb2a0d490a6621560 # load immediate value into integer register
fmv.h.x f18, x27 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x29, 0xefa5bddb89926151 # load immediate value into integer register
fmv.h.x f19, x29 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x13, 0x57454446d6cc91f4 # load immediate value into integer register
fmv.h.x f20, x13 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x22, 0x0274aabce1d21290 # load immediate value into integer register
fmv.h.x f21, x22 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x12, 0xbd18a0736466c6b0 # load immediate value into integer register
fmv.h.x f22, x12 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x26, 0x513afed98f9842b2 # load immediate value into integer register
fmv.h.x f23, x26 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x14, 0x5ec668bc87787603 # load immediate value into integer register
fmv.h.x f24, x14 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x17, 0x47568ae51938934d # load immediate value into integer register
fmv.h.x f25, x17 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x28, 0xdf6b3bbaae436aa7 # load immediate value into integer register
fmv.h.x f26, x28 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x8, 0xcabf718849aa9601 # load immediate value into integer register
fmv.h.x f27, x8 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x22, 0x21bd4b5f9337cbb0 # load immediate value into integer register
fmv.h.x f28, x22 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x25, 0x2e302480511c8f35 # load immediate value into integer register
fmv.h.x f29, x25 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x1, 0xe32115db4e883d89 # load immediate value into integer register
fmv.h.x f30, x1 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x3, 0x9468ec73c76fc9ae # load immediate value into integer register
fmv.h.x f31, x3 # perform operation

# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x11, 0x89872fd75a8ac38f # load immediate value into integer register
fmv.h.x f1, x11 # perform operation

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
