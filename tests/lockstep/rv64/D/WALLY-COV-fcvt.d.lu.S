///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.d.lu.S
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
li x0, 0x8af02f7be043deed # load immediate value into integer register
fcvt.d.lu f2, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x750994574746d43e # load immediate value into integer register
fcvt.d.lu f12, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x39d58c9136549dd5 # load immediate value into integer register
fcvt.d.lu f26, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0xf95af79ae7b4d307 # load immediate value into integer register
fcvt.d.lu f25, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x76f527875f5b35d9 # load immediate value into integer register
fcvt.d.lu f28, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0xfe5906d1f9e643dd # load immediate value into integer register
fcvt.d.lu f28, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0xd29d2bea5b9d0507 # load immediate value into integer register
fcvt.d.lu f12, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0x563c915fd7867cc5 # load immediate value into integer register
fcvt.d.lu f13, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x4d190a47596d8f24 # load immediate value into integer register
fcvt.d.lu f27, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x626cc3c86c2a7e51 # load immediate value into integer register
fcvt.d.lu f13, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x82a1a59c6cc58fbb # load immediate value into integer register
fcvt.d.lu f24, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0x5c605ad88432f840 # load immediate value into integer register
fcvt.d.lu f28, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x26ae019e9ee68bd4 # load immediate value into integer register
fcvt.d.lu f25, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x7631029e787a2e37 # load immediate value into integer register
fcvt.d.lu f16, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xb76d52ea105140cc # load immediate value into integer register
fcvt.d.lu f31, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xac29f557b94ff1ee # load immediate value into integer register
fcvt.d.lu f22, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x46f4e5975aa2fb69 # load immediate value into integer register
fcvt.d.lu f17, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x169141645c0396c9 # load immediate value into integer register
fcvt.d.lu f9, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x4e18fcf12094be0b # load immediate value into integer register
fcvt.d.lu f2, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0xf3ca9f1d48707a05 # load immediate value into integer register
fcvt.d.lu f29, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x62f42ec64438e97b # load immediate value into integer register
fcvt.d.lu f8, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x188c76ab3e47f7bf # load immediate value into integer register
fcvt.d.lu f9, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0xc4adc2bed3de6df5 # load immediate value into integer register
fcvt.d.lu f1, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0xb6f1746510374480 # load immediate value into integer register
fcvt.d.lu f2, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x0a57e37b8ece8907 # load immediate value into integer register
fcvt.d.lu f2, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x25d5e5fafb9f0532 # load immediate value into integer register
fcvt.d.lu f2, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x906c462dfca54f1f # load immediate value into integer register
fcvt.d.lu f29, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x4cf00c32108d9689 # load immediate value into integer register
fcvt.d.lu f29, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x0854990f39eed213 # load immediate value into integer register
fcvt.d.lu f12, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x5fc644503a2be7c2 # load immediate value into integer register
fcvt.d.lu f27, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x3c85c37d6dd0d1b6 # load immediate value into integer register
fcvt.d.lu f17, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x15425e64b4ed40f4 # load immediate value into integer register
fcvt.d.lu f5, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x30, 0x0000000000000000 # load immediate value into integer register
fcvt.d.lu f29, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x9, 0x0000000000000001 # load immediate value into integer register
fcvt.d.lu f17, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x18, 0x0000000000000002 # load immediate value into integer register
fcvt.d.lu f27, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x13, 0x8000000000000000 # load immediate value into integer register
fcvt.d.lu f18, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x12, 0x8000000000000001 # load immediate value into integer register
fcvt.d.lu f1, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x19, 0x7fffffffffffffff # load immediate value into integer register
fcvt.d.lu f25, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x3, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.d.lu f18, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x29, 0xffffffffffffffff # load immediate value into integer register
fcvt.d.lu f1, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x8, 0xfffffffffffffffe # load immediate value into integer register
fcvt.d.lu f11, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x1, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.d.lu f10, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x17, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.d.lu f10, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x13, 0x5555555555555555 # load immediate value into integer register
fcvt.d.lu f27, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x18, 0x00000000ffffffff # load immediate value into integer register
fcvt.d.lu f29, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x21, 0x00000000fffffffe # load immediate value into integer register
fcvt.d.lu f12, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x3, 0x0000000100000000 # load immediate value into integer register
fcvt.d.lu f5, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x30, 0x0000000100000001 # load immediate value into integer register
fcvt.d.lu f10, x30 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x8, x11 # perform first operation
fcvt.d.lu f22, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x9, x7 # perform first operation
fcvt.d.lu f28, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x25, x18 # perform first operation
fcvt.d.lu f12, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f29, f23, f26 # perform first operation
fcvt.d.lu f29, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f30, f17, f11 # perform first operation
fcvt.d.lu f30, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f23, f2, f22 # perform first operation
fcvt.d.lu f23, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f19, f18, f11 # perform first operation
fcvt.d.lu f18, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f28, f16, f24 # perform first operation
fcvt.d.lu f24, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f12, f18, f24 # perform first operation
fcvt.d.lu f27, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x26, x14 # perform first operation
fcvt.d.lu f23, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x24, x23 # perform first operation
fcvt.d.lu f13, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x5, x30 # perform first operation
fcvt.d.lu f19, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x3, x20 # perform first operation
fcvt.d.lu f24, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x29, x11 # perform first operation
fcvt.d.lu f11, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x14, x11 # perform first operation
fcvt.d.lu f14, x22 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x9, 0x26d418f8d6256b5f # load immediate value into integer register
fcvt.d.lu f0, x9 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x19, 0x87b5d2fc324c77a8 # load immediate value into integer register
fcvt.d.lu f1, x19 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x27, 0x15451ca95fe1b173 # load immediate value into integer register
fcvt.d.lu f2, x27 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x27, 0x083434f72ee81a54 # load immediate value into integer register
fcvt.d.lu f3, x27 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x10, 0x7e93656124f5a3ce # load immediate value into integer register
fcvt.d.lu f4, x10 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x23, 0x580486c95171dd2f # load immediate value into integer register
fcvt.d.lu f5, x23 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x30, 0x2b2c7d7b7408f296 # load immediate value into integer register
fcvt.d.lu f6, x30 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x49183d394dc3040d # load immediate value into integer register
fcvt.d.lu f7, x4 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x23, 0x125cdc6bb84b33c2 # load immediate value into integer register
fcvt.d.lu f8, x23 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x30, 0x84e592a11bb073a5 # load immediate value into integer register
fcvt.d.lu f9, x30 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x9, 0x9a2a03ec766772b9 # load immediate value into integer register
fcvt.d.lu f10, x9 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x22, 0x4f85f3b0cb3a27d5 # load immediate value into integer register
fcvt.d.lu f11, x22 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x8, 0x5ebdea744fb0beea # load immediate value into integer register
fcvt.d.lu f12, x8 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x2, 0x35bbdf3fbddd710e # load immediate value into integer register
fcvt.d.lu f13, x2 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x7, 0x9e33d51c70a18ca6 # load immediate value into integer register
fcvt.d.lu f14, x7 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x9, 0x355fe1e0a1a51a9c # load immediate value into integer register
fcvt.d.lu f15, x9 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x6, 0xf24fb266949ff372 # load immediate value into integer register
fcvt.d.lu f16, x6 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x22, 0xd98887cfe4afc2e8 # load immediate value into integer register
fcvt.d.lu f17, x22 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x28, 0xdd0ae9eff448d7c5 # load immediate value into integer register
fcvt.d.lu f18, x28 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x17, 0x804f2059fcf6a754 # load immediate value into integer register
fcvt.d.lu f19, x17 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x7, 0xf3cf0cb980dda235 # load immediate value into integer register
fcvt.d.lu f20, x7 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x23, 0xd3c5b0bd1bb380ae # load immediate value into integer register
fcvt.d.lu f21, x23 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x6, 0xee7cc47dd3510d2e # load immediate value into integer register
fcvt.d.lu f22, x6 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x15, 0x551958fcb6777005 # load immediate value into integer register
fcvt.d.lu f23, x15 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x4, 0xed98c9262924435e # load immediate value into integer register
fcvt.d.lu f24, x4 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x7, 0x95e4ba9f028d0b37 # load immediate value into integer register
fcvt.d.lu f25, x7 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x25, 0xd4c613547c8e831c # load immediate value into integer register
fcvt.d.lu f26, x25 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x20, 0x7ef336e817095e06 # load immediate value into integer register
fcvt.d.lu f27, x20 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x13, 0x2fdcef2b7a35af63 # load immediate value into integer register
fcvt.d.lu f28, x13 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x8, 0xa7722af7c17b168d # load immediate value into integer register
fcvt.d.lu f29, x8 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x22, 0xfbb499aefe445fac # load immediate value into integer register
fcvt.d.lu f30, x22 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x9, 0xbcbfc15d4ac223ba # load immediate value into integer register
fcvt.d.lu f31, x9 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x21, 0x87211c48686c26d3 # load immediate value into integer register
fcvt.d.lu f1, x21, dyn # perform operation
fcvt.d.lu f1, x21, rdn # perform operation
fcvt.d.lu f1, x21, rmm # perform operation
fcvt.d.lu f1, x21, rne # perform operation
fcvt.d.lu f1, x21, rtz # perform operation
fcvt.d.lu f1, x21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.d.lu f1, x21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.d.lu f1, x21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.d.lu f1, x21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.d.lu f1, x21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.d.lu f1, x21 # perform operation


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
