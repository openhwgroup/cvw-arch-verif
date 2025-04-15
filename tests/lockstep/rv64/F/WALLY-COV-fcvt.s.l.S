///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fcvt.s.l.S
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
li x0, 0x343871a8693b1bca # load immediate value into integer register
fcvt.s.l f21, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0xb701c7f3fc36f296 # load immediate value into integer register
fcvt.s.l f14, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x70d57a8fc29238e5 # load immediate value into integer register
fcvt.s.l f13, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x18a5be932dbddcfb # load immediate value into integer register
fcvt.s.l f25, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xfcea72e5e15baa80 # load immediate value into integer register
fcvt.s.l f27, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0xba60b4b913151b6b # load immediate value into integer register
fcvt.s.l f2, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0xa6d11cbc02052ef6 # load immediate value into integer register
fcvt.s.l f4, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xc47c33b8b92f84ca # load immediate value into integer register
fcvt.s.l f20, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x47f33ae519401fcc # load immediate value into integer register
fcvt.s.l f27, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x79ba728bb534b133 # load immediate value into integer register
fcvt.s.l f22, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x47df8d81cbbd322a # load immediate value into integer register
fcvt.s.l f31, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xc9c2f974a924cd3d # load immediate value into integer register
fcvt.s.l f30, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xd997bd4f0b8dcb8e # load immediate value into integer register
fcvt.s.l f20, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x68e78b83ba49dfba # load immediate value into integer register
fcvt.s.l f26, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xe87040a4f9838b3d # load immediate value into integer register
fcvt.s.l f23, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xeeff91da047b9011 # load immediate value into integer register
fcvt.s.l f20, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x0d910cb11f3bece4 # load immediate value into integer register
fcvt.s.l f31, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xb608017d529d2168 # load immediate value into integer register
fcvt.s.l f13, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x7b0afa02f29e6932 # load immediate value into integer register
fcvt.s.l f13, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x4bea7960200d745d # load immediate value into integer register
fcvt.s.l f28, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x1175b3c0ef926b82 # load immediate value into integer register
fcvt.s.l f25, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x842d49c7abd18919 # load immediate value into integer register
fcvt.s.l f22, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0xe6bd0762e6376ef0 # load immediate value into integer register
fcvt.s.l f19, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0xbc92cbf10294b4d2 # load immediate value into integer register
fcvt.s.l f17, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x42dabf15e200cce6 # load immediate value into integer register
fcvt.s.l f16, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x20e5ac3845fb8074 # load immediate value into integer register
fcvt.s.l f20, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0xe1703bf51663516b # load immediate value into integer register
fcvt.s.l f14, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xbaf3c4f1e786430d # load immediate value into integer register
fcvt.s.l f9, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0xc85013e8b377d986 # load immediate value into integer register
fcvt.s.l f7, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0xbb5fb190115715fc # load immediate value into integer register
fcvt.s.l f28, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x1871e63e42d14627 # load immediate value into integer register
fcvt.s.l f1, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x8e9fcd19203473ec # load immediate value into integer register
fcvt.s.l f26, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x22, 0x0000000000000000 # load immediate value into integer register
fcvt.s.l f17, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x3, 0x0000000000000001 # load immediate value into integer register
fcvt.s.l f12, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x3, 0x0000000000000002 # load immediate value into integer register
fcvt.s.l f20, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x21, 0x8000000000000000 # load immediate value into integer register
fcvt.s.l f7, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x13, 0x8000000000000001 # load immediate value into integer register
fcvt.s.l f25, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x19, 0x7fffffffffffffff # load immediate value into integer register
fcvt.s.l f13, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x15, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.s.l f9, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x21, 0xffffffffffffffff # load immediate value into integer register
fcvt.s.l f19, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x9, 0xfffffffffffffffe # load immediate value into integer register
fcvt.s.l f5, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x1, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.s.l f18, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x20, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.s.l f23, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x29, 0x5555555555555555 # load immediate value into integer register
fcvt.s.l f12, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x18, 0x00000000ffffffff # load immediate value into integer register
fcvt.s.l f27, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x20, 0x00000000fffffffe # load immediate value into integer register
fcvt.s.l f6, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x30, 0x0000000100000000 # load immediate value into integer register
fcvt.s.l f23, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x10, 0x0000000100000001 # load immediate value into integer register
fcvt.s.l f2, x10 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x21, x10 # perform first operation
fcvt.s.l f9, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x6, x30 # perform first operation
fcvt.s.l f29, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x8, x21 # perform first operation
fcvt.s.l f28, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f6, f16, f23 # perform first operation
fcvt.s.l f6, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f26, f16 # perform first operation
fcvt.s.l f5, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f18, f26 # perform first operation
fcvt.s.l f27, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f13, f21 # perform first operation
fcvt.s.l f13, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f2, f9, f14 # perform first operation
fcvt.s.l f14, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f27, f17, f16 # perform first operation
fcvt.s.l f5, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x24, x2 # perform first operation
fcvt.s.l f16, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x31, x14 # perform first operation
fcvt.s.l f9, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x26, x2 # perform first operation
fcvt.s.l f27, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x21, x12 # perform first operation
fcvt.s.l f21, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x31, x20 # perform first operation
fcvt.s.l f31, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x30, x16 # perform first operation
fcvt.s.l f18, x30 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x24, 0x4feca5b854c8e1c4 # load immediate value into integer register
fcvt.s.l f0, x24 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x17, 0xc7f886ca3ab07a67 # load immediate value into integer register
fcvt.s.l f1, x17 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x25, 0xa58f5d9e94a58472 # load immediate value into integer register
fcvt.s.l f2, x25 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x6, 0xd1a1dfe2980e347b # load immediate value into integer register
fcvt.s.l f3, x6 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x30, 0x43bbd3695ae5ccb4 # load immediate value into integer register
fcvt.s.l f4, x30 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x10, 0xb4fed2684c07ae2d # load immediate value into integer register
fcvt.s.l f5, x10 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x31, 0xec5b24945aa4cffe # load immediate value into integer register
fcvt.s.l f6, x31 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x16, 0x0413d118260440e9 # load immediate value into integer register
fcvt.s.l f7, x16 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x9f5d2b42a18a5ea1 # load immediate value into integer register
fcvt.s.l f8, x8 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x2, 0xb3e861ec6c186dc3 # load immediate value into integer register
fcvt.s.l f9, x2 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x13, 0x9595048ee44af86f # load immediate value into integer register
fcvt.s.l f10, x13 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x16, 0x4f8120a348455f53 # load immediate value into integer register
fcvt.s.l f11, x16 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x16, 0x84cc745f7aed7e22 # load immediate value into integer register
fcvt.s.l f12, x16 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x3, 0xdb59f78b3d8e0d7e # load immediate value into integer register
fcvt.s.l f13, x3 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x12, 0x53da2e0c49a47d3c # load immediate value into integer register
fcvt.s.l f14, x12 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x27, 0x266d2a0a629a30ba # load immediate value into integer register
fcvt.s.l f15, x27 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x3, 0x1d1edff82bdf2c51 # load immediate value into integer register
fcvt.s.l f16, x3 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x6, 0x7002f411ae9e2569 # load immediate value into integer register
fcvt.s.l f17, x6 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x30, 0xbe1b587aa5e442c4 # load immediate value into integer register
fcvt.s.l f18, x30 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x23, 0xcdef6bd704bffafb # load immediate value into integer register
fcvt.s.l f19, x23 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x2, 0xb4a02af636a44fc2 # load immediate value into integer register
fcvt.s.l f20, x2 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x1, 0xababc9a130aa9090 # load immediate value into integer register
fcvt.s.l f21, x1 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x19, 0xbaba71583f31b04b # load immediate value into integer register
fcvt.s.l f22, x19 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x10, 0xe76f3d1e8e6eb62e # load immediate value into integer register
fcvt.s.l f23, x10 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x6, 0x5c082266bfae4e79 # load immediate value into integer register
fcvt.s.l f24, x6 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x31, 0x9b70da68c684aed3 # load immediate value into integer register
fcvt.s.l f25, x31 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x30, 0x76c99a93530b0218 # load immediate value into integer register
fcvt.s.l f26, x30 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x28, 0x7b299a1e2699606c # load immediate value into integer register
fcvt.s.l f27, x28 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x2, 0x4c525805baa88bd9 # load immediate value into integer register
fcvt.s.l f28, x2 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x13, 0xbdc48e87a031ba1c # load immediate value into integer register
fcvt.s.l f29, x13 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x20, 0xacb9b32b96abf684 # load immediate value into integer register
fcvt.s.l f30, x20 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x3, 0xbd8bd458b4d0a09a # load immediate value into integer register
fcvt.s.l f31, x3 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x3, 0x422c12f94956e472 # load immediate value into integer register
fcvt.s.l f20, x3, dyn # perform operation
fcvt.s.l f20, x3, rdn # perform operation
fcvt.s.l f20, x3, rmm # perform operation
fcvt.s.l f20, x3, rne # perform operation
fcvt.s.l f20, x3, rtz # perform operation
fcvt.s.l f20, x3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.l f20, x3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.l f20, x3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.l f20, x3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.l f20, x3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.l f20, x3 # perform operation


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
