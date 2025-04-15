///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfh/WALLY-COV-fsub.h.S
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


# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x20, x15 # perform first operation
fsub.h f27, f18, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x29, x8 # perform first operation
fsub.h f1, f12, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x21, x24 # perform first operation
fsub.h f14, f10, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f3, f15, f26 # perform first operation
fsub.h f26, f3, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f21, f17, f13 # perform first operation
fsub.h f28, f26, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x11, x23 # perform first operation
fsub.h f11, f19, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f5, f23 # perform first operation
fsub.h f20, f17, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f25, f22 # perform first operation
fsub.h f19, f21, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f9, f23 # perform first operation
fsub.h f5, f8, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f16, f30, f11 # perform first operation
fsub.h f30, f3, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f17, f9, f1 # perform first operation
fsub.h f1, f26, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f21, f11, f10 # perform first operation
fsub.h f30, f5, f25 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x5af33c67 # load x3 with value 0x5af33c67
sw x3, 0(x2) # store 0x5af33c67 in memory
flh f0, 0(x2) # load 0x5af33c67 from memory into f0
la x2, scratch
li x3, 0x2f5a9ed1 # load x3 with value 0x2f5a9ed1
sw x3, 0(x2) # store 0x2f5a9ed1 in memory
flh f24, 0(x2) # load 0x2f5a9ed1 from memory into f24
fsub.h f7, f0, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x72e2bf2d # load x3 with value 0x72e2bf2d
sw x3, 0(x2) # store 0x72e2bf2d in memory
flh f1, 0(x2) # load 0x72e2bf2d from memory into f1
la x2, scratch
li x3, 0xc810ee9c # load x3 with value 0xc810ee9c
sw x3, 0(x2) # store 0xc810ee9c in memory
flh f17, 0(x2) # load 0xc810ee9c from memory into f17
fsub.h f29, f1, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x365267ec # load x3 with value 0x365267ec
sw x3, 0(x2) # store 0x365267ec in memory
flh f2, 0(x2) # load 0x365267ec from memory into f2
la x2, scratch
li x3, 0x5a63a545 # load x3 with value 0x5a63a545
sw x3, 0(x2) # store 0x5a63a545 in memory
flh f15, 0(x2) # load 0x5a63a545 from memory into f15
fsub.h f22, f2, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xfa42ae7c # load x3 with value 0xfa42ae7c
sw x3, 0(x2) # store 0xfa42ae7c in memory
flh f3, 0(x2) # load 0xfa42ae7c from memory into f3
la x2, scratch
li x3, 0xcb1279b0 # load x3 with value 0xcb1279b0
sw x3, 0(x2) # store 0xcb1279b0 in memory
flh f10, 0(x2) # load 0xcb1279b0 from memory into f10
fsub.h f17, f3, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe8335317 # load x3 with value 0xe8335317
sw x3, 0(x2) # store 0xe8335317 in memory
flh f4, 0(x2) # load 0xe8335317 from memory into f4
la x2, scratch
li x3, 0xac8d8ef0 # load x3 with value 0xac8d8ef0
sw x3, 0(x2) # store 0xac8d8ef0 in memory
flh f7, 0(x2) # load 0xac8d8ef0 from memory into f7
fsub.h f23, f4, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7d9fde1e # load x3 with value 0x7d9fde1e
sw x3, 0(x2) # store 0x7d9fde1e in memory
flh f5, 0(x2) # load 0x7d9fde1e from memory into f5
la x2, scratch
li x3, 0x4609bf09 # load x3 with value 0x4609bf09
sw x3, 0(x2) # store 0x4609bf09 in memory
flh f15, 0(x2) # load 0x4609bf09 from memory into f15
fsub.h f18, f5, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8ae3f686 # load x3 with value 0x8ae3f686
sw x3, 0(x2) # store 0x8ae3f686 in memory
flh f6, 0(x2) # load 0x8ae3f686 from memory into f6
la x2, scratch
li x3, 0x70134951 # load x3 with value 0x70134951
sw x3, 0(x2) # store 0x70134951 in memory
flh f22, 0(x2) # load 0x70134951 from memory into f22
fsub.h f15, f6, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbca245af # load x3 with value 0xbca245af
sw x3, 0(x2) # store 0xbca245af in memory
flh f7, 0(x2) # load 0xbca245af from memory into f7
la x2, scratch
li x3, 0x600d9f61 # load x3 with value 0x600d9f61
sw x3, 0(x2) # store 0x600d9f61 in memory
flh f26, 0(x2) # load 0x600d9f61 from memory into f26
fsub.h f15, f7, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x72efdcf6 # load x3 with value 0x72efdcf6
sw x3, 0(x2) # store 0x72efdcf6 in memory
flh f8, 0(x2) # load 0x72efdcf6 from memory into f8
la x2, scratch
li x3, 0xa45df39c # load x3 with value 0xa45df39c
sw x3, 0(x2) # store 0xa45df39c in memory
flh f2, 0(x2) # load 0xa45df39c from memory into f2
fsub.h f12, f8, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x0858cdcf # load x3 with value 0x0858cdcf
sw x3, 0(x2) # store 0x0858cdcf in memory
flh f9, 0(x2) # load 0x0858cdcf from memory into f9
la x2, scratch
li x3, 0x16056526 # load x3 with value 0x16056526
sw x3, 0(x2) # store 0x16056526 in memory
flh f10, 0(x2) # load 0x16056526 from memory into f10
fsub.h f23, f9, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xd59748e7 # load x3 with value 0xd59748e7
sw x3, 0(x2) # store 0xd59748e7 in memory
flh f10, 0(x2) # load 0xd59748e7 from memory into f10
la x2, scratch
li x3, 0xae719e01 # load x3 with value 0xae719e01
sw x3, 0(x2) # store 0xae719e01 in memory
flh f3, 0(x2) # load 0xae719e01 from memory into f3
fsub.h f18, f10, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x8426dc2f # load x3 with value 0x8426dc2f
sw x3, 0(x2) # store 0x8426dc2f in memory
flh f11, 0(x2) # load 0x8426dc2f from memory into f11
la x2, scratch
li x3, 0x60cd9f84 # load x3 with value 0x60cd9f84
sw x3, 0(x2) # store 0x60cd9f84 in memory
flh f22, 0(x2) # load 0x60cd9f84 from memory into f22
fsub.h f31, f11, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xe3439535 # load x3 with value 0xe3439535
sw x3, 0(x2) # store 0xe3439535 in memory
flh f12, 0(x2) # load 0xe3439535 from memory into f12
la x2, scratch
li x3, 0x3cb4e2a3 # load x3 with value 0x3cb4e2a3
sw x3, 0(x2) # store 0x3cb4e2a3 in memory
flh f17, 0(x2) # load 0x3cb4e2a3 from memory into f17
fsub.h f2, f12, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xc44dd783 # load x3 with value 0xc44dd783
sw x3, 0(x2) # store 0xc44dd783 in memory
flh f13, 0(x2) # load 0xc44dd783 from memory into f13
la x2, scratch
li x3, 0x4f828812 # load x3 with value 0x4f828812
sw x3, 0(x2) # store 0x4f828812 in memory
flh f9, 0(x2) # load 0x4f828812 from memory into f9
fsub.h f7, f13, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x9a1cb46a # load x3 with value 0x9a1cb46a
sw x3, 0(x2) # store 0x9a1cb46a in memory
flh f14, 0(x2) # load 0x9a1cb46a from memory into f14
la x2, scratch
li x3, 0xd363921e # load x3 with value 0xd363921e
sw x3, 0(x2) # store 0xd363921e in memory
flh f5, 0(x2) # load 0xd363921e from memory into f5
fsub.h f8, f14, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xcd91b90e # load x3 with value 0xcd91b90e
sw x3, 0(x2) # store 0xcd91b90e in memory
flh f15, 0(x2) # load 0xcd91b90e from memory into f15
la x2, scratch
li x3, 0xde312189 # load x3 with value 0xde312189
sw x3, 0(x2) # store 0xde312189 in memory
flh f3, 0(x2) # load 0xde312189 from memory into f3
fsub.h f14, f15, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x1b894eb1 # load x3 with value 0x1b894eb1
sw x3, 0(x2) # store 0x1b894eb1 in memory
flh f16, 0(x2) # load 0x1b894eb1 from memory into f16
la x2, scratch
li x3, 0x7e29d02c # load x3 with value 0x7e29d02c
sw x3, 0(x2) # store 0x7e29d02c in memory
flh f2, 0(x2) # load 0x7e29d02c from memory into f2
fsub.h f17, f16, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x155583b1 # load x3 with value 0x155583b1
sw x3, 0(x2) # store 0x155583b1 in memory
flh f17, 0(x2) # load 0x155583b1 from memory into f17
la x2, scratch
li x3, 0x65c42ccb # load x3 with value 0x65c42ccb
sw x3, 0(x2) # store 0x65c42ccb in memory
flh f22, 0(x2) # load 0x65c42ccb from memory into f22
fsub.h f17, f17, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xaef8b7d1 # load x3 with value 0xaef8b7d1
sw x3, 0(x2) # store 0xaef8b7d1 in memory
flh f18, 0(x2) # load 0xaef8b7d1 from memory into f18
la x2, scratch
li x3, 0x7654986b # load x3 with value 0x7654986b
sw x3, 0(x2) # store 0x7654986b in memory
flh f25, 0(x2) # load 0x7654986b from memory into f25
fsub.h f20, f18, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xd5851b7b # load x3 with value 0xd5851b7b
sw x3, 0(x2) # store 0xd5851b7b in memory
flh f19, 0(x2) # load 0xd5851b7b from memory into f19
la x2, scratch
li x3, 0x545ab496 # load x3 with value 0x545ab496
sw x3, 0(x2) # store 0x545ab496 in memory
flh f10, 0(x2) # load 0x545ab496 from memory into f10
fsub.h f1, f19, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x2dec8de1 # load x3 with value 0x2dec8de1
sw x3, 0(x2) # store 0x2dec8de1 in memory
flh f20, 0(x2) # load 0x2dec8de1 from memory into f20
la x2, scratch
li x3, 0x4de8a4b9 # load x3 with value 0x4de8a4b9
sw x3, 0(x2) # store 0x4de8a4b9 in memory
flh f19, 0(x2) # load 0x4de8a4b9 from memory into f19
fsub.h f24, f20, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xd887eaa8 # load x3 with value 0xd887eaa8
sw x3, 0(x2) # store 0xd887eaa8 in memory
flh f21, 0(x2) # load 0xd887eaa8 from memory into f21
la x2, scratch
li x3, 0x2ec2c3e1 # load x3 with value 0x2ec2c3e1
sw x3, 0(x2) # store 0x2ec2c3e1 in memory
flh f6, 0(x2) # load 0x2ec2c3e1 from memory into f6
fsub.h f30, f21, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x507809e4 # load x3 with value 0x507809e4
sw x3, 0(x2) # store 0x507809e4 in memory
flh f22, 0(x2) # load 0x507809e4 from memory into f22
la x2, scratch
li x3, 0x34f1bc85 # load x3 with value 0x34f1bc85
sw x3, 0(x2) # store 0x34f1bc85 in memory
flh f10, 0(x2) # load 0x34f1bc85 from memory into f10
fsub.h f17, f22, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x64f11e31 # load x3 with value 0x64f11e31
sw x3, 0(x2) # store 0x64f11e31 in memory
flh f23, 0(x2) # load 0x64f11e31 from memory into f23
la x2, scratch
li x3, 0xe99a6b19 # load x3 with value 0xe99a6b19
sw x3, 0(x2) # store 0xe99a6b19 in memory
flh f25, 0(x2) # load 0xe99a6b19 from memory into f25
fsub.h f22, f23, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xe16721ea # load x3 with value 0xe16721ea
sw x3, 0(x2) # store 0xe16721ea in memory
flh f24, 0(x2) # load 0xe16721ea from memory into f24
la x2, scratch
li x3, 0xc1ec4300 # load x3 with value 0xc1ec4300
sw x3, 0(x2) # store 0xc1ec4300 in memory
flh f10, 0(x2) # load 0xc1ec4300 from memory into f10
fsub.h f21, f24, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x9504b671 # load x3 with value 0x9504b671
sw x3, 0(x2) # store 0x9504b671 in memory
flh f25, 0(x2) # load 0x9504b671 from memory into f25
la x2, scratch
li x3, 0x9d1472c3 # load x3 with value 0x9d1472c3
sw x3, 0(x2) # store 0x9d1472c3 in memory
flh f27, 0(x2) # load 0x9d1472c3 from memory into f27
fsub.h f30, f25, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x8d947103 # load x3 with value 0x8d947103
sw x3, 0(x2) # store 0x8d947103 in memory
flh f26, 0(x2) # load 0x8d947103 from memory into f26
la x2, scratch
li x3, 0x6ecf9e62 # load x3 with value 0x6ecf9e62
sw x3, 0(x2) # store 0x6ecf9e62 in memory
flh f7, 0(x2) # load 0x6ecf9e62 from memory into f7
fsub.h f29, f26, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x13b5f5d3 # load x3 with value 0x13b5f5d3
sw x3, 0(x2) # store 0x13b5f5d3 in memory
flh f27, 0(x2) # load 0x13b5f5d3 from memory into f27
la x2, scratch
li x3, 0xe905eccc # load x3 with value 0xe905eccc
sw x3, 0(x2) # store 0xe905eccc in memory
flh f29, 0(x2) # load 0xe905eccc from memory into f29
fsub.h f27, f27, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xfe2f0109 # load x3 with value 0xfe2f0109
sw x3, 0(x2) # store 0xfe2f0109 in memory
flh f28, 0(x2) # load 0xfe2f0109 from memory into f28
la x2, scratch
li x3, 0x29650ebe # load x3 with value 0x29650ebe
sw x3, 0(x2) # store 0x29650ebe in memory
flh f11, 0(x2) # load 0x29650ebe from memory into f11
fsub.h f25, f28, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x91386df0 # load x3 with value 0x91386df0
sw x3, 0(x2) # store 0x91386df0 in memory
flh f29, 0(x2) # load 0x91386df0 from memory into f29
la x2, scratch
li x3, 0xb4fb36b8 # load x3 with value 0xb4fb36b8
sw x3, 0(x2) # store 0xb4fb36b8 in memory
flh f6, 0(x2) # load 0xb4fb36b8 from memory into f6
fsub.h f22, f29, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x523fae76 # load x3 with value 0x523fae76
sw x3, 0(x2) # store 0x523fae76 in memory
flh f30, 0(x2) # load 0x523fae76 from memory into f30
la x2, scratch
li x3, 0xcb0689a2 # load x3 with value 0xcb0689a2
sw x3, 0(x2) # store 0xcb0689a2 in memory
flh f8, 0(x2) # load 0xcb0689a2 from memory into f8
fsub.h f7, f30, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xf11f86f8 # load x3 with value 0xf11f86f8
sw x3, 0(x2) # store 0xf11f86f8 in memory
flh f31, 0(x2) # load 0xf11f86f8 from memory into f31
la x2, scratch
li x3, 0xd64ced87 # load x3 with value 0xd64ced87
sw x3, 0(x2) # store 0xd64ced87 in memory
flh f21, 0(x2) # load 0xd64ced87 from memory into f21
fsub.h f2, f31, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xa7467e19 # load x3 with value 0xa7467e19
sw x3, 0(x2) # store 0xa7467e19 in memory
flh f2, 0(x2) # load 0xa7467e19 from memory into f2
la x2, scratch
li x3, 0x7b0e7eff # load x3 with value 0x7b0e7eff
sw x3, 0(x2) # store 0x7b0e7eff in memory
flh f0, 0(x2) # load 0x7b0e7eff from memory into f0
fsub.h f1, f2, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x82ca8cef # load x3 with value 0x82ca8cef
sw x3, 0(x2) # store 0x82ca8cef in memory
flh f6, 0(x2) # load 0x82ca8cef from memory into f6
la x2, scratch
li x3, 0xbe02c8af # load x3 with value 0xbe02c8af
sw x3, 0(x2) # store 0xbe02c8af in memory
flh f1, 0(x2) # load 0xbe02c8af from memory into f1
fsub.h f28, f6, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x0064a05f # load x3 with value 0x0064a05f
sw x3, 0(x2) # store 0x0064a05f in memory
flh f17, 0(x2) # load 0x0064a05f from memory into f17
la x2, scratch
li x3, 0x700d10e4 # load x3 with value 0x700d10e4
sw x3, 0(x2) # store 0x700d10e4 in memory
flh f2, 0(x2) # load 0x700d10e4 from memory into f2
fsub.h f5, f17, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x2178e190 # load x3 with value 0x2178e190
sw x3, 0(x2) # store 0x2178e190 in memory
flh f7, 0(x2) # load 0x2178e190 from memory into f7
la x2, scratch
li x3, 0x5d3a74e6 # load x3 with value 0x5d3a74e6
sw x3, 0(x2) # store 0x5d3a74e6 in memory
flh f3, 0(x2) # load 0x5d3a74e6 from memory into f3
fsub.h f2, f7, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9af2c7db # load x3 with value 0x9af2c7db
sw x3, 0(x2) # store 0x9af2c7db in memory
flh f10, 0(x2) # load 0x9af2c7db from memory into f10
la x2, scratch
li x3, 0x14e04387 # load x3 with value 0x14e04387
sw x3, 0(x2) # store 0x14e04387 in memory
flh f4, 0(x2) # load 0x14e04387 from memory into f4
fsub.h f7, f10, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3655a65b # load x3 with value 0x3655a65b
sw x3, 0(x2) # store 0x3655a65b in memory
flh f27, 0(x2) # load 0x3655a65b from memory into f27
la x2, scratch
li x3, 0xd6247b72 # load x3 with value 0xd6247b72
sw x3, 0(x2) # store 0xd6247b72 in memory
flh f5, 0(x2) # load 0xd6247b72 from memory into f5
fsub.h f24, f27, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1f12543c # load x3 with value 0x1f12543c
sw x3, 0(x2) # store 0x1f12543c in memory
flh f14, 0(x2) # load 0x1f12543c from memory into f14
la x2, scratch
li x3, 0xcbee6d67 # load x3 with value 0xcbee6d67
sw x3, 0(x2) # store 0xcbee6d67 in memory
flh f6, 0(x2) # load 0xcbee6d67 from memory into f6
fsub.h f24, f14, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x88636dfe # load x3 with value 0x88636dfe
sw x3, 0(x2) # store 0x88636dfe in memory
flh f12, 0(x2) # load 0x88636dfe from memory into f12
la x2, scratch
li x3, 0xde7ae1f5 # load x3 with value 0xde7ae1f5
sw x3, 0(x2) # store 0xde7ae1f5 in memory
flh f7, 0(x2) # load 0xde7ae1f5 from memory into f7
fsub.h f13, f12, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0xb9cb0e90 # load x3 with value 0xb9cb0e90
sw x3, 0(x2) # store 0xb9cb0e90 in memory
flh f31, 0(x2) # load 0xb9cb0e90 from memory into f31
la x2, scratch
li x3, 0xe2bac78d # load x3 with value 0xe2bac78d
sw x3, 0(x2) # store 0xe2bac78d in memory
flh f8, 0(x2) # load 0xe2bac78d from memory into f8
fsub.h f3, f31, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0x6ccc18a3 # load x3 with value 0x6ccc18a3
sw x3, 0(x2) # store 0x6ccc18a3 in memory
flh f29, 0(x2) # load 0x6ccc18a3 from memory into f29
la x2, scratch
li x3, 0x2599cd79 # load x3 with value 0x2599cd79
sw x3, 0(x2) # store 0x2599cd79 in memory
flh f9, 0(x2) # load 0x2599cd79 from memory into f9
fsub.h f2, f29, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x7ba558b3 # load x3 with value 0x7ba558b3
sw x3, 0(x2) # store 0x7ba558b3 in memory
flh f8, 0(x2) # load 0x7ba558b3 from memory into f8
la x2, scratch
li x3, 0xd1c387ff # load x3 with value 0xd1c387ff
sw x3, 0(x2) # store 0xd1c387ff in memory
flh f10, 0(x2) # load 0xd1c387ff from memory into f10
fsub.h f10, f8, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0xe867d7cb # load x3 with value 0xe867d7cb
sw x3, 0(x2) # store 0xe867d7cb in memory
flh f8, 0(x2) # load 0xe867d7cb from memory into f8
la x2, scratch
li x3, 0x5769fb02 # load x3 with value 0x5769fb02
sw x3, 0(x2) # store 0x5769fb02 in memory
flh f11, 0(x2) # load 0x5769fb02 from memory into f11
fsub.h f1, f8, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x20874e7b # load x3 with value 0x20874e7b
sw x3, 0(x2) # store 0x20874e7b in memory
flh f5, 0(x2) # load 0x20874e7b from memory into f5
la x2, scratch
li x3, 0xd9ea8cab # load x3 with value 0xd9ea8cab
sw x3, 0(x2) # store 0xd9ea8cab in memory
flh f12, 0(x2) # load 0xd9ea8cab from memory into f12
fsub.h f27, f5, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x6be32012 # load x3 with value 0x6be32012
sw x3, 0(x2) # store 0x6be32012 in memory
flh f30, 0(x2) # load 0x6be32012 from memory into f30
la x2, scratch
li x3, 0x85d45550 # load x3 with value 0x85d45550
sw x3, 0(x2) # store 0x85d45550 in memory
flh f13, 0(x2) # load 0x85d45550 from memory into f13
fsub.h f13, f30, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xc5c0ef7d # load x3 with value 0xc5c0ef7d
sw x3, 0(x2) # store 0xc5c0ef7d in memory
flh f15, 0(x2) # load 0xc5c0ef7d from memory into f15
la x2, scratch
li x3, 0xfd318e8e # load x3 with value 0xfd318e8e
sw x3, 0(x2) # store 0xfd318e8e in memory
flh f14, 0(x2) # load 0xfd318e8e from memory into f14
fsub.h f20, f15, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0x669284b8 # load x3 with value 0x669284b8
sw x3, 0(x2) # store 0x669284b8 in memory
flh f27, 0(x2) # load 0x669284b8 from memory into f27
la x2, scratch
li x3, 0x8f1cde35 # load x3 with value 0x8f1cde35
sw x3, 0(x2) # store 0x8f1cde35 in memory
flh f15, 0(x2) # load 0x8f1cde35 from memory into f15
fsub.h f18, f27, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x6ca0e1c7 # load x3 with value 0x6ca0e1c7
sw x3, 0(x2) # store 0x6ca0e1c7 in memory
flh f6, 0(x2) # load 0x6ca0e1c7 from memory into f6
la x2, scratch
li x3, 0xca073766 # load x3 with value 0xca073766
sw x3, 0(x2) # store 0xca073766 in memory
flh f16, 0(x2) # load 0xca073766 from memory into f16
fsub.h f28, f6, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x4e36f820 # load x3 with value 0x4e36f820
sw x3, 0(x2) # store 0x4e36f820 in memory
flh f25, 0(x2) # load 0x4e36f820 from memory into f25
la x2, scratch
li x3, 0x2e4c6db0 # load x3 with value 0x2e4c6db0
sw x3, 0(x2) # store 0x2e4c6db0 in memory
flh f17, 0(x2) # load 0x2e4c6db0 from memory into f17
fsub.h f14, f25, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0xccbb4b66 # load x3 with value 0xccbb4b66
sw x3, 0(x2) # store 0xccbb4b66 in memory
flh f17, 0(x2) # load 0xccbb4b66 from memory into f17
la x2, scratch
li x3, 0xa1bf5629 # load x3 with value 0xa1bf5629
sw x3, 0(x2) # store 0xa1bf5629 in memory
flh f18, 0(x2) # load 0xa1bf5629 from memory into f18
fsub.h f2, f17, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x1c5e188e # load x3 with value 0x1c5e188e
sw x3, 0(x2) # store 0x1c5e188e in memory
flh f30, 0(x2) # load 0x1c5e188e from memory into f30
la x2, scratch
li x3, 0xb77122b7 # load x3 with value 0xb77122b7
sw x3, 0(x2) # store 0xb77122b7 in memory
flh f19, 0(x2) # load 0xb77122b7 from memory into f19
fsub.h f12, f30, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x84abc151 # load x3 with value 0x84abc151
sw x3, 0(x2) # store 0x84abc151 in memory
flh f3, 0(x2) # load 0x84abc151 from memory into f3
la x2, scratch
li x3, 0xd2128946 # load x3 with value 0xd2128946
sw x3, 0(x2) # store 0xd2128946 in memory
flh f20, 0(x2) # load 0xd2128946 from memory into f20
fsub.h f10, f3, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x6240487e # load x3 with value 0x6240487e
sw x3, 0(x2) # store 0x6240487e in memory
flh f22, 0(x2) # load 0x6240487e from memory into f22
la x2, scratch
li x3, 0xdfa4cdcb # load x3 with value 0xdfa4cdcb
sw x3, 0(x2) # store 0xdfa4cdcb in memory
flh f21, 0(x2) # load 0xdfa4cdcb from memory into f21
fsub.h f12, f22, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0xeeb7a960 # load x3 with value 0xeeb7a960
sw x3, 0(x2) # store 0xeeb7a960 in memory
flh f20, 0(x2) # load 0xeeb7a960 from memory into f20
la x2, scratch
li x3, 0x367ba4f9 # load x3 with value 0x367ba4f9
sw x3, 0(x2) # store 0x367ba4f9 in memory
flh f22, 0(x2) # load 0x367ba4f9 from memory into f22
fsub.h f13, f20, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xa3031b3d # load x3 with value 0xa3031b3d
sw x3, 0(x2) # store 0xa3031b3d in memory
flh f18, 0(x2) # load 0xa3031b3d from memory into f18
la x2, scratch
li x3, 0xba16d80a # load x3 with value 0xba16d80a
sw x3, 0(x2) # store 0xba16d80a in memory
flh f23, 0(x2) # load 0xba16d80a from memory into f23
fsub.h f11, f18, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0xdd8a83fd # load x3 with value 0xdd8a83fd
sw x3, 0(x2) # store 0xdd8a83fd in memory
flh f2, 0(x2) # load 0xdd8a83fd from memory into f2
la x2, scratch
li x3, 0x34f340be # load x3 with value 0x34f340be
sw x3, 0(x2) # store 0x34f340be in memory
flh f24, 0(x2) # load 0x34f340be from memory into f24
fsub.h f8, f2, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x4bf962e5 # load x3 with value 0x4bf962e5
sw x3, 0(x2) # store 0x4bf962e5 in memory
flh f29, 0(x2) # load 0x4bf962e5 from memory into f29
la x2, scratch
li x3, 0xfaf2ef17 # load x3 with value 0xfaf2ef17
sw x3, 0(x2) # store 0xfaf2ef17 in memory
flh f25, 0(x2) # load 0xfaf2ef17 from memory into f25
fsub.h f22, f29, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x705d82f2 # load x3 with value 0x705d82f2
sw x3, 0(x2) # store 0x705d82f2 in memory
flh f7, 0(x2) # load 0x705d82f2 from memory into f7
la x2, scratch
li x3, 0xbf857573 # load x3 with value 0xbf857573
sw x3, 0(x2) # store 0xbf857573 in memory
flh f26, 0(x2) # load 0xbf857573 from memory into f26
fsub.h f23, f7, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xbf536f51 # load x3 with value 0xbf536f51
sw x3, 0(x2) # store 0xbf536f51 in memory
flh f5, 0(x2) # load 0xbf536f51 from memory into f5
la x2, scratch
li x3, 0xe6a295e5 # load x3 with value 0xe6a295e5
sw x3, 0(x2) # store 0xe6a295e5 in memory
flh f27, 0(x2) # load 0xe6a295e5 from memory into f27
fsub.h f7, f5, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x58e7c3d6 # load x3 with value 0x58e7c3d6
sw x3, 0(x2) # store 0x58e7c3d6 in memory
flh f5, 0(x2) # load 0x58e7c3d6 from memory into f5
la x2, scratch
li x3, 0xdeb74c4b # load x3 with value 0xdeb74c4b
sw x3, 0(x2) # store 0xdeb74c4b in memory
flh f28, 0(x2) # load 0xdeb74c4b from memory into f28
fsub.h f21, f5, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x5a877776 # load x3 with value 0x5a877776
sw x3, 0(x2) # store 0x5a877776 in memory
flh f7, 0(x2) # load 0x5a877776 from memory into f7
la x2, scratch
li x3, 0x4adc33bb # load x3 with value 0x4adc33bb
sw x3, 0(x2) # store 0x4adc33bb in memory
flh f29, 0(x2) # load 0x4adc33bb from memory into f29
fsub.h f18, f7, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0xebfd555d # load x3 with value 0xebfd555d
sw x3, 0(x2) # store 0xebfd555d in memory
flh f8, 0(x2) # load 0xebfd555d from memory into f8
la x2, scratch
li x3, 0x4d40117b # load x3 with value 0x4d40117b
sw x3, 0(x2) # store 0x4d40117b in memory
flh f30, 0(x2) # load 0x4d40117b from memory into f30
fsub.h f9, f8, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x93901ba1 # load x3 with value 0x93901ba1
sw x3, 0(x2) # store 0x93901ba1 in memory
flh f9, 0(x2) # load 0x93901ba1 from memory into f9
la x2, scratch
li x3, 0x3cd19492 # load x3 with value 0x3cd19492
sw x3, 0(x2) # store 0x3cd19492 in memory
flh f31, 0(x2) # load 0x3cd19492 from memory into f31
fsub.h f3, f9, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0x871e8793 # load x3 with value 0x871e8793
sw x3, 0(x2) # store 0x871e8793 in memory
flh f1, 0(x2) # load 0x871e8793 from memory into f1
la x2, scratch
li x3, 0x396b7435 # load x3 with value 0x396b7435
sw x3, 0(x2) # store 0x396b7435 in memory
flh f30, 0(x2) # load 0x396b7435 from memory into f30
fsub.h f0, f1, f30 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0xac40072c # load x3 with value 0xac40072c
sw x3, 0(x2) # store 0xac40072c in memory
flh f22, 0(x2) # load 0xac40072c from memory into f22
la x2, scratch
li x3, 0x3f06e5ca # load x3 with value 0x3f06e5ca
sw x3, 0(x2) # store 0x3f06e5ca in memory
flh f28, 0(x2) # load 0x3f06e5ca from memory into f28
fsub.h f1, f22, f28 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0xb57ce789 # load x3 with value 0xb57ce789
sw x3, 0(x2) # store 0xb57ce789 in memory
flh f3, 0(x2) # load 0xb57ce789 from memory into f3
la x2, scratch
li x3, 0x33673e61 # load x3 with value 0x33673e61
sw x3, 0(x2) # store 0x33673e61 in memory
flh f23, 0(x2) # load 0x33673e61 from memory into f23
fsub.h f2, f3, f23 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x6e098e31 # load x3 with value 0x6e098e31
sw x3, 0(x2) # store 0x6e098e31 in memory
flh f9, 0(x2) # load 0x6e098e31 from memory into f9
la x2, scratch
li x3, 0x5e4eddaf # load x3 with value 0x5e4eddaf
sw x3, 0(x2) # store 0x5e4eddaf in memory
flh f10, 0(x2) # load 0x5e4eddaf from memory into f10
fsub.h f3, f9, f10 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xecd94000 # load x3 with value 0xecd94000
sw x3, 0(x2) # store 0xecd94000 in memory
flh f17, 0(x2) # load 0xecd94000 from memory into f17
la x2, scratch
li x3, 0x59dc5865 # load x3 with value 0x59dc5865
sw x3, 0(x2) # store 0x59dc5865 in memory
flh f25, 0(x2) # load 0x59dc5865 from memory into f25
fsub.h f4, f17, f25 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3e523033 # load x3 with value 0x3e523033
sw x3, 0(x2) # store 0x3e523033 in memory
flh f23, 0(x2) # load 0x3e523033 from memory into f23
la x2, scratch
li x3, 0x393442a2 # load x3 with value 0x393442a2
sw x3, 0(x2) # store 0x393442a2 in memory
flh f13, 0(x2) # load 0x393442a2 from memory into f13
fsub.h f5, f23, f13 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x45a02f15 # load x3 with value 0x45a02f15
sw x3, 0(x2) # store 0x45a02f15 in memory
flh f14, 0(x2) # load 0x45a02f15 from memory into f14
la x2, scratch
li x3, 0x4ca76dae # load x3 with value 0x4ca76dae
sw x3, 0(x2) # store 0x4ca76dae in memory
flh f22, 0(x2) # load 0x4ca76dae from memory into f22
fsub.h f6, f14, f22 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa6b6ee02 # load x3 with value 0xa6b6ee02
sw x3, 0(x2) # store 0xa6b6ee02 in memory
flh f27, 0(x2) # load 0xa6b6ee02 from memory into f27
la x2, scratch
li x3, 0x16855813 # load x3 with value 0x16855813
sw x3, 0(x2) # store 0x16855813 in memory
flh f16, 0(x2) # load 0x16855813 from memory into f16
fsub.h f7, f27, f16 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x3ee3054f # load x3 with value 0x3ee3054f
sw x3, 0(x2) # store 0x3ee3054f in memory
flh f25, 0(x2) # load 0x3ee3054f from memory into f25
la x2, scratch
li x3, 0xfadbc8b2 # load x3 with value 0xfadbc8b2
sw x3, 0(x2) # store 0xfadbc8b2 in memory
flh f14, 0(x2) # load 0xfadbc8b2 from memory into f14
fsub.h f8, f25, f14 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x2d66e7c5 # load x3 with value 0x2d66e7c5
sw x3, 0(x2) # store 0x2d66e7c5 in memory
flh f16, 0(x2) # load 0x2d66e7c5 from memory into f16
la x2, scratch
li x3, 0xbf5775cd # load x3 with value 0xbf5775cd
sw x3, 0(x2) # store 0xbf5775cd in memory
flh f13, 0(x2) # load 0xbf5775cd from memory into f13
fsub.h f9, f16, f13 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0xa0ba2a53 # load x3 with value 0xa0ba2a53
sw x3, 0(x2) # store 0xa0ba2a53 in memory
flh f13, 0(x2) # load 0xa0ba2a53 from memory into f13
la x2, scratch
li x3, 0xde8972c3 # load x3 with value 0xde8972c3
sw x3, 0(x2) # store 0xde8972c3 in memory
flh f2, 0(x2) # load 0xde8972c3 from memory into f2
fsub.h f10, f13, f2 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0xbc59ae00 # load x3 with value 0xbc59ae00
sw x3, 0(x2) # store 0xbc59ae00 in memory
flh f26, 0(x2) # load 0xbc59ae00 from memory into f26
la x2, scratch
li x3, 0x90f3304a # load x3 with value 0x90f3304a
sw x3, 0(x2) # store 0x90f3304a in memory
flh f24, 0(x2) # load 0x90f3304a from memory into f24
fsub.h f11, f26, f24 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0xd6e2f367 # load x3 with value 0xd6e2f367
sw x3, 0(x2) # store 0xd6e2f367 in memory
flh f24, 0(x2) # load 0xd6e2f367 from memory into f24
la x2, scratch
li x3, 0x6ec1b542 # load x3 with value 0x6ec1b542
sw x3, 0(x2) # store 0x6ec1b542 in memory
flh f6, 0(x2) # load 0x6ec1b542 from memory into f6
fsub.h f12, f24, f6 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x7dbfa473 # load x3 with value 0x7dbfa473
sw x3, 0(x2) # store 0x7dbfa473 in memory
flh f18, 0(x2) # load 0x7dbfa473 from memory into f18
la x2, scratch
li x3, 0xf79770f7 # load x3 with value 0xf79770f7
sw x3, 0(x2) # store 0xf79770f7 in memory
flh f31, 0(x2) # load 0xf79770f7 from memory into f31
fsub.h f13, f18, f31 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x15555d4a # load x3 with value 0x15555d4a
sw x3, 0(x2) # store 0x15555d4a in memory
flh f30, 0(x2) # load 0x15555d4a from memory into f30
la x2, scratch
li x3, 0xede38ee2 # load x3 with value 0xede38ee2
sw x3, 0(x2) # store 0xede38ee2 in memory
flh f29, 0(x2) # load 0xede38ee2 from memory into f29
fsub.h f14, f30, f29 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0x4fedf84e # load x3 with value 0x4fedf84e
sw x3, 0(x2) # store 0x4fedf84e in memory
flh f28, 0(x2) # load 0x4fedf84e from memory into f28
la x2, scratch
li x3, 0x92a218c8 # load x3 with value 0x92a218c8
sw x3, 0(x2) # store 0x92a218c8 in memory
flh f2, 0(x2) # load 0x92a218c8 from memory into f2
fsub.h f15, f28, f2 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0x254b6b00 # load x3 with value 0x254b6b00
sw x3, 0(x2) # store 0x254b6b00 in memory
flh f3, 0(x2) # load 0x254b6b00 from memory into f3
la x2, scratch
li x3, 0xe635611d # load x3 with value 0xe635611d
sw x3, 0(x2) # store 0xe635611d in memory
flh f19, 0(x2) # load 0xe635611d from memory into f19
fsub.h f16, f3, f19 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0x8940b9a2 # load x3 with value 0x8940b9a2
sw x3, 0(x2) # store 0x8940b9a2 in memory
flh f16, 0(x2) # load 0x8940b9a2 from memory into f16
la x2, scratch
li x3, 0x8bb97994 # load x3 with value 0x8bb97994
sw x3, 0(x2) # store 0x8bb97994 in memory
flh f11, 0(x2) # load 0x8bb97994 from memory into f11
fsub.h f17, f16, f11 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0x0bd3b989 # load x3 with value 0x0bd3b989
sw x3, 0(x2) # store 0x0bd3b989 in memory
flh f24, 0(x2) # load 0x0bd3b989 from memory into f24
la x2, scratch
li x3, 0x38109ae8 # load x3 with value 0x38109ae8
sw x3, 0(x2) # store 0x38109ae8 in memory
flh f25, 0(x2) # load 0x38109ae8 from memory into f25
fsub.h f18, f24, f25 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x55f26251 # load x3 with value 0x55f26251
sw x3, 0(x2) # store 0x55f26251 in memory
flh f28, 0(x2) # load 0x55f26251 from memory into f28
la x2, scratch
li x3, 0x51b5cdbb # load x3 with value 0x51b5cdbb
sw x3, 0(x2) # store 0x51b5cdbb in memory
flh f13, 0(x2) # load 0x51b5cdbb from memory into f13
fsub.h f19, f28, f13 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0xdaa5d819 # load x3 with value 0xdaa5d819
sw x3, 0(x2) # store 0xdaa5d819 in memory
flh f7, 0(x2) # load 0xdaa5d819 from memory into f7
la x2, scratch
li x3, 0xb00def62 # load x3 with value 0xb00def62
sw x3, 0(x2) # store 0xb00def62 in memory
flh f19, 0(x2) # load 0xb00def62 from memory into f19
fsub.h f20, f7, f19 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0xe756f2ee # load x3 with value 0xe756f2ee
sw x3, 0(x2) # store 0xe756f2ee in memory
flh f18, 0(x2) # load 0xe756f2ee from memory into f18
la x2, scratch
li x3, 0x86b673a1 # load x3 with value 0x86b673a1
sw x3, 0(x2) # store 0x86b673a1 in memory
flh f16, 0(x2) # load 0x86b673a1 from memory into f16
fsub.h f21, f18, f16 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0x8ce816fa # load x3 with value 0x8ce816fa
sw x3, 0(x2) # store 0x8ce816fa in memory
flh f15, 0(x2) # load 0x8ce816fa from memory into f15
la x2, scratch
li x3, 0x326a106a # load x3 with value 0x326a106a
sw x3, 0(x2) # store 0x326a106a in memory
flh f30, 0(x2) # load 0x326a106a from memory into f30
fsub.h f22, f15, f30 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x7cb52ea6 # load x3 with value 0x7cb52ea6
sw x3, 0(x2) # store 0x7cb52ea6 in memory
flh f10, 0(x2) # load 0x7cb52ea6 from memory into f10
la x2, scratch
li x3, 0x0f5025ce # load x3 with value 0x0f5025ce
sw x3, 0(x2) # store 0x0f5025ce in memory
flh f30, 0(x2) # load 0x0f5025ce from memory into f30
fsub.h f23, f10, f30 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0x131ea6c5 # load x3 with value 0x131ea6c5
sw x3, 0(x2) # store 0x131ea6c5 in memory
flh f31, 0(x2) # load 0x131ea6c5 from memory into f31
la x2, scratch
li x3, 0x90f6aaf9 # load x3 with value 0x90f6aaf9
sw x3, 0(x2) # store 0x90f6aaf9 in memory
flh f15, 0(x2) # load 0x90f6aaf9 from memory into f15
fsub.h f24, f31, f15 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0x295c976b # load x3 with value 0x295c976b
sw x3, 0(x2) # store 0x295c976b in memory
flh f23, 0(x2) # load 0x295c976b from memory into f23
la x2, scratch
li x3, 0xc5ef16b2 # load x3 with value 0xc5ef16b2
sw x3, 0(x2) # store 0xc5ef16b2 in memory
flh f6, 0(x2) # load 0xc5ef16b2 from memory into f6
fsub.h f25, f23, f6 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0x5a7b0e4d # load x3 with value 0x5a7b0e4d
sw x3, 0(x2) # store 0x5a7b0e4d in memory
flh f2, 0(x2) # load 0x5a7b0e4d from memory into f2
la x2, scratch
li x3, 0xfcbab18a # load x3 with value 0xfcbab18a
sw x3, 0(x2) # store 0xfcbab18a in memory
flh f10, 0(x2) # load 0xfcbab18a from memory into f10
fsub.h f26, f2, f10 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0xdb341820 # load x3 with value 0xdb341820
sw x3, 0(x2) # store 0xdb341820 in memory
flh f16, 0(x2) # load 0xdb341820 from memory into f16
la x2, scratch
li x3, 0x5a26a547 # load x3 with value 0x5a26a547
sw x3, 0(x2) # store 0x5a26a547 in memory
flh f15, 0(x2) # load 0x5a26a547 from memory into f15
fsub.h f27, f16, f15 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0x5b52ad7d # load x3 with value 0x5b52ad7d
sw x3, 0(x2) # store 0x5b52ad7d in memory
flh f23, 0(x2) # load 0x5b52ad7d from memory into f23
la x2, scratch
li x3, 0x530743e5 # load x3 with value 0x530743e5
sw x3, 0(x2) # store 0x530743e5 in memory
flh f8, 0(x2) # load 0x530743e5 from memory into f8
fsub.h f28, f23, f8 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0xc102955e # load x3 with value 0xc102955e
sw x3, 0(x2) # store 0xc102955e in memory
flh f8, 0(x2) # load 0xc102955e from memory into f8
la x2, scratch
li x3, 0x7db451e1 # load x3 with value 0x7db451e1
sw x3, 0(x2) # store 0x7db451e1 in memory
flh f26, 0(x2) # load 0x7db451e1 from memory into f26
fsub.h f29, f8, f26 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x7aca80d5 # load x3 with value 0x7aca80d5
sw x3, 0(x2) # store 0x7aca80d5 in memory
flh f3, 0(x2) # load 0x7aca80d5 from memory into f3
la x2, scratch
li x3, 0x0b67faea # load x3 with value 0x0b67faea
sw x3, 0(x2) # store 0x0b67faea in memory
flh f26, 0(x2) # load 0x0b67faea from memory into f26
fsub.h f30, f3, f26 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0x53e9280e # load x3 with value 0x53e9280e
sw x3, 0(x2) # store 0x53e9280e in memory
flh f16, 0(x2) # load 0x53e9280e from memory into f16
la x2, scratch
li x3, 0xd408f3d6 # load x3 with value 0xd408f3d6
sw x3, 0(x2) # store 0xd408f3d6 in memory
flh f12, 0(x2) # load 0xd408f3d6 from memory into f12
fsub.h f31, f16, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x654c2125 # load x3 with value 0x654c2125
sw x3, 0(x2) # store 0x654c2125 in memory
flh f3, 0(x2) # load 0x654c2125 from memory into f3
fsub.h f24, f20, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0xb1b217c9 # load x3 with value 0xb1b217c9
sw x3, 0(x2) # store 0xb1b217c9 in memory
flh f3, 0(x2) # load 0xb1b217c9 from memory into f3
fsub.h f31, f6, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
la x2, scratch
li x3, 0xa9516503 # load x3 with value 0xa9516503
sw x3, 0(x2) # store 0xa9516503 in memory
flh f15, 0(x2) # load 0xa9516503 from memory into f15
fsub.h f13, f16, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0xf5880a4b # load x3 with value 0xf5880a4b
sw x3, 0(x2) # store 0xf5880a4b in memory
flh f15, 0(x2) # load 0xf5880a4b from memory into f15
fsub.h f11, f16, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x03461e5d # load x3 with value 0x03461e5d
sw x3, 0(x2) # store 0x03461e5d in memory
flh f6, 0(x2) # load 0x03461e5d from memory into f6
fsub.h f5, f26, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
la x2, scratch
li x3, 0xcd8916fc # load x3 with value 0xcd8916fc
sw x3, 0(x2) # store 0xcd8916fc in memory
flh f9, 0(x2) # load 0xcd8916fc from memory into f9
fsub.h f28, f5, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x19de62e0 # load x3 with value 0x19de62e0
sw x3, 0(x2) # store 0x19de62e0 in memory
flh f2, 0(x2) # load 0x19de62e0 from memory into f2
fsub.h f29, f26, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
la x2, scratch
li x3, 0x909ba13e # load x3 with value 0x909ba13e
sw x3, 0(x2) # store 0x909ba13e in memory
flh f21, 0(x2) # load 0x909ba13e from memory into f21
fsub.h f1, f8, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0xb06aa142 # load x3 with value 0xb06aa142
sw x3, 0(x2) # store 0xb06aa142 in memory
flh f6, 0(x2) # load 0xb06aa142 from memory into f6
fsub.h f13, f25, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
la x2, scratch
li x3, 0xe939d704 # load x3 with value 0xe939d704
sw x3, 0(x2) # store 0xe939d704 in memory
flh f7, 0(x2) # load 0xe939d704 from memory into f7
fsub.h f11, f22, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
la x2, scratch
li x3, 0x7ac78015 # load x3 with value 0x7ac78015
sw x3, 0(x2) # store 0x7ac78015 in memory
flh f25, 0(x2) # load 0x7ac78015 from memory into f25
fsub.h f22, f16, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
la x2, scratch
li x3, 0xc4a6a49b # load x3 with value 0xc4a6a49b
sw x3, 0(x2) # store 0xc4a6a49b in memory
flh f27, 0(x2) # load 0xc4a6a49b from memory into f27
fsub.h f29, f10, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
la x2, scratch
li x3, 0x245f34d8 # load x3 with value 0x245f34d8
sw x3, 0(x2) # store 0x245f34d8 in memory
flh f27, 0(x2) # load 0x245f34d8 from memory into f27
fsub.h f9, f18, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x2, scratch
li x3, 0x13847c93 # load x3 with value 0x13847c93
sw x3, 0(x2) # store 0x13847c93 in memory
flh f7, 0(x2) # load 0x13847c93 from memory into f7
fsub.h f27, f1, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
la x2, scratch
li x3, 0xf4c0ba18 # load x3 with value 0xf4c0ba18
sw x3, 0(x2) # store 0xf4c0ba18 in memory
flh f19, 0(x2) # load 0xf4c0ba18 from memory into f19
fsub.h f13, f20, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
la x2, scratch
li x3, 0x2b17505a # load x3 with value 0x2b17505a
sw x3, 0(x2) # store 0x2b17505a in memory
flh f20, 0(x2) # load 0x2b17505a from memory into f20
fsub.h f7, f17, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0xfa1eeace # load x3 with value 0xfa1eeace
sw x3, 0(x2) # store 0xfa1eeace in memory
flh f21, 0(x2) # load 0xfa1eeace from memory into f21
fsub.h f10, f6, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
la x2, scratch
li x3, 0xdb3339c2 # load x3 with value 0xdb3339c2
sw x3, 0(x2) # store 0xdb3339c2 in memory
flh f27, 0(x2) # load 0xdb3339c2 from memory into f27
fsub.h f9, f14, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0xe5488baa # load x3 with value 0xe5488baa
sw x3, 0(x2) # store 0xe5488baa in memory
flh f18, 0(x2) # load 0xe5488baa from memory into f18
fsub.h f3, f5, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
la x2, scratch
li x3, 0x3a862aa5 # load x3 with value 0x3a862aa5
sw x3, 0(x2) # store 0x3a862aa5 in memory
flh f1, 0(x2) # load 0x3a862aa5 from memory into f1
fsub.h f7, f8, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
la x2, scratch
li x3, 0xa72b9c28 # load x3 with value 0xa72b9c28
sw x3, 0(x2) # store 0xa72b9c28 in memory
flh f1, 0(x2) # load 0xa72b9c28 from memory into f1
fsub.h f21, f6, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
la x2, scratch
li x3, 0xd7e5d0c0 # load x3 with value 0xd7e5d0c0
sw x3, 0(x2) # store 0xd7e5d0c0 in memory
flh f1, 0(x2) # load 0xd7e5d0c0 from memory into f1
fsub.h f25, f2, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
la x2, scratch
li x3, 0xbc78879f # load x3 with value 0xbc78879f
sw x3, 0(x2) # store 0xbc78879f in memory
flh f13, 0(x2) # load 0xbc78879f from memory into f13
fsub.h f6, f19, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
la x2, scratch
li x3, 0xbdb4b1ef # load x3 with value 0xbdb4b1ef
sw x3, 0(x2) # store 0xbdb4b1ef in memory
flh f23, 0(x2) # load 0xbdb4b1ef from memory into f23
fsub.h f31, f6, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
la x2, scratch
li x3, 0x64d84cb0 # load x3 with value 0x64d84cb0
sw x3, 0(x2) # store 0x64d84cb0 in memory
flh f17, 0(x2) # load 0x64d84cb0 from memory into f17
fsub.h f11, f23, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
la x2, scratch
li x3, 0xfd2b0401 # load x3 with value 0xfd2b0401
sw x3, 0(x2) # store 0xfd2b0401 in memory
flh f29, 0(x2) # load 0xfd2b0401 from memory into f29
fsub.h f31, f7, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
la x2, scratch
li x3, 0x04f3abfb # load x3 with value 0x04f3abfb
sw x3, 0(x2) # store 0x04f3abfb in memory
flh f21, 0(x2) # load 0x04f3abfb from memory into f21
fsub.h f9, f14, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
la x2, scratch
li x3, 0xd2ee049d # load x3 with value 0xd2ee049d
sw x3, 0(x2) # store 0xd2ee049d in memory
flh f31, 0(x2) # load 0xd2ee049d from memory into f31
fsub.h f1, f9, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0xf13a2503 # load x3 with value 0xf13a2503
sw x3, 0(x2) # store 0xf13a2503 in memory
flh f1, 0(x2) # load 0xf13a2503 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fsub.h f19, f1, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0x2d16049c # load x3 with value 0x2d16049c
sw x3, 0(x2) # store 0x2d16049c in memory
flh f2, 0(x2) # load 0x2d16049c from memory into f2
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fsub.h f15, f2, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0xb66fe1a5 # load x3 with value 0xb66fe1a5
sw x3, 0(x2) # store 0xb66fe1a5 in memory
flh f23, 0(x2) # load 0xb66fe1a5 from memory into f23
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fsub.h f24, f23, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0xfc7209a7 # load x3 with value 0xfc7209a7
sw x3, 0(x2) # store 0xfc7209a7 in memory
flh f25, 0(x2) # load 0xfc7209a7 from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fsub.h f26, f25, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0x955fe076 # load x3 with value 0x955fe076
sw x3, 0(x2) # store 0x955fe076 in memory
flh f15, 0(x2) # load 0x955fe076 from memory into f15
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fsub.h f14, f15, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0x1adfc53f # load x3 with value 0x1adfc53f
sw x3, 0(x2) # store 0x1adfc53f in memory
flh f22, 0(x2) # load 0x1adfc53f from memory into f22
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fsub.h f11, f22, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0x0b738d0e # load x3 with value 0x0b738d0e
sw x3, 0(x2) # store 0x0b738d0e in memory
flh f6, 0(x2) # load 0x0b738d0e from memory into f6
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fsub.h f14, f6, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x000bc4a1 # load x3 with value 0x000bc4a1
sw x3, 0(x2) # store 0x000bc4a1 in memory
flh f5, 0(x2) # load 0x000bc4a1 from memory into f5
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fsub.h f13, f5, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0xd01a8eec # load x3 with value 0xd01a8eec
sw x3, 0(x2) # store 0xd01a8eec in memory
flh f18, 0(x2) # load 0xd01a8eec from memory into f18
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fsub.h f13, f18, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0x76af63c4 # load x3 with value 0x76af63c4
sw x3, 0(x2) # store 0x76af63c4 in memory
flh f15, 0(x2) # load 0x76af63c4 from memory into f15
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fsub.h f22, f15, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0xea30ab82 # load x3 with value 0xea30ab82
sw x3, 0(x2) # store 0xea30ab82 in memory
flh f31, 0(x2) # load 0xea30ab82 from memory into f31
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fsub.h f8, f31, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0x4ff1d476 # load x3 with value 0x4ff1d476
sw x3, 0(x2) # store 0x4ff1d476 in memory
flh f2, 0(x2) # load 0x4ff1d476 from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fsub.h f7, f2, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0x96ef9517 # load x3 with value 0x96ef9517
sw x3, 0(x2) # store 0x96ef9517 in memory
flh f1, 0(x2) # load 0x96ef9517 from memory into f1
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fsub.h f8, f1, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0x21b8bae6 # load x3 with value 0x21b8bae6
sw x3, 0(x2) # store 0x21b8bae6 in memory
flh f8, 0(x2) # load 0x21b8bae6 from memory into f8
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fsub.h f22, f8, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0xe6df6791 # load x3 with value 0xe6df6791
sw x3, 0(x2) # store 0xe6df6791 in memory
flh f3, 0(x2) # load 0xe6df6791 from memory into f3
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fsub.h f12, f3, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0xdeb9f88b # load x3 with value 0xdeb9f88b
sw x3, 0(x2) # store 0xdeb9f88b in memory
flh f10, 0(x2) # load 0xdeb9f88b from memory into f10
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fsub.h f14, f10, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x09e642e8 # load x3 with value 0x09e642e8
sw x3, 0(x2) # store 0x09e642e8 in memory
flh f23, 0(x2) # load 0x09e642e8 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fsub.h f30, f23, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0x578088b6 # load x3 with value 0x578088b6
sw x3, 0(x2) # store 0x578088b6 in memory
flh f5, 0(x2) # load 0x578088b6 from memory into f5
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fsub.h f1, f5, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0x92835d51 # load x3 with value 0x92835d51
sw x3, 0(x2) # store 0x92835d51 in memory
flh f21, 0(x2) # load 0x92835d51 from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fsub.h f9, f21, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0x8950e823 # load x3 with value 0x8950e823
sw x3, 0(x2) # store 0x8950e823 in memory
flh f24, 0(x2) # load 0x8950e823 from memory into f24
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fsub.h f29, f24, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0x91d5f5ca # load x3 with value 0x91d5f5ca
sw x3, 0(x2) # store 0x91d5f5ca in memory
flh f10, 0(x2) # load 0x91d5f5ca from memory into f10
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fsub.h f19, f10, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0xe973de67 # load x3 with value 0xe973de67
sw x3, 0(x2) # store 0xe973de67 in memory
flh f19, 0(x2) # load 0xe973de67 from memory into f19
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fsub.h f11, f19, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0x234001cb # load x3 with value 0x234001cb
sw x3, 0(x2) # store 0x234001cb in memory
flh f9, 0(x2) # load 0x234001cb from memory into f9
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
fsub.h f29, f9, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0x6418fda0 # load x3 with value 0x6418fda0
sw x3, 0(x2) # store 0x6418fda0 in memory
flh f19, 0(x2) # load 0x6418fda0 from memory into f19
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fsub.h f8, f19, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0x604357da # load x3 with value 0x604357da
sw x3, 0(x2) # store 0x604357da in memory
flh f2, 0(x2) # load 0x604357da from memory into f2
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fsub.h f18, f2, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0x6d13a075 # load x3 with value 0x6d13a075
sw x3, 0(x2) # store 0x6d13a075 in memory
flh f16, 0(x2) # load 0x6d13a075 from memory into f16
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fsub.h f27, f16, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0x202ca3cf # load x3 with value 0x202ca3cf
sw x3, 0(x2) # store 0x202ca3cf in memory
flh f27, 0(x2) # load 0x202ca3cf from memory into f27
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fsub.h f28, f27, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0xfdb40610 # load x3 with value 0xfdb40610
sw x3, 0(x2) # store 0xfdb40610 in memory
flh f12, 0(x2) # load 0xfdb40610 from memory into f12
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fsub.h f26, f12, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0x975c23a5 # load x3 with value 0x975c23a5
sw x3, 0(x2) # store 0x975c23a5 in memory
flh f0, 0(x2) # load 0x975c23a5 from memory into f0
la x2, scratch
li x3, 0x4ca03a7d # load x3 with value 0x4ca03a7d
sw x3, 0(x2) # store 0x4ca03a7d in memory
flh f9, 0(x2) # load 0x4ca03a7d from memory into f9
fsub.h f0, f0, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0x727988bf # load x3 with value 0x727988bf
sw x3, 0(x2) # store 0x727988bf in memory
flh f1, 0(x2) # load 0x727988bf from memory into f1
la x2, scratch
li x3, 0xa7925f46 # load x3 with value 0xa7925f46
sw x3, 0(x2) # store 0xa7925f46 in memory
flh f3, 0(x2) # load 0xa7925f46 from memory into f3
fsub.h f1, f1, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0x23920d8d # load x3 with value 0x23920d8d
sw x3, 0(x2) # store 0x23920d8d in memory
flh f2, 0(x2) # load 0x23920d8d from memory into f2
la x2, scratch
li x3, 0xdd787622 # load x3 with value 0xdd787622
sw x3, 0(x2) # store 0xdd787622 in memory
flh f1, 0(x2) # load 0xdd787622 from memory into f1
fsub.h f2, f2, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0xb98411cf # load x3 with value 0xb98411cf
sw x3, 0(x2) # store 0xb98411cf in memory
flh f3, 0(x2) # load 0xb98411cf from memory into f3
la x2, scratch
li x3, 0xfdd6e5f4 # load x3 with value 0xfdd6e5f4
sw x3, 0(x2) # store 0xfdd6e5f4 in memory
flh f19, 0(x2) # load 0xfdd6e5f4 from memory into f19
fsub.h f3, f3, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd7f9fb73 # load x3 with value 0xd7f9fb73
sw x3, 0(x2) # store 0xd7f9fb73 in memory
flh f4, 0(x2) # load 0xd7f9fb73 from memory into f4
la x2, scratch
li x3, 0x7a5352bb # load x3 with value 0x7a5352bb
sw x3, 0(x2) # store 0x7a5352bb in memory
flh f1, 0(x2) # load 0x7a5352bb from memory into f1
fsub.h f4, f4, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc2d65381 # load x3 with value 0xc2d65381
sw x3, 0(x2) # store 0xc2d65381 in memory
flh f5, 0(x2) # load 0xc2d65381 from memory into f5
la x2, scratch
li x3, 0x37b2f1be # load x3 with value 0x37b2f1be
sw x3, 0(x2) # store 0x37b2f1be in memory
flh f20, 0(x2) # load 0x37b2f1be from memory into f20
fsub.h f5, f5, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x27a81649 # load x3 with value 0x27a81649
sw x3, 0(x2) # store 0x27a81649 in memory
flh f6, 0(x2) # load 0x27a81649 from memory into f6
la x2, scratch
li x3, 0x86c8141c # load x3 with value 0x86c8141c
sw x3, 0(x2) # store 0x86c8141c in memory
flh f26, 0(x2) # load 0x86c8141c from memory into f26
fsub.h f6, f6, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xeba77650 # load x3 with value 0xeba77650
sw x3, 0(x2) # store 0xeba77650 in memory
flh f7, 0(x2) # load 0xeba77650 from memory into f7
la x2, scratch
li x3, 0xfeefb8fd # load x3 with value 0xfeefb8fd
sw x3, 0(x2) # store 0xfeefb8fd in memory
flh f19, 0(x2) # load 0xfeefb8fd from memory into f19
fsub.h f7, f7, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0x65af3ad0 # load x3 with value 0x65af3ad0
sw x3, 0(x2) # store 0x65af3ad0 in memory
flh f8, 0(x2) # load 0x65af3ad0 from memory into f8
la x2, scratch
li x3, 0x322ebc82 # load x3 with value 0x322ebc82
sw x3, 0(x2) # store 0x322ebc82 in memory
flh f18, 0(x2) # load 0x322ebc82 from memory into f18
fsub.h f8, f8, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0x32fba005 # load x3 with value 0x32fba005
sw x3, 0(x2) # store 0x32fba005 in memory
flh f9, 0(x2) # load 0x32fba005 from memory into f9
la x2, scratch
li x3, 0xc111f9ca # load x3 with value 0xc111f9ca
sw x3, 0(x2) # store 0xc111f9ca in memory
flh f22, 0(x2) # load 0xc111f9ca from memory into f22
fsub.h f9, f9, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0xe578d2d9 # load x3 with value 0xe578d2d9
sw x3, 0(x2) # store 0xe578d2d9 in memory
flh f10, 0(x2) # load 0xe578d2d9 from memory into f10
la x2, scratch
li x3, 0x99158fca # load x3 with value 0x99158fca
sw x3, 0(x2) # store 0x99158fca in memory
flh f15, 0(x2) # load 0x99158fca from memory into f15
fsub.h f10, f10, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0x668ef0be # load x3 with value 0x668ef0be
sw x3, 0(x2) # store 0x668ef0be in memory
flh f11, 0(x2) # load 0x668ef0be from memory into f11
la x2, scratch
li x3, 0x4ccab64e # load x3 with value 0x4ccab64e
sw x3, 0(x2) # store 0x4ccab64e in memory
flh f6, 0(x2) # load 0x4ccab64e from memory into f6
fsub.h f11, f11, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0x11beb996 # load x3 with value 0x11beb996
sw x3, 0(x2) # store 0x11beb996 in memory
flh f12, 0(x2) # load 0x11beb996 from memory into f12
la x2, scratch
li x3, 0xd1e4abc6 # load x3 with value 0xd1e4abc6
sw x3, 0(x2) # store 0xd1e4abc6 in memory
flh f3, 0(x2) # load 0xd1e4abc6 from memory into f3
fsub.h f12, f12, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0xc8d8b7a0 # load x3 with value 0xc8d8b7a0
sw x3, 0(x2) # store 0xc8d8b7a0 in memory
flh f13, 0(x2) # load 0xc8d8b7a0 from memory into f13
la x2, scratch
li x3, 0x343b0590 # load x3 with value 0x343b0590
sw x3, 0(x2) # store 0x343b0590 in memory
flh f13, 0(x2) # load 0x343b0590 from memory into f13
fsub.h f13, f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0x2d5e2793 # load x3 with value 0x2d5e2793
sw x3, 0(x2) # store 0x2d5e2793 in memory
flh f14, 0(x2) # load 0x2d5e2793 from memory into f14
la x2, scratch
li x3, 0x329a2b49 # load x3 with value 0x329a2b49
sw x3, 0(x2) # store 0x329a2b49 in memory
flh f24, 0(x2) # load 0x329a2b49 from memory into f24
fsub.h f14, f14, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x81191ce0 # load x3 with value 0x81191ce0
sw x3, 0(x2) # store 0x81191ce0 in memory
flh f15, 0(x2) # load 0x81191ce0 from memory into f15
la x2, scratch
li x3, 0xffb35aa8 # load x3 with value 0xffb35aa8
sw x3, 0(x2) # store 0xffb35aa8 in memory
flh f27, 0(x2) # load 0xffb35aa8 from memory into f27
fsub.h f15, f15, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0xd6ceb991 # load x3 with value 0xd6ceb991
sw x3, 0(x2) # store 0xd6ceb991 in memory
flh f16, 0(x2) # load 0xd6ceb991 from memory into f16
la x2, scratch
li x3, 0xa9009142 # load x3 with value 0xa9009142
sw x3, 0(x2) # store 0xa9009142 in memory
flh f19, 0(x2) # load 0xa9009142 from memory into f19
fsub.h f16, f16, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0x19cedd4d # load x3 with value 0x19cedd4d
sw x3, 0(x2) # store 0x19cedd4d in memory
flh f17, 0(x2) # load 0x19cedd4d from memory into f17
la x2, scratch
li x3, 0x8fc4e908 # load x3 with value 0x8fc4e908
sw x3, 0(x2) # store 0x8fc4e908 in memory
flh f22, 0(x2) # load 0x8fc4e908 from memory into f22
fsub.h f17, f17, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0x04bf44a2 # load x3 with value 0x04bf44a2
sw x3, 0(x2) # store 0x04bf44a2 in memory
flh f18, 0(x2) # load 0x04bf44a2 from memory into f18
la x2, scratch
li x3, 0x482593cf # load x3 with value 0x482593cf
sw x3, 0(x2) # store 0x482593cf in memory
flh f5, 0(x2) # load 0x482593cf from memory into f5
fsub.h f18, f18, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0x47abb161 # load x3 with value 0x47abb161
sw x3, 0(x2) # store 0x47abb161 in memory
flh f19, 0(x2) # load 0x47abb161 from memory into f19
la x2, scratch
li x3, 0x8b305e5b # load x3 with value 0x8b305e5b
sw x3, 0(x2) # store 0x8b305e5b in memory
flh f15, 0(x2) # load 0x8b305e5b from memory into f15
fsub.h f19, f19, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0xec868d72 # load x3 with value 0xec868d72
sw x3, 0(x2) # store 0xec868d72 in memory
flh f20, 0(x2) # load 0xec868d72 from memory into f20
la x2, scratch
li x3, 0x9e426771 # load x3 with value 0x9e426771
sw x3, 0(x2) # store 0x9e426771 in memory
flh f7, 0(x2) # load 0x9e426771 from memory into f7
fsub.h f20, f20, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0x0ef0d4be # load x3 with value 0x0ef0d4be
sw x3, 0(x2) # store 0x0ef0d4be in memory
flh f21, 0(x2) # load 0x0ef0d4be from memory into f21
la x2, scratch
li x3, 0x670b5f6c # load x3 with value 0x670b5f6c
sw x3, 0(x2) # store 0x670b5f6c in memory
flh f17, 0(x2) # load 0x670b5f6c from memory into f17
fsub.h f21, f21, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x93b8b577 # load x3 with value 0x93b8b577
sw x3, 0(x2) # store 0x93b8b577 in memory
flh f22, 0(x2) # load 0x93b8b577 from memory into f22
la x2, scratch
li x3, 0x436957fa # load x3 with value 0x436957fa
sw x3, 0(x2) # store 0x436957fa in memory
flh f1, 0(x2) # load 0x436957fa from memory into f1
fsub.h f22, f22, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0x91424726 # load x3 with value 0x91424726
sw x3, 0(x2) # store 0x91424726 in memory
flh f23, 0(x2) # load 0x91424726 from memory into f23
la x2, scratch
li x3, 0x35006046 # load x3 with value 0x35006046
sw x3, 0(x2) # store 0x35006046 in memory
flh f30, 0(x2) # load 0x35006046 from memory into f30
fsub.h f23, f23, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0x1c33d24c # load x3 with value 0x1c33d24c
sw x3, 0(x2) # store 0x1c33d24c in memory
flh f24, 0(x2) # load 0x1c33d24c from memory into f24
la x2, scratch
li x3, 0xe93a8310 # load x3 with value 0xe93a8310
sw x3, 0(x2) # store 0xe93a8310 in memory
flh f15, 0(x2) # load 0xe93a8310 from memory into f15
fsub.h f24, f24, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0x311543af # load x3 with value 0x311543af
sw x3, 0(x2) # store 0x311543af in memory
flh f25, 0(x2) # load 0x311543af from memory into f25
la x2, scratch
li x3, 0x37974432 # load x3 with value 0x37974432
sw x3, 0(x2) # store 0x37974432 in memory
flh f3, 0(x2) # load 0x37974432 from memory into f3
fsub.h f25, f25, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0xc5af9583 # load x3 with value 0xc5af9583
sw x3, 0(x2) # store 0xc5af9583 in memory
flh f26, 0(x2) # load 0xc5af9583 from memory into f26
la x2, scratch
li x3, 0x7f65dbae # load x3 with value 0x7f65dbae
sw x3, 0(x2) # store 0x7f65dbae in memory
flh f29, 0(x2) # load 0x7f65dbae from memory into f29
fsub.h f26, f26, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0xd1148463 # load x3 with value 0xd1148463
sw x3, 0(x2) # store 0xd1148463 in memory
flh f27, 0(x2) # load 0xd1148463 from memory into f27
la x2, scratch
li x3, 0xbebc0f04 # load x3 with value 0xbebc0f04
sw x3, 0(x2) # store 0xbebc0f04 in memory
flh f18, 0(x2) # load 0xbebc0f04 from memory into f18
fsub.h f27, f27, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0xdebbbc95 # load x3 with value 0xdebbbc95
sw x3, 0(x2) # store 0xdebbbc95 in memory
flh f28, 0(x2) # load 0xdebbbc95 from memory into f28
la x2, scratch
li x3, 0x0699edd7 # load x3 with value 0x0699edd7
sw x3, 0(x2) # store 0x0699edd7 in memory
flh f12, 0(x2) # load 0x0699edd7 from memory into f12
fsub.h f28, f28, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0xa5f88333 # load x3 with value 0xa5f88333
sw x3, 0(x2) # store 0xa5f88333 in memory
flh f29, 0(x2) # load 0xa5f88333 from memory into f29
la x2, scratch
li x3, 0xae759a67 # load x3 with value 0xae759a67
sw x3, 0(x2) # store 0xae759a67 in memory
flh f30, 0(x2) # load 0xae759a67 from memory into f30
fsub.h f29, f29, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0x0d3e1cea # load x3 with value 0x0d3e1cea
sw x3, 0(x2) # store 0x0d3e1cea in memory
flh f30, 0(x2) # load 0x0d3e1cea from memory into f30
la x2, scratch
li x3, 0x611a9b77 # load x3 with value 0x611a9b77
sw x3, 0(x2) # store 0x611a9b77 in memory
flh f15, 0(x2) # load 0x611a9b77 from memory into f15
fsub.h f30, f30, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x96e98975 # load x3 with value 0x96e98975
sw x3, 0(x2) # store 0x96e98975 in memory
flh f31, 0(x2) # load 0x96e98975 from memory into f31
la x2, scratch
li x3, 0xe083b617 # load x3 with value 0xe083b617
sw x3, 0(x2) # store 0xe083b617 in memory
flh f19, 0(x2) # load 0xe083b617 from memory into f19
fsub.h f31, f31, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0xa5a49d41 # load x3 with value 0xa5a49d41
sw x3, 0(x2) # store 0xa5a49d41 in memory
flh f28, 0(x2) # load 0xa5a49d41 from memory into f28
la x2, scratch
li x3, 0x9e7d9920 # load x3 with value 0x9e7d9920
sw x3, 0(x2) # store 0x9e7d9920 in memory
flh f0, 0(x2) # load 0x9e7d9920 from memory into f0
fsub.h f0, f28, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0xbe77821d # load x3 with value 0xbe77821d
sw x3, 0(x2) # store 0xbe77821d in memory
flh f2, 0(x2) # load 0xbe77821d from memory into f2
la x2, scratch
li x3, 0x9f24a4d5 # load x3 with value 0x9f24a4d5
sw x3, 0(x2) # store 0x9f24a4d5 in memory
flh f1, 0(x2) # load 0x9f24a4d5 from memory into f1
fsub.h f1, f2, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0x407d619b # load x3 with value 0x407d619b
sw x3, 0(x2) # store 0x407d619b in memory
flh f7, 0(x2) # load 0x407d619b from memory into f7
la x2, scratch
li x3, 0x3cf70178 # load x3 with value 0x3cf70178
sw x3, 0(x2) # store 0x3cf70178 in memory
flh f2, 0(x2) # load 0x3cf70178 from memory into f2
fsub.h f2, f7, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0x88ee09e4 # load x3 with value 0x88ee09e4
sw x3, 0(x2) # store 0x88ee09e4 in memory
flh f30, 0(x2) # load 0x88ee09e4 from memory into f30
la x2, scratch
li x3, 0x2ffa0101 # load x3 with value 0x2ffa0101
sw x3, 0(x2) # store 0x2ffa0101 in memory
flh f3, 0(x2) # load 0x2ffa0101 from memory into f3
fsub.h f3, f30, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3217f169 # load x3 with value 0x3217f169
sw x3, 0(x2) # store 0x3217f169 in memory
flh f15, 0(x2) # load 0x3217f169 from memory into f15
la x2, scratch
li x3, 0x8bc8c030 # load x3 with value 0x8bc8c030
sw x3, 0(x2) # store 0x8bc8c030 in memory
flh f4, 0(x2) # load 0x8bc8c030 from memory into f4
fsub.h f4, f15, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x20cf1aad # load x3 with value 0x20cf1aad
sw x3, 0(x2) # store 0x20cf1aad in memory
flh f17, 0(x2) # load 0x20cf1aad from memory into f17
la x2, scratch
li x3, 0x3a955aa2 # load x3 with value 0x3a955aa2
sw x3, 0(x2) # store 0x3a955aa2 in memory
flh f5, 0(x2) # load 0x3a955aa2 from memory into f5
fsub.h f5, f17, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4ffd2364 # load x3 with value 0x4ffd2364
sw x3, 0(x2) # store 0x4ffd2364 in memory
flh f21, 0(x2) # load 0x4ffd2364 from memory into f21
la x2, scratch
li x3, 0x3a9b44af # load x3 with value 0x3a9b44af
sw x3, 0(x2) # store 0x3a9b44af in memory
flh f6, 0(x2) # load 0x3a9b44af from memory into f6
fsub.h f6, f21, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa0314c97 # load x3 with value 0xa0314c97
sw x3, 0(x2) # store 0xa0314c97 in memory
flh f25, 0(x2) # load 0xa0314c97 from memory into f25
la x2, scratch
li x3, 0x44c989e0 # load x3 with value 0x44c989e0
sw x3, 0(x2) # store 0x44c989e0 in memory
flh f7, 0(x2) # load 0x44c989e0 from memory into f7
fsub.h f7, f25, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0x7af5cc7f # load x3 with value 0x7af5cc7f
sw x3, 0(x2) # store 0x7af5cc7f in memory
flh f29, 0(x2) # load 0x7af5cc7f from memory into f29
la x2, scratch
li x3, 0x5ad93912 # load x3 with value 0x5ad93912
sw x3, 0(x2) # store 0x5ad93912 in memory
flh f8, 0(x2) # load 0x5ad93912 from memory into f8
fsub.h f8, f29, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0xa5a34988 # load x3 with value 0xa5a34988
sw x3, 0(x2) # store 0xa5a34988 in memory
flh f17, 0(x2) # load 0xa5a34988 from memory into f17
la x2, scratch
li x3, 0x3d669e2d # load x3 with value 0x3d669e2d
sw x3, 0(x2) # store 0x3d669e2d in memory
flh f9, 0(x2) # load 0x3d669e2d from memory into f9
fsub.h f9, f17, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0xf5b2bd65 # load x3 with value 0xf5b2bd65
sw x3, 0(x2) # store 0xf5b2bd65 in memory
flh f22, 0(x2) # load 0xf5b2bd65 from memory into f22
la x2, scratch
li x3, 0x20f6ea27 # load x3 with value 0x20f6ea27
sw x3, 0(x2) # store 0x20f6ea27 in memory
flh f10, 0(x2) # load 0x20f6ea27 from memory into f10
fsub.h f10, f22, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0xd30822ff # load x3 with value 0xd30822ff
sw x3, 0(x2) # store 0xd30822ff in memory
flh f20, 0(x2) # load 0xd30822ff from memory into f20
la x2, scratch
li x3, 0xf1e5a48a # load x3 with value 0xf1e5a48a
sw x3, 0(x2) # store 0xf1e5a48a in memory
flh f11, 0(x2) # load 0xf1e5a48a from memory into f11
fsub.h f11, f20, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0x3b98254c # load x3 with value 0x3b98254c
sw x3, 0(x2) # store 0x3b98254c in memory
flh f8, 0(x2) # load 0x3b98254c from memory into f8
la x2, scratch
li x3, 0x140406d5 # load x3 with value 0x140406d5
sw x3, 0(x2) # store 0x140406d5 in memory
flh f12, 0(x2) # load 0x140406d5 from memory into f12
fsub.h f12, f8, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0xa6738a6a # load x3 with value 0xa6738a6a
sw x3, 0(x2) # store 0xa6738a6a in memory
flh f21, 0(x2) # load 0xa6738a6a from memory into f21
la x2, scratch
li x3, 0xf84fca6b # load x3 with value 0xf84fca6b
sw x3, 0(x2) # store 0xf84fca6b in memory
flh f13, 0(x2) # load 0xf84fca6b from memory into f13
fsub.h f13, f21, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0x79251426 # load x3 with value 0x79251426
sw x3, 0(x2) # store 0x79251426 in memory
flh f26, 0(x2) # load 0x79251426 from memory into f26
la x2, scratch
li x3, 0x88530633 # load x3 with value 0x88530633
sw x3, 0(x2) # store 0x88530633 in memory
flh f14, 0(x2) # load 0x88530633 from memory into f14
fsub.h f14, f26, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x193d8141 # load x3 with value 0x193d8141
sw x3, 0(x2) # store 0x193d8141 in memory
flh f16, 0(x2) # load 0x193d8141 from memory into f16
la x2, scratch
li x3, 0xaad6b9df # load x3 with value 0xaad6b9df
sw x3, 0(x2) # store 0xaad6b9df in memory
flh f15, 0(x2) # load 0xaad6b9df from memory into f15
fsub.h f15, f16, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0x79a736e7 # load x3 with value 0x79a736e7
sw x3, 0(x2) # store 0x79a736e7 in memory
flh f19, 0(x2) # load 0x79a736e7 from memory into f19
la x2, scratch
li x3, 0x1d9e5f77 # load x3 with value 0x1d9e5f77
sw x3, 0(x2) # store 0x1d9e5f77 in memory
flh f16, 0(x2) # load 0x1d9e5f77 from memory into f16
fsub.h f16, f19, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0xcdf97b54 # load x3 with value 0xcdf97b54
sw x3, 0(x2) # store 0xcdf97b54 in memory
flh f13, 0(x2) # load 0xcdf97b54 from memory into f13
la x2, scratch
li x3, 0xe7dc69db # load x3 with value 0xe7dc69db
sw x3, 0(x2) # store 0xe7dc69db in memory
flh f17, 0(x2) # load 0xe7dc69db from memory into f17
fsub.h f17, f13, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0x7497ee4b # load x3 with value 0x7497ee4b
sw x3, 0(x2) # store 0x7497ee4b in memory
flh f9, 0(x2) # load 0x7497ee4b from memory into f9
la x2, scratch
li x3, 0x306f21fc # load x3 with value 0x306f21fc
sw x3, 0(x2) # store 0x306f21fc in memory
flh f18, 0(x2) # load 0x306f21fc from memory into f18
fsub.h f18, f9, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0x16869221 # load x3 with value 0x16869221
sw x3, 0(x2) # store 0x16869221 in memory
flh f9, 0(x2) # load 0x16869221 from memory into f9
la x2, scratch
li x3, 0x395c9421 # load x3 with value 0x395c9421
sw x3, 0(x2) # store 0x395c9421 in memory
flh f19, 0(x2) # load 0x395c9421 from memory into f19
fsub.h f19, f9, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0x97222270 # load x3 with value 0x97222270
sw x3, 0(x2) # store 0x97222270 in memory
flh f21, 0(x2) # load 0x97222270 from memory into f21
la x2, scratch
li x3, 0x00b408c1 # load x3 with value 0x00b408c1
sw x3, 0(x2) # store 0x00b408c1 in memory
flh f20, 0(x2) # load 0x00b408c1 from memory into f20
fsub.h f20, f21, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0x1fff05b3 # load x3 with value 0x1fff05b3
sw x3, 0(x2) # store 0x1fff05b3 in memory
flh f27, 0(x2) # load 0x1fff05b3 from memory into f27
la x2, scratch
li x3, 0x360b9556 # load x3 with value 0x360b9556
sw x3, 0(x2) # store 0x360b9556 in memory
flh f21, 0(x2) # load 0x360b9556 from memory into f21
fsub.h f21, f27, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x59bef951 # load x3 with value 0x59bef951
sw x3, 0(x2) # store 0x59bef951 in memory
flh f19, 0(x2) # load 0x59bef951 from memory into f19
la x2, scratch
li x3, 0xaf2ca0e7 # load x3 with value 0xaf2ca0e7
sw x3, 0(x2) # store 0xaf2ca0e7 in memory
flh f22, 0(x2) # load 0xaf2ca0e7 from memory into f22
fsub.h f22, f19, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0x84218b16 # load x3 with value 0x84218b16
sw x3, 0(x2) # store 0x84218b16 in memory
flh f11, 0(x2) # load 0x84218b16 from memory into f11
la x2, scratch
li x3, 0x90a049f9 # load x3 with value 0x90a049f9
sw x3, 0(x2) # store 0x90a049f9 in memory
flh f23, 0(x2) # load 0x90a049f9 from memory into f23
fsub.h f23, f11, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0xf2be66e8 # load x3 with value 0xf2be66e8
sw x3, 0(x2) # store 0xf2be66e8 in memory
flh f7, 0(x2) # load 0xf2be66e8 from memory into f7
la x2, scratch
li x3, 0x73dbcbfd # load x3 with value 0x73dbcbfd
sw x3, 0(x2) # store 0x73dbcbfd in memory
flh f24, 0(x2) # load 0x73dbcbfd from memory into f24
fsub.h f24, f7, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0xae6249e2 # load x3 with value 0xae6249e2
sw x3, 0(x2) # store 0xae6249e2 in memory
flh f25, 0(x2) # load 0xae6249e2 from memory into f25
la x2, scratch
li x3, 0x1dd5c1e6 # load x3 with value 0x1dd5c1e6
sw x3, 0(x2) # store 0x1dd5c1e6 in memory
flh f25, 0(x2) # load 0x1dd5c1e6 from memory into f25
fsub.h f25, f25, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0xdc79a4a5 # load x3 with value 0xdc79a4a5
sw x3, 0(x2) # store 0xdc79a4a5 in memory
flh f10, 0(x2) # load 0xdc79a4a5 from memory into f10
la x2, scratch
li x3, 0xd428992e # load x3 with value 0xd428992e
sw x3, 0(x2) # store 0xd428992e in memory
flh f26, 0(x2) # load 0xd428992e from memory into f26
fsub.h f26, f10, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0x1f658175 # load x3 with value 0x1f658175
sw x3, 0(x2) # store 0x1f658175 in memory
flh f21, 0(x2) # load 0x1f658175 from memory into f21
la x2, scratch
li x3, 0xcaf5ad26 # load x3 with value 0xcaf5ad26
sw x3, 0(x2) # store 0xcaf5ad26 in memory
flh f27, 0(x2) # load 0xcaf5ad26 from memory into f27
fsub.h f27, f21, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x9a7b024d # load x3 with value 0x9a7b024d
sw x3, 0(x2) # store 0x9a7b024d in memory
flh f22, 0(x2) # load 0x9a7b024d from memory into f22
la x2, scratch
li x3, 0xc20a6774 # load x3 with value 0xc20a6774
sw x3, 0(x2) # store 0xc20a6774 in memory
flh f28, 0(x2) # load 0xc20a6774 from memory into f28
fsub.h f28, f22, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x0dd456fb # load x3 with value 0x0dd456fb
sw x3, 0(x2) # store 0x0dd456fb in memory
flh f9, 0(x2) # load 0x0dd456fb from memory into f9
la x2, scratch
li x3, 0x8d4dec99 # load x3 with value 0x8d4dec99
sw x3, 0(x2) # store 0x8d4dec99 in memory
flh f29, 0(x2) # load 0x8d4dec99 from memory into f29
fsub.h f29, f9, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0xedc21b2b # load x3 with value 0xedc21b2b
sw x3, 0(x2) # store 0xedc21b2b in memory
flh f18, 0(x2) # load 0xedc21b2b from memory into f18
la x2, scratch
li x3, 0xaf9747a6 # load x3 with value 0xaf9747a6
sw x3, 0(x2) # store 0xaf9747a6 in memory
flh f30, 0(x2) # load 0xaf9747a6 from memory into f30
fsub.h f30, f18, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x5121fd32 # load x3 with value 0x5121fd32
sw x3, 0(x2) # store 0x5121fd32 in memory
flh f27, 0(x2) # load 0x5121fd32 from memory into f27
la x2, scratch
li x3, 0xe9ff7160 # load x3 with value 0xe9ff7160
sw x3, 0(x2) # store 0xe9ff7160 in memory
flh f31, 0(x2) # load 0xe9ff7160 from memory into f31
fsub.h f31, f27, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0x0797d1b1 # load x3 with value 0x0797d1b1
sw x3, 0(x2) # store 0x0797d1b1 in memory
flh f26, 0(x2) # load 0x0797d1b1 from memory into f26
la x2, scratch
li x3, 0x6e284040 # load x3 with value 0x6e284040
sw x3, 0(x2) # store 0x6e284040 in memory
flh f18, 0(x2) # load 0x6e284040 from memory into f18
fsub.h f11, f26, f18, dyn # perform operation
fsub.h f11, f26, f18, rdn # perform operation
fsub.h f11, f26, f18, rmm # perform operation
fsub.h f11, f26, f18, rne # perform operation
fsub.h f11, f26, f18, rtz # perform operation
fsub.h f11, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f26, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fsub.h f3, f1, f9, dyn # perform operation
fsub.h f3, f1, f9, rdn # perform operation
fsub.h f3, f1, f9, rmm # perform operation
fsub.h f3, f1, f9, rne # perform operation
fsub.h f3, f1, f9, rtz # perform operation
fsub.h f3, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fsub.h f22, f21, f23, dyn # perform operation
fsub.h f22, f21, f23, rdn # perform operation
fsub.h f22, f21, f23, rmm # perform operation
fsub.h f22, f21, f23, rne # perform operation
fsub.h f22, f21, f23, rtz # perform operation
fsub.h f22, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fsub.h f27, f31, f11, dyn # perform operation
fsub.h f27, f31, f11, rdn # perform operation
fsub.h f27, f31, f11, rmm # perform operation
fsub.h f27, f31, f11, rne # perform operation
fsub.h f27, f31, f11, rtz # perform operation
fsub.h f27, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fsub.h f14, f8, f26, dyn # perform operation
fsub.h f14, f8, f26, rdn # perform operation
fsub.h f14, f8, f26, rmm # perform operation
fsub.h f14, f8, f26, rne # perform operation
fsub.h f14, f8, f26, rtz # perform operation
fsub.h f14, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fsub.h f20, f28, f19, dyn # perform operation
fsub.h f20, f28, f19, rdn # perform operation
fsub.h f20, f28, f19, rmm # perform operation
fsub.h f20, f28, f19, rne # perform operation
fsub.h f20, f28, f19, rtz # perform operation
fsub.h f20, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fsub.h f25, f10, f29, dyn # perform operation
fsub.h f25, f10, f29, rdn # perform operation
fsub.h f25, f10, f29, rmm # perform operation
fsub.h f25, f10, f29, rne # perform operation
fsub.h f25, f10, f29, rtz # perform operation
fsub.h f25, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f10, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fsub.h f13, f14, f17, dyn # perform operation
fsub.h f13, f14, f17, rdn # perform operation
fsub.h f13, f14, f17, rmm # perform operation
fsub.h f13, f14, f17, rne # perform operation
fsub.h f13, f14, f17, rtz # perform operation
fsub.h f13, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fsub.h f20, f13, f15, dyn # perform operation
fsub.h f20, f13, f15, rdn # perform operation
fsub.h f20, f13, f15, rmm # perform operation
fsub.h f20, f13, f15, rne # perform operation
fsub.h f20, f13, f15, rtz # perform operation
fsub.h f20, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f13, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fsub.h f5, f28, f14, dyn # perform operation
fsub.h f5, f28, f14, rdn # perform operation
fsub.h f5, f28, f14, rmm # perform operation
fsub.h f5, f28, f14, rne # perform operation
fsub.h f5, f28, f14, rtz # perform operation
fsub.h f5, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fsub.h f28, f23, f30, dyn # perform operation
fsub.h f28, f23, f30, rdn # perform operation
fsub.h f28, f23, f30, rmm # perform operation
fsub.h f28, f23, f30, rne # perform operation
fsub.h f28, f23, f30, rtz # perform operation
fsub.h f28, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fsub.h f13, f7, f30, dyn # perform operation
fsub.h f13, f7, f30, rdn # perform operation
fsub.h f13, f7, f30, rmm # perform operation
fsub.h f13, f7, f30, rne # perform operation
fsub.h f13, f7, f30, rtz # perform operation
fsub.h f13, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fsub.h f19, f15, f11, dyn # perform operation
fsub.h f19, f15, f11, rdn # perform operation
fsub.h f19, f15, f11, rmm # perform operation
fsub.h f19, f15, f11, rne # perform operation
fsub.h f19, f15, f11, rtz # perform operation
fsub.h f19, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f15, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fsub.h f21, f23, f22, dyn # perform operation
fsub.h f21, f23, f22, rdn # perform operation
fsub.h f21, f23, f22, rmm # perform operation
fsub.h f21, f23, f22, rne # perform operation
fsub.h f21, f23, f22, rtz # perform operation
fsub.h f21, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fsub.h f31, f28, f15, dyn # perform operation
fsub.h f31, f28, f15, rdn # perform operation
fsub.h f31, f28, f15, rmm # perform operation
fsub.h f31, f28, f15, rne # perform operation
fsub.h f31, f28, f15, rtz # perform operation
fsub.h f31, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
fsub.h f7, f29, f21, dyn # perform operation
fsub.h f7, f29, f21, rdn # perform operation
fsub.h f7, f29, f21, rmm # perform operation
fsub.h f7, f29, f21, rne # perform operation
fsub.h f7, f29, f21, rtz # perform operation
fsub.h f7, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f29, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fsub.h f16, f10, f28, dyn # perform operation
fsub.h f16, f10, f28, rdn # perform operation
fsub.h f16, f10, f28, rmm # perform operation
fsub.h f16, f10, f28, rne # perform operation
fsub.h f16, f10, f28, rtz # perform operation
fsub.h f16, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fsub.h f9, f7, f21, dyn # perform operation
fsub.h f9, f7, f21, rdn # perform operation
fsub.h f9, f7, f21, rmm # perform operation
fsub.h f9, f7, f21, rne # perform operation
fsub.h f9, f7, f21, rtz # perform operation
fsub.h f9, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fsub.h f24, f31, f28, dyn # perform operation
fsub.h f24, f31, f28, rdn # perform operation
fsub.h f24, f31, f28, rmm # perform operation
fsub.h f24, f31, f28, rne # perform operation
fsub.h f24, f31, f28, rtz # perform operation
fsub.h f24, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fsub.h f15, f28, f17, dyn # perform operation
fsub.h f15, f28, f17, rdn # perform operation
fsub.h f15, f28, f17, rmm # perform operation
fsub.h f15, f28, f17, rne # perform operation
fsub.h f15, f28, f17, rtz # perform operation
fsub.h f15, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fsub.h f19, f13, f31, dyn # perform operation
fsub.h f19, f13, f31, rdn # perform operation
fsub.h f19, f13, f31, rmm # perform operation
fsub.h f19, f13, f31, rne # perform operation
fsub.h f19, f13, f31, rtz # perform operation
fsub.h f19, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fsub.h f24, f10, f20, dyn # perform operation
fsub.h f24, f10, f20, rdn # perform operation
fsub.h f24, f10, f20, rmm # perform operation
fsub.h f24, f10, f20, rne # perform operation
fsub.h f24, f10, f20, rtz # perform operation
fsub.h f24, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fsub.h f11, f16, f12, dyn # perform operation
fsub.h f11, f16, f12, rdn # perform operation
fsub.h f11, f16, f12, rmm # perform operation
fsub.h f11, f16, f12, rne # perform operation
fsub.h f11, f16, f12, rtz # perform operation
fsub.h f11, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
fsub.h f9, f30, f18, dyn # perform operation
fsub.h f9, f30, f18, rdn # perform operation
fsub.h f9, f30, f18, rmm # perform operation
fsub.h f9, f30, f18, rne # perform operation
fsub.h f9, f30, f18, rtz # perform operation
fsub.h f9, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f30, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fsub.h f14, f25, f11, dyn # perform operation
fsub.h f14, f25, f11, rdn # perform operation
fsub.h f14, f25, f11, rmm # perform operation
fsub.h f14, f25, f11, rne # perform operation
fsub.h f14, f25, f11, rtz # perform operation
fsub.h f14, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fsub.h f8, f28, f14, dyn # perform operation
fsub.h f8, f28, f14, rdn # perform operation
fsub.h f8, f28, f14, rmm # perform operation
fsub.h f8, f28, f14, rne # perform operation
fsub.h f8, f28, f14, rtz # perform operation
fsub.h f8, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f15, 0(x2) # load 0x0000fc01 from memory into f15
fsub.h f26, f27, f15, dyn # perform operation
fsub.h f26, f27, f15, rdn # perform operation
fsub.h f26, f27, f15, rmm # perform operation
fsub.h f26, f27, f15, rne # perform operation
fsub.h f26, f27, f15, rtz # perform operation
fsub.h f26, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fsub.h f15, f11, f31, dyn # perform operation
fsub.h f15, f11, f31, rdn # perform operation
fsub.h f15, f11, f31, rmm # perform operation
fsub.h f15, f11, f31, rne # perform operation
fsub.h f15, f11, f31, rtz # perform operation
fsub.h f15, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fsub.h f11, f19, f9, dyn # perform operation
fsub.h f11, f19, f9, rdn # perform operation
fsub.h f11, f19, f9, rmm # perform operation
fsub.h f11, f19, f9, rne # perform operation
fsub.h f11, f19, f9, rtz # perform operation
fsub.h f11, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f19, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fsub.h f11, f31, f10, dyn # perform operation
fsub.h f11, f31, f10, rdn # perform operation
fsub.h f11, f31, f10, rmm # perform operation
fsub.h f11, f31, f10, rne # perform operation
fsub.h f11, f31, f10, rtz # perform operation
fsub.h f11, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fsub.h f31, f7, f12, dyn # perform operation
fsub.h f31, f7, f12, rdn # perform operation
fsub.h f31, f7, f12, rmm # perform operation
fsub.h f31, f7, f12, rne # perform operation
fsub.h f31, f7, f12, rtz # perform operation
fsub.h f31, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f7, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fsub.h f13, f25, f12, dyn # perform operation
fsub.h f13, f25, f12, rdn # perform operation
fsub.h f13, f25, f12, rmm # perform operation
fsub.h f13, f25, f12, rne # perform operation
fsub.h f13, f25, f12, rtz # perform operation
fsub.h f13, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f25, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fsub.h f11, f25, f21, dyn # perform operation
fsub.h f11, f25, f21, rdn # perform operation
fsub.h f11, f25, f21, rmm # perform operation
fsub.h f11, f25, f21, rne # perform operation
fsub.h f11, f25, f21, rtz # perform operation
fsub.h f11, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fsub.h f2, f24, f17, dyn # perform operation
fsub.h f2, f24, f17, rdn # perform operation
fsub.h f2, f24, f17, rmm # perform operation
fsub.h f2, f24, f17, rne # perform operation
fsub.h f2, f24, f17, rtz # perform operation
fsub.h f2, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fsub.h f20, f13, f16, dyn # perform operation
fsub.h f20, f13, f16, rdn # perform operation
fsub.h f20, f13, f16, rmm # perform operation
fsub.h f20, f13, f16, rne # perform operation
fsub.h f20, f13, f16, rtz # perform operation
fsub.h f20, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fsub.h f10, f28, f12, dyn # perform operation
fsub.h f10, f28, f12, rdn # perform operation
fsub.h f10, f28, f12, rmm # perform operation
fsub.h f10, f28, f12, rne # perform operation
fsub.h f10, f28, f12, rtz # perform operation
fsub.h f10, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fsub.h f5, f11, f17, dyn # perform operation
fsub.h f5, f11, f17, rdn # perform operation
fsub.h f5, f11, f17, rmm # perform operation
fsub.h f5, f11, f17, rne # perform operation
fsub.h f5, f11, f17, rtz # perform operation
fsub.h f5, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fsub.h f17, f18, f23, dyn # perform operation
fsub.h f17, f18, f23, rdn # perform operation
fsub.h f17, f18, f23, rmm # perform operation
fsub.h f17, f18, f23, rne # perform operation
fsub.h f17, f18, f23, rtz # perform operation
fsub.h f17, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fsub.h f11, f5, f12, dyn # perform operation
fsub.h f11, f5, f12, rdn # perform operation
fsub.h f11, f5, f12, rmm # perform operation
fsub.h f11, f5, f12, rne # perform operation
fsub.h f11, f5, f12, rtz # perform operation
fsub.h f11, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fsub.h f18, f6, f1, dyn # perform operation
fsub.h f18, f6, f1, rdn # perform operation
fsub.h f18, f6, f1, rmm # perform operation
fsub.h f18, f6, f1, rne # perform operation
fsub.h f18, f6, f1, rtz # perform operation
fsub.h f18, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fsub.h f19, f30, f31, dyn # perform operation
fsub.h f19, f30, f31, rdn # perform operation
fsub.h f19, f30, f31, rmm # perform operation
fsub.h f19, f30, f31, rne # perform operation
fsub.h f19, f30, f31, rtz # perform operation
fsub.h f19, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fsub.h f13, f30, f22, dyn # perform operation
fsub.h f13, f30, f22, rdn # perform operation
fsub.h f13, f30, f22, rmm # perform operation
fsub.h f13, f30, f22, rne # perform operation
fsub.h f13, f30, f22, rtz # perform operation
fsub.h f13, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fsub.h f18, f2, f22, dyn # perform operation
fsub.h f18, f2, f22, rdn # perform operation
fsub.h f18, f2, f22, rmm # perform operation
fsub.h f18, f2, f22, rne # perform operation
fsub.h f18, f2, f22, rtz # perform operation
fsub.h f18, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fsub.h f25, f3, f15, dyn # perform operation
fsub.h f25, f3, f15, rdn # perform operation
fsub.h f25, f3, f15, rmm # perform operation
fsub.h f25, f3, f15, rne # perform operation
fsub.h f25, f3, f15, rtz # perform operation
fsub.h f25, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fsub.h f16, f23, f1, dyn # perform operation
fsub.h f16, f23, f1, rdn # perform operation
fsub.h f16, f23, f1, rmm # perform operation
fsub.h f16, f23, f1, rne # perform operation
fsub.h f16, f23, f1, rtz # perform operation
fsub.h f16, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fsub.h f6, f13, f9, dyn # perform operation
fsub.h f6, f13, f9, rdn # perform operation
fsub.h f6, f13, f9, rmm # perform operation
fsub.h f6, f13, f9, rne # perform operation
fsub.h f6, f13, f9, rtz # perform operation
fsub.h f6, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fsub.h f26, f15, f18, dyn # perform operation
fsub.h f26, f15, f18, rdn # perform operation
fsub.h f26, f15, f18, rmm # perform operation
fsub.h f26, f15, f18, rne # perform operation
fsub.h f26, f15, f18, rtz # perform operation
fsub.h f26, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fsub.h f30, f6, f22, dyn # perform operation
fsub.h f30, f6, f22, rdn # perform operation
fsub.h f30, f6, f22, rmm # perform operation
fsub.h f30, f6, f22, rne # perform operation
fsub.h f30, f6, f22, rtz # perform operation
fsub.h f30, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f6, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fsub.h f11, f24, f23, dyn # perform operation
fsub.h f11, f24, f23, rdn # perform operation
fsub.h f11, f24, f23, rmm # perform operation
fsub.h f11, f24, f23, rne # perform operation
fsub.h f11, f24, f23, rtz # perform operation
fsub.h f11, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fsub.h f31, f9, f10, dyn # perform operation
fsub.h f31, f9, f10, rdn # perform operation
fsub.h f31, f9, f10, rmm # perform operation
fsub.h f31, f9, f10, rne # perform operation
fsub.h f31, f9, f10, rtz # perform operation
fsub.h f31, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f9, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fsub.h f23, f6, f27, dyn # perform operation
fsub.h f23, f6, f27, rdn # perform operation
fsub.h f23, f6, f27, rmm # perform operation
fsub.h f23, f6, f27, rne # perform operation
fsub.h f23, f6, f27, rtz # perform operation
fsub.h f23, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
fsub.h f2, f5, f3, dyn # perform operation
fsub.h f2, f5, f3, rdn # perform operation
fsub.h f2, f5, f3, rmm # perform operation
fsub.h f2, f5, f3, rne # perform operation
fsub.h f2, f5, f3, rtz # perform operation
fsub.h f2, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fsub.h f1, f31, f30, dyn # perform operation
fsub.h f1, f31, f30, rdn # perform operation
fsub.h f1, f31, f30, rmm # perform operation
fsub.h f1, f31, f30, rne # perform operation
fsub.h f1, f31, f30, rtz # perform operation
fsub.h f1, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fsub.h f20, f26, f25, dyn # perform operation
fsub.h f20, f26, f25, rdn # perform operation
fsub.h f20, f26, f25, rmm # perform operation
fsub.h f20, f26, f25, rne # perform operation
fsub.h f20, f26, f25, rtz # perform operation
fsub.h f20, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fsub.h f1, f5, f16, dyn # perform operation
fsub.h f1, f5, f16, rdn # perform operation
fsub.h f1, f5, f16, rmm # perform operation
fsub.h f1, f5, f16, rne # perform operation
fsub.h f1, f5, f16, rtz # perform operation
fsub.h f1, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fsub.h f6, f28, f13, dyn # perform operation
fsub.h f6, f28, f13, rdn # perform operation
fsub.h f6, f28, f13, rmm # perform operation
fsub.h f6, f28, f13, rne # perform operation
fsub.h f6, f28, f13, rtz # perform operation
fsub.h f6, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fsub.h f6, f28, f26, dyn # perform operation
fsub.h f6, f28, f26, rdn # perform operation
fsub.h f6, f28, f26, rmm # perform operation
fsub.h f6, f28, f26, rne # perform operation
fsub.h f6, f28, f26, rtz # perform operation
fsub.h f6, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fsub.h f20, f6, f18, dyn # perform operation
fsub.h f20, f6, f18, rdn # perform operation
fsub.h f20, f6, f18, rmm # perform operation
fsub.h f20, f6, f18, rne # perform operation
fsub.h f20, f6, f18, rtz # perform operation
fsub.h f20, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fsub.h f30, f16, f22, dyn # perform operation
fsub.h f30, f16, f22, rdn # perform operation
fsub.h f30, f16, f22, rmm # perform operation
fsub.h f30, f16, f22, rne # perform operation
fsub.h f30, f16, f22, rtz # perform operation
fsub.h f30, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fsub.h f13, f28, f21, dyn # perform operation
fsub.h f13, f28, f21, rdn # perform operation
fsub.h f13, f28, f21, rmm # perform operation
fsub.h f13, f28, f21, rne # perform operation
fsub.h f13, f28, f21, rtz # perform operation
fsub.h f13, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fsub.h f26, f13, f21, dyn # perform operation
fsub.h f26, f13, f21, rdn # perform operation
fsub.h f26, f13, f21, rmm # perform operation
fsub.h f26, f13, f21, rne # perform operation
fsub.h f26, f13, f21, rtz # perform operation
fsub.h f26, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fsub.h f24, f29, f13, dyn # perform operation
fsub.h f24, f29, f13, rdn # perform operation
fsub.h f24, f29, f13, rmm # perform operation
fsub.h f24, f29, f13, rne # perform operation
fsub.h f24, f29, f13, rtz # perform operation
fsub.h f24, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fsub.h f28, f15, f7, dyn # perform operation
fsub.h f28, f15, f7, rdn # perform operation
fsub.h f28, f15, f7, rmm # perform operation
fsub.h f28, f15, f7, rne # perform operation
fsub.h f28, f15, f7, rtz # perform operation
fsub.h f28, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fsub.h f25, f13, f2, dyn # perform operation
fsub.h f25, f13, f2, rdn # perform operation
fsub.h f25, f13, f2, rmm # perform operation
fsub.h f25, f13, f2, rne # perform operation
fsub.h f25, f13, f2, rtz # perform operation
fsub.h f25, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fsub.h f20, f1, f23, dyn # perform operation
fsub.h f20, f1, f23, rdn # perform operation
fsub.h f20, f1, f23, rmm # perform operation
fsub.h f20, f1, f23, rne # perform operation
fsub.h f20, f1, f23, rtz # perform operation
fsub.h f20, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f1, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fsub.h f28, f8, f30, dyn # perform operation
fsub.h f28, f8, f30, rdn # perform operation
fsub.h f28, f8, f30, rmm # perform operation
fsub.h f28, f8, f30, rne # perform operation
fsub.h f28, f8, f30, rtz # perform operation
fsub.h f28, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fsub.h f23, f3, f20, dyn # perform operation
fsub.h f23, f3, f20, rdn # perform operation
fsub.h f23, f3, f20, rmm # perform operation
fsub.h f23, f3, f20, rne # perform operation
fsub.h f23, f3, f20, rtz # perform operation
fsub.h f23, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fsub.h f6, f23, f29, dyn # perform operation
fsub.h f6, f23, f29, rdn # perform operation
fsub.h f6, f23, f29, rmm # perform operation
fsub.h f6, f23, f29, rne # perform operation
fsub.h f6, f23, f29, rtz # perform operation
fsub.h f6, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fsub.h f21, f27, f12, dyn # perform operation
fsub.h f21, f27, f12, rdn # perform operation
fsub.h f21, f27, f12, rmm # perform operation
fsub.h f21, f27, f12, rne # perform operation
fsub.h f21, f27, f12, rtz # perform operation
fsub.h f21, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fsub.h f27, f26, f11, dyn # perform operation
fsub.h f27, f26, f11, rdn # perform operation
fsub.h f27, f26, f11, rmm # perform operation
fsub.h f27, f26, f11, rne # perform operation
fsub.h f27, f26, f11, rtz # perform operation
fsub.h f27, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f26, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fsub.h f22, f29, f25, dyn # perform operation
fsub.h f22, f29, f25, rdn # perform operation
fsub.h f22, f29, f25, rmm # perform operation
fsub.h f22, f29, f25, rne # perform operation
fsub.h f22, f29, f25, rtz # perform operation
fsub.h f22, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fsub.h f5, f2, f27, dyn # perform operation
fsub.h f5, f2, f27, rdn # perform operation
fsub.h f5, f2, f27, rmm # perform operation
fsub.h f5, f2, f27, rne # perform operation
fsub.h f5, f2, f27, rtz # perform operation
fsub.h f5, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fsub.h f8, f31, f17, dyn # perform operation
fsub.h f8, f31, f17, rdn # perform operation
fsub.h f8, f31, f17, rmm # perform operation
fsub.h f8, f31, f17, rne # perform operation
fsub.h f8, f31, f17, rtz # perform operation
fsub.h f8, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fsub.h f5, f24, f19, dyn # perform operation
fsub.h f5, f24, f19, rdn # perform operation
fsub.h f5, f24, f19, rmm # perform operation
fsub.h f5, f24, f19, rne # perform operation
fsub.h f5, f24, f19, rtz # perform operation
fsub.h f5, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f24, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fsub.h f28, f29, f17, dyn # perform operation
fsub.h f28, f29, f17, rdn # perform operation
fsub.h f28, f29, f17, rmm # perform operation
fsub.h f28, f29, f17, rne # perform operation
fsub.h f28, f29, f17, rtz # perform operation
fsub.h f28, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f29, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fsub.h f18, f24, f21, dyn # perform operation
fsub.h f18, f24, f21, rdn # perform operation
fsub.h f18, f24, f21, rmm # perform operation
fsub.h f18, f24, f21, rne # perform operation
fsub.h f18, f24, f21, rtz # perform operation
fsub.h f18, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fsub.h f8, f9, f7, dyn # perform operation
fsub.h f8, f9, f7, rdn # perform operation
fsub.h f8, f9, f7, rmm # perform operation
fsub.h f8, f9, f7, rne # perform operation
fsub.h f8, f9, f7, rtz # perform operation
fsub.h f8, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fsub.h f28, f29, f30, dyn # perform operation
fsub.h f28, f29, f30, rdn # perform operation
fsub.h f28, f29, f30, rmm # perform operation
fsub.h f28, f29, f30, rne # perform operation
fsub.h f28, f29, f30, rtz # perform operation
fsub.h f28, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fsub.h f18, f12, f31, dyn # perform operation
fsub.h f18, f12, f31, rdn # perform operation
fsub.h f18, f12, f31, rmm # perform operation
fsub.h f18, f12, f31, rne # perform operation
fsub.h f18, f12, f31, rtz # perform operation
fsub.h f18, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f12, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
fsub.h f9, f15, f5, dyn # perform operation
fsub.h f9, f15, f5, rdn # perform operation
fsub.h f9, f15, f5, rmm # perform operation
fsub.h f9, f15, f5, rne # perform operation
fsub.h f9, f15, f5, rtz # perform operation
fsub.h f9, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fsub.h f19, f7, f23, dyn # perform operation
fsub.h f19, f7, f23, rdn # perform operation
fsub.h f19, f7, f23, rmm # perform operation
fsub.h f19, f7, f23, rne # perform operation
fsub.h f19, f7, f23, rtz # perform operation
fsub.h f19, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f7, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fsub.h f17, f7, f19, dyn # perform operation
fsub.h f17, f7, f19, rdn # perform operation
fsub.h f17, f7, f19, rmm # perform operation
fsub.h f17, f7, f19, rne # perform operation
fsub.h f17, f7, f19, rtz # perform operation
fsub.h f17, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
fsub.h f31, f26, f10, dyn # perform operation
fsub.h f31, f26, f10, rdn # perform operation
fsub.h f31, f26, f10, rmm # perform operation
fsub.h f31, f26, f10, rne # perform operation
fsub.h f31, f26, f10, rtz # perform operation
fsub.h f31, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fsub.h f1, f11, f14, dyn # perform operation
fsub.h f1, f11, f14, rdn # perform operation
fsub.h f1, f11, f14, rmm # perform operation
fsub.h f1, f11, f14, rne # perform operation
fsub.h f1, f11, f14, rtz # perform operation
fsub.h f1, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f11, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fsub.h f31, f9, f10, dyn # perform operation
fsub.h f31, f9, f10, rdn # perform operation
fsub.h f31, f9, f10, rmm # perform operation
fsub.h f31, f9, f10, rne # perform operation
fsub.h f31, f9, f10, rtz # perform operation
fsub.h f31, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f9, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fsub.h f15, f18, f11, dyn # perform operation
fsub.h f15, f18, f11, rdn # perform operation
fsub.h f15, f18, f11, rmm # perform operation
fsub.h f15, f18, f11, rne # perform operation
fsub.h f15, f18, f11, rtz # perform operation
fsub.h f15, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f18, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fsub.h f1, f25, f7, dyn # perform operation
fsub.h f1, f25, f7, rdn # perform operation
fsub.h f1, f25, f7, rmm # perform operation
fsub.h f1, f25, f7, rne # perform operation
fsub.h f1, f25, f7, rtz # perform operation
fsub.h f1, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f25, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fsub.h f24, f5, f19, dyn # perform operation
fsub.h f24, f5, f19, rdn # perform operation
fsub.h f24, f5, f19, rmm # perform operation
fsub.h f24, f5, f19, rne # perform operation
fsub.h f24, f5, f19, rtz # perform operation
fsub.h f24, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f5, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fsub.h f26, f14, f28, dyn # perform operation
fsub.h f26, f14, f28, rdn # perform operation
fsub.h f26, f14, f28, rmm # perform operation
fsub.h f26, f14, f28, rne # perform operation
fsub.h f26, f14, f28, rtz # perform operation
fsub.h f26, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fsub.h f11, f30, f8, dyn # perform operation
fsub.h f11, f30, f8, rdn # perform operation
fsub.h f11, f30, f8, rmm # perform operation
fsub.h f11, f30, f8, rne # perform operation
fsub.h f11, f30, f8, rtz # perform operation
fsub.h f11, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fsub.h f24, f15, f1, dyn # perform operation
fsub.h f24, f15, f1, rdn # perform operation
fsub.h f24, f15, f1, rmm # perform operation
fsub.h f24, f15, f1, rne # perform operation
fsub.h f24, f15, f1, rtz # perform operation
fsub.h f24, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
fsub.h f18, f28, f8, dyn # perform operation
fsub.h f18, f28, f8, rdn # perform operation
fsub.h f18, f28, f8, rmm # perform operation
fsub.h f18, f28, f8, rne # perform operation
fsub.h f18, f28, f8, rtz # perform operation
fsub.h f18, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f28, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fsub.h f31, f6, f1, dyn # perform operation
fsub.h f31, f6, f1, rdn # perform operation
fsub.h f31, f6, f1, rmm # perform operation
fsub.h f31, f6, f1, rne # perform operation
fsub.h f31, f6, f1, rtz # perform operation
fsub.h f31, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fsub.h f30, f26, f14, dyn # perform operation
fsub.h f30, f26, f14, rdn # perform operation
fsub.h f30, f26, f14, rmm # perform operation
fsub.h f30, f26, f14, rne # perform operation
fsub.h f30, f26, f14, rtz # perform operation
fsub.h f30, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fsub.h f30, f13, f18, dyn # perform operation
fsub.h f30, f13, f18, rdn # perform operation
fsub.h f30, f13, f18, rmm # perform operation
fsub.h f30, f13, f18, rne # perform operation
fsub.h f30, f13, f18, rtz # perform operation
fsub.h f30, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f13, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fsub.h f25, f8, f23, dyn # perform operation
fsub.h f25, f8, f23, rdn # perform operation
fsub.h f25, f8, f23, rmm # perform operation
fsub.h f25, f8, f23, rne # perform operation
fsub.h f25, f8, f23, rtz # perform operation
fsub.h f25, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f8, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fsub.h f14, f3, f28, dyn # perform operation
fsub.h f14, f3, f28, rdn # perform operation
fsub.h f14, f3, f28, rmm # perform operation
fsub.h f14, f3, f28, rne # perform operation
fsub.h f14, f3, f28, rtz # perform operation
fsub.h f14, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f3, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fsub.h f21, f22, f23, dyn # perform operation
fsub.h f21, f22, f23, rdn # perform operation
fsub.h f21, f22, f23, rmm # perform operation
fsub.h f21, f22, f23, rne # perform operation
fsub.h f21, f22, f23, rtz # perform operation
fsub.h f21, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fsub.h f11, f14, f13, dyn # perform operation
fsub.h f11, f14, f13, rdn # perform operation
fsub.h f11, f14, f13, rmm # perform operation
fsub.h f11, f14, f13, rne # perform operation
fsub.h f11, f14, f13, rtz # perform operation
fsub.h f11, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fsub.h f11, f6, f14, dyn # perform operation
fsub.h f11, f6, f14, rdn # perform operation
fsub.h f11, f6, f14, rmm # perform operation
fsub.h f11, f6, f14, rne # perform operation
fsub.h f11, f6, f14, rtz # perform operation
fsub.h f11, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f6, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fsub.h f20, f7, f16, dyn # perform operation
fsub.h f20, f7, f16, rdn # perform operation
fsub.h f20, f7, f16, rmm # perform operation
fsub.h f20, f7, f16, rne # perform operation
fsub.h f20, f7, f16, rtz # perform operation
fsub.h f20, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fsub.h f18, f6, f16, dyn # perform operation
fsub.h f18, f6, f16, rdn # perform operation
fsub.h f18, f6, f16, rmm # perform operation
fsub.h f18, f6, f16, rne # perform operation
fsub.h f18, f6, f16, rtz # perform operation
fsub.h f18, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f6, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fsub.h f6, f16, f1, dyn # perform operation
fsub.h f6, f16, f1, rdn # perform operation
fsub.h f6, f16, f1, rmm # perform operation
fsub.h f6, f16, f1, rne # perform operation
fsub.h f6, f16, f1, rtz # perform operation
fsub.h f6, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fsub.h f6, f18, f26, dyn # perform operation
fsub.h f6, f18, f26, rdn # perform operation
fsub.h f6, f18, f26, rmm # perform operation
fsub.h f6, f18, f26, rne # perform operation
fsub.h f6, f18, f26, rtz # perform operation
fsub.h f6, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fsub.h f16, f23, f8, dyn # perform operation
fsub.h f16, f23, f8, rdn # perform operation
fsub.h f16, f23, f8, rmm # perform operation
fsub.h f16, f23, f8, rne # perform operation
fsub.h f16, f23, f8, rtz # perform operation
fsub.h f16, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fsub.h f8, f20, f6, dyn # perform operation
fsub.h f8, f20, f6, rdn # perform operation
fsub.h f8, f20, f6, rmm # perform operation
fsub.h f8, f20, f6, rne # perform operation
fsub.h f8, f20, f6, rtz # perform operation
fsub.h f8, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f20, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fsub.h f9, f24, f29, dyn # perform operation
fsub.h f9, f24, f29, rdn # perform operation
fsub.h f9, f24, f29, rmm # perform operation
fsub.h f9, f24, f29, rne # perform operation
fsub.h f9, f24, f29, rtz # perform operation
fsub.h f9, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f24, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
fsub.h f10, f16, f20, dyn # perform operation
fsub.h f10, f16, f20, rdn # perform operation
fsub.h f10, f16, f20, rmm # perform operation
fsub.h f10, f16, f20, rne # perform operation
fsub.h f10, f16, f20, rtz # perform operation
fsub.h f10, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fsub.h f23, f19, f14, dyn # perform operation
fsub.h f23, f19, f14, rdn # perform operation
fsub.h f23, f19, f14, rmm # perform operation
fsub.h f23, f19, f14, rne # perform operation
fsub.h f23, f19, f14, rtz # perform operation
fsub.h f23, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fsub.h f13, f17, f26, dyn # perform operation
fsub.h f13, f17, f26, rdn # perform operation
fsub.h f13, f17, f26, rmm # perform operation
fsub.h f13, f17, f26, rne # perform operation
fsub.h f13, f17, f26, rtz # perform operation
fsub.h f13, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fsub.h f31, f13, f27, dyn # perform operation
fsub.h f31, f13, f27, rdn # perform operation
fsub.h f31, f13, f27, rmm # perform operation
fsub.h f31, f13, f27, rne # perform operation
fsub.h f31, f13, f27, rtz # perform operation
fsub.h f31, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fsub.h f19, f29, f13, dyn # perform operation
fsub.h f19, f29, f13, rdn # perform operation
fsub.h f19, f29, f13, rmm # perform operation
fsub.h f19, f29, f13, rne # perform operation
fsub.h f19, f29, f13, rtz # perform operation
fsub.h f19, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fsub.h f10, f16, f6, dyn # perform operation
fsub.h f10, f16, f6, rdn # perform operation
fsub.h f10, f16, f6, rmm # perform operation
fsub.h f10, f16, f6, rne # perform operation
fsub.h f10, f16, f6, rtz # perform operation
fsub.h f10, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fsub.h f19, f28, f2, dyn # perform operation
fsub.h f19, f28, f2, rdn # perform operation
fsub.h f19, f28, f2, rmm # perform operation
fsub.h f19, f28, f2, rne # perform operation
fsub.h f19, f28, f2, rtz # perform operation
fsub.h f19, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fsub.h f29, f5, f8, dyn # perform operation
fsub.h f29, f5, f8, rdn # perform operation
fsub.h f29, f5, f8, rmm # perform operation
fsub.h f29, f5, f8, rne # perform operation
fsub.h f29, f5, f8, rtz # perform operation
fsub.h f29, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fsub.h f2, f15, f20, dyn # perform operation
fsub.h f2, f15, f20, rdn # perform operation
fsub.h f2, f15, f20, rmm # perform operation
fsub.h f2, f15, f20, rne # perform operation
fsub.h f2, f15, f20, rtz # perform operation
fsub.h f2, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fsub.h f31, f15, f21, dyn # perform operation
fsub.h f31, f15, f21, rdn # perform operation
fsub.h f31, f15, f21, rmm # perform operation
fsub.h f31, f15, f21, rne # perform operation
fsub.h f31, f15, f21, rtz # perform operation
fsub.h f31, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fsub.h f5, f12, f17, dyn # perform operation
fsub.h f5, f12, f17, rdn # perform operation
fsub.h f5, f12, f17, rmm # perform operation
fsub.h f5, f12, f17, rne # perform operation
fsub.h f5, f12, f17, rtz # perform operation
fsub.h f5, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fsub.h f1, f14, f11, dyn # perform operation
fsub.h f1, f14, f11, rdn # perform operation
fsub.h f1, f14, f11, rmm # perform operation
fsub.h f1, f14, f11, rne # perform operation
fsub.h f1, f14, f11, rtz # perform operation
fsub.h f1, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fsub.h f19, f14, f20, dyn # perform operation
fsub.h f19, f14, f20, rdn # perform operation
fsub.h f19, f14, f20, rmm # perform operation
fsub.h f19, f14, f20, rne # perform operation
fsub.h f19, f14, f20, rtz # perform operation
fsub.h f19, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fsub.h f26, f6, f16, dyn # perform operation
fsub.h f26, f6, f16, rdn # perform operation
fsub.h f26, f6, f16, rmm # perform operation
fsub.h f26, f6, f16, rne # perform operation
fsub.h f26, f6, f16, rtz # perform operation
fsub.h f26, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f6, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fsub.h f30, f25, f2, dyn # perform operation
fsub.h f30, f25, f2, rdn # perform operation
fsub.h f30, f25, f2, rmm # perform operation
fsub.h f30, f25, f2, rne # perform operation
fsub.h f30, f25, f2, rtz # perform operation
fsub.h f30, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f25, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fsub.h f18, f26, f20, dyn # perform operation
fsub.h f18, f26, f20, rdn # perform operation
fsub.h f18, f26, f20, rmm # perform operation
fsub.h f18, f26, f20, rne # perform operation
fsub.h f18, f26, f20, rtz # perform operation
fsub.h f18, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fsub.h f2, f14, f25, dyn # perform operation
fsub.h f2, f14, f25, rdn # perform operation
fsub.h f2, f14, f25, rmm # perform operation
fsub.h f2, f14, f25, rne # perform operation
fsub.h f2, f14, f25, rtz # perform operation
fsub.h f2, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fsub.h f17, f20, f29, dyn # perform operation
fsub.h f17, f20, f29, rdn # perform operation
fsub.h f17, f20, f29, rmm # perform operation
fsub.h f17, f20, f29, rne # perform operation
fsub.h f17, f20, f29, rtz # perform operation
fsub.h f17, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fsub.h f26, f31, f19, dyn # perform operation
fsub.h f26, f31, f19, rdn # perform operation
fsub.h f26, f31, f19, rmm # perform operation
fsub.h f26, f31, f19, rne # perform operation
fsub.h f26, f31, f19, rtz # perform operation
fsub.h f26, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fsub.h f2, f21, f19, dyn # perform operation
fsub.h f2, f21, f19, rdn # perform operation
fsub.h f2, f21, f19, rmm # perform operation
fsub.h f2, f21, f19, rne # perform operation
fsub.h f2, f21, f19, rtz # perform operation
fsub.h f2, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fsub.h f21, f6, f14, dyn # perform operation
fsub.h f21, f6, f14, rdn # perform operation
fsub.h f21, f6, f14, rmm # perform operation
fsub.h f21, f6, f14, rne # perform operation
fsub.h f21, f6, f14, rtz # perform operation
fsub.h f21, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f6, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fsub.h f28, f31, f8, dyn # perform operation
fsub.h f28, f31, f8, rdn # perform operation
fsub.h f28, f31, f8, rmm # perform operation
fsub.h f28, f31, f8, rne # perform operation
fsub.h f28, f31, f8, rtz # perform operation
fsub.h f28, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fsub.h f10, f2, f11, dyn # perform operation
fsub.h f10, f2, f11, rdn # perform operation
fsub.h f10, f2, f11, rmm # perform operation
fsub.h f10, f2, f11, rne # perform operation
fsub.h f10, f2, f11, rtz # perform operation
fsub.h f10, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fsub.h f31, f2, f13, dyn # perform operation
fsub.h f31, f2, f13, rdn # perform operation
fsub.h f31, f2, f13, rmm # perform operation
fsub.h f31, f2, f13, rne # perform operation
fsub.h f31, f2, f13, rtz # perform operation
fsub.h f31, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
fsub.h f30, f25, f18, dyn # perform operation
fsub.h f30, f25, f18, rdn # perform operation
fsub.h f30, f25, f18, rmm # perform operation
fsub.h f30, f25, f18, rne # perform operation
fsub.h f30, f25, f18, rtz # perform operation
fsub.h f30, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f25, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fsub.h f15, f26, f30, dyn # perform operation
fsub.h f15, f26, f30, rdn # perform operation
fsub.h f15, f26, f30, rmm # perform operation
fsub.h f15, f26, f30, rne # perform operation
fsub.h f15, f26, f30, rtz # perform operation
fsub.h f15, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fsub.h f24, f21, f14, dyn # perform operation
fsub.h f24, f21, f14, rdn # perform operation
fsub.h f24, f21, f14, rmm # perform operation
fsub.h f24, f21, f14, rne # perform operation
fsub.h f24, f21, f14, rtz # perform operation
fsub.h f24, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fsub.h f22, f12, f16, dyn # perform operation
fsub.h f22, f12, f16, rdn # perform operation
fsub.h f22, f12, f16, rmm # perform operation
fsub.h f22, f12, f16, rne # perform operation
fsub.h f22, f12, f16, rtz # perform operation
fsub.h f22, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f12, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
fsub.h f15, f18, f9, dyn # perform operation
fsub.h f15, f18, f9, rdn # perform operation
fsub.h f15, f18, f9, rmm # perform operation
fsub.h f15, f18, f9, rne # perform operation
fsub.h f15, f18, f9, rtz # perform operation
fsub.h f15, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fsub.h f13, f11, f17, dyn # perform operation
fsub.h f13, f11, f17, rdn # perform operation
fsub.h f13, f11, f17, rmm # perform operation
fsub.h f13, f11, f17, rne # perform operation
fsub.h f13, f11, f17, rtz # perform operation
fsub.h f13, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fsub.h f3, f19, f14, dyn # perform operation
fsub.h f3, f19, f14, rdn # perform operation
fsub.h f3, f19, f14, rmm # perform operation
fsub.h f3, f19, f14, rne # perform operation
fsub.h f3, f19, f14, rtz # perform operation
fsub.h f3, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fsub.h f9, f25, f16, dyn # perform operation
fsub.h f9, f25, f16, rdn # perform operation
fsub.h f9, f25, f16, rmm # perform operation
fsub.h f9, f25, f16, rne # perform operation
fsub.h f9, f25, f16, rtz # perform operation
fsub.h f9, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fsub.h f3, f24, f11, dyn # perform operation
fsub.h f3, f24, f11, rdn # perform operation
fsub.h f3, f24, f11, rmm # perform operation
fsub.h f3, f24, f11, rne # perform operation
fsub.h f3, f24, f11, rtz # perform operation
fsub.h f3, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fsub.h f1, f18, f15, dyn # perform operation
fsub.h f1, f18, f15, rdn # perform operation
fsub.h f1, f18, f15, rmm # perform operation
fsub.h f1, f18, f15, rne # perform operation
fsub.h f1, f18, f15, rtz # perform operation
fsub.h f1, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f18, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fsub.h f12, f29, f20, dyn # perform operation
fsub.h f12, f29, f20, rdn # perform operation
fsub.h f12, f29, f20, rmm # perform operation
fsub.h f12, f29, f20, rne # perform operation
fsub.h f12, f29, f20, rtz # perform operation
fsub.h f12, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f29, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fsub.h f10, f3, f6, dyn # perform operation
fsub.h f10, f3, f6, rdn # perform operation
fsub.h f10, f3, f6, rmm # perform operation
fsub.h f10, f3, f6, rne # perform operation
fsub.h f10, f3, f6, rtz # perform operation
fsub.h f10, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f3, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fsub.h f8, f18, f19, dyn # perform operation
fsub.h f8, f18, f19, rdn # perform operation
fsub.h f8, f18, f19, rmm # perform operation
fsub.h f8, f18, f19, rne # perform operation
fsub.h f8, f18, f19, rtz # perform operation
fsub.h f8, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f18, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fsub.h f21, f2, f18, dyn # perform operation
fsub.h f21, f2, f18, rdn # perform operation
fsub.h f21, f2, f18, rmm # perform operation
fsub.h f21, f2, f18, rne # perform operation
fsub.h f21, f2, f18, rtz # perform operation
fsub.h f21, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
fsub.h f29, f13, f31, dyn # perform operation
fsub.h f29, f13, f31, rdn # perform operation
fsub.h f29, f13, f31, rmm # perform operation
fsub.h f29, f13, f31, rne # perform operation
fsub.h f29, f13, f31, rtz # perform operation
fsub.h f29, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fsub.h f26, f14, f28, dyn # perform operation
fsub.h f26, f14, f28, rdn # perform operation
fsub.h f26, f14, f28, rmm # perform operation
fsub.h f26, f14, f28, rne # perform operation
fsub.h f26, f14, f28, rtz # perform operation
fsub.h f26, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fsub.h f29, f11, f1, dyn # perform operation
fsub.h f29, f11, f1, rdn # perform operation
fsub.h f29, f11, f1, rmm # perform operation
fsub.h f29, f11, f1, rne # perform operation
fsub.h f29, f11, f1, rtz # perform operation
fsub.h f29, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fsub.h f2, f18, f12, dyn # perform operation
fsub.h f2, f18, f12, rdn # perform operation
fsub.h f2, f18, f12, rmm # perform operation
fsub.h f2, f18, f12, rne # perform operation
fsub.h f2, f18, f12, rtz # perform operation
fsub.h f2, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fsub.h f17, f25, f27, dyn # perform operation
fsub.h f17, f25, f27, rdn # perform operation
fsub.h f17, f25, f27, rmm # perform operation
fsub.h f17, f25, f27, rne # perform operation
fsub.h f17, f25, f27, rtz # perform operation
fsub.h f17, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fsub.h f23, f1, f21, dyn # perform operation
fsub.h f23, f1, f21, rdn # perform operation
fsub.h f23, f1, f21, rmm # perform operation
fsub.h f23, f1, f21, rne # perform operation
fsub.h f23, f1, f21, rtz # perform operation
fsub.h f23, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fsub.h f30, f16, f21, dyn # perform operation
fsub.h f30, f16, f21, rdn # perform operation
fsub.h f30, f16, f21, rmm # perform operation
fsub.h f30, f16, f21, rne # perform operation
fsub.h f30, f16, f21, rtz # perform operation
fsub.h f30, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fsub.h f11, f26, f5, dyn # perform operation
fsub.h f11, f26, f5, rdn # perform operation
fsub.h f11, f26, f5, rmm # perform operation
fsub.h f11, f26, f5, rne # perform operation
fsub.h f11, f26, f5, rtz # perform operation
fsub.h f11, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f26, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fsub.h f12, f13, f29, dyn # perform operation
fsub.h f12, f13, f29, rdn # perform operation
fsub.h f12, f13, f29, rmm # perform operation
fsub.h f12, f13, f29, rne # perform operation
fsub.h f12, f13, f29, rtz # perform operation
fsub.h f12, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fsub.h f11, f27, f16, dyn # perform operation
fsub.h f11, f27, f16, rdn # perform operation
fsub.h f11, f27, f16, rmm # perform operation
fsub.h f11, f27, f16, rne # perform operation
fsub.h f11, f27, f16, rtz # perform operation
fsub.h f11, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fsub.h f20, f27, f3, dyn # perform operation
fsub.h f20, f27, f3, rdn # perform operation
fsub.h f20, f27, f3, rmm # perform operation
fsub.h f20, f27, f3, rne # perform operation
fsub.h f20, f27, f3, rtz # perform operation
fsub.h f20, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fsub.h f8, f14, f31, dyn # perform operation
fsub.h f8, f14, f31, rdn # perform operation
fsub.h f8, f14, f31, rmm # perform operation
fsub.h f8, f14, f31, rne # perform operation
fsub.h f8, f14, f31, rtz # perform operation
fsub.h f8, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fsub.h f23, f18, f9, dyn # perform operation
fsub.h f23, f18, f9, rdn # perform operation
fsub.h f23, f18, f9, rmm # perform operation
fsub.h f23, f18, f9, rne # perform operation
fsub.h f23, f18, f9, rtz # perform operation
fsub.h f23, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fsub.h f29, f21, f19, dyn # perform operation
fsub.h f29, f21, f19, rdn # perform operation
fsub.h f29, f21, f19, rmm # perform operation
fsub.h f29, f21, f19, rne # perform operation
fsub.h f29, f21, f19, rtz # perform operation
fsub.h f29, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fsub.h f16, f2, f26, dyn # perform operation
fsub.h f16, f2, f26, rdn # perform operation
fsub.h f16, f2, f26, rmm # perform operation
fsub.h f16, f2, f26, rne # perform operation
fsub.h f16, f2, f26, rtz # perform operation
fsub.h f16, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f2, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fsub.h f23, f22, f19, dyn # perform operation
fsub.h f23, f22, f19, rdn # perform operation
fsub.h f23, f22, f19, rmm # perform operation
fsub.h f23, f22, f19, rne # perform operation
fsub.h f23, f22, f19, rtz # perform operation
fsub.h f23, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fsub.h f8, f27, f3, dyn # perform operation
fsub.h f8, f27, f3, rdn # perform operation
fsub.h f8, f27, f3, rmm # perform operation
fsub.h f8, f27, f3, rne # perform operation
fsub.h f8, f27, f3, rtz # perform operation
fsub.h f8, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fsub.h f31, f22, f9, dyn # perform operation
fsub.h f31, f22, f9, rdn # perform operation
fsub.h f31, f22, f9, rmm # perform operation
fsub.h f31, f22, f9, rne # perform operation
fsub.h f31, f22, f9, rtz # perform operation
fsub.h f31, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
fsub.h f25, f22, f29, dyn # perform operation
fsub.h f25, f22, f29, rdn # perform operation
fsub.h f25, f22, f29, rmm # perform operation
fsub.h f25, f22, f29, rne # perform operation
fsub.h f25, f22, f29, rtz # perform operation
fsub.h f25, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fsub.h f9, f20, f2, dyn # perform operation
fsub.h f9, f20, f2, rdn # perform operation
fsub.h f9, f20, f2, rmm # perform operation
fsub.h f9, f20, f2, rne # perform operation
fsub.h f9, f20, f2, rtz # perform operation
fsub.h f9, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fsub.h f12, f6, f30, dyn # perform operation
fsub.h f12, f6, f30, rdn # perform operation
fsub.h f12, f6, f30, rmm # perform operation
fsub.h f12, f6, f30, rne # perform operation
fsub.h f12, f6, f30, rtz # perform operation
fsub.h f12, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f6, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
fsub.h f16, f18, f10, dyn # perform operation
fsub.h f16, f18, f10, rdn # perform operation
fsub.h f16, f18, f10, rmm # perform operation
fsub.h f16, f18, f10, rne # perform operation
fsub.h f16, f18, f10, rtz # perform operation
fsub.h f16, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fsub.h f28, f11, f13, dyn # perform operation
fsub.h f28, f11, f13, rdn # perform operation
fsub.h f28, f11, f13, rmm # perform operation
fsub.h f28, f11, f13, rne # perform operation
fsub.h f28, f11, f13, rtz # perform operation
fsub.h f28, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fsub.h f10, f8, f3, dyn # perform operation
fsub.h f10, f8, f3, rdn # perform operation
fsub.h f10, f8, f3, rmm # perform operation
fsub.h f10, f8, f3, rne # perform operation
fsub.h f10, f8, f3, rtz # perform operation
fsub.h f10, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fsub.h f5, f22, f9, dyn # perform operation
fsub.h f5, f22, f9, rdn # perform operation
fsub.h f5, f22, f9, rmm # perform operation
fsub.h f5, f22, f9, rne # perform operation
fsub.h f5, f22, f9, rtz # perform operation
fsub.h f5, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fsub.h f10, f26, f16, dyn # perform operation
fsub.h f10, f26, f16, rdn # perform operation
fsub.h f10, f26, f16, rmm # perform operation
fsub.h f10, f26, f16, rne # perform operation
fsub.h f10, f26, f16, rtz # perform operation
fsub.h f10, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
fsub.h f16, f23, f10, dyn # perform operation
fsub.h f16, f23, f10, rdn # perform operation
fsub.h f16, f23, f10, rmm # perform operation
fsub.h f16, f23, f10, rne # perform operation
fsub.h f16, f23, f10, rtz # perform operation
fsub.h f16, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fsub.h f30, f26, f10, dyn # perform operation
fsub.h f30, f26, f10, rdn # perform operation
fsub.h f30, f26, f10, rmm # perform operation
fsub.h f30, f26, f10, rne # perform operation
fsub.h f30, f26, f10, rtz # perform operation
fsub.h f30, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fsub.h f20, f8, f25, dyn # perform operation
fsub.h f20, f8, f25, rdn # perform operation
fsub.h f20, f8, f25, rmm # perform operation
fsub.h f20, f8, f25, rne # perform operation
fsub.h f20, f8, f25, rtz # perform operation
fsub.h f20, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fsub.h f17, f22, f3, dyn # perform operation
fsub.h f17, f22, f3, rdn # perform operation
fsub.h f17, f22, f3, rmm # perform operation
fsub.h f17, f22, f3, rne # perform operation
fsub.h f17, f22, f3, rtz # perform operation
fsub.h f17, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fsub.h f3, f30, f13, dyn # perform operation
fsub.h f3, f30, f13, rdn # perform operation
fsub.h f3, f30, f13, rmm # perform operation
fsub.h f3, f30, f13, rne # perform operation
fsub.h f3, f30, f13, rtz # perform operation
fsub.h f3, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fsub.h f8, f6, f9, dyn # perform operation
fsub.h f8, f6, f9, rdn # perform operation
fsub.h f8, f6, f9, rmm # perform operation
fsub.h f8, f6, f9, rne # perform operation
fsub.h f8, f6, f9, rtz # perform operation
fsub.h f8, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fsub.h f9, f7, f13, dyn # perform operation
fsub.h f9, f7, f13, rdn # perform operation
fsub.h f9, f7, f13, rmm # perform operation
fsub.h f9, f7, f13, rne # perform operation
fsub.h f9, f7, f13, rtz # perform operation
fsub.h f9, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fsub.h f17, f13, f1, dyn # perform operation
fsub.h f17, f13, f1, rdn # perform operation
fsub.h f17, f13, f1, rmm # perform operation
fsub.h f17, f13, f1, rne # perform operation
fsub.h f17, f13, f1, rtz # perform operation
fsub.h f17, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fsub.h f20, f14, f10, dyn # perform operation
fsub.h f20, f14, f10, rdn # perform operation
fsub.h f20, f14, f10, rmm # perform operation
fsub.h f20, f14, f10, rne # perform operation
fsub.h f20, f14, f10, rtz # perform operation
fsub.h f20, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f14, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fsub.h f31, f28, f8, dyn # perform operation
fsub.h f31, f28, f8, rdn # perform operation
fsub.h f31, f28, f8, rmm # perform operation
fsub.h f31, f28, f8, rne # perform operation
fsub.h f31, f28, f8, rtz # perform operation
fsub.h f31, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f28, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fsub.h f5, f29, f13, dyn # perform operation
fsub.h f5, f29, f13, rdn # perform operation
fsub.h f5, f29, f13, rmm # perform operation
fsub.h f5, f29, f13, rne # perform operation
fsub.h f5, f29, f13, rtz # perform operation
fsub.h f5, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fsub.h f31, f23, f26, dyn # perform operation
fsub.h f31, f23, f26, rdn # perform operation
fsub.h f31, f23, f26, rmm # perform operation
fsub.h f31, f23, f26, rne # perform operation
fsub.h f31, f23, f26, rtz # perform operation
fsub.h f31, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fsub.h f3, f2, f27, dyn # perform operation
fsub.h f3, f2, f27, rdn # perform operation
fsub.h f3, f2, f27, rmm # perform operation
fsub.h f3, f2, f27, rne # perform operation
fsub.h f3, f2, f27, rtz # perform operation
fsub.h f3, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fsub.h f24, f12, f25, dyn # perform operation
fsub.h f24, f12, f25, rdn # perform operation
fsub.h f24, f12, f25, rmm # perform operation
fsub.h f24, f12, f25, rne # perform operation
fsub.h f24, f12, f25, rtz # perform operation
fsub.h f24, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fsub.h f15, f10, f23, dyn # perform operation
fsub.h f15, f10, f23, rdn # perform operation
fsub.h f15, f10, f23, rmm # perform operation
fsub.h f15, f10, f23, rne # perform operation
fsub.h f15, f10, f23, rtz # perform operation
fsub.h f15, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fsub.h f28, f14, f26, dyn # perform operation
fsub.h f28, f14, f26, rdn # perform operation
fsub.h f28, f14, f26, rmm # perform operation
fsub.h f28, f14, f26, rne # perform operation
fsub.h f28, f14, f26, rtz # perform operation
fsub.h f28, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fsub.h f3, f22, f16, dyn # perform operation
fsub.h f3, f22, f16, rdn # perform operation
fsub.h f3, f22, f16, rmm # perform operation
fsub.h f3, f22, f16, rne # perform operation
fsub.h f3, f22, f16, rtz # perform operation
fsub.h f3, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fsub.h f29, f5, f27, dyn # perform operation
fsub.h f29, f5, f27, rdn # perform operation
fsub.h f29, f5, f27, rmm # perform operation
fsub.h f29, f5, f27, rne # perform operation
fsub.h f29, f5, f27, rtz # perform operation
fsub.h f29, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fsub.h f7, f2, f19, dyn # perform operation
fsub.h f7, f2, f19, rdn # perform operation
fsub.h f7, f2, f19, rmm # perform operation
fsub.h f7, f2, f19, rne # perform operation
fsub.h f7, f2, f19, rtz # perform operation
fsub.h f7, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fsub.h f6, f20, f10, dyn # perform operation
fsub.h f6, f20, f10, rdn # perform operation
fsub.h f6, f20, f10, rmm # perform operation
fsub.h f6, f20, f10, rne # perform operation
fsub.h f6, f20, f10, rtz # perform operation
fsub.h f6, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
fsub.h f18, f24, f20, dyn # perform operation
fsub.h f18, f24, f20, rdn # perform operation
fsub.h f18, f24, f20, rmm # perform operation
fsub.h f18, f24, f20, rne # perform operation
fsub.h f18, f24, f20, rtz # perform operation
fsub.h f18, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fsub.h f17, f29, f10, dyn # perform operation
fsub.h f17, f29, f10, rdn # perform operation
fsub.h f17, f29, f10, rmm # perform operation
fsub.h f17, f29, f10, rne # perform operation
fsub.h f17, f29, f10, rtz # perform operation
fsub.h f17, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fsub.h f5, f1, f31, dyn # perform operation
fsub.h f5, f1, f31, rdn # perform operation
fsub.h f5, f1, f31, rmm # perform operation
fsub.h f5, f1, f31, rne # perform operation
fsub.h f5, f1, f31, rtz # perform operation
fsub.h f5, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f1, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f19, 0(x2) # load 0x0000fc01 from memory into f19
fsub.h f7, f26, f19, dyn # perform operation
fsub.h f7, f26, f19, rdn # perform operation
fsub.h f7, f26, f19, rmm # perform operation
fsub.h f7, f26, f19, rne # perform operation
fsub.h f7, f26, f19, rtz # perform operation
fsub.h f7, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fsub.h f7, f14, f20, dyn # perform operation
fsub.h f7, f14, f20, rdn # perform operation
fsub.h f7, f14, f20, rmm # perform operation
fsub.h f7, f14, f20, rne # perform operation
fsub.h f7, f14, f20, rtz # perform operation
fsub.h f7, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fsub.h f28, f19, f20, dyn # perform operation
fsub.h f28, f19, f20, rdn # perform operation
fsub.h f28, f19, f20, rmm # perform operation
fsub.h f28, f19, f20, rne # perform operation
fsub.h f28, f19, f20, rtz # perform operation
fsub.h f28, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fsub.h f13, f28, f14, dyn # perform operation
fsub.h f13, f28, f14, rdn # perform operation
fsub.h f13, f28, f14, rmm # perform operation
fsub.h f13, f28, f14, rne # perform operation
fsub.h f13, f28, f14, rtz # perform operation
fsub.h f13, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fsub.h f3, f24, f12, dyn # perform operation
fsub.h f3, f24, f12, rdn # perform operation
fsub.h f3, f24, f12, rmm # perform operation
fsub.h f3, f24, f12, rne # perform operation
fsub.h f3, f24, f12, rtz # perform operation
fsub.h f3, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fsub.h f28, f21, f1, dyn # perform operation
fsub.h f28, f21, f1, rdn # perform operation
fsub.h f28, f21, f1, rmm # perform operation
fsub.h f28, f21, f1, rne # perform operation
fsub.h f28, f21, f1, rtz # perform operation
fsub.h f28, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fsub.h f19, f31, f29, dyn # perform operation
fsub.h f19, f31, f29, rdn # perform operation
fsub.h f19, f31, f29, rmm # perform operation
fsub.h f19, f31, f29, rne # perform operation
fsub.h f19, f31, f29, rtz # perform operation
fsub.h f19, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
fsub.h f14, f23, f20, dyn # perform operation
fsub.h f14, f23, f20, rdn # perform operation
fsub.h f14, f23, f20, rmm # perform operation
fsub.h f14, f23, f20, rne # perform operation
fsub.h f14, f23, f20, rtz # perform operation
fsub.h f14, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fsub.h f26, f30, f20, dyn # perform operation
fsub.h f26, f30, f20, rdn # perform operation
fsub.h f26, f30, f20, rmm # perform operation
fsub.h f26, f30, f20, rne # perform operation
fsub.h f26, f30, f20, rtz # perform operation
fsub.h f26, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fsub.h f1, f17, f21, dyn # perform operation
fsub.h f1, f17, f21, rdn # perform operation
fsub.h f1, f17, f21, rmm # perform operation
fsub.h f1, f17, f21, rne # perform operation
fsub.h f1, f17, f21, rtz # perform operation
fsub.h f1, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fsub.h f21, f1, f18, dyn # perform operation
fsub.h f21, f1, f18, rdn # perform operation
fsub.h f21, f1, f18, rmm # perform operation
fsub.h f21, f1, f18, rne # perform operation
fsub.h f21, f1, f18, rtz # perform operation
fsub.h f21, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fsub.h f24, f23, f26, dyn # perform operation
fsub.h f24, f23, f26, rdn # perform operation
fsub.h f24, f23, f26, rmm # perform operation
fsub.h f24, f23, f26, rne # perform operation
fsub.h f24, f23, f26, rtz # perform operation
fsub.h f24, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fsub.h f21, f30, f16, dyn # perform operation
fsub.h f21, f30, f16, rdn # perform operation
fsub.h f21, f30, f16, rmm # perform operation
fsub.h f21, f30, f16, rne # perform operation
fsub.h f21, f30, f16, rtz # perform operation
fsub.h f21, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fsub.h f7, f16, f24, dyn # perform operation
fsub.h f7, f16, f24, rdn # perform operation
fsub.h f7, f16, f24, rmm # perform operation
fsub.h f7, f16, f24, rne # perform operation
fsub.h f7, f16, f24, rtz # perform operation
fsub.h f7, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fsub.h f29, f16, f31, dyn # perform operation
fsub.h f29, f16, f31, rdn # perform operation
fsub.h f29, f16, f31, rmm # perform operation
fsub.h f29, f16, f31, rne # perform operation
fsub.h f29, f16, f31, rtz # perform operation
fsub.h f29, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f16, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fsub.h f30, f29, f13, dyn # perform operation
fsub.h f30, f29, f13, rdn # perform operation
fsub.h f30, f29, f13, rmm # perform operation
fsub.h f30, f29, f13, rne # perform operation
fsub.h f30, f29, f13, rtz # perform operation
fsub.h f30, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fsub.h f31, f3, f23, dyn # perform operation
fsub.h f31, f3, f23, rdn # perform operation
fsub.h f31, f3, f23, rmm # perform operation
fsub.h f31, f3, f23, rne # perform operation
fsub.h f31, f3, f23, rtz # perform operation
fsub.h f31, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fsub.h f12, f19, f25, dyn # perform operation
fsub.h f12, f19, f25, rdn # perform operation
fsub.h f12, f19, f25, rmm # perform operation
fsub.h f12, f19, f25, rne # perform operation
fsub.h f12, f19, f25, rtz # perform operation
fsub.h f12, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
fsub.h f28, f27, f3, dyn # perform operation
fsub.h f28, f27, f3, rdn # perform operation
fsub.h f28, f27, f3, rmm # perform operation
fsub.h f28, f27, f3, rne # perform operation
fsub.h f28, f27, f3, rtz # perform operation
fsub.h f28, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fsub.h f29, f14, f17, dyn # perform operation
fsub.h f29, f14, f17, rdn # perform operation
fsub.h f29, f14, f17, rmm # perform operation
fsub.h f29, f14, f17, rne # perform operation
fsub.h f29, f14, f17, rtz # perform operation
fsub.h f29, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fsub.h f8, f5, f16, dyn # perform operation
fsub.h f8, f5, f16, rdn # perform operation
fsub.h f8, f5, f16, rmm # perform operation
fsub.h f8, f5, f16, rne # perform operation
fsub.h f8, f5, f16, rtz # perform operation
fsub.h f8, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fsub.h f30, f28, f7, dyn # perform operation
fsub.h f30, f28, f7, rdn # perform operation
fsub.h f30, f28, f7, rmm # perform operation
fsub.h f30, f28, f7, rne # perform operation
fsub.h f30, f28, f7, rtz # perform operation
fsub.h f30, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fsub.h f29, f2, f27, dyn # perform operation
fsub.h f29, f2, f27, rdn # perform operation
fsub.h f29, f2, f27, rmm # perform operation
fsub.h f29, f2, f27, rne # perform operation
fsub.h f29, f2, f27, rtz # perform operation
fsub.h f29, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fsub.h f16, f24, f31, dyn # perform operation
fsub.h f16, f24, f31, rdn # perform operation
fsub.h f16, f24, f31, rmm # perform operation
fsub.h f16, f24, f31, rne # perform operation
fsub.h f16, f24, f31, rtz # perform operation
fsub.h f16, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fsub.h f9, f5, f8, dyn # perform operation
fsub.h f9, f5, f8, rdn # perform operation
fsub.h f9, f5, f8, rmm # perform operation
fsub.h f9, f5, f8, rne # perform operation
fsub.h f9, f5, f8, rtz # perform operation
fsub.h f9, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
fsub.h f11, f29, f18, dyn # perform operation
fsub.h f11, f29, f18, rdn # perform operation
fsub.h f11, f29, f18, rmm # perform operation
fsub.h f11, f29, f18, rne # perform operation
fsub.h f11, f29, f18, rtz # perform operation
fsub.h f11, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fsub.h f11, f6, f9, dyn # perform operation
fsub.h f11, f6, f9, rdn # perform operation
fsub.h f11, f6, f9, rmm # perform operation
fsub.h f11, f6, f9, rne # perform operation
fsub.h f11, f6, f9, rtz # perform operation
fsub.h f11, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fsub.h f29, f20, f25, dyn # perform operation
fsub.h f29, f20, f25, rdn # perform operation
fsub.h f29, f20, f25, rmm # perform operation
fsub.h f29, f20, f25, rne # perform operation
fsub.h f29, f20, f25, rtz # perform operation
fsub.h f29, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
fsub.h f6, f15, f24, dyn # perform operation
fsub.h f6, f15, f24, rdn # perform operation
fsub.h f6, f15, f24, rmm # perform operation
fsub.h f6, f15, f24, rne # perform operation
fsub.h f6, f15, f24, rtz # perform operation
fsub.h f6, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fsub.h f23, f2, f24, dyn # perform operation
fsub.h f23, f2, f24, rdn # perform operation
fsub.h f23, f2, f24, rmm # perform operation
fsub.h f23, f2, f24, rne # perform operation
fsub.h f23, f2, f24, rtz # perform operation
fsub.h f23, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fsub.h f31, f24, f2, dyn # perform operation
fsub.h f31, f24, f2, rdn # perform operation
fsub.h f31, f24, f2, rmm # perform operation
fsub.h f31, f24, f2, rne # perform operation
fsub.h f31, f24, f2, rtz # perform operation
fsub.h f31, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fsub.h f23, f16, f21, dyn # perform operation
fsub.h f23, f16, f21, rdn # perform operation
fsub.h f23, f16, f21, rmm # perform operation
fsub.h f23, f16, f21, rne # perform operation
fsub.h f23, f16, f21, rtz # perform operation
fsub.h f23, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fsub.h f18, f12, f5, dyn # perform operation
fsub.h f18, f12, f5, rdn # perform operation
fsub.h f18, f12, f5, rmm # perform operation
fsub.h f18, f12, f5, rne # perform operation
fsub.h f18, f12, f5, rtz # perform operation
fsub.h f18, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fsub.h f29, f27, f7, dyn # perform operation
fsub.h f29, f27, f7, rdn # perform operation
fsub.h f29, f27, f7, rmm # perform operation
fsub.h f29, f27, f7, rne # perform operation
fsub.h f29, f27, f7, rtz # perform operation
fsub.h f29, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fsub.h f14, f3, f26, dyn # perform operation
fsub.h f14, f3, f26, rdn # perform operation
fsub.h f14, f3, f26, rmm # perform operation
fsub.h f14, f3, f26, rne # perform operation
fsub.h f14, f3, f26, rtz # perform operation
fsub.h f14, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fsub.h f2, f16, f12, dyn # perform operation
fsub.h f2, f16, f12, rdn # perform operation
fsub.h f2, f16, f12, rmm # perform operation
fsub.h f2, f16, f12, rne # perform operation
fsub.h f2, f16, f12, rtz # perform operation
fsub.h f2, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fsub.h f24, f10, f17, dyn # perform operation
fsub.h f24, f10, f17, rdn # perform operation
fsub.h f24, f10, f17, rmm # perform operation
fsub.h f24, f10, f17, rne # perform operation
fsub.h f24, f10, f17, rtz # perform operation
fsub.h f24, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fsub.h f22, f11, f23, dyn # perform operation
fsub.h f22, f11, f23, rdn # perform operation
fsub.h f22, f11, f23, rmm # perform operation
fsub.h f22, f11, f23, rne # perform operation
fsub.h f22, f11, f23, rtz # perform operation
fsub.h f22, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fsub.h f9, f14, f12, dyn # perform operation
fsub.h f9, f14, f12, rdn # perform operation
fsub.h f9, f14, f12, rmm # perform operation
fsub.h f9, f14, f12, rne # perform operation
fsub.h f9, f14, f12, rtz # perform operation
fsub.h f9, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fsub.h f26, f1, f14, dyn # perform operation
fsub.h f26, f1, f14, rdn # perform operation
fsub.h f26, f1, f14, rmm # perform operation
fsub.h f26, f1, f14, rne # perform operation
fsub.h f26, f1, f14, rtz # perform operation
fsub.h f26, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f1, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fsub.h f12, f11, f3, dyn # perform operation
fsub.h f12, f11, f3, rdn # perform operation
fsub.h f12, f11, f3, rmm # perform operation
fsub.h f12, f11, f3, rne # perform operation
fsub.h f12, f11, f3, rtz # perform operation
fsub.h f12, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fsub.h f3, f6, f18, dyn # perform operation
fsub.h f3, f6, f18, rdn # perform operation
fsub.h f3, f6, f18, rmm # perform operation
fsub.h f3, f6, f18, rne # perform operation
fsub.h f3, f6, f18, rtz # perform operation
fsub.h f3, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fsub.h f17, f24, f12, dyn # perform operation
fsub.h f17, f24, f12, rdn # perform operation
fsub.h f17, f24, f12, rmm # perform operation
fsub.h f17, f24, f12, rne # perform operation
fsub.h f17, f24, f12, rtz # perform operation
fsub.h f17, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fsub.h f21, f5, f8, dyn # perform operation
fsub.h f21, f5, f8, rdn # perform operation
fsub.h f21, f5, f8, rmm # perform operation
fsub.h f21, f5, f8, rne # perform operation
fsub.h f21, f5, f8, rtz # perform operation
fsub.h f21, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fsub.h f8, f20, f11, dyn # perform operation
fsub.h f8, f20, f11, rdn # perform operation
fsub.h f8, f20, f11, rmm # perform operation
fsub.h f8, f20, f11, rne # perform operation
fsub.h f8, f20, f11, rtz # perform operation
fsub.h f8, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fsub.h f15, f9, f22, dyn # perform operation
fsub.h f15, f9, f22, rdn # perform operation
fsub.h f15, f9, f22, rmm # perform operation
fsub.h f15, f9, f22, rne # perform operation
fsub.h f15, f9, f22, rtz # perform operation
fsub.h f15, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f9, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fsub.h f16, f5, f23, dyn # perform operation
fsub.h f16, f5, f23, rdn # perform operation
fsub.h f16, f5, f23, rmm # perform operation
fsub.h f16, f5, f23, rne # perform operation
fsub.h f16, f5, f23, rtz # perform operation
fsub.h f16, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fsub.h f3, f1, f25, dyn # perform operation
fsub.h f3, f1, f25, rdn # perform operation
fsub.h f3, f1, f25, rmm # perform operation
fsub.h f3, f1, f25, rne # perform operation
fsub.h f3, f1, f25, rtz # perform operation
fsub.h f3, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fsub.h f24, f8, f14, dyn # perform operation
fsub.h f24, f8, f14, rdn # perform operation
fsub.h f24, f8, f14, rmm # perform operation
fsub.h f24, f8, f14, rne # perform operation
fsub.h f24, f8, f14, rtz # perform operation
fsub.h f24, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fsub.h f15, f12, f29, dyn # perform operation
fsub.h f15, f12, f29, rdn # perform operation
fsub.h f15, f12, f29, rmm # perform operation
fsub.h f15, f12, f29, rne # perform operation
fsub.h f15, f12, f29, rtz # perform operation
fsub.h f15, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fsub.h f30, f13, f11, dyn # perform operation
fsub.h f30, f13, f11, rdn # perform operation
fsub.h f30, f13, f11, rmm # perform operation
fsub.h f30, f13, f11, rne # perform operation
fsub.h f30, f13, f11, rtz # perform operation
fsub.h f30, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fsub.h f28, f1, f16, dyn # perform operation
fsub.h f28, f1, f16, rdn # perform operation
fsub.h f28, f1, f16, rmm # perform operation
fsub.h f28, f1, f16, rne # perform operation
fsub.h f28, f1, f16, rtz # perform operation
fsub.h f28, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f1, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fsub.h f7, f20, f1, dyn # perform operation
fsub.h f7, f20, f1, rdn # perform operation
fsub.h f7, f20, f1, rmm # perform operation
fsub.h f7, f20, f1, rne # perform operation
fsub.h f7, f20, f1, rtz # perform operation
fsub.h f7, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
fsub.h f21, f3, f14, dyn # perform operation
fsub.h f21, f3, f14, rdn # perform operation
fsub.h f21, f3, f14, rmm # perform operation
fsub.h f21, f3, f14, rne # perform operation
fsub.h f21, f3, f14, rtz # perform operation
fsub.h f21, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fsub.h f2, f1, f17, dyn # perform operation
fsub.h f2, f1, f17, rdn # perform operation
fsub.h f2, f1, f17, rmm # perform operation
fsub.h f2, f1, f17, rne # perform operation
fsub.h f2, f1, f17, rtz # perform operation
fsub.h f2, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f1, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fsub.h f31, f30, f13, dyn # perform operation
fsub.h f31, f30, f13, rdn # perform operation
fsub.h f31, f30, f13, rmm # perform operation
fsub.h f31, f30, f13, rne # perform operation
fsub.h f31, f30, f13, rtz # perform operation
fsub.h f31, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
fsub.h f22, f20, f29, dyn # perform operation
fsub.h f22, f20, f29, rdn # perform operation
fsub.h f22, f20, f29, rmm # perform operation
fsub.h f22, f20, f29, rne # perform operation
fsub.h f22, f20, f29, rtz # perform operation
fsub.h f22, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fsub.h f22, f15, f11, dyn # perform operation
fsub.h f22, f15, f11, rdn # perform operation
fsub.h f22, f15, f11, rmm # perform operation
fsub.h f22, f15, f11, rne # perform operation
fsub.h f22, f15, f11, rtz # perform operation
fsub.h f22, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f15, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fsub.h f25, f7, f24, dyn # perform operation
fsub.h f25, f7, f24, rdn # perform operation
fsub.h f25, f7, f24, rmm # perform operation
fsub.h f25, f7, f24, rne # perform operation
fsub.h f25, f7, f24, rtz # perform operation
fsub.h f25, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fsub.h f13, f27, f23, dyn # perform operation
fsub.h f13, f27, f23, rdn # perform operation
fsub.h f13, f27, f23, rmm # perform operation
fsub.h f13, f27, f23, rne # perform operation
fsub.h f13, f27, f23, rtz # perform operation
fsub.h f13, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fsub.h f7, f18, f21, dyn # perform operation
fsub.h f7, f18, f21, rdn # perform operation
fsub.h f7, f18, f21, rmm # perform operation
fsub.h f7, f18, f21, rne # perform operation
fsub.h f7, f18, f21, rtz # perform operation
fsub.h f7, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fsub.h f3, f14, f15, dyn # perform operation
fsub.h f3, f14, f15, rdn # perform operation
fsub.h f3, f14, f15, rmm # perform operation
fsub.h f3, f14, f15, rne # perform operation
fsub.h f3, f14, f15, rtz # perform operation
fsub.h f3, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fsub.h f18, f28, f20, dyn # perform operation
fsub.h f18, f28, f20, rdn # perform operation
fsub.h f18, f28, f20, rmm # perform operation
fsub.h f18, f28, f20, rne # perform operation
fsub.h f18, f28, f20, rtz # perform operation
fsub.h f18, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fsub.h f21, f6, f13, dyn # perform operation
fsub.h f21, f6, f13, rdn # perform operation
fsub.h f21, f6, f13, rmm # perform operation
fsub.h f21, f6, f13, rne # perform operation
fsub.h f21, f6, f13, rtz # perform operation
fsub.h f21, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fsub.h f28, f21, f14, dyn # perform operation
fsub.h f28, f21, f14, rdn # perform operation
fsub.h f28, f21, f14, rmm # perform operation
fsub.h f28, f21, f14, rne # perform operation
fsub.h f28, f21, f14, rtz # perform operation
fsub.h f28, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fsub.h f19, f25, f3, dyn # perform operation
fsub.h f19, f25, f3, rdn # perform operation
fsub.h f19, f25, f3, rmm # perform operation
fsub.h f19, f25, f3, rne # perform operation
fsub.h f19, f25, f3, rtz # perform operation
fsub.h f19, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fsub.h f28, f21, f12, dyn # perform operation
fsub.h f28, f21, f12, rdn # perform operation
fsub.h f28, f21, f12, rmm # perform operation
fsub.h f28, f21, f12, rne # perform operation
fsub.h f28, f21, f12, rtz # perform operation
fsub.h f28, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fsub.h f25, f28, f1, dyn # perform operation
fsub.h f25, f28, f1, rdn # perform operation
fsub.h f25, f28, f1, rmm # perform operation
fsub.h f25, f28, f1, rne # perform operation
fsub.h f25, f28, f1, rtz # perform operation
fsub.h f25, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fsub.h f25, f6, f3, dyn # perform operation
fsub.h f25, f6, f3, rdn # perform operation
fsub.h f25, f6, f3, rmm # perform operation
fsub.h f25, f6, f3, rne # perform operation
fsub.h f25, f6, f3, rtz # perform operation
fsub.h f25, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
fsub.h f20, f6, f15, dyn # perform operation
fsub.h f20, f6, f15, rdn # perform operation
fsub.h f20, f6, f15, rmm # perform operation
fsub.h f20, f6, f15, rne # perform operation
fsub.h f20, f6, f15, rtz # perform operation
fsub.h f20, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f6, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fsub.h f16, f6, f18, dyn # perform operation
fsub.h f16, f6, f18, rdn # perform operation
fsub.h f16, f6, f18, rmm # perform operation
fsub.h f16, f6, f18, rne # perform operation
fsub.h f16, f6, f18, rtz # perform operation
fsub.h f16, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fsub.h f25, f16, f23, dyn # perform operation
fsub.h f25, f16, f23, rdn # perform operation
fsub.h f25, f16, f23, rmm # perform operation
fsub.h f25, f16, f23, rne # perform operation
fsub.h f25, f16, f23, rtz # perform operation
fsub.h f25, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fsub.h f3, f20, f2, dyn # perform operation
fsub.h f3, f20, f2, rdn # perform operation
fsub.h f3, f20, f2, rmm # perform operation
fsub.h f3, f20, f2, rne # perform operation
fsub.h f3, f20, f2, rtz # perform operation
fsub.h f3, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fsub.h f27, f18, f2, dyn # perform operation
fsub.h f27, f18, f2, rdn # perform operation
fsub.h f27, f18, f2, rmm # perform operation
fsub.h f27, f18, f2, rne # perform operation
fsub.h f27, f18, f2, rtz # perform operation
fsub.h f27, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fsub.h f21, f30, f28, dyn # perform operation
fsub.h f21, f30, f28, rdn # perform operation
fsub.h f21, f30, f28, rmm # perform operation
fsub.h f21, f30, f28, rne # perform operation
fsub.h f21, f30, f28, rtz # perform operation
fsub.h f21, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fsub.h f27, f1, f22, dyn # perform operation
fsub.h f27, f1, f22, rdn # perform operation
fsub.h f27, f1, f22, rmm # perform operation
fsub.h f27, f1, f22, rne # perform operation
fsub.h f27, f1, f22, rtz # perform operation
fsub.h f27, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fsub.h f27, f29, f13, dyn # perform operation
fsub.h f27, f29, f13, rdn # perform operation
fsub.h f27, f29, f13, rmm # perform operation
fsub.h f27, f29, f13, rne # perform operation
fsub.h f27, f29, f13, rtz # perform operation
fsub.h f27, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fsub.h f12, f7, f19, dyn # perform operation
fsub.h f12, f7, f19, rdn # perform operation
fsub.h f12, f7, f19, rmm # perform operation
fsub.h f12, f7, f19, rne # perform operation
fsub.h f12, f7, f19, rtz # perform operation
fsub.h f12, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fsub.h f27, f8, f9, dyn # perform operation
fsub.h f27, f8, f9, rdn # perform operation
fsub.h f27, f8, f9, rmm # perform operation
fsub.h f27, f8, f9, rne # perform operation
fsub.h f27, f8, f9, rtz # perform operation
fsub.h f27, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f8, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fsub.h f1, f9, f6, dyn # perform operation
fsub.h f1, f9, f6, rdn # perform operation
fsub.h f1, f9, f6, rmm # perform operation
fsub.h f1, f9, f6, rne # perform operation
fsub.h f1, f9, f6, rtz # perform operation
fsub.h f1, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f9, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fsub.h f15, f10, f3, dyn # perform operation
fsub.h f15, f10, f3, rdn # perform operation
fsub.h f15, f10, f3, rmm # perform operation
fsub.h f15, f10, f3, rne # perform operation
fsub.h f15, f10, f3, rtz # perform operation
fsub.h f15, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
fsub.h f18, f27, f13, dyn # perform operation
fsub.h f18, f27, f13, rdn # perform operation
fsub.h f18, f27, f13, rmm # perform operation
fsub.h f18, f27, f13, rne # perform operation
fsub.h f18, f27, f13, rtz # perform operation
fsub.h f18, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
fsub.h f9, f5, f18, dyn # perform operation
fsub.h f9, f5, f18, rdn # perform operation
fsub.h f9, f5, f18, rmm # perform operation
fsub.h f9, f5, f18, rne # perform operation
fsub.h f9, f5, f18, rtz # perform operation
fsub.h f9, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fsub.h f20, f15, f31, dyn # perform operation
fsub.h f20, f15, f31, rdn # perform operation
fsub.h f20, f15, f31, rmm # perform operation
fsub.h f20, f15, f31, rne # perform operation
fsub.h f20, f15, f31, rtz # perform operation
fsub.h f20, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
fsub.h f22, f31, f10, dyn # perform operation
fsub.h f22, f31, f10, rdn # perform operation
fsub.h f22, f31, f10, rmm # perform operation
fsub.h f22, f31, f10, rne # perform operation
fsub.h f22, f31, f10, rtz # perform operation
fsub.h f22, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fsub.h f30, f1, f31, dyn # perform operation
fsub.h f30, f1, f31, rdn # perform operation
fsub.h f30, f1, f31, rmm # perform operation
fsub.h f30, f1, f31, rne # perform operation
fsub.h f30, f1, f31, rtz # perform operation
fsub.h f30, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f1, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fsub.h f1, f23, f30, dyn # perform operation
fsub.h f1, f23, f30, rdn # perform operation
fsub.h f1, f23, f30, rmm # perform operation
fsub.h f1, f23, f30, rne # perform operation
fsub.h f1, f23, f30, rtz # perform operation
fsub.h f1, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fsub.h f6, f29, f30, dyn # perform operation
fsub.h f6, f29, f30, rdn # perform operation
fsub.h f6, f29, f30, rmm # perform operation
fsub.h f6, f29, f30, rne # perform operation
fsub.h f6, f29, f30, rtz # perform operation
fsub.h f6, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fsub.h f2, f12, f20, dyn # perform operation
fsub.h f2, f12, f20, rdn # perform operation
fsub.h f2, f12, f20, rmm # perform operation
fsub.h f2, f12, f20, rne # perform operation
fsub.h f2, f12, f20, rtz # perform operation
fsub.h f2, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fsub.h f31, f16, f14, dyn # perform operation
fsub.h f31, f16, f14, rdn # perform operation
fsub.h f31, f16, f14, rmm # perform operation
fsub.h f31, f16, f14, rne # perform operation
fsub.h f31, f16, f14, rtz # perform operation
fsub.h f31, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fsub.h f3, f15, f6, dyn # perform operation
fsub.h f3, f15, f6, rdn # perform operation
fsub.h f3, f15, f6, rmm # perform operation
fsub.h f3, f15, f6, rne # perform operation
fsub.h f3, f15, f6, rtz # perform operation
fsub.h f3, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fsub.h f27, f18, f10, dyn # perform operation
fsub.h f27, f18, f10, rdn # perform operation
fsub.h f27, f18, f10, rmm # perform operation
fsub.h f27, f18, f10, rne # perform operation
fsub.h f27, f18, f10, rtz # perform operation
fsub.h f27, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fsub.h f20, f30, f21, dyn # perform operation
fsub.h f20, f30, f21, rdn # perform operation
fsub.h f20, f30, f21, rmm # perform operation
fsub.h f20, f30, f21, rne # perform operation
fsub.h f20, f30, f21, rtz # perform operation
fsub.h f20, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fsub.h f30, f27, f18, dyn # perform operation
fsub.h f30, f27, f18, rdn # perform operation
fsub.h f30, f27, f18, rmm # perform operation
fsub.h f30, f27, f18, rne # perform operation
fsub.h f30, f27, f18, rtz # perform operation
fsub.h f30, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fsub.h f29, f22, f23, dyn # perform operation
fsub.h f29, f22, f23, rdn # perform operation
fsub.h f29, f22, f23, rmm # perform operation
fsub.h f29, f22, f23, rne # perform operation
fsub.h f29, f22, f23, rtz # perform operation
fsub.h f29, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fsub.h f14, f30, f19, dyn # perform operation
fsub.h f14, f30, f19, rdn # perform operation
fsub.h f14, f30, f19, rmm # perform operation
fsub.h f14, f30, f19, rne # perform operation
fsub.h f14, f30, f19, rtz # perform operation
fsub.h f14, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fsub.h f8, f30, f20, dyn # perform operation
fsub.h f8, f30, f20, rdn # perform operation
fsub.h f8, f30, f20, rmm # perform operation
fsub.h f8, f30, f20, rne # perform operation
fsub.h f8, f30, f20, rtz # perform operation
fsub.h f8, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fsub.h f31, f10, f7, dyn # perform operation
fsub.h f31, f10, f7, rdn # perform operation
fsub.h f31, f10, f7, rmm # perform operation
fsub.h f31, f10, f7, rne # perform operation
fsub.h f31, f10, f7, rtz # perform operation
fsub.h f31, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
fsub.h f21, f8, f22, dyn # perform operation
fsub.h f21, f8, f22, rdn # perform operation
fsub.h f21, f8, f22, rmm # perform operation
fsub.h f21, f8, f22, rne # perform operation
fsub.h f21, f8, f22, rtz # perform operation
fsub.h f21, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fsub.h f28, f7, f2, dyn # perform operation
fsub.h f28, f7, f2, rdn # perform operation
fsub.h f28, f7, f2, rmm # perform operation
fsub.h f28, f7, f2, rne # perform operation
fsub.h f28, f7, f2, rtz # perform operation
fsub.h f28, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fsub.h f3, f8, f28, dyn # perform operation
fsub.h f3, f8, f28, rdn # perform operation
fsub.h f3, f8, f28, rmm # perform operation
fsub.h f3, f8, f28, rne # perform operation
fsub.h f3, f8, f28, rtz # perform operation
fsub.h f3, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fsub.h f9, f3, f2, dyn # perform operation
fsub.h f9, f3, f2, rdn # perform operation
fsub.h f9, f3, f2, rmm # perform operation
fsub.h f9, f3, f2, rne # perform operation
fsub.h f9, f3, f2, rtz # perform operation
fsub.h f9, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fsub.h f14, f9, f24, dyn # perform operation
fsub.h f14, f9, f24, rdn # perform operation
fsub.h f14, f9, f24, rmm # perform operation
fsub.h f14, f9, f24, rne # perform operation
fsub.h f14, f9, f24, rtz # perform operation
fsub.h f14, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fsub.h f22, f2, f19, dyn # perform operation
fsub.h f22, f2, f19, rdn # perform operation
fsub.h f22, f2, f19, rmm # perform operation
fsub.h f22, f2, f19, rne # perform operation
fsub.h f22, f2, f19, rtz # perform operation
fsub.h f22, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fsub.h f14, f20, f26, dyn # perform operation
fsub.h f14, f20, f26, rdn # perform operation
fsub.h f14, f20, f26, rmm # perform operation
fsub.h f14, f20, f26, rne # perform operation
fsub.h f14, f20, f26, rtz # perform operation
fsub.h f14, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fsub.h f29, f21, f12, dyn # perform operation
fsub.h f29, f21, f12, rdn # perform operation
fsub.h f29, f21, f12, rmm # perform operation
fsub.h f29, f21, f12, rne # perform operation
fsub.h f29, f21, f12, rtz # perform operation
fsub.h f29, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fsub.h f19, f21, f9, dyn # perform operation
fsub.h f19, f21, f9, rdn # perform operation
fsub.h f19, f21, f9, rmm # perform operation
fsub.h f19, f21, f9, rne # perform operation
fsub.h f19, f21, f9, rtz # perform operation
fsub.h f19, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fsub.h f21, f12, f14, dyn # perform operation
fsub.h f21, f12, f14, rdn # perform operation
fsub.h f21, f12, f14, rmm # perform operation
fsub.h f21, f12, f14, rne # perform operation
fsub.h f21, f12, f14, rtz # perform operation
fsub.h f21, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fsub.h f21, f2, f6, dyn # perform operation
fsub.h f21, f2, f6, rdn # perform operation
fsub.h f21, f2, f6, rmm # perform operation
fsub.h f21, f2, f6, rne # perform operation
fsub.h f21, f2, f6, rtz # perform operation
fsub.h f21, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f2, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fsub.h f21, f29, f30, dyn # perform operation
fsub.h f21, f29, f30, rdn # perform operation
fsub.h f21, f29, f30, rmm # perform operation
fsub.h f21, f29, f30, rne # perform operation
fsub.h f21, f29, f30, rtz # perform operation
fsub.h f21, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fsub.h f18, f21, f8, dyn # perform operation
fsub.h f18, f21, f8, rdn # perform operation
fsub.h f18, f21, f8, rmm # perform operation
fsub.h f18, f21, f8, rne # perform operation
fsub.h f18, f21, f8, rtz # perform operation
fsub.h f18, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f21, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fsub.h f25, f3, f24, dyn # perform operation
fsub.h f25, f3, f24, rdn # perform operation
fsub.h f25, f3, f24, rmm # perform operation
fsub.h f25, f3, f24, rne # perform operation
fsub.h f25, f3, f24, rtz # perform operation
fsub.h f25, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
fsub.h f8, f22, f31, dyn # perform operation
fsub.h f8, f22, f31, rdn # perform operation
fsub.h f8, f22, f31, rmm # perform operation
fsub.h f8, f22, f31, rne # perform operation
fsub.h f8, f22, f31, rtz # perform operation
fsub.h f8, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fsub.h f5, f3, f18, dyn # perform operation
fsub.h f5, f3, f18, rdn # perform operation
fsub.h f5, f3, f18, rmm # perform operation
fsub.h f5, f3, f18, rne # perform operation
fsub.h f5, f3, f18, rtz # perform operation
fsub.h f5, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f3, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fsub.h f29, f12, f14, dyn # perform operation
fsub.h f29, f12, f14, rdn # perform operation
fsub.h f29, f12, f14, rmm # perform operation
fsub.h f29, f12, f14, rne # perform operation
fsub.h f29, f12, f14, rtz # perform operation
fsub.h f29, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fsub.h f16, f21, f25, dyn # perform operation
fsub.h f16, f21, f25, rdn # perform operation
fsub.h f16, f21, f25, rmm # perform operation
fsub.h f16, f21, f25, rne # perform operation
fsub.h f16, f21, f25, rtz # perform operation
fsub.h f16, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fsub.h f20, f5, f16, dyn # perform operation
fsub.h f20, f5, f16, rdn # perform operation
fsub.h f20, f5, f16, rmm # perform operation
fsub.h f20, f5, f16, rne # perform operation
fsub.h f20, f5, f16, rtz # perform operation
fsub.h f20, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fsub.h f10, f31, f17, dyn # perform operation
fsub.h f10, f31, f17, rdn # perform operation
fsub.h f10, f31, f17, rmm # perform operation
fsub.h f10, f31, f17, rne # perform operation
fsub.h f10, f31, f17, rtz # perform operation
fsub.h f10, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fsub.h f15, f27, f25, dyn # perform operation
fsub.h f15, f27, f25, rdn # perform operation
fsub.h f15, f27, f25, rmm # perform operation
fsub.h f15, f27, f25, rne # perform operation
fsub.h f15, f27, f25, rtz # perform operation
fsub.h f15, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fsub.h f14, f29, f1, dyn # perform operation
fsub.h f14, f29, f1, rdn # perform operation
fsub.h f14, f29, f1, rmm # perform operation
fsub.h f14, f29, f1, rne # perform operation
fsub.h f14, f29, f1, rtz # perform operation
fsub.h f14, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f29, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fsub.h f22, f7, f23, dyn # perform operation
fsub.h f22, f7, f23, rdn # perform operation
fsub.h f22, f7, f23, rmm # perform operation
fsub.h f22, f7, f23, rne # perform operation
fsub.h f22, f7, f23, rtz # perform operation
fsub.h f22, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f7, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fsub.h f28, f5, f27, dyn # perform operation
fsub.h f28, f5, f27, rdn # perform operation
fsub.h f28, f5, f27, rmm # perform operation
fsub.h f28, f5, f27, rne # perform operation
fsub.h f28, f5, f27, rtz # perform operation
fsub.h f28, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fsub.h f11, f18, f22, dyn # perform operation
fsub.h f11, f18, f22, rdn # perform operation
fsub.h f11, f18, f22, rmm # perform operation
fsub.h f11, f18, f22, rne # perform operation
fsub.h f11, f18, f22, rtz # perform operation
fsub.h f11, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fsub.h f30, f20, f13, dyn # perform operation
fsub.h f30, f20, f13, rdn # perform operation
fsub.h f30, f20, f13, rmm # perform operation
fsub.h f30, f20, f13, rne # perform operation
fsub.h f30, f20, f13, rtz # perform operation
fsub.h f30, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fsub.h f6, f28, f22, dyn # perform operation
fsub.h f6, f28, f22, rdn # perform operation
fsub.h f6, f28, f22, rmm # perform operation
fsub.h f6, f28, f22, rne # perform operation
fsub.h f6, f28, f22, rtz # perform operation
fsub.h f6, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fsub.h f11, f12, f10, dyn # perform operation
fsub.h f11, f12, f10, rdn # perform operation
fsub.h f11, f12, f10, rmm # perform operation
fsub.h f11, f12, f10, rne # perform operation
fsub.h f11, f12, f10, rtz # perform operation
fsub.h f11, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fsub.h f12, f21, f19, dyn # perform operation
fsub.h f12, f21, f19, rdn # perform operation
fsub.h f12, f21, f19, rmm # perform operation
fsub.h f12, f21, f19, rne # perform operation
fsub.h f12, f21, f19, rtz # perform operation
fsub.h f12, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fsub.h f30, f2, f12, dyn # perform operation
fsub.h f30, f2, f12, rdn # perform operation
fsub.h f30, f2, f12, rmm # perform operation
fsub.h f30, f2, f12, rne # perform operation
fsub.h f30, f2, f12, rtz # perform operation
fsub.h f30, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fsub.h f23, f25, f27, dyn # perform operation
fsub.h f23, f25, f27, rdn # perform operation
fsub.h f23, f25, f27, rmm # perform operation
fsub.h f23, f25, f27, rne # perform operation
fsub.h f23, f25, f27, rtz # perform operation
fsub.h f23, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fsub.h f2, f28, f17, dyn # perform operation
fsub.h f2, f28, f17, rdn # perform operation
fsub.h f2, f28, f17, rmm # perform operation
fsub.h f2, f28, f17, rne # perform operation
fsub.h f2, f28, f17, rtz # perform operation
fsub.h f2, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fsub.h f24, f3, f15, dyn # perform operation
fsub.h f24, f3, f15, rdn # perform operation
fsub.h f24, f3, f15, rmm # perform operation
fsub.h f24, f3, f15, rne # perform operation
fsub.h f24, f3, f15, rtz # perform operation
fsub.h f24, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fsub.h f24, f11, f9, dyn # perform operation
fsub.h f24, f11, f9, rdn # perform operation
fsub.h f24, f11, f9, rmm # perform operation
fsub.h f24, f11, f9, rne # perform operation
fsub.h f24, f11, f9, rtz # perform operation
fsub.h f24, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f11, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fsub.h f3, f22, f11, dyn # perform operation
fsub.h f3, f22, f11, rdn # perform operation
fsub.h f3, f22, f11, rmm # perform operation
fsub.h f3, f22, f11, rne # perform operation
fsub.h f3, f22, f11, rtz # perform operation
fsub.h f3, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fsub.h f3, f14, f25, dyn # perform operation
fsub.h f3, f14, f25, rdn # perform operation
fsub.h f3, f14, f25, rmm # perform operation
fsub.h f3, f14, f25, rne # perform operation
fsub.h f3, f14, f25, rtz # perform operation
fsub.h f3, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fsub.h f27, f14, f28, dyn # perform operation
fsub.h f27, f14, f28, rdn # perform operation
fsub.h f27, f14, f28, rmm # perform operation
fsub.h f27, f14, f28, rne # perform operation
fsub.h f27, f14, f28, rtz # perform operation
fsub.h f27, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fsub.h f15, f6, f10, dyn # perform operation
fsub.h f15, f6, f10, rdn # perform operation
fsub.h f15, f6, f10, rmm # perform operation
fsub.h f15, f6, f10, rne # perform operation
fsub.h f15, f6, f10, rtz # perform operation
fsub.h f15, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fsub.h f24, f20, f6, dyn # perform operation
fsub.h f24, f20, f6, rdn # perform operation
fsub.h f24, f20, f6, rmm # perform operation
fsub.h f24, f20, f6, rne # perform operation
fsub.h f24, f20, f6, rtz # perform operation
fsub.h f24, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f20, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
fsub.h f7, f5, f12, dyn # perform operation
fsub.h f7, f5, f12, rdn # perform operation
fsub.h f7, f5, f12, rmm # perform operation
fsub.h f7, f5, f12, rne # perform operation
fsub.h f7, f5, f12, rtz # perform operation
fsub.h f7, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fsub.h f6, f9, f25, dyn # perform operation
fsub.h f6, f9, f25, rdn # perform operation
fsub.h f6, f9, f25, rmm # perform operation
fsub.h f6, f9, f25, rne # perform operation
fsub.h f6, f9, f25, rtz # perform operation
fsub.h f6, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fsub.h f28, f17, f31, dyn # perform operation
fsub.h f28, f17, f31, rdn # perform operation
fsub.h f28, f17, f31, rmm # perform operation
fsub.h f28, f17, f31, rne # perform operation
fsub.h f28, f17, f31, rtz # perform operation
fsub.h f28, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f17, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
fsub.h f12, f18, f9, dyn # perform operation
fsub.h f12, f18, f9, rdn # perform operation
fsub.h f12, f18, f9, rmm # perform operation
fsub.h f12, f18, f9, rne # perform operation
fsub.h f12, f18, f9, rtz # perform operation
fsub.h f12, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fsub.h f17, f27, f3, dyn # perform operation
fsub.h f17, f27, f3, rdn # perform operation
fsub.h f17, f27, f3, rmm # perform operation
fsub.h f17, f27, f3, rne # perform operation
fsub.h f17, f27, f3, rtz # perform operation
fsub.h f17, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fsub.h f28, f23, f31, dyn # perform operation
fsub.h f28, f23, f31, rdn # perform operation
fsub.h f28, f23, f31, rmm # perform operation
fsub.h f28, f23, f31, rne # perform operation
fsub.h f28, f23, f31, rtz # perform operation
fsub.h f28, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fsub.h f16, f17, f23, dyn # perform operation
fsub.h f16, f17, f23, rdn # perform operation
fsub.h f16, f17, f23, rmm # perform operation
fsub.h f16, f17, f23, rne # perform operation
fsub.h f16, f17, f23, rtz # perform operation
fsub.h f16, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fsub.h f5, f26, f27, dyn # perform operation
fsub.h f5, f26, f27, rdn # perform operation
fsub.h f5, f26, f27, rmm # perform operation
fsub.h f5, f26, f27, rne # perform operation
fsub.h f5, f26, f27, rtz # perform operation
fsub.h f5, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fsub.h f28, f13, f30, dyn # perform operation
fsub.h f28, f13, f30, rdn # perform operation
fsub.h f28, f13, f30, rmm # perform operation
fsub.h f28, f13, f30, rne # perform operation
fsub.h f28, f13, f30, rtz # perform operation
fsub.h f28, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fsub.h f14, f29, f6, dyn # perform operation
fsub.h f14, f29, f6, rdn # perform operation
fsub.h f14, f29, f6, rmm # perform operation
fsub.h f14, f29, f6, rne # perform operation
fsub.h f14, f29, f6, rtz # perform operation
fsub.h f14, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fsub.h f16, f28, f5, dyn # perform operation
fsub.h f16, f28, f5, rdn # perform operation
fsub.h f16, f28, f5, rmm # perform operation
fsub.h f16, f28, f5, rne # perform operation
fsub.h f16, f28, f5, rtz # perform operation
fsub.h f16, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fsub.h f10, f13, f6, dyn # perform operation
fsub.h f10, f13, f6, rdn # perform operation
fsub.h f10, f13, f6, rmm # perform operation
fsub.h f10, f13, f6, rne # perform operation
fsub.h f10, f13, f6, rtz # perform operation
fsub.h f10, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fsub.h f8, f15, f29, dyn # perform operation
fsub.h f8, f15, f29, rdn # perform operation
fsub.h f8, f15, f29, rmm # perform operation
fsub.h f8, f15, f29, rne # perform operation
fsub.h f8, f15, f29, rtz # perform operation
fsub.h f8, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fsub.h f11, f10, f2, dyn # perform operation
fsub.h f11, f10, f2, rdn # perform operation
fsub.h f11, f10, f2, rmm # perform operation
fsub.h f11, f10, f2, rne # perform operation
fsub.h f11, f10, f2, rtz # perform operation
fsub.h f11, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fsub.h f25, f18, f11, dyn # perform operation
fsub.h f25, f18, f11, rdn # perform operation
fsub.h f25, f18, f11, rmm # perform operation
fsub.h f25, f18, f11, rne # perform operation
fsub.h f25, f18, f11, rtz # perform operation
fsub.h f25, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f18, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fsub.h f5, f7, f25, dyn # perform operation
fsub.h f5, f7, f25, rdn # perform operation
fsub.h f5, f7, f25, rmm # perform operation
fsub.h f5, f7, f25, rne # perform operation
fsub.h f5, f7, f25, rtz # perform operation
fsub.h f5, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fsub.h f23, f30, f27, dyn # perform operation
fsub.h f23, f30, f27, rdn # perform operation
fsub.h f23, f30, f27, rmm # perform operation
fsub.h f23, f30, f27, rne # perform operation
fsub.h f23, f30, f27, rtz # perform operation
fsub.h f23, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fsub.h f7, f22, f6, dyn # perform operation
fsub.h f7, f22, f6, rdn # perform operation
fsub.h f7, f22, f6, rmm # perform operation
fsub.h f7, f22, f6, rne # perform operation
fsub.h f7, f22, f6, rtz # perform operation
fsub.h f7, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f22, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fsub.h f16, f14, f26, dyn # perform operation
fsub.h f16, f14, f26, rdn # perform operation
fsub.h f16, f14, f26, rmm # perform operation
fsub.h f16, f14, f26, rne # perform operation
fsub.h f16, f14, f26, rtz # perform operation
fsub.h f16, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fsub.h f28, f8, f16, dyn # perform operation
fsub.h f28, f8, f16, rdn # perform operation
fsub.h f28, f8, f16, rmm # perform operation
fsub.h f28, f8, f16, rne # perform operation
fsub.h f28, f8, f16, rtz # perform operation
fsub.h f28, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fsub.h f28, f11, f22, dyn # perform operation
fsub.h f28, f11, f22, rdn # perform operation
fsub.h f28, f11, f22, rmm # perform operation
fsub.h f28, f11, f22, rne # perform operation
fsub.h f28, f11, f22, rtz # perform operation
fsub.h f28, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fsub.h f22, f27, f15, dyn # perform operation
fsub.h f22, f27, f15, rdn # perform operation
fsub.h f22, f27, f15, rmm # perform operation
fsub.h f22, f27, f15, rne # perform operation
fsub.h f22, f27, f15, rtz # perform operation
fsub.h f22, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fsub.h f27, f7, f6, dyn # perform operation
fsub.h f27, f7, f6, rdn # perform operation
fsub.h f27, f7, f6, rmm # perform operation
fsub.h f27, f7, f6, rne # perform operation
fsub.h f27, f7, f6, rtz # perform operation
fsub.h f27, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fsub.h f6, f20, f7, dyn # perform operation
fsub.h f6, f20, f7, rdn # perform operation
fsub.h f6, f20, f7, rmm # perform operation
fsub.h f6, f20, f7, rne # perform operation
fsub.h f6, f20, f7, rtz # perform operation
fsub.h f6, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fsub.h f24, f28, f1, dyn # perform operation
fsub.h f24, f28, f1, rdn # perform operation
fsub.h f24, f28, f1, rmm # perform operation
fsub.h f24, f28, f1, rne # perform operation
fsub.h f24, f28, f1, rtz # perform operation
fsub.h f24, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fsub.h f7, f19, f10, dyn # perform operation
fsub.h f7, f19, f10, rdn # perform operation
fsub.h f7, f19, f10, rmm # perform operation
fsub.h f7, f19, f10, rne # perform operation
fsub.h f7, f19, f10, rtz # perform operation
fsub.h f7, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fsub.h f2, f3, f19, dyn # perform operation
fsub.h f2, f3, f19, rdn # perform operation
fsub.h f2, f3, f19, rmm # perform operation
fsub.h f2, f3, f19, rne # perform operation
fsub.h f2, f3, f19, rtz # perform operation
fsub.h f2, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fsub.h f15, f13, f20, dyn # perform operation
fsub.h f15, f13, f20, rdn # perform operation
fsub.h f15, f13, f20, rmm # perform operation
fsub.h f15, f13, f20, rne # perform operation
fsub.h f15, f13, f20, rtz # perform operation
fsub.h f15, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fsub.h f16, f25, f10, dyn # perform operation
fsub.h f16, f25, f10, rdn # perform operation
fsub.h f16, f25, f10, rmm # perform operation
fsub.h f16, f25, f10, rne # perform operation
fsub.h f16, f25, f10, rtz # perform operation
fsub.h f16, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fsub.h f11, f21, f27, dyn # perform operation
fsub.h f11, f21, f27, rdn # perform operation
fsub.h f11, f21, f27, rmm # perform operation
fsub.h f11, f21, f27, rne # perform operation
fsub.h f11, f21, f27, rtz # perform operation
fsub.h f11, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fsub.h f16, f26, f12, dyn # perform operation
fsub.h f16, f26, f12, rdn # perform operation
fsub.h f16, f26, f12, rmm # perform operation
fsub.h f16, f26, f12, rne # perform operation
fsub.h f16, f26, f12, rtz # perform operation
fsub.h f16, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
fsub.h f29, f3, f2, dyn # perform operation
fsub.h f29, f3, f2, rdn # perform operation
fsub.h f29, f3, f2, rmm # perform operation
fsub.h f29, f3, f2, rne # perform operation
fsub.h f29, f3, f2, rtz # perform operation
fsub.h f29, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fsub.h f26, f11, f10, dyn # perform operation
fsub.h f26, f11, f10, rdn # perform operation
fsub.h f26, f11, f10, rmm # perform operation
fsub.h f26, f11, f10, rne # perform operation
fsub.h f26, f11, f10, rtz # perform operation
fsub.h f26, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fsub.h f28, f21, f29, dyn # perform operation
fsub.h f28, f21, f29, rdn # perform operation
fsub.h f28, f21, f29, rmm # perform operation
fsub.h f28, f21, f29, rne # perform operation
fsub.h f28, f21, f29, rtz # perform operation
fsub.h f28, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fsub.h f31, f15, f20, dyn # perform operation
fsub.h f31, f15, f20, rdn # perform operation
fsub.h f31, f15, f20, rmm # perform operation
fsub.h f31, f15, f20, rne # perform operation
fsub.h f31, f15, f20, rtz # perform operation
fsub.h f31, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fsub.h f14, f29, f11, dyn # perform operation
fsub.h f14, f29, f11, rdn # perform operation
fsub.h f14, f29, f11, rmm # perform operation
fsub.h f14, f29, f11, rne # perform operation
fsub.h f14, f29, f11, rtz # perform operation
fsub.h f14, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fsub.h f2, f8, f3, dyn # perform operation
fsub.h f2, f8, f3, rdn # perform operation
fsub.h f2, f8, f3, rmm # perform operation
fsub.h f2, f8, f3, rne # perform operation
fsub.h f2, f8, f3, rtz # perform operation
fsub.h f2, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fsub.h f21, f14, f16, dyn # perform operation
fsub.h f21, f14, f16, rdn # perform operation
fsub.h f21, f14, f16, rmm # perform operation
fsub.h f21, f14, f16, rne # perform operation
fsub.h f21, f14, f16, rtz # perform operation
fsub.h f21, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fsub.h f2, f9, f18, dyn # perform operation
fsub.h f2, f9, f18, rdn # perform operation
fsub.h f2, f9, f18, rmm # perform operation
fsub.h f2, f9, f18, rne # perform operation
fsub.h f2, f9, f18, rtz # perform operation
fsub.h f2, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fsub.h f15, f8, f29, dyn # perform operation
fsub.h f15, f8, f29, rdn # perform operation
fsub.h f15, f8, f29, rmm # perform operation
fsub.h f15, f8, f29, rne # perform operation
fsub.h f15, f8, f29, rtz # perform operation
fsub.h f15, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f8, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fsub.h f9, f15, f21, dyn # perform operation
fsub.h f9, f15, f21, rdn # perform operation
fsub.h f9, f15, f21, rmm # perform operation
fsub.h f9, f15, f21, rne # perform operation
fsub.h f9, f15, f21, rtz # perform operation
fsub.h f9, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fsub.h f23, f12, f7, dyn # perform operation
fsub.h f23, f12, f7, rdn # perform operation
fsub.h f23, f12, f7, rmm # perform operation
fsub.h f23, f12, f7, rne # perform operation
fsub.h f23, f12, f7, rtz # perform operation
fsub.h f23, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fsub.h f16, f27, f26, dyn # perform operation
fsub.h f16, f27, f26, rdn # perform operation
fsub.h f16, f27, f26, rmm # perform operation
fsub.h f16, f27, f26, rne # perform operation
fsub.h f16, f27, f26, rtz # perform operation
fsub.h f16, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fsub.h f29, f23, f14, dyn # perform operation
fsub.h f29, f23, f14, rdn # perform operation
fsub.h f29, f23, f14, rmm # perform operation
fsub.h f29, f23, f14, rne # perform operation
fsub.h f29, f23, f14, rtz # perform operation
fsub.h f29, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fsub.h f18, f20, f10, dyn # perform operation
fsub.h f18, f20, f10, rdn # perform operation
fsub.h f18, f20, f10, rmm # perform operation
fsub.h f18, f20, f10, rne # perform operation
fsub.h f18, f20, f10, rtz # perform operation
fsub.h f18, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
fsub.h f26, f25, f9, dyn # perform operation
fsub.h f26, f25, f9, rdn # perform operation
fsub.h f26, f25, f9, rmm # perform operation
fsub.h f26, f25, f9, rne # perform operation
fsub.h f26, f25, f9, rtz # perform operation
fsub.h f26, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fsub.h f21, f17, f12, dyn # perform operation
fsub.h f21, f17, f12, rdn # perform operation
fsub.h f21, f17, f12, rmm # perform operation
fsub.h f21, f17, f12, rne # perform operation
fsub.h f21, f17, f12, rtz # perform operation
fsub.h f21, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fsub.h f30, f1, f24, dyn # perform operation
fsub.h f30, f1, f24, rdn # perform operation
fsub.h f30, f1, f24, rmm # perform operation
fsub.h f30, f1, f24, rne # perform operation
fsub.h f30, f1, f24, rtz # perform operation
fsub.h f30, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fsub.h f7, f1, f2, dyn # perform operation
fsub.h f7, f1, f2, rdn # perform operation
fsub.h f7, f1, f2, rmm # perform operation
fsub.h f7, f1, f2, rne # perform operation
fsub.h f7, f1, f2, rtz # perform operation
fsub.h f7, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fsub.h f28, f24, f8, dyn # perform operation
fsub.h f28, f24, f8, rdn # perform operation
fsub.h f28, f24, f8, rmm # perform operation
fsub.h f28, f24, f8, rne # perform operation
fsub.h f28, f24, f8, rtz # perform operation
fsub.h f28, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fsub.h f1, f11, f27, dyn # perform operation
fsub.h f1, f11, f27, rdn # perform operation
fsub.h f1, f11, f27, rmm # perform operation
fsub.h f1, f11, f27, rne # perform operation
fsub.h f1, f11, f27, rtz # perform operation
fsub.h f1, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fsub.h f20, f10, f3, dyn # perform operation
fsub.h f20, f10, f3, rdn # perform operation
fsub.h f20, f10, f3, rmm # perform operation
fsub.h f20, f10, f3, rne # perform operation
fsub.h f20, f10, f3, rtz # perform operation
fsub.h f20, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fsub.h f16, f12, f11, dyn # perform operation
fsub.h f16, f12, f11, rdn # perform operation
fsub.h f16, f12, f11, rmm # perform operation
fsub.h f16, f12, f11, rne # perform operation
fsub.h f16, f12, f11, rtz # perform operation
fsub.h f16, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fsub.h f16, f20, f31, dyn # perform operation
fsub.h f16, f20, f31, rdn # perform operation
fsub.h f16, f20, f31, rmm # perform operation
fsub.h f16, f20, f31, rne # perform operation
fsub.h f16, f20, f31, rtz # perform operation
fsub.h f16, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fsub.h f6, f21, f8, dyn # perform operation
fsub.h f6, f21, f8, rdn # perform operation
fsub.h f6, f21, f8, rmm # perform operation
fsub.h f6, f21, f8, rne # perform operation
fsub.h f6, f21, f8, rtz # perform operation
fsub.h f6, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f21, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fsub.h f21, f30, f6, dyn # perform operation
fsub.h f21, f30, f6, rdn # perform operation
fsub.h f21, f30, f6, rmm # perform operation
fsub.h f21, f30, f6, rne # perform operation
fsub.h f21, f30, f6, rtz # perform operation
fsub.h f21, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
fsub.h f13, f31, f1, dyn # perform operation
fsub.h f13, f31, f1, rdn # perform operation
fsub.h f13, f31, f1, rmm # perform operation
fsub.h f13, f31, f1, rne # perform operation
fsub.h f13, f31, f1, rtz # perform operation
fsub.h f13, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fsub.h f26, f14, f11, dyn # perform operation
fsub.h f26, f14, f11, rdn # perform operation
fsub.h f26, f14, f11, rmm # perform operation
fsub.h f26, f14, f11, rne # perform operation
fsub.h f26, f14, f11, rtz # perform operation
fsub.h f26, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fsub.h f7, f17, f10, dyn # perform operation
fsub.h f7, f17, f10, rdn # perform operation
fsub.h f7, f17, f10, rmm # perform operation
fsub.h f7, f17, f10, rne # perform operation
fsub.h f7, f17, f10, rtz # perform operation
fsub.h f7, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
fsub.h f27, f3, f25, dyn # perform operation
fsub.h f27, f3, f25, rdn # perform operation
fsub.h f27, f3, f25, rmm # perform operation
fsub.h f27, f3, f25, rne # perform operation
fsub.h f27, f3, f25, rtz # perform operation
fsub.h f27, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f3, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fsub.h f2, f31, f25, dyn # perform operation
fsub.h f2, f31, f25, rdn # perform operation
fsub.h f2, f31, f25, rmm # perform operation
fsub.h f2, f31, f25, rne # perform operation
fsub.h f2, f31, f25, rtz # perform operation
fsub.h f2, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f31, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fsub.h f16, f11, f21, dyn # perform operation
fsub.h f16, f11, f21, rdn # perform operation
fsub.h f16, f11, f21, rmm # perform operation
fsub.h f16, f11, f21, rne # perform operation
fsub.h f16, f11, f21, rtz # perform operation
fsub.h f16, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fsub.h f6, f20, f25, dyn # perform operation
fsub.h f6, f20, f25, rdn # perform operation
fsub.h f6, f20, f25, rmm # perform operation
fsub.h f6, f20, f25, rne # perform operation
fsub.h f6, f20, f25, rtz # perform operation
fsub.h f6, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fsub.h f16, f23, f24, dyn # perform operation
fsub.h f16, f23, f24, rdn # perform operation
fsub.h f16, f23, f24, rmm # perform operation
fsub.h f16, f23, f24, rne # perform operation
fsub.h f16, f23, f24, rtz # perform operation
fsub.h f16, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fsub.h f1, f5, f13, dyn # perform operation
fsub.h f1, f5, f13, rdn # perform operation
fsub.h f1, f5, f13, rmm # perform operation
fsub.h f1, f5, f13, rne # perform operation
fsub.h f1, f5, f13, rtz # perform operation
fsub.h f1, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fsub.h f12, f29, f5, dyn # perform operation
fsub.h f12, f29, f5, rdn # perform operation
fsub.h f12, f29, f5, rmm # perform operation
fsub.h f12, f29, f5, rne # perform operation
fsub.h f12, f29, f5, rtz # perform operation
fsub.h f12, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fsub.h f28, f22, f1, dyn # perform operation
fsub.h f28, f22, f1, rdn # perform operation
fsub.h f28, f22, f1, rmm # perform operation
fsub.h f28, f22, f1, rne # perform operation
fsub.h f28, f22, f1, rtz # perform operation
fsub.h f28, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fsub.h f20, f13, f2, dyn # perform operation
fsub.h f20, f13, f2, rdn # perform operation
fsub.h f20, f13, f2, rmm # perform operation
fsub.h f20, f13, f2, rne # perform operation
fsub.h f20, f13, f2, rtz # perform operation
fsub.h f20, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fsub.h f28, f8, f31, dyn # perform operation
fsub.h f28, f8, f31, rdn # perform operation
fsub.h f28, f8, f31, rmm # perform operation
fsub.h f28, f8, f31, rne # perform operation
fsub.h f28, f8, f31, rtz # perform operation
fsub.h f28, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fsub.h f21, f30, f27, dyn # perform operation
fsub.h f21, f30, f27, rdn # perform operation
fsub.h f21, f30, f27, rmm # perform operation
fsub.h f21, f30, f27, rne # perform operation
fsub.h f21, f30, f27, rtz # perform operation
fsub.h f21, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fsub.h f27, f7, f13, dyn # perform operation
fsub.h f27, f7, f13, rdn # perform operation
fsub.h f27, f7, f13, rmm # perform operation
fsub.h f27, f7, f13, rne # perform operation
fsub.h f27, f7, f13, rtz # perform operation
fsub.h f27, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fsub.h f27, f20, f7, dyn # perform operation
fsub.h f27, f20, f7, rdn # perform operation
fsub.h f27, f20, f7, rmm # perform operation
fsub.h f27, f20, f7, rne # perform operation
fsub.h f27, f20, f7, rtz # perform operation
fsub.h f27, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fsub.h f25, f26, f8, dyn # perform operation
fsub.h f25, f26, f8, rdn # perform operation
fsub.h f25, f26, f8, rmm # perform operation
fsub.h f25, f26, f8, rne # perform operation
fsub.h f25, f26, f8, rtz # perform operation
fsub.h f25, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fsub.h f22, f9, f28, dyn # perform operation
fsub.h f22, f9, f28, rdn # perform operation
fsub.h f22, f9, f28, rmm # perform operation
fsub.h f22, f9, f28, rne # perform operation
fsub.h f22, f9, f28, rtz # perform operation
fsub.h f22, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fsub.h f30, f16, f2, dyn # perform operation
fsub.h f30, f16, f2, rdn # perform operation
fsub.h f30, f16, f2, rmm # perform operation
fsub.h f30, f16, f2, rne # perform operation
fsub.h f30, f16, f2, rtz # perform operation
fsub.h f30, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fsub.h f22, f23, f14, dyn # perform operation
fsub.h f22, f23, f14, rdn # perform operation
fsub.h f22, f23, f14, rmm # perform operation
fsub.h f22, f23, f14, rne # perform operation
fsub.h f22, f23, f14, rtz # perform operation
fsub.h f22, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
fsub.h f9, f3, f21, dyn # perform operation
fsub.h f9, f3, f21, rdn # perform operation
fsub.h f9, f3, f21, rmm # perform operation
fsub.h f9, f3, f21, rne # perform operation
fsub.h f9, f3, f21, rtz # perform operation
fsub.h f9, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fsub.h f6, f24, f12, dyn # perform operation
fsub.h f6, f24, f12, rdn # perform operation
fsub.h f6, f24, f12, rmm # perform operation
fsub.h f6, f24, f12, rne # perform operation
fsub.h f6, f24, f12, rtz # perform operation
fsub.h f6, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fsub.h f17, f1, f5, dyn # perform operation
fsub.h f17, f1, f5, rdn # perform operation
fsub.h f17, f1, f5, rmm # perform operation
fsub.h f17, f1, f5, rne # perform operation
fsub.h f17, f1, f5, rtz # perform operation
fsub.h f17, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f1, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fsub.h f19, f26, f7, dyn # perform operation
fsub.h f19, f26, f7, rdn # perform operation
fsub.h f19, f26, f7, rmm # perform operation
fsub.h f19, f26, f7, rne # perform operation
fsub.h f19, f26, f7, rtz # perform operation
fsub.h f19, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fsub.h f2, f21, f1, dyn # perform operation
fsub.h f2, f21, f1, rdn # perform operation
fsub.h f2, f21, f1, rmm # perform operation
fsub.h f2, f21, f1, rne # perform operation
fsub.h f2, f21, f1, rtz # perform operation
fsub.h f2, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fsub.h f26, f11, f14, dyn # perform operation
fsub.h f26, f11, f14, rdn # perform operation
fsub.h f26, f11, f14, rmm # perform operation
fsub.h f26, f11, f14, rne # perform operation
fsub.h f26, f11, f14, rtz # perform operation
fsub.h f26, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f11, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fsub.h f13, f12, f19, dyn # perform operation
fsub.h f13, f12, f19, rdn # perform operation
fsub.h f13, f12, f19, rmm # perform operation
fsub.h f13, f12, f19, rne # perform operation
fsub.h f13, f12, f19, rtz # perform operation
fsub.h f13, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f12, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fsub.h f23, f21, f27, dyn # perform operation
fsub.h f23, f21, f27, rdn # perform operation
fsub.h f23, f21, f27, rmm # perform operation
fsub.h f23, f21, f27, rne # perform operation
fsub.h f23, f21, f27, rtz # perform operation
fsub.h f23, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fsub.h f26, f25, f10, dyn # perform operation
fsub.h f26, f25, f10, rdn # perform operation
fsub.h f26, f25, f10, rmm # perform operation
fsub.h f26, f25, f10, rne # perform operation
fsub.h f26, f25, f10, rtz # perform operation
fsub.h f26, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fsub.h f9, f19, f5, dyn # perform operation
fsub.h f9, f19, f5, rdn # perform operation
fsub.h f9, f19, f5, rmm # perform operation
fsub.h f9, f19, f5, rne # perform operation
fsub.h f9, f19, f5, rtz # perform operation
fsub.h f9, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fsub.h f29, f10, f16, dyn # perform operation
fsub.h f29, f10, f16, rdn # perform operation
fsub.h f29, f10, f16, rmm # perform operation
fsub.h f29, f10, f16, rne # perform operation
fsub.h f29, f10, f16, rtz # perform operation
fsub.h f29, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
fsub.h f26, f3, f30, dyn # perform operation
fsub.h f26, f3, f30, rdn # perform operation
fsub.h f26, f3, f30, rmm # perform operation
fsub.h f26, f3, f30, rne # perform operation
fsub.h f26, f3, f30, rtz # perform operation
fsub.h f26, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fsub.h f10, f14, f19, dyn # perform operation
fsub.h f10, f14, f19, rdn # perform operation
fsub.h f10, f14, f19, rmm # perform operation
fsub.h f10, f14, f19, rne # perform operation
fsub.h f10, f14, f19, rtz # perform operation
fsub.h f10, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fsub.h f27, f9, f14, dyn # perform operation
fsub.h f27, f9, f14, rdn # perform operation
fsub.h f27, f9, f14, rmm # perform operation
fsub.h f27, f9, f14, rne # perform operation
fsub.h f27, f9, f14, rtz # perform operation
fsub.h f27, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fsub.h f30, f17, f12, dyn # perform operation
fsub.h f30, f17, f12, rdn # perform operation
fsub.h f30, f17, f12, rmm # perform operation
fsub.h f30, f17, f12, rne # perform operation
fsub.h f30, f17, f12, rtz # perform operation
fsub.h f30, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fsub.h f1, f30, f12, dyn # perform operation
fsub.h f1, f30, f12, rdn # perform operation
fsub.h f1, f30, f12, rmm # perform operation
fsub.h f1, f30, f12, rne # perform operation
fsub.h f1, f30, f12, rtz # perform operation
fsub.h f1, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fsub.h f15, f19, f28, dyn # perform operation
fsub.h f15, f19, f28, rdn # perform operation
fsub.h f15, f19, f28, rmm # perform operation
fsub.h f15, f19, f28, rne # perform operation
fsub.h f15, f19, f28, rtz # perform operation
fsub.h f15, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fsub.h f8, f5, f11, dyn # perform operation
fsub.h f8, f5, f11, rdn # perform operation
fsub.h f8, f5, f11, rmm # perform operation
fsub.h f8, f5, f11, rne # perform operation
fsub.h f8, f5, f11, rtz # perform operation
fsub.h f8, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fsub.h f13, f31, f11, dyn # perform operation
fsub.h f13, f31, f11, rdn # perform operation
fsub.h f13, f31, f11, rmm # perform operation
fsub.h f13, f31, f11, rne # perform operation
fsub.h f13, f31, f11, rtz # perform operation
fsub.h f13, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fsub.h f5, f1, f20, dyn # perform operation
fsub.h f5, f1, f20, rdn # perform operation
fsub.h f5, f1, f20, rmm # perform operation
fsub.h f5, f1, f20, rne # perform operation
fsub.h f5, f1, f20, rtz # perform operation
fsub.h f5, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
fsub.h f3, f25, f8, dyn # perform operation
fsub.h f3, f25, f8, rdn # perform operation
fsub.h f3, f25, f8, rmm # perform operation
fsub.h f3, f25, f8, rne # perform operation
fsub.h f3, f25, f8, rtz # perform operation
fsub.h f3, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f25, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
fsub.h f1, f9, f19, dyn # perform operation
fsub.h f1, f9, f19, rdn # perform operation
fsub.h f1, f9, f19, rmm # perform operation
fsub.h f1, f9, f19, rne # perform operation
fsub.h f1, f9, f19, rtz # perform operation
fsub.h f1, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fsub.h f1, f10, f17, dyn # perform operation
fsub.h f1, f10, f17, rdn # perform operation
fsub.h f1, f10, f17, rmm # perform operation
fsub.h f1, f10, f17, rne # perform operation
fsub.h f1, f10, f17, rtz # perform operation
fsub.h f1, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fsub.h f2, f18, f1, dyn # perform operation
fsub.h f2, f18, f1, rdn # perform operation
fsub.h f2, f18, f1, rmm # perform operation
fsub.h f2, f18, f1, rne # perform operation
fsub.h f2, f18, f1, rtz # perform operation
fsub.h f2, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fsub.h f12, f15, f25, dyn # perform operation
fsub.h f12, f15, f25, rdn # perform operation
fsub.h f12, f15, f25, rmm # perform operation
fsub.h f12, f15, f25, rne # perform operation
fsub.h f12, f15, f25, rtz # perform operation
fsub.h f12, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fsub.h f23, f8, f3, dyn # perform operation
fsub.h f23, f8, f3, rdn # perform operation
fsub.h f23, f8, f3, rmm # perform operation
fsub.h f23, f8, f3, rne # perform operation
fsub.h f23, f8, f3, rtz # perform operation
fsub.h f23, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fsub.h f22, f14, f27, dyn # perform operation
fsub.h f22, f14, f27, rdn # perform operation
fsub.h f22, f14, f27, rmm # perform operation
fsub.h f22, f14, f27, rne # perform operation
fsub.h f22, f14, f27, rtz # perform operation
fsub.h f22, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fsub.h f11, f27, f31, dyn # perform operation
fsub.h f11, f27, f31, rdn # perform operation
fsub.h f11, f27, f31, rmm # perform operation
fsub.h f11, f27, f31, rne # perform operation
fsub.h f11, f27, f31, rtz # perform operation
fsub.h f11, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f27, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fsub.h f31, f26, f12, dyn # perform operation
fsub.h f31, f26, f12, rdn # perform operation
fsub.h f31, f26, f12, rmm # perform operation
fsub.h f31, f26, f12, rne # perform operation
fsub.h f31, f26, f12, rtz # perform operation
fsub.h f31, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fsub.h f14, f29, f10, dyn # perform operation
fsub.h f14, f29, f10, rdn # perform operation
fsub.h f14, f29, f10, rmm # perform operation
fsub.h f14, f29, f10, rne # perform operation
fsub.h f14, f29, f10, rtz # perform operation
fsub.h f14, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fsub.h f9, f26, f12, dyn # perform operation
fsub.h f9, f26, f12, rdn # perform operation
fsub.h f9, f26, f12, rmm # perform operation
fsub.h f9, f26, f12, rne # perform operation
fsub.h f9, f26, f12, rtz # perform operation
fsub.h f9, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fsub.h f24, f11, f19, dyn # perform operation
fsub.h f24, f11, f19, rdn # perform operation
fsub.h f24, f11, f19, rmm # perform operation
fsub.h f24, f11, f19, rne # perform operation
fsub.h f24, f11, f19, rtz # perform operation
fsub.h f24, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fsub.h f25, f24, f16, dyn # perform operation
fsub.h f25, f24, f16, rdn # perform operation
fsub.h f25, f24, f16, rmm # perform operation
fsub.h f25, f24, f16, rne # perform operation
fsub.h f25, f24, f16, rtz # perform operation
fsub.h f25, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fsub.h f19, f15, f29, dyn # perform operation
fsub.h f19, f15, f29, rdn # perform operation
fsub.h f19, f15, f29, rmm # perform operation
fsub.h f19, f15, f29, rne # perform operation
fsub.h f19, f15, f29, rtz # perform operation
fsub.h f19, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fsub.h f19, f14, f16, dyn # perform operation
fsub.h f19, f14, f16, rdn # perform operation
fsub.h f19, f14, f16, rmm # perform operation
fsub.h f19, f14, f16, rne # perform operation
fsub.h f19, f14, f16, rtz # perform operation
fsub.h f19, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fsub.h f23, f30, f17, dyn # perform operation
fsub.h f23, f30, f17, rdn # perform operation
fsub.h f23, f30, f17, rmm # perform operation
fsub.h f23, f30, f17, rne # perform operation
fsub.h f23, f30, f17, rtz # perform operation
fsub.h f23, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
fsub.h f5, f19, f29, dyn # perform operation
fsub.h f5, f19, f29, rdn # perform operation
fsub.h f5, f19, f29, rmm # perform operation
fsub.h f5, f19, f29, rne # perform operation
fsub.h f5, f19, f29, rtz # perform operation
fsub.h f5, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f19, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fsub.h f11, f2, f26, dyn # perform operation
fsub.h f11, f2, f26, rdn # perform operation
fsub.h f11, f2, f26, rmm # perform operation
fsub.h f11, f2, f26, rne # perform operation
fsub.h f11, f2, f26, rtz # perform operation
fsub.h f11, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f2, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fsub.h f31, f24, f18, dyn # perform operation
fsub.h f31, f24, f18, rdn # perform operation
fsub.h f31, f24, f18, rmm # perform operation
fsub.h f31, f24, f18, rne # perform operation
fsub.h f31, f24, f18, rtz # perform operation
fsub.h f31, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
fsub.h f18, f23, f7, dyn # perform operation
fsub.h f18, f23, f7, rdn # perform operation
fsub.h f18, f23, f7, rmm # perform operation
fsub.h f18, f23, f7, rne # perform operation
fsub.h f18, f23, f7, rtz # perform operation
fsub.h f18, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fsub.h f11, f29, f23, dyn # perform operation
fsub.h f11, f29, f23, rdn # perform operation
fsub.h f11, f29, f23, rmm # perform operation
fsub.h f11, f29, f23, rne # perform operation
fsub.h f11, f29, f23, rtz # perform operation
fsub.h f11, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fsub.h f15, f29, f10, dyn # perform operation
fsub.h f15, f29, f10, rdn # perform operation
fsub.h f15, f29, f10, rmm # perform operation
fsub.h f15, f29, f10, rne # perform operation
fsub.h f15, f29, f10, rtz # perform operation
fsub.h f15, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fsub.h f24, f31, f6, dyn # perform operation
fsub.h f24, f31, f6, rdn # perform operation
fsub.h f24, f31, f6, rmm # perform operation
fsub.h f24, f31, f6, rne # perform operation
fsub.h f24, f31, f6, rtz # perform operation
fsub.h f24, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fsub.h f9, f30, f1, dyn # perform operation
fsub.h f9, f30, f1, rdn # perform operation
fsub.h f9, f30, f1, rmm # perform operation
fsub.h f9, f30, f1, rne # perform operation
fsub.h f9, f30, f1, rtz # perform operation
fsub.h f9, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fsub.h f5, f24, f2, dyn # perform operation
fsub.h f5, f24, f2, rdn # perform operation
fsub.h f5, f24, f2, rmm # perform operation
fsub.h f5, f24, f2, rne # perform operation
fsub.h f5, f24, f2, rtz # perform operation
fsub.h f5, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fsub.h f15, f24, f27, dyn # perform operation
fsub.h f15, f24, f27, rdn # perform operation
fsub.h f15, f24, f27, rmm # perform operation
fsub.h f15, f24, f27, rne # perform operation
fsub.h f15, f24, f27, rtz # perform operation
fsub.h f15, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fsub.h f2, f23, f15, dyn # perform operation
fsub.h f2, f23, f15, rdn # perform operation
fsub.h f2, f23, f15, rmm # perform operation
fsub.h f2, f23, f15, rne # perform operation
fsub.h f2, f23, f15, rtz # perform operation
fsub.h f2, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fsub.h f21, f24, f20, dyn # perform operation
fsub.h f21, f24, f20, rdn # perform operation
fsub.h f21, f24, f20, rmm # perform operation
fsub.h f21, f24, f20, rne # perform operation
fsub.h f21, f24, f20, rtz # perform operation
fsub.h f21, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fsub.h f25, f24, f15, dyn # perform operation
fsub.h f25, f24, f15, rdn # perform operation
fsub.h f25, f24, f15, rmm # perform operation
fsub.h f25, f24, f15, rne # perform operation
fsub.h f25, f24, f15, rtz # perform operation
fsub.h f25, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fsub.h f26, f12, f29, dyn # perform operation
fsub.h f26, f12, f29, rdn # perform operation
fsub.h f26, f12, f29, rmm # perform operation
fsub.h f26, f12, f29, rne # perform operation
fsub.h f26, f12, f29, rtz # perform operation
fsub.h f26, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fsub.h f7, f31, f22, dyn # perform operation
fsub.h f7, f31, f22, rdn # perform operation
fsub.h f7, f31, f22, rmm # perform operation
fsub.h f7, f31, f22, rne # perform operation
fsub.h f7, f31, f22, rtz # perform operation
fsub.h f7, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fsub.h f18, f24, f6, dyn # perform operation
fsub.h f18, f24, f6, rdn # perform operation
fsub.h f18, f24, f6, rmm # perform operation
fsub.h f18, f24, f6, rne # perform operation
fsub.h f18, f24, f6, rtz # perform operation
fsub.h f18, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fsub.h f8, f27, f6, dyn # perform operation
fsub.h f8, f27, f6, rdn # perform operation
fsub.h f8, f27, f6, rmm # perform operation
fsub.h f8, f27, f6, rne # perform operation
fsub.h f8, f27, f6, rtz # perform operation
fsub.h f8, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fsub.h f21, f31, f23, dyn # perform operation
fsub.h f21, f31, f23, rdn # perform operation
fsub.h f21, f31, f23, rmm # perform operation
fsub.h f21, f31, f23, rne # perform operation
fsub.h f21, f31, f23, rtz # perform operation
fsub.h f21, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fsub.h f20, f17, f12, dyn # perform operation
fsub.h f20, f17, f12, rdn # perform operation
fsub.h f20, f17, f12, rmm # perform operation
fsub.h f20, f17, f12, rne # perform operation
fsub.h f20, f17, f12, rtz # perform operation
fsub.h f20, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fsub.h f23, f7, f18, dyn # perform operation
fsub.h f23, f7, f18, rdn # perform operation
fsub.h f23, f7, f18, rmm # perform operation
fsub.h f23, f7, f18, rne # perform operation
fsub.h f23, f7, f18, rtz # perform operation
fsub.h f23, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fsub.h f1, f30, f27, dyn # perform operation
fsub.h f1, f30, f27, rdn # perform operation
fsub.h f1, f30, f27, rmm # perform operation
fsub.h f1, f30, f27, rne # perform operation
fsub.h f1, f30, f27, rtz # perform operation
fsub.h f1, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fsub.h f16, f20, f26, dyn # perform operation
fsub.h f16, f20, f26, rdn # perform operation
fsub.h f16, f20, f26, rmm # perform operation
fsub.h f16, f20, f26, rne # perform operation
fsub.h f16, f20, f26, rtz # perform operation
fsub.h f16, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fsub.h f26, f19, f18, dyn # perform operation
fsub.h f26, f19, f18, rdn # perform operation
fsub.h f26, f19, f18, rmm # perform operation
fsub.h f26, f19, f18, rne # perform operation
fsub.h f26, f19, f18, rtz # perform operation
fsub.h f26, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f19, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fsub.h f15, f5, f22, dyn # perform operation
fsub.h f15, f5, f22, rdn # perform operation
fsub.h f15, f5, f22, rmm # perform operation
fsub.h f15, f5, f22, rne # perform operation
fsub.h f15, f5, f22, rtz # perform operation
fsub.h f15, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fsub.h f5, f28, f29, dyn # perform operation
fsub.h f5, f28, f29, rdn # perform operation
fsub.h f5, f28, f29, rmm # perform operation
fsub.h f5, f28, f29, rne # perform operation
fsub.h f5, f28, f29, rtz # perform operation
fsub.h f5, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fsub.h f3, f23, f6, dyn # perform operation
fsub.h f3, f23, f6, rdn # perform operation
fsub.h f3, f23, f6, rmm # perform operation
fsub.h f3, f23, f6, rne # perform operation
fsub.h f3, f23, f6, rtz # perform operation
fsub.h f3, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fsub.h f23, f6, f26, dyn # perform operation
fsub.h f23, f6, f26, rdn # perform operation
fsub.h f23, f6, f26, rmm # perform operation
fsub.h f23, f6, f26, rne # perform operation
fsub.h f23, f6, f26, rtz # perform operation
fsub.h f23, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f6, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fsub.h f24, f8, f17, dyn # perform operation
fsub.h f24, f8, f17, rdn # perform operation
fsub.h f24, f8, f17, rmm # perform operation
fsub.h f24, f8, f17, rne # perform operation
fsub.h f24, f8, f17, rtz # perform operation
fsub.h f24, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
fsub.h f1, f28, f31, dyn # perform operation
fsub.h f1, f28, f31, rdn # perform operation
fsub.h f1, f28, f31, rmm # perform operation
fsub.h f1, f28, f31, rne # perform operation
fsub.h f1, f28, f31, rtz # perform operation
fsub.h f1, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f28, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fsub.h f5, f26, f25, dyn # perform operation
fsub.h f5, f26, f25, rdn # perform operation
fsub.h f5, f26, f25, rmm # perform operation
fsub.h f5, f26, f25, rne # perform operation
fsub.h f5, f26, f25, rtz # perform operation
fsub.h f5, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fsub.h f2, f20, f11, dyn # perform operation
fsub.h f2, f20, f11, rdn # perform operation
fsub.h f2, f20, f11, rmm # perform operation
fsub.h f2, f20, f11, rne # perform operation
fsub.h f2, f20, f11, rtz # perform operation
fsub.h f2, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fsub.h f24, f31, f6, dyn # perform operation
fsub.h f24, f31, f6, rdn # perform operation
fsub.h f24, f31, f6, rmm # perform operation
fsub.h f24, f31, f6, rne # perform operation
fsub.h f24, f31, f6, rtz # perform operation
fsub.h f24, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fsub.h f18, f22, f26, dyn # perform operation
fsub.h f18, f22, f26, rdn # perform operation
fsub.h f18, f22, f26, rmm # perform operation
fsub.h f18, f22, f26, rne # perform operation
fsub.h f18, f22, f26, rtz # perform operation
fsub.h f18, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fsub.h f28, f19, f8, dyn # perform operation
fsub.h f28, f19, f8, rdn # perform operation
fsub.h f28, f19, f8, rmm # perform operation
fsub.h f28, f19, f8, rne # perform operation
fsub.h f28, f19, f8, rtz # perform operation
fsub.h f28, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fsub.h f25, f7, f28, dyn # perform operation
fsub.h f25, f7, f28, rdn # perform operation
fsub.h f25, f7, f28, rmm # perform operation
fsub.h f25, f7, f28, rne # perform operation
fsub.h f25, f7, f28, rtz # perform operation
fsub.h f25, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fsub.h f19, f21, f27, dyn # perform operation
fsub.h f19, f21, f27, rdn # perform operation
fsub.h f19, f21, f27, rmm # perform operation
fsub.h f19, f21, f27, rne # perform operation
fsub.h f19, f21, f27, rtz # perform operation
fsub.h f19, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
fsub.h f8, f13, f9, dyn # perform operation
fsub.h f8, f13, f9, rdn # perform operation
fsub.h f8, f13, f9, rmm # perform operation
fsub.h f8, f13, f9, rne # perform operation
fsub.h f8, f13, f9, rtz # perform operation
fsub.h f8, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fsub.h f29, f9, f2, dyn # perform operation
fsub.h f29, f9, f2, rdn # perform operation
fsub.h f29, f9, f2, rmm # perform operation
fsub.h f29, f9, f2, rne # perform operation
fsub.h f29, f9, f2, rtz # perform operation
fsub.h f29, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f9, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fsub.h f27, f7, f22, dyn # perform operation
fsub.h f27, f7, f22, rdn # perform operation
fsub.h f27, f7, f22, rmm # perform operation
fsub.h f27, f7, f22, rne # perform operation
fsub.h f27, f7, f22, rtz # perform operation
fsub.h f27, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f7, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fsub.h f23, f30, f5, dyn # perform operation
fsub.h f23, f30, f5, rdn # perform operation
fsub.h f23, f30, f5, rmm # perform operation
fsub.h f23, f30, f5, rne # perform operation
fsub.h f23, f30, f5, rtz # perform operation
fsub.h f23, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fsub.h f19, f17, f12, dyn # perform operation
fsub.h f19, f17, f12, rdn # perform operation
fsub.h f19, f17, f12, rmm # perform operation
fsub.h f19, f17, f12, rne # perform operation
fsub.h f19, f17, f12, rtz # perform operation
fsub.h f19, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fsub.h f16, f17, f1, dyn # perform operation
fsub.h f16, f17, f1, rdn # perform operation
fsub.h f16, f17, f1, rmm # perform operation
fsub.h f16, f17, f1, rne # perform operation
fsub.h f16, f17, f1, rtz # perform operation
fsub.h f16, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f17, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fsub.h f16, f9, f18, dyn # perform operation
fsub.h f16, f9, f18, rdn # perform operation
fsub.h f16, f9, f18, rmm # perform operation
fsub.h f16, f9, f18, rne # perform operation
fsub.h f16, f9, f18, rtz # perform operation
fsub.h f16, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fsub.h f1, f12, f20, dyn # perform operation
fsub.h f1, f12, f20, rdn # perform operation
fsub.h f1, f12, f20, rmm # perform operation
fsub.h f1, f12, f20, rne # perform operation
fsub.h f1, f12, f20, rtz # perform operation
fsub.h f1, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fsub.h f14, f6, f11, dyn # perform operation
fsub.h f14, f6, f11, rdn # perform operation
fsub.h f14, f6, f11, rmm # perform operation
fsub.h f14, f6, f11, rne # perform operation
fsub.h f14, f6, f11, rtz # perform operation
fsub.h f14, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f6, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fsub.h f22, f1, f30, dyn # perform operation
fsub.h f22, f1, f30, rdn # perform operation
fsub.h f22, f1, f30, rmm # perform operation
fsub.h f22, f1, f30, rne # perform operation
fsub.h f22, f1, f30, rtz # perform operation
fsub.h f22, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fsub.h f2, f20, f26, dyn # perform operation
fsub.h f2, f20, f26, rdn # perform operation
fsub.h f2, f20, f26, rmm # perform operation
fsub.h f2, f20, f26, rne # perform operation
fsub.h f2, f20, f26, rtz # perform operation
fsub.h f2, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fsub.h f13, f5, f12, dyn # perform operation
fsub.h f13, f5, f12, rdn # perform operation
fsub.h f13, f5, f12, rmm # perform operation
fsub.h f13, f5, f12, rne # perform operation
fsub.h f13, f5, f12, rtz # perform operation
fsub.h f13, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fsub.h f20, f12, f29, dyn # perform operation
fsub.h f20, f12, f29, rdn # perform operation
fsub.h f20, f12, f29, rmm # perform operation
fsub.h f20, f12, f29, rne # perform operation
fsub.h f20, f12, f29, rtz # perform operation
fsub.h f20, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fsub.h f8, f2, f1, dyn # perform operation
fsub.h f8, f2, f1, rdn # perform operation
fsub.h f8, f2, f1, rmm # perform operation
fsub.h f8, f2, f1, rne # perform operation
fsub.h f8, f2, f1, rtz # perform operation
fsub.h f8, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f2, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fsub.h f14, f11, f26, dyn # perform operation
fsub.h f14, f11, f26, rdn # perform operation
fsub.h f14, f11, f26, rmm # perform operation
fsub.h f14, f11, f26, rne # perform operation
fsub.h f14, f11, f26, rtz # perform operation
fsub.h f14, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fsub.h f19, f20, f3, dyn # perform operation
fsub.h f19, f20, f3, rdn # perform operation
fsub.h f19, f20, f3, rmm # perform operation
fsub.h f19, f20, f3, rne # perform operation
fsub.h f19, f20, f3, rtz # perform operation
fsub.h f19, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fsub.h f16, f30, f5, dyn # perform operation
fsub.h f16, f30, f5, rdn # perform operation
fsub.h f16, f30, f5, rmm # perform operation
fsub.h f16, f30, f5, rne # perform operation
fsub.h f16, f30, f5, rtz # perform operation
fsub.h f16, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fsub.h f16, f28, f22, dyn # perform operation
fsub.h f16, f28, f22, rdn # perform operation
fsub.h f16, f28, f22, rmm # perform operation
fsub.h f16, f28, f22, rne # perform operation
fsub.h f16, f28, f22, rtz # perform operation
fsub.h f16, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fsub.h f25, f5, f18, dyn # perform operation
fsub.h f25, f5, f18, rdn # perform operation
fsub.h f25, f5, f18, rmm # perform operation
fsub.h f25, f5, f18, rne # perform operation
fsub.h f25, f5, f18, rtz # perform operation
fsub.h f25, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fsub.h f23, f5, f20, dyn # perform operation
fsub.h f23, f5, f20, rdn # perform operation
fsub.h f23, f5, f20, rmm # perform operation
fsub.h f23, f5, f20, rne # perform operation
fsub.h f23, f5, f20, rtz # perform operation
fsub.h f23, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f5, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
fsub.h f26, f31, f1, dyn # perform operation
fsub.h f26, f31, f1, rdn # perform operation
fsub.h f26, f31, f1, rmm # perform operation
fsub.h f26, f31, f1, rne # perform operation
fsub.h f26, f31, f1, rtz # perform operation
fsub.h f26, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fsub.h f27, f31, f20, dyn # perform operation
fsub.h f27, f31, f20, rdn # perform operation
fsub.h f27, f31, f20, rmm # perform operation
fsub.h f27, f31, f20, rne # perform operation
fsub.h f27, f31, f20, rtz # perform operation
fsub.h f27, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fsub.h f17, f3, f16, dyn # perform operation
fsub.h f17, f3, f16, rdn # perform operation
fsub.h f17, f3, f16, rmm # perform operation
fsub.h f17, f3, f16, rne # perform operation
fsub.h f17, f3, f16, rtz # perform operation
fsub.h f17, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
fsub.h f28, f1, f14, dyn # perform operation
fsub.h f28, f1, f14, rdn # perform operation
fsub.h f28, f1, f14, rmm # perform operation
fsub.h f28, f1, f14, rne # perform operation
fsub.h f28, f1, f14, rtz # perform operation
fsub.h f28, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f1, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fsub.h f22, f19, f24, dyn # perform operation
fsub.h f22, f19, f24, rdn # perform operation
fsub.h f22, f19, f24, rmm # perform operation
fsub.h f22, f19, f24, rne # perform operation
fsub.h f22, f19, f24, rtz # perform operation
fsub.h f22, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f19, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fsub.h f24, f19, f21, dyn # perform operation
fsub.h f24, f19, f21, rdn # perform operation
fsub.h f24, f19, f21, rmm # perform operation
fsub.h f24, f19, f21, rne # perform operation
fsub.h f24, f19, f21, rtz # perform operation
fsub.h f24, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fsub.h f1, f24, f27, dyn # perform operation
fsub.h f1, f24, f27, rdn # perform operation
fsub.h f1, f24, f27, rmm # perform operation
fsub.h f1, f24, f27, rne # perform operation
fsub.h f1, f24, f27, rtz # perform operation
fsub.h f1, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fsub.h f31, f15, f29, dyn # perform operation
fsub.h f31, f15, f29, rdn # perform operation
fsub.h f31, f15, f29, rmm # perform operation
fsub.h f31, f15, f29, rne # perform operation
fsub.h f31, f15, f29, rtz # perform operation
fsub.h f31, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fsub.h f22, f27, f21, dyn # perform operation
fsub.h f22, f27, f21, rdn # perform operation
fsub.h f22, f27, f21, rmm # perform operation
fsub.h f22, f27, f21, rne # perform operation
fsub.h f22, f27, f21, rtz # perform operation
fsub.h f22, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fsub.h f26, f1, f5, dyn # perform operation
fsub.h f26, f1, f5, rdn # perform operation
fsub.h f26, f1, f5, rmm # perform operation
fsub.h f26, f1, f5, rne # perform operation
fsub.h f26, f1, f5, rtz # perform operation
fsub.h f26, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f1, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fsub.h f3, f20, f11, dyn # perform operation
fsub.h f3, f20, f11, rdn # perform operation
fsub.h f3, f20, f11, rmm # perform operation
fsub.h f3, f20, f11, rne # perform operation
fsub.h f3, f20, f11, rtz # perform operation
fsub.h f3, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fsub.h f8, f7, f9, dyn # perform operation
fsub.h f8, f7, f9, rdn # perform operation
fsub.h f8, f7, f9, rmm # perform operation
fsub.h f8, f7, f9, rne # perform operation
fsub.h f8, f7, f9, rtz # perform operation
fsub.h f8, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f7, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fsub.h f1, f30, f23, dyn # perform operation
fsub.h f1, f30, f23, rdn # perform operation
fsub.h f1, f30, f23, rmm # perform operation
fsub.h f1, f30, f23, rne # perform operation
fsub.h f1, f30, f23, rtz # perform operation
fsub.h f1, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fsub.h f24, f31, f3, dyn # perform operation
fsub.h f24, f31, f3, rdn # perform operation
fsub.h f24, f31, f3, rmm # perform operation
fsub.h f24, f31, f3, rne # perform operation
fsub.h f24, f31, f3, rtz # perform operation
fsub.h f24, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fsub.h f30, f11, f13, dyn # perform operation
fsub.h f30, f11, f13, rdn # perform operation
fsub.h f30, f11, f13, rmm # perform operation
fsub.h f30, f11, f13, rne # perform operation
fsub.h f30, f11, f13, rtz # perform operation
fsub.h f30, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fsub.h f7, f5, f29, dyn # perform operation
fsub.h f7, f5, f29, rdn # perform operation
fsub.h f7, f5, f29, rmm # perform operation
fsub.h f7, f5, f29, rne # perform operation
fsub.h f7, f5, f29, rtz # perform operation
fsub.h f7, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fsub.h f27, f3, f24, dyn # perform operation
fsub.h f27, f3, f24, rdn # perform operation
fsub.h f27, f3, f24, rmm # perform operation
fsub.h f27, f3, f24, rne # perform operation
fsub.h f27, f3, f24, rtz # perform operation
fsub.h f27, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fsub.h f17, f10, f30, dyn # perform operation
fsub.h f17, f10, f30, rdn # perform operation
fsub.h f17, f10, f30, rmm # perform operation
fsub.h f17, f10, f30, rne # perform operation
fsub.h f17, f10, f30, rtz # perform operation
fsub.h f17, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f10, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fsub.h f5, f10, f6, dyn # perform operation
fsub.h f5, f10, f6, rdn # perform operation
fsub.h f5, f10, f6, rmm # perform operation
fsub.h f5, f10, f6, rne # perform operation
fsub.h f5, f10, f6, rtz # perform operation
fsub.h f5, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fsub.h f31, f16, f6, dyn # perform operation
fsub.h f31, f16, f6, rdn # perform operation
fsub.h f31, f16, f6, rmm # perform operation
fsub.h f31, f16, f6, rne # perform operation
fsub.h f31, f16, f6, rtz # perform operation
fsub.h f31, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fsub.h f17, f31, f30, dyn # perform operation
fsub.h f17, f31, f30, rdn # perform operation
fsub.h f17, f31, f30, rmm # perform operation
fsub.h f17, f31, f30, rne # perform operation
fsub.h f17, f31, f30, rtz # perform operation
fsub.h f17, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fsub.h f19, f25, f28, dyn # perform operation
fsub.h f19, f25, f28, rdn # perform operation
fsub.h f19, f25, f28, rmm # perform operation
fsub.h f19, f25, f28, rne # perform operation
fsub.h f19, f25, f28, rtz # perform operation
fsub.h f19, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fsub.h f21, f2, f26, dyn # perform operation
fsub.h f21, f2, f26, rdn # perform operation
fsub.h f21, f2, f26, rmm # perform operation
fsub.h f21, f2, f26, rne # perform operation
fsub.h f21, f2, f26, rtz # perform operation
fsub.h f21, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f2, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fsub.h f5, f30, f28, dyn # perform operation
fsub.h f5, f30, f28, rdn # perform operation
fsub.h f5, f30, f28, rmm # perform operation
fsub.h f5, f30, f28, rne # perform operation
fsub.h f5, f30, f28, rtz # perform operation
fsub.h f5, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fsub.h f17, f21, f5, dyn # perform operation
fsub.h f17, f21, f5, rdn # perform operation
fsub.h f17, f21, f5, rmm # perform operation
fsub.h f17, f21, f5, rne # perform operation
fsub.h f17, f21, f5, rtz # perform operation
fsub.h f17, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fsub.h f24, f18, f11, dyn # perform operation
fsub.h f24, f18, f11, rdn # perform operation
fsub.h f24, f18, f11, rmm # perform operation
fsub.h f24, f18, f11, rne # perform operation
fsub.h f24, f18, f11, rtz # perform operation
fsub.h f24, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f18, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fsub.h f24, f23, f29, dyn # perform operation
fsub.h f24, f23, f29, rdn # perform operation
fsub.h f24, f23, f29, rmm # perform operation
fsub.h f24, f23, f29, rne # perform operation
fsub.h f24, f23, f29, rtz # perform operation
fsub.h f24, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fsub.h f18, f3, f15, dyn # perform operation
fsub.h f18, f3, f15, rdn # perform operation
fsub.h f18, f3, f15, rmm # perform operation
fsub.h f18, f3, f15, rne # perform operation
fsub.h f18, f3, f15, rtz # perform operation
fsub.h f18, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
fsub.h f25, f7, f16, dyn # perform operation
fsub.h f25, f7, f16, rdn # perform operation
fsub.h f25, f7, f16, rmm # perform operation
fsub.h f25, f7, f16, rne # perform operation
fsub.h f25, f7, f16, rtz # perform operation
fsub.h f25, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fsub.h f17, f31, f28, dyn # perform operation
fsub.h f17, f31, f28, rdn # perform operation
fsub.h f17, f31, f28, rmm # perform operation
fsub.h f17, f31, f28, rne # perform operation
fsub.h f17, f31, f28, rtz # perform operation
fsub.h f17, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fsub.h f3, f24, f31, dyn # perform operation
fsub.h f3, f24, f31, rdn # perform operation
fsub.h f3, f24, f31, rmm # perform operation
fsub.h f3, f24, f31, rne # perform operation
fsub.h f3, f24, f31, rtz # perform operation
fsub.h f3, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
fsub.h f25, f19, f24, dyn # perform operation
fsub.h f25, f19, f24, rdn # perform operation
fsub.h f25, f19, f24, rmm # perform operation
fsub.h f25, f19, f24, rne # perform operation
fsub.h f25, f19, f24, rtz # perform operation
fsub.h f25, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f19, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fsub.h f22, f8, f26, dyn # perform operation
fsub.h f22, f8, f26, rdn # perform operation
fsub.h f22, f8, f26, rmm # perform operation
fsub.h f22, f8, f26, rne # perform operation
fsub.h f22, f8, f26, rtz # perform operation
fsub.h f22, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fsub.h f27, f5, f13, dyn # perform operation
fsub.h f27, f5, f13, rdn # perform operation
fsub.h f27, f5, f13, rmm # perform operation
fsub.h f27, f5, f13, rne # perform operation
fsub.h f27, f5, f13, rtz # perform operation
fsub.h f27, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fsub.h f9, f2, f3, dyn # perform operation
fsub.h f9, f2, f3, rdn # perform operation
fsub.h f9, f2, f3, rmm # perform operation
fsub.h f9, f2, f3, rne # perform operation
fsub.h f9, f2, f3, rtz # perform operation
fsub.h f9, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fsub.h f14, f7, f31, dyn # perform operation
fsub.h f14, f7, f31, rdn # perform operation
fsub.h f14, f7, f31, rmm # perform operation
fsub.h f14, f7, f31, rne # perform operation
fsub.h f14, f7, f31, rtz # perform operation
fsub.h f14, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fsub.h f21, f28, f27, dyn # perform operation
fsub.h f21, f28, f27, rdn # perform operation
fsub.h f21, f28, f27, rmm # perform operation
fsub.h f21, f28, f27, rne # perform operation
fsub.h f21, f28, f27, rtz # perform operation
fsub.h f21, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fsub.h f29, f16, f2, dyn # perform operation
fsub.h f29, f16, f2, rdn # perform operation
fsub.h f29, f16, f2, rmm # perform operation
fsub.h f29, f16, f2, rne # perform operation
fsub.h f29, f16, f2, rtz # perform operation
fsub.h f29, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fsub.h f3, f5, f9, dyn # perform operation
fsub.h f3, f5, f9, rdn # perform operation
fsub.h f3, f5, f9, rmm # perform operation
fsub.h f3, f5, f9, rne # perform operation
fsub.h f3, f5, f9, rtz # perform operation
fsub.h f3, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f5, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fsub.h f7, f28, f18, dyn # perform operation
fsub.h f7, f28, f18, rdn # perform operation
fsub.h f7, f28, f18, rmm # perform operation
fsub.h f7, f28, f18, rne # perform operation
fsub.h f7, f28, f18, rtz # perform operation
fsub.h f7, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fsub.h f9, f8, f3, dyn # perform operation
fsub.h f9, f8, f3, rdn # perform operation
fsub.h f9, f8, f3, rmm # perform operation
fsub.h f9, f8, f3, rne # perform operation
fsub.h f9, f8, f3, rtz # perform operation
fsub.h f9, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fsub.h f6, f14, f21, dyn # perform operation
fsub.h f6, f14, f21, rdn # perform operation
fsub.h f6, f14, f21, rmm # perform operation
fsub.h f6, f14, f21, rne # perform operation
fsub.h f6, f14, f21, rtz # perform operation
fsub.h f6, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fsub.h f11, f14, f12, dyn # perform operation
fsub.h f11, f14, f12, rdn # perform operation
fsub.h f11, f14, f12, rmm # perform operation
fsub.h f11, f14, f12, rne # perform operation
fsub.h f11, f14, f12, rtz # perform operation
fsub.h f11, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fsub.h f27, f21, f7, dyn # perform operation
fsub.h f27, f21, f7, rdn # perform operation
fsub.h f27, f21, f7, rmm # perform operation
fsub.h f27, f21, f7, rne # perform operation
fsub.h f27, f21, f7, rtz # perform operation
fsub.h f27, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
fsub.h f2, f5, f15, dyn # perform operation
fsub.h f2, f5, f15, rdn # perform operation
fsub.h f2, f5, f15, rmm # perform operation
fsub.h f2, f5, f15, rne # perform operation
fsub.h f2, f5, f15, rtz # perform operation
fsub.h f2, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fsub.h f13, f15, f18, dyn # perform operation
fsub.h f13, f15, f18, rdn # perform operation
fsub.h f13, f15, f18, rmm # perform operation
fsub.h f13, f15, f18, rne # perform operation
fsub.h f13, f15, f18, rtz # perform operation
fsub.h f13, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fsub.h f5, f26, f3, dyn # perform operation
fsub.h f5, f26, f3, rdn # perform operation
fsub.h f5, f26, f3, rmm # perform operation
fsub.h f5, f26, f3, rne # perform operation
fsub.h f5, f26, f3, rtz # perform operation
fsub.h f5, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f26, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fsub.h f30, f14, f15, dyn # perform operation
fsub.h f30, f14, f15, rdn # perform operation
fsub.h f30, f14, f15, rmm # perform operation
fsub.h f30, f14, f15, rne # perform operation
fsub.h f30, f14, f15, rtz # perform operation
fsub.h f30, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fsub.h f19, f2, f16, dyn # perform operation
fsub.h f19, f2, f16, rdn # perform operation
fsub.h f19, f2, f16, rmm # perform operation
fsub.h f19, f2, f16, rne # perform operation
fsub.h f19, f2, f16, rtz # perform operation
fsub.h f19, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fsub.h f1, f5, f24, dyn # perform operation
fsub.h f1, f5, f24, rdn # perform operation
fsub.h f1, f5, f24, rmm # perform operation
fsub.h f1, f5, f24, rne # perform operation
fsub.h f1, f5, f24, rtz # perform operation
fsub.h f1, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fsub.h f20, f5, f11, dyn # perform operation
fsub.h f20, f5, f11, rdn # perform operation
fsub.h f20, f5, f11, rmm # perform operation
fsub.h f20, f5, f11, rne # perform operation
fsub.h f20, f5, f11, rtz # perform operation
fsub.h f20, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fsub.h f14, f11, f16, dyn # perform operation
fsub.h f14, f11, f16, rdn # perform operation
fsub.h f14, f11, f16, rmm # perform operation
fsub.h f14, f11, f16, rne # perform operation
fsub.h f14, f11, f16, rtz # perform operation
fsub.h f14, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fsub.h f20, f29, f21, dyn # perform operation
fsub.h f20, f29, f21, rdn # perform operation
fsub.h f20, f29, f21, rmm # perform operation
fsub.h f20, f29, f21, rne # perform operation
fsub.h f20, f29, f21, rtz # perform operation
fsub.h f20, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f29, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fsub.h f17, f28, f24, dyn # perform operation
fsub.h f17, f28, f24, rdn # perform operation
fsub.h f17, f28, f24, rmm # perform operation
fsub.h f17, f28, f24, rne # perform operation
fsub.h f17, f28, f24, rtz # perform operation
fsub.h f17, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fsub.h f23, f22, f5, dyn # perform operation
fsub.h f23, f22, f5, rdn # perform operation
fsub.h f23, f22, f5, rmm # perform operation
fsub.h f23, f22, f5, rne # perform operation
fsub.h f23, f22, f5, rtz # perform operation
fsub.h f23, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fsub.h f19, f24, f30, dyn # perform operation
fsub.h f19, f24, f30, rdn # perform operation
fsub.h f19, f24, f30, rmm # perform operation
fsub.h f19, f24, f30, rne # perform operation
fsub.h f19, f24, f30, rtz # perform operation
fsub.h f19, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
fsub.h f1, f17, f23, dyn # perform operation
fsub.h f1, f17, f23, rdn # perform operation
fsub.h f1, f17, f23, rmm # perform operation
fsub.h f1, f17, f23, rne # perform operation
fsub.h f1, f17, f23, rtz # perform operation
fsub.h f1, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fsub.h f8, f18, f30, dyn # perform operation
fsub.h f8, f18, f30, rdn # perform operation
fsub.h f8, f18, f30, rmm # perform operation
fsub.h f8, f18, f30, rne # perform operation
fsub.h f8, f18, f30, rtz # perform operation
fsub.h f8, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f18, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fsub.h f13, f1, f23, dyn # perform operation
fsub.h f13, f1, f23, rdn # perform operation
fsub.h f13, f1, f23, rmm # perform operation
fsub.h f13, f1, f23, rne # perform operation
fsub.h f13, f1, f23, rtz # perform operation
fsub.h f13, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f1, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fsub.h f25, f29, f8, dyn # perform operation
fsub.h f25, f29, f8, rdn # perform operation
fsub.h f25, f29, f8, rmm # perform operation
fsub.h f25, f29, f8, rne # perform operation
fsub.h f25, f29, f8, rtz # perform operation
fsub.h f25, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fsub.h f15, f11, f24, dyn # perform operation
fsub.h f15, f11, f24, rdn # perform operation
fsub.h f15, f11, f24, rmm # perform operation
fsub.h f15, f11, f24, rne # perform operation
fsub.h f15, f11, f24, rtz # perform operation
fsub.h f15, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fsub.h f7, f16, f28, dyn # perform operation
fsub.h f7, f16, f28, rdn # perform operation
fsub.h f7, f16, f28, rmm # perform operation
fsub.h f7, f16, f28, rne # perform operation
fsub.h f7, f16, f28, rtz # perform operation
fsub.h f7, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fsub.h f13, f2, f9, dyn # perform operation
fsub.h f13, f2, f9, rdn # perform operation
fsub.h f13, f2, f9, rmm # perform operation
fsub.h f13, f2, f9, rne # perform operation
fsub.h f13, f2, f9, rtz # perform operation
fsub.h f13, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f2, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fsub.h f29, f15, f7, dyn # perform operation
fsub.h f29, f15, f7, rdn # perform operation
fsub.h f29, f15, f7, rmm # perform operation
fsub.h f29, f15, f7, rne # perform operation
fsub.h f29, f15, f7, rtz # perform operation
fsub.h f29, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fsub.h f10, f30, f3, dyn # perform operation
fsub.h f10, f30, f3, rdn # perform operation
fsub.h f10, f30, f3, rmm # perform operation
fsub.h f10, f30, f3, rne # perform operation
fsub.h f10, f30, f3, rtz # perform operation
fsub.h f10, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fsub.h f27, f28, f5, dyn # perform operation
fsub.h f27, f28, f5, rdn # perform operation
fsub.h f27, f28, f5, rmm # perform operation
fsub.h f27, f28, f5, rne # perform operation
fsub.h f27, f28, f5, rtz # perform operation
fsub.h f27, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fsub.h f7, f13, f15, dyn # perform operation
fsub.h f7, f13, f15, rdn # perform operation
fsub.h f7, f13, f15, rmm # perform operation
fsub.h f7, f13, f15, rne # perform operation
fsub.h f7, f13, f15, rtz # perform operation
fsub.h f7, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f13, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fsub.h f20, f12, f31, dyn # perform operation
fsub.h f20, f12, f31, rdn # perform operation
fsub.h f20, f12, f31, rmm # perform operation
fsub.h f20, f12, f31, rne # perform operation
fsub.h f20, f12, f31, rtz # perform operation
fsub.h f20, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f12, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fsub.h f24, f8, f21, dyn # perform operation
fsub.h f24, f8, f21, rdn # perform operation
fsub.h f24, f8, f21, rmm # perform operation
fsub.h f24, f8, f21, rne # perform operation
fsub.h f24, f8, f21, rtz # perform operation
fsub.h f24, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fsub.h f29, f17, f9, dyn # perform operation
fsub.h f29, f17, f9, rdn # perform operation
fsub.h f29, f17, f9, rmm # perform operation
fsub.h f29, f17, f9, rne # perform operation
fsub.h f29, f17, f9, rtz # perform operation
fsub.h f29, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fsub.h f15, f28, f5, dyn # perform operation
fsub.h f15, f28, f5, rdn # perform operation
fsub.h f15, f28, f5, rmm # perform operation
fsub.h f15, f28, f5, rne # perform operation
fsub.h f15, f28, f5, rtz # perform operation
fsub.h f15, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fsub.h f20, f12, f11, dyn # perform operation
fsub.h f20, f12, f11, rdn # perform operation
fsub.h f20, f12, f11, rmm # perform operation
fsub.h f20, f12, f11, rne # perform operation
fsub.h f20, f12, f11, rtz # perform operation
fsub.h f20, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fsub.h f29, f21, f26, dyn # perform operation
fsub.h f29, f21, f26, rdn # perform operation
fsub.h f29, f21, f26, rmm # perform operation
fsub.h f29, f21, f26, rne # perform operation
fsub.h f29, f21, f26, rtz # perform operation
fsub.h f29, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
fsub.h f6, f1, f9, dyn # perform operation
fsub.h f6, f1, f9, rdn # perform operation
fsub.h f6, f1, f9, rmm # perform operation
fsub.h f6, f1, f9, rne # perform operation
fsub.h f6, f1, f9, rtz # perform operation
fsub.h f6, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fsub.h f20, f6, f17, dyn # perform operation
fsub.h f20, f6, f17, rdn # perform operation
fsub.h f20, f6, f17, rmm # perform operation
fsub.h f20, f6, f17, rne # perform operation
fsub.h f20, f6, f17, rtz # perform operation
fsub.h f20, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fsub.h f3, f25, f14, dyn # perform operation
fsub.h f3, f25, f14, rdn # perform operation
fsub.h f3, f25, f14, rmm # perform operation
fsub.h f3, f25, f14, rne # perform operation
fsub.h f3, f25, f14, rtz # perform operation
fsub.h f3, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fsub.h f1, f6, f18, dyn # perform operation
fsub.h f1, f6, f18, rdn # perform operation
fsub.h f1, f6, f18, rmm # perform operation
fsub.h f1, f6, f18, rne # perform operation
fsub.h f1, f6, f18, rtz # perform operation
fsub.h f1, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fsub.h f28, f21, f19, dyn # perform operation
fsub.h f28, f21, f19, rdn # perform operation
fsub.h f28, f21, f19, rmm # perform operation
fsub.h f28, f21, f19, rne # perform operation
fsub.h f28, f21, f19, rtz # perform operation
fsub.h f28, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fsub.h f31, f7, f9, dyn # perform operation
fsub.h f31, f7, f9, rdn # perform operation
fsub.h f31, f7, f9, rmm # perform operation
fsub.h f31, f7, f9, rne # perform operation
fsub.h f31, f7, f9, rtz # perform operation
fsub.h f31, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f7, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fsub.h f28, f10, f27, dyn # perform operation
fsub.h f28, f10, f27, rdn # perform operation
fsub.h f28, f10, f27, rmm # perform operation
fsub.h f28, f10, f27, rne # perform operation
fsub.h f28, f10, f27, rtz # perform operation
fsub.h f28, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fsub.h f28, f3, f21, dyn # perform operation
fsub.h f28, f3, f21, rdn # perform operation
fsub.h f28, f3, f21, rmm # perform operation
fsub.h f28, f3, f21, rne # perform operation
fsub.h f28, f3, f21, rtz # perform operation
fsub.h f28, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fsub.h f30, f19, f17, dyn # perform operation
fsub.h f30, f19, f17, rdn # perform operation
fsub.h f30, f19, f17, rmm # perform operation
fsub.h f30, f19, f17, rne # perform operation
fsub.h f30, f19, f17, rtz # perform operation
fsub.h f30, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fsub.h f6, f12, f21, dyn # perform operation
fsub.h f6, f12, f21, rdn # perform operation
fsub.h f6, f12, f21, rmm # perform operation
fsub.h f6, f12, f21, rne # perform operation
fsub.h f6, f12, f21, rtz # perform operation
fsub.h f6, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f12, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fsub.h f23, f21, f10, dyn # perform operation
fsub.h f23, f21, f10, rdn # perform operation
fsub.h f23, f21, f10, rmm # perform operation
fsub.h f23, f21, f10, rne # perform operation
fsub.h f23, f21, f10, rtz # perform operation
fsub.h f23, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
fsub.h f1, f3, f13, dyn # perform operation
fsub.h f1, f3, f13, rdn # perform operation
fsub.h f1, f3, f13, rmm # perform operation
fsub.h f1, f3, f13, rne # perform operation
fsub.h f1, f3, f13, rtz # perform operation
fsub.h f1, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f3, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fsub.h f23, f2, f30, dyn # perform operation
fsub.h f23, f2, f30, rdn # perform operation
fsub.h f23, f2, f30, rmm # perform operation
fsub.h f23, f2, f30, rne # perform operation
fsub.h f23, f2, f30, rtz # perform operation
fsub.h f23, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fsub.h f25, f2, f3, dyn # perform operation
fsub.h f25, f2, f3, rdn # perform operation
fsub.h f25, f2, f3, rmm # perform operation
fsub.h f25, f2, f3, rne # perform operation
fsub.h f25, f2, f3, rtz # perform operation
fsub.h f25, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fsub.h f28, f2, f8, dyn # perform operation
fsub.h f28, f2, f8, rdn # perform operation
fsub.h f28, f2, f8, rmm # perform operation
fsub.h f28, f2, f8, rne # perform operation
fsub.h f28, f2, f8, rtz # perform operation
fsub.h f28, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fsub.h f7, f20, f11, dyn # perform operation
fsub.h f7, f20, f11, rdn # perform operation
fsub.h f7, f20, f11, rmm # perform operation
fsub.h f7, f20, f11, rne # perform operation
fsub.h f7, f20, f11, rtz # perform operation
fsub.h f7, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fsub.h f20, f29, f15, dyn # perform operation
fsub.h f20, f29, f15, rdn # perform operation
fsub.h f20, f29, f15, rmm # perform operation
fsub.h f20, f29, f15, rne # perform operation
fsub.h f20, f29, f15, rtz # perform operation
fsub.h f20, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fsub.h f30, f8, f12, dyn # perform operation
fsub.h f30, f8, f12, rdn # perform operation
fsub.h f30, f8, f12, rmm # perform operation
fsub.h f30, f8, f12, rne # perform operation
fsub.h f30, f8, f12, rtz # perform operation
fsub.h f30, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fsub.h f22, f1, f19, dyn # perform operation
fsub.h f22, f1, f19, rdn # perform operation
fsub.h f22, f1, f19, rmm # perform operation
fsub.h f22, f1, f19, rne # perform operation
fsub.h f22, f1, f19, rtz # perform operation
fsub.h f22, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fsub.h f17, f26, f11, dyn # perform operation
fsub.h f17, f26, f11, rdn # perform operation
fsub.h f17, f26, f11, rmm # perform operation
fsub.h f17, f26, f11, rne # perform operation
fsub.h f17, f26, f11, rtz # perform operation
fsub.h f17, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f26, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fsub.h f12, f24, f19, dyn # perform operation
fsub.h f12, f24, f19, rdn # perform operation
fsub.h f12, f24, f19, rmm # perform operation
fsub.h f12, f24, f19, rne # perform operation
fsub.h f12, f24, f19, rtz # perform operation
fsub.h f12, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f24, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fsub.h f30, f7, f22, dyn # perform operation
fsub.h f30, f7, f22, rdn # perform operation
fsub.h f30, f7, f22, rmm # perform operation
fsub.h f30, f7, f22, rne # perform operation
fsub.h f30, f7, f22, rtz # perform operation
fsub.h f30, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f7, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fsub.h f17, f8, f30, dyn # perform operation
fsub.h f17, f8, f30, rdn # perform operation
fsub.h f17, f8, f30, rmm # perform operation
fsub.h f17, f8, f30, rne # perform operation
fsub.h f17, f8, f30, rtz # perform operation
fsub.h f17, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
fsub.h f14, f10, f30, dyn # perform operation
fsub.h f14, f10, f30, rdn # perform operation
fsub.h f14, f10, f30, rmm # perform operation
fsub.h f14, f10, f30, rne # perform operation
fsub.h f14, f10, f30, rtz # perform operation
fsub.h f14, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f10, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fsub.h f31, f21, f13, dyn # perform operation
fsub.h f31, f21, f13, rdn # perform operation
fsub.h f31, f21, f13, rmm # perform operation
fsub.h f31, f21, f13, rne # perform operation
fsub.h f31, f21, f13, rtz # perform operation
fsub.h f31, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fsub.h f3, f20, f21, dyn # perform operation
fsub.h f3, f20, f21, rdn # perform operation
fsub.h f3, f20, f21, rmm # perform operation
fsub.h f3, f20, f21, rne # perform operation
fsub.h f3, f20, f21, rtz # perform operation
fsub.h f3, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fsub.h f7, f12, f22, dyn # perform operation
fsub.h f7, f12, f22, rdn # perform operation
fsub.h f7, f12, f22, rmm # perform operation
fsub.h f7, f12, f22, rne # perform operation
fsub.h f7, f12, f22, rtz # perform operation
fsub.h f7, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fsub.h f20, f7, f18, dyn # perform operation
fsub.h f20, f7, f18, rdn # perform operation
fsub.h f20, f7, f18, rmm # perform operation
fsub.h f20, f7, f18, rne # perform operation
fsub.h f20, f7, f18, rtz # perform operation
fsub.h f20, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fsub.h f12, f24, f27, dyn # perform operation
fsub.h f12, f24, f27, rdn # perform operation
fsub.h f12, f24, f27, rmm # perform operation
fsub.h f12, f24, f27, rne # perform operation
fsub.h f12, f24, f27, rtz # perform operation
fsub.h f12, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fsub.h f20, f30, f13, dyn # perform operation
fsub.h f20, f30, f13, rdn # perform operation
fsub.h f20, f30, f13, rmm # perform operation
fsub.h f20, f30, f13, rne # perform operation
fsub.h f20, f30, f13, rtz # perform operation
fsub.h f20, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fsub.h f12, f22, f21, dyn # perform operation
fsub.h f12, f22, f21, rdn # perform operation
fsub.h f12, f22, f21, rmm # perform operation
fsub.h f12, f22, f21, rne # perform operation
fsub.h f12, f22, f21, rtz # perform operation
fsub.h f12, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f22, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fsub.h f23, f8, f14, dyn # perform operation
fsub.h f23, f8, f14, rdn # perform operation
fsub.h f23, f8, f14, rmm # perform operation
fsub.h f23, f8, f14, rne # perform operation
fsub.h f23, f8, f14, rtz # perform operation
fsub.h f23, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fsub.h f13, f24, f16, dyn # perform operation
fsub.h f13, f24, f16, rdn # perform operation
fsub.h f13, f24, f16, rmm # perform operation
fsub.h f13, f24, f16, rne # perform operation
fsub.h f13, f24, f16, rtz # perform operation
fsub.h f13, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fsub.h f23, f21, f30, dyn # perform operation
fsub.h f23, f21, f30, rdn # perform operation
fsub.h f23, f21, f30, rmm # perform operation
fsub.h f23, f21, f30, rne # perform operation
fsub.h f23, f21, f30, rtz # perform operation
fsub.h f23, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fsub.h f19, f16, f18, dyn # perform operation
fsub.h f19, f16, f18, rdn # perform operation
fsub.h f19, f16, f18, rmm # perform operation
fsub.h f19, f16, f18, rne # perform operation
fsub.h f19, f16, f18, rtz # perform operation
fsub.h f19, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f16, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fsub.h f14, f28, f25, dyn # perform operation
fsub.h f14, f28, f25, rdn # perform operation
fsub.h f14, f28, f25, rmm # perform operation
fsub.h f14, f28, f25, rne # perform operation
fsub.h f14, f28, f25, rtz # perform operation
fsub.h f14, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f28, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fsub.h f30, f13, f22, dyn # perform operation
fsub.h f30, f13, f22, rdn # perform operation
fsub.h f30, f13, f22, rmm # perform operation
fsub.h f30, f13, f22, rne # perform operation
fsub.h f30, f13, f22, rtz # perform operation
fsub.h f30, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f13, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fsub.h f17, f12, f15, dyn # perform operation
fsub.h f17, f12, f15, rdn # perform operation
fsub.h f17, f12, f15, rmm # perform operation
fsub.h f17, f12, f15, rne # perform operation
fsub.h f17, f12, f15, rtz # perform operation
fsub.h f17, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fsub.h f12, f29, f14, dyn # perform operation
fsub.h f12, f29, f14, rdn # perform operation
fsub.h f12, f29, f14, rmm # perform operation
fsub.h f12, f29, f14, rne # perform operation
fsub.h f12, f29, f14, rtz # perform operation
fsub.h f12, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
fsub.h f3, f16, f1, dyn # perform operation
fsub.h f3, f16, f1, rdn # perform operation
fsub.h f3, f16, f1, rmm # perform operation
fsub.h f3, f16, f1, rne # perform operation
fsub.h f3, f16, f1, rtz # perform operation
fsub.h f3, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fsub.h f21, f19, f25, dyn # perform operation
fsub.h f21, f19, f25, rdn # perform operation
fsub.h f21, f19, f25, rmm # perform operation
fsub.h f21, f19, f25, rne # perform operation
fsub.h f21, f19, f25, rtz # perform operation
fsub.h f21, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fsub.h f17, f19, f21, dyn # perform operation
fsub.h f17, f19, f21, rdn # perform operation
fsub.h f17, f19, f21, rmm # perform operation
fsub.h f17, f19, f21, rne # perform operation
fsub.h f17, f19, f21, rtz # perform operation
fsub.h f17, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
fsub.h f22, f25, f30, dyn # perform operation
fsub.h f22, f25, f30, rdn # perform operation
fsub.h f22, f25, f30, rmm # perform operation
fsub.h f22, f25, f30, rne # perform operation
fsub.h f22, f25, f30, rtz # perform operation
fsub.h f22, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
fsub.h f19, f20, f21, dyn # perform operation
fsub.h f19, f20, f21, rdn # perform operation
fsub.h f19, f20, f21, rmm # perform operation
fsub.h f19, f20, f21, rne # perform operation
fsub.h f19, f20, f21, rtz # perform operation
fsub.h f19, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fsub.h f20, f6, f13, dyn # perform operation
fsub.h f20, f6, f13, rdn # perform operation
fsub.h f20, f6, f13, rmm # perform operation
fsub.h f20, f6, f13, rne # perform operation
fsub.h f20, f6, f13, rtz # perform operation
fsub.h f20, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fsub.h f13, f22, f9, dyn # perform operation
fsub.h f13, f22, f9, rdn # perform operation
fsub.h f13, f22, f9, rmm # perform operation
fsub.h f13, f22, f9, rne # perform operation
fsub.h f13, f22, f9, rtz # perform operation
fsub.h f13, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fsub.h f6, f25, f5, dyn # perform operation
fsub.h f6, f25, f5, rdn # perform operation
fsub.h f6, f25, f5, rmm # perform operation
fsub.h f6, f25, f5, rne # perform operation
fsub.h f6, f25, f5, rtz # perform operation
fsub.h f6, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f25, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fsub.h f3, f14, f13, dyn # perform operation
fsub.h f3, f14, f13, rdn # perform operation
fsub.h f3, f14, f13, rmm # perform operation
fsub.h f3, f14, f13, rne # perform operation
fsub.h f3, f14, f13, rtz # perform operation
fsub.h f3, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fsub.h f17, f1, f16, dyn # perform operation
fsub.h f17, f1, f16, rdn # perform operation
fsub.h f17, f1, f16, rmm # perform operation
fsub.h f17, f1, f16, rne # perform operation
fsub.h f17, f1, f16, rtz # perform operation
fsub.h f17, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f1, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fsub.h f25, f10, f17, dyn # perform operation
fsub.h f25, f10, f17, rdn # perform operation
fsub.h f25, f10, f17, rmm # perform operation
fsub.h f25, f10, f17, rne # perform operation
fsub.h f25, f10, f17, rtz # perform operation
fsub.h f25, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fsub.h f11, f24, f31, dyn # perform operation
fsub.h f11, f24, f31, rdn # perform operation
fsub.h f11, f24, f31, rmm # perform operation
fsub.h f11, f24, f31, rne # perform operation
fsub.h f11, f24, f31, rtz # perform operation
fsub.h f11, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fsub.h f7, f31, f14, dyn # perform operation
fsub.h f7, f31, f14, rdn # perform operation
fsub.h f7, f31, f14, rmm # perform operation
fsub.h f7, f31, f14, rne # perform operation
fsub.h f7, f31, f14, rtz # perform operation
fsub.h f7, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fsub.h f23, f20, f22, dyn # perform operation
fsub.h f23, f20, f22, rdn # perform operation
fsub.h f23, f20, f22, rmm # perform operation
fsub.h f23, f20, f22, rne # perform operation
fsub.h f23, f20, f22, rtz # perform operation
fsub.h f23, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f20, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fsub.h f21, f6, f22, dyn # perform operation
fsub.h f21, f6, f22, rdn # perform operation
fsub.h f21, f6, f22, rmm # perform operation
fsub.h f21, f6, f22, rne # perform operation
fsub.h f21, f6, f22, rtz # perform operation
fsub.h f21, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f6, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fsub.h f10, f2, f24, dyn # perform operation
fsub.h f10, f2, f24, rdn # perform operation
fsub.h f10, f2, f24, rmm # perform operation
fsub.h f10, f2, f24, rne # perform operation
fsub.h f10, f2, f24, rtz # perform operation
fsub.h f10, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fsub.h f21, f22, f12, dyn # perform operation
fsub.h f21, f22, f12, rdn # perform operation
fsub.h f21, f22, f12, rmm # perform operation
fsub.h f21, f22, f12, rne # perform operation
fsub.h f21, f22, f12, rtz # perform operation
fsub.h f21, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fsub.h f13, f12, f14, dyn # perform operation
fsub.h f13, f12, f14, rdn # perform operation
fsub.h f13, f12, f14, rmm # perform operation
fsub.h f13, f12, f14, rne # perform operation
fsub.h f13, f12, f14, rtz # perform operation
fsub.h f13, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fsub.h f12, f31, f6, dyn # perform operation
fsub.h f12, f31, f6, rdn # perform operation
fsub.h f12, f31, f6, rmm # perform operation
fsub.h f12, f31, f6, rne # perform operation
fsub.h f12, f31, f6, rtz # perform operation
fsub.h f12, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fsub.h f24, f5, f9, dyn # perform operation
fsub.h f24, f5, f9, rdn # perform operation
fsub.h f24, f5, f9, rmm # perform operation
fsub.h f24, f5, f9, rne # perform operation
fsub.h f24, f5, f9, rtz # perform operation
fsub.h f24, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f5, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fsub.h f17, f6, f8, dyn # perform operation
fsub.h f17, f6, f8, rdn # perform operation
fsub.h f17, f6, f8, rmm # perform operation
fsub.h f17, f6, f8, rne # perform operation
fsub.h f17, f6, f8, rtz # perform operation
fsub.h f17, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fsub.h f28, f29, f19, dyn # perform operation
fsub.h f28, f29, f19, rdn # perform operation
fsub.h f28, f29, f19, rmm # perform operation
fsub.h f28, f29, f19, rne # perform operation
fsub.h f28, f29, f19, rtz # perform operation
fsub.h f28, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fsub.h f6, f13, f1, dyn # perform operation
fsub.h f6, f13, f1, rdn # perform operation
fsub.h f6, f13, f1, rmm # perform operation
fsub.h f6, f13, f1, rne # perform operation
fsub.h f6, f13, f1, rtz # perform operation
fsub.h f6, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fsub.h f27, f12, f2, dyn # perform operation
fsub.h f27, f12, f2, rdn # perform operation
fsub.h f27, f12, f2, rmm # perform operation
fsub.h f27, f12, f2, rne # perform operation
fsub.h f27, f12, f2, rtz # perform operation
fsub.h f27, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
fsub.h f16, f1, f18, dyn # perform operation
fsub.h f16, f1, f18, rdn # perform operation
fsub.h f16, f1, f18, rmm # perform operation
fsub.h f16, f1, f18, rne # perform operation
fsub.h f16, f1, f18, rtz # perform operation
fsub.h f16, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fsub.h f31, f5, f11, dyn # perform operation
fsub.h f31, f5, f11, rdn # perform operation
fsub.h f31, f5, f11, rmm # perform operation
fsub.h f31, f5, f11, rne # perform operation
fsub.h f31, f5, f11, rtz # perform operation
fsub.h f31, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fsub.h f12, f29, f27, dyn # perform operation
fsub.h f12, f29, f27, rdn # perform operation
fsub.h f12, f29, f27, rmm # perform operation
fsub.h f12, f29, f27, rne # perform operation
fsub.h f12, f29, f27, rtz # perform operation
fsub.h f12, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f29, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fsub.h f23, f18, f10, dyn # perform operation
fsub.h f23, f18, f10, rdn # perform operation
fsub.h f23, f18, f10, rmm # perform operation
fsub.h f23, f18, f10, rne # perform operation
fsub.h f23, f18, f10, rtz # perform operation
fsub.h f23, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
fsub.h f31, f28, f20, dyn # perform operation
fsub.h f31, f28, f20, rdn # perform operation
fsub.h f31, f28, f20, rmm # perform operation
fsub.h f31, f28, f20, rne # perform operation
fsub.h f31, f28, f20, rtz # perform operation
fsub.h f31, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fsub.h f19, f16, f26, dyn # perform operation
fsub.h f19, f16, f26, rdn # perform operation
fsub.h f19, f16, f26, rmm # perform operation
fsub.h f19, f16, f26, rne # perform operation
fsub.h f19, f16, f26, rtz # perform operation
fsub.h f19, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fsub.h f10, f26, f16, dyn # perform operation
fsub.h f10, f26, f16, rdn # perform operation
fsub.h f10, f26, f16, rmm # perform operation
fsub.h f10, f26, f16, rne # perform operation
fsub.h f10, f26, f16, rtz # perform operation
fsub.h f10, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
fsub.h f19, f16, f11, dyn # perform operation
fsub.h f19, f16, f11, rdn # perform operation
fsub.h f19, f16, f11, rmm # perform operation
fsub.h f19, f16, f11, rne # perform operation
fsub.h f19, f16, f11, rtz # perform operation
fsub.h f19, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
fsub.h f9, f8, f21, dyn # perform operation
fsub.h f9, f8, f21, rdn # perform operation
fsub.h f9, f8, f21, rmm # perform operation
fsub.h f9, f8, f21, rne # perform operation
fsub.h f9, f8, f21, rtz # perform operation
fsub.h f9, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fsub.h f16, f25, f23, dyn # perform operation
fsub.h f16, f25, f23, rdn # perform operation
fsub.h f16, f25, f23, rmm # perform operation
fsub.h f16, f25, f23, rne # perform operation
fsub.h f16, f25, f23, rtz # perform operation
fsub.h f16, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fsub.h f24, f25, f2, dyn # perform operation
fsub.h f24, f25, f2, rdn # perform operation
fsub.h f24, f25, f2, rmm # perform operation
fsub.h f24, f25, f2, rne # perform operation
fsub.h f24, f25, f2, rtz # perform operation
fsub.h f24, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f25, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fsub.h f15, f22, f28, dyn # perform operation
fsub.h f15, f22, f28, rdn # perform operation
fsub.h f15, f22, f28, rmm # perform operation
fsub.h f15, f22, f28, rne # perform operation
fsub.h f15, f22, f28, rtz # perform operation
fsub.h f15, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f22, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fsub.h f15, f3, f8, dyn # perform operation
fsub.h f15, f3, f8, rdn # perform operation
fsub.h f15, f3, f8, rmm # perform operation
fsub.h f15, f3, f8, rne # perform operation
fsub.h f15, f3, f8, rtz # perform operation
fsub.h f15, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fsub.h f25, f26, f24, dyn # perform operation
fsub.h f25, f26, f24, rdn # perform operation
fsub.h f25, f26, f24, rmm # perform operation
fsub.h f25, f26, f24, rne # perform operation
fsub.h f25, f26, f24, rtz # perform operation
fsub.h f25, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fsub.h f9, f16, f8, dyn # perform operation
fsub.h f9, f16, f8, rdn # perform operation
fsub.h f9, f16, f8, rmm # perform operation
fsub.h f9, f16, f8, rne # perform operation
fsub.h f9, f16, f8, rtz # perform operation
fsub.h f9, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fsub.h f29, f1, f3, dyn # perform operation
fsub.h f29, f1, f3, rdn # perform operation
fsub.h f29, f1, f3, rmm # perform operation
fsub.h f29, f1, f3, rne # perform operation
fsub.h f29, f1, f3, rtz # perform operation
fsub.h f29, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fsub.h f15, f22, f20, dyn # perform operation
fsub.h f15, f22, f20, rdn # perform operation
fsub.h f15, f22, f20, rmm # perform operation
fsub.h f15, f22, f20, rne # perform operation
fsub.h f15, f22, f20, rtz # perform operation
fsub.h f15, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fsub.h f14, f29, f6, dyn # perform operation
fsub.h f14, f29, f6, rdn # perform operation
fsub.h f14, f29, f6, rmm # perform operation
fsub.h f14, f29, f6, rne # perform operation
fsub.h f14, f29, f6, rtz # perform operation
fsub.h f14, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fsub.h f26, f23, f19, dyn # perform operation
fsub.h f26, f23, f19, rdn # perform operation
fsub.h f26, f23, f19, rmm # perform operation
fsub.h f26, f23, f19, rne # perform operation
fsub.h f26, f23, f19, rtz # perform operation
fsub.h f26, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fsub.h f11, f14, f13, dyn # perform operation
fsub.h f11, f14, f13, rdn # perform operation
fsub.h f11, f14, f13, rmm # perform operation
fsub.h f11, f14, f13, rne # perform operation
fsub.h f11, f14, f13, rtz # perform operation
fsub.h f11, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fsub.h f28, f30, f8, dyn # perform operation
fsub.h f28, f30, f8, rdn # perform operation
fsub.h f28, f30, f8, rmm # perform operation
fsub.h f28, f30, f8, rne # perform operation
fsub.h f28, f30, f8, rtz # perform operation
fsub.h f28, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fsub.h f23, f2, f1, dyn # perform operation
fsub.h f23, f2, f1, rdn # perform operation
fsub.h f23, f2, f1, rmm # perform operation
fsub.h f23, f2, f1, rne # perform operation
fsub.h f23, f2, f1, rtz # perform operation
fsub.h f23, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f2, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fsub.h f11, f17, f26, dyn # perform operation
fsub.h f11, f17, f26, rdn # perform operation
fsub.h f11, f17, f26, rmm # perform operation
fsub.h f11, f17, f26, rne # perform operation
fsub.h f11, f17, f26, rtz # perform operation
fsub.h f11, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fsub.h f11, f17, f31, dyn # perform operation
fsub.h f11, f17, f31, rdn # perform operation
fsub.h f11, f17, f31, rmm # perform operation
fsub.h f11, f17, f31, rne # perform operation
fsub.h f11, f17, f31, rtz # perform operation
fsub.h f11, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f17, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fsub.h f9, f16, f15, dyn # perform operation
fsub.h f9, f16, f15, rdn # perform operation
fsub.h f9, f16, f15, rmm # perform operation
fsub.h f9, f16, f15, rne # perform operation
fsub.h f9, f16, f15, rtz # perform operation
fsub.h f9, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f16, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fsub.h f23, f16, f22, dyn # perform operation
fsub.h f23, f16, f22, rdn # perform operation
fsub.h f23, f16, f22, rmm # perform operation
fsub.h f23, f16, f22, rne # perform operation
fsub.h f23, f16, f22, rtz # perform operation
fsub.h f23, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fsub.h f8, f24, f14, dyn # perform operation
fsub.h f8, f24, f14, rdn # perform operation
fsub.h f8, f24, f14, rmm # perform operation
fsub.h f8, f24, f14, rne # perform operation
fsub.h f8, f24, f14, rtz # perform operation
fsub.h f8, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f24, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fsub.h f22, f26, f16, dyn # perform operation
fsub.h f22, f26, f16, rdn # perform operation
fsub.h f22, f26, f16, rmm # perform operation
fsub.h f22, f26, f16, rne # perform operation
fsub.h f22, f26, f16, rtz # perform operation
fsub.h f22, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fsub.h f1, f31, f5, dyn # perform operation
fsub.h f1, f31, f5, rdn # perform operation
fsub.h f1, f31, f5, rmm # perform operation
fsub.h f1, f31, f5, rne # perform operation
fsub.h f1, f31, f5, rtz # perform operation
fsub.h f1, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fsub.h f9, f22, f15, dyn # perform operation
fsub.h f9, f22, f15, rdn # perform operation
fsub.h f9, f22, f15, rmm # perform operation
fsub.h f9, f22, f15, rne # perform operation
fsub.h f9, f22, f15, rtz # perform operation
fsub.h f9, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fsub.h f26, f6, f9, dyn # perform operation
fsub.h f26, f6, f9, rdn # perform operation
fsub.h f26, f6, f9, rmm # perform operation
fsub.h f26, f6, f9, rne # perform operation
fsub.h f26, f6, f9, rtz # perform operation
fsub.h f26, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fsub.h f30, f31, f25, dyn # perform operation
fsub.h f30, f31, f25, rdn # perform operation
fsub.h f30, f31, f25, rmm # perform operation
fsub.h f30, f31, f25, rne # perform operation
fsub.h f30, f31, f25, rtz # perform operation
fsub.h f30, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f31, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
fsub.h f1, f9, f19, dyn # perform operation
fsub.h f1, f9, f19, rdn # perform operation
fsub.h f1, f9, f19, rmm # perform operation
fsub.h f1, f9, f19, rne # perform operation
fsub.h f1, f9, f19, rtz # perform operation
fsub.h f1, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fsub.h f20, f2, f7, dyn # perform operation
fsub.h f20, f2, f7, rdn # perform operation
fsub.h f20, f2, f7, rmm # perform operation
fsub.h f20, f2, f7, rne # perform operation
fsub.h f20, f2, f7, rtz # perform operation
fsub.h f20, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fsub.h f11, f1, f22, dyn # perform operation
fsub.h f11, f1, f22, rdn # perform operation
fsub.h f11, f1, f22, rmm # perform operation
fsub.h f11, f1, f22, rne # perform operation
fsub.h f11, f1, f22, rtz # perform operation
fsub.h f11, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
fsub.h f31, f20, f1, dyn # perform operation
fsub.h f31, f20, f1, rdn # perform operation
fsub.h f31, f20, f1, rmm # perform operation
fsub.h f31, f20, f1, rne # perform operation
fsub.h f31, f20, f1, rtz # perform operation
fsub.h f31, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fsub.h f14, f18, f9, dyn # perform operation
fsub.h f14, f18, f9, rdn # perform operation
fsub.h f14, f18, f9, rmm # perform operation
fsub.h f14, f18, f9, rne # perform operation
fsub.h f14, f18, f9, rtz # perform operation
fsub.h f14, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fsub.h f29, f6, f21, dyn # perform operation
fsub.h f29, f6, f21, rdn # perform operation
fsub.h f29, f6, f21, rmm # perform operation
fsub.h f29, f6, f21, rne # perform operation
fsub.h f29, f6, f21, rtz # perform operation
fsub.h f29, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fsub.h f26, f15, f27, dyn # perform operation
fsub.h f26, f15, f27, rdn # perform operation
fsub.h f26, f15, f27, rmm # perform operation
fsub.h f26, f15, f27, rne # perform operation
fsub.h f26, f15, f27, rtz # perform operation
fsub.h f26, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fsub.h f12, f14, f2, dyn # perform operation
fsub.h f12, f14, f2, rdn # perform operation
fsub.h f12, f14, f2, rmm # perform operation
fsub.h f12, f14, f2, rne # perform operation
fsub.h f12, f14, f2, rtz # perform operation
fsub.h f12, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fsub.h f11, f7, f16, dyn # perform operation
fsub.h f11, f7, f16, rdn # perform operation
fsub.h f11, f7, f16, rmm # perform operation
fsub.h f11, f7, f16, rne # perform operation
fsub.h f11, f7, f16, rtz # perform operation
fsub.h f11, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fsub.h f16, f30, f7, dyn # perform operation
fsub.h f16, f30, f7, rdn # perform operation
fsub.h f16, f30, f7, rmm # perform operation
fsub.h f16, f30, f7, rne # perform operation
fsub.h f16, f30, f7, rtz # perform operation
fsub.h f16, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fsub.h f23, f16, f5, dyn # perform operation
fsub.h f23, f16, f5, rdn # perform operation
fsub.h f23, f16, f5, rmm # perform operation
fsub.h f23, f16, f5, rne # perform operation
fsub.h f23, f16, f5, rtz # perform operation
fsub.h f23, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fsub.h f3, f30, f26, dyn # perform operation
fsub.h f3, f30, f26, rdn # perform operation
fsub.h f3, f30, f26, rmm # perform operation
fsub.h f3, f30, f26, rne # perform operation
fsub.h f3, f30, f26, rtz # perform operation
fsub.h f3, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f30, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
fsub.h f26, f7, f30, dyn # perform operation
fsub.h f26, f7, f30, rdn # perform operation
fsub.h f26, f7, f30, rmm # perform operation
fsub.h f26, f7, f30, rne # perform operation
fsub.h f26, f7, f30, rtz # perform operation
fsub.h f26, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fsub.h f16, f17, f23, dyn # perform operation
fsub.h f16, f17, f23, rdn # perform operation
fsub.h f16, f17, f23, rmm # perform operation
fsub.h f16, f17, f23, rne # perform operation
fsub.h f16, f17, f23, rtz # perform operation
fsub.h f16, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fsub.h f7, f18, f22, dyn # perform operation
fsub.h f7, f18, f22, rdn # perform operation
fsub.h f7, f18, f22, rmm # perform operation
fsub.h f7, f18, f22, rne # perform operation
fsub.h f7, f18, f22, rtz # perform operation
fsub.h f7, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fsub.h f25, f3, f19, dyn # perform operation
fsub.h f25, f3, f19, rdn # perform operation
fsub.h f25, f3, f19, rmm # perform operation
fsub.h f25, f3, f19, rne # perform operation
fsub.h f25, f3, f19, rtz # perform operation
fsub.h f25, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fsub.h f29, f27, f14, dyn # perform operation
fsub.h f29, f27, f14, rdn # perform operation
fsub.h f29, f27, f14, rmm # perform operation
fsub.h f29, f27, f14, rne # perform operation
fsub.h f29, f27, f14, rtz # perform operation
fsub.h f29, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fsub.h f3, f29, f15, dyn # perform operation
fsub.h f3, f29, f15, rdn # perform operation
fsub.h f3, f29, f15, rmm # perform operation
fsub.h f3, f29, f15, rne # perform operation
fsub.h f3, f29, f15, rtz # perform operation
fsub.h f3, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fsub.h f25, f27, f16, dyn # perform operation
fsub.h f25, f27, f16, rdn # perform operation
fsub.h f25, f27, f16, rmm # perform operation
fsub.h f25, f27, f16, rne # perform operation
fsub.h f25, f27, f16, rtz # perform operation
fsub.h f25, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fsub.h f14, f20, f8, dyn # perform operation
fsub.h f14, f20, f8, rdn # perform operation
fsub.h f14, f20, f8, rmm # perform operation
fsub.h f14, f20, f8, rne # perform operation
fsub.h f14, f20, f8, rtz # perform operation
fsub.h f14, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f20, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fsub.h f19, f24, f23, dyn # perform operation
fsub.h f19, f24, f23, rdn # perform operation
fsub.h f19, f24, f23, rmm # perform operation
fsub.h f19, f24, f23, rne # perform operation
fsub.h f19, f24, f23, rtz # perform operation
fsub.h f19, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fsub.h f25, f18, f27, dyn # perform operation
fsub.h f25, f18, f27, rdn # perform operation
fsub.h f25, f18, f27, rmm # perform operation
fsub.h f25, f18, f27, rne # perform operation
fsub.h f25, f18, f27, rtz # perform operation
fsub.h f25, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fsub.h f5, f3, f26, dyn # perform operation
fsub.h f5, f3, f26, rdn # perform operation
fsub.h f5, f3, f26, rmm # perform operation
fsub.h f5, f3, f26, rne # perform operation
fsub.h f5, f3, f26, rtz # perform operation
fsub.h f5, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fsub.h f20, f11, f24, dyn # perform operation
fsub.h f20, f11, f24, rdn # perform operation
fsub.h f20, f11, f24, rmm # perform operation
fsub.h f20, f11, f24, rne # perform operation
fsub.h f20, f11, f24, rtz # perform operation
fsub.h f20, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fsub.h f20, f13, f23, dyn # perform operation
fsub.h f20, f13, f23, rdn # perform operation
fsub.h f20, f13, f23, rmm # perform operation
fsub.h f20, f13, f23, rne # perform operation
fsub.h f20, f13, f23, rtz # perform operation
fsub.h f20, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f13, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fsub.h f29, f6, f23, dyn # perform operation
fsub.h f29, f6, f23, rdn # perform operation
fsub.h f29, f6, f23, rmm # perform operation
fsub.h f29, f6, f23, rne # perform operation
fsub.h f29, f6, f23, rtz # perform operation
fsub.h f29, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fsub.h f2, f21, f25, dyn # perform operation
fsub.h f2, f21, f25, rdn # perform operation
fsub.h f2, f21, f25, rmm # perform operation
fsub.h f2, f21, f25, rne # perform operation
fsub.h f2, f21, f25, rtz # perform operation
fsub.h f2, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fsub.h f20, f28, f16, dyn # perform operation
fsub.h f20, f28, f16, rdn # perform operation
fsub.h f20, f28, f16, rmm # perform operation
fsub.h f20, f28, f16, rne # perform operation
fsub.h f20, f28, f16, rtz # perform operation
fsub.h f20, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
fsub.h f10, f16, f19, dyn # perform operation
fsub.h f10, f16, f19, rdn # perform operation
fsub.h f10, f16, f19, rmm # perform operation
fsub.h f10, f16, f19, rne # perform operation
fsub.h f10, f16, f19, rtz # perform operation
fsub.h f10, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fsub.h f8, f16, f2, dyn # perform operation
fsub.h f8, f16, f2, rdn # perform operation
fsub.h f8, f16, f2, rmm # perform operation
fsub.h f8, f16, f2, rne # perform operation
fsub.h f8, f16, f2, rtz # perform operation
fsub.h f8, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fsub.h f15, f20, f18, dyn # perform operation
fsub.h f15, f20, f18, rdn # perform operation
fsub.h f15, f20, f18, rmm # perform operation
fsub.h f15, f20, f18, rne # perform operation
fsub.h f15, f20, f18, rtz # perform operation
fsub.h f15, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f20, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
fsub.h f31, f16, f25, dyn # perform operation
fsub.h f31, f16, f25, rdn # perform operation
fsub.h f31, f16, f25, rmm # perform operation
fsub.h f31, f16, f25, rne # perform operation
fsub.h f31, f16, f25, rtz # perform operation
fsub.h f31, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fsub.h f17, f11, f10, dyn # perform operation
fsub.h f17, f11, f10, rdn # perform operation
fsub.h f17, f11, f10, rmm # perform operation
fsub.h f17, f11, f10, rne # perform operation
fsub.h f17, f11, f10, rtz # perform operation
fsub.h f17, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fsub.h f2, f18, f6, dyn # perform operation
fsub.h f2, f18, f6, rdn # perform operation
fsub.h f2, f18, f6, rmm # perform operation
fsub.h f2, f18, f6, rne # perform operation
fsub.h f2, f18, f6, rtz # perform operation
fsub.h f2, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fsub.h f3, f23, f14, dyn # perform operation
fsub.h f3, f23, f14, rdn # perform operation
fsub.h f3, f23, f14, rmm # perform operation
fsub.h f3, f23, f14, rne # perform operation
fsub.h f3, f23, f14, rtz # perform operation
fsub.h f3, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f15, 0(x2) # load 0x0000fc01 from memory into f15
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fsub.h f12, f15, f6, dyn # perform operation
fsub.h f12, f15, f6, rdn # perform operation
fsub.h f12, f15, f6, rmm # perform operation
fsub.h f12, f15, f6, rne # perform operation
fsub.h f12, f15, f6, rtz # perform operation
fsub.h f12, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fsub.h f10, f22, f18, dyn # perform operation
fsub.h f10, f22, f18, rdn # perform operation
fsub.h f10, f22, f18, rmm # perform operation
fsub.h f10, f22, f18, rne # perform operation
fsub.h f10, f22, f18, rtz # perform operation
fsub.h f10, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fsub.h f8, f23, f18, dyn # perform operation
fsub.h f8, f23, f18, rdn # perform operation
fsub.h f8, f23, f18, rmm # perform operation
fsub.h f8, f23, f18, rne # perform operation
fsub.h f8, f23, f18, rtz # perform operation
fsub.h f8, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fsub.h f24, f14, f17, dyn # perform operation
fsub.h f24, f14, f17, rdn # perform operation
fsub.h f24, f14, f17, rmm # perform operation
fsub.h f24, f14, f17, rne # perform operation
fsub.h f24, f14, f17, rtz # perform operation
fsub.h f24, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
fsub.h f29, f22, f24, dyn # perform operation
fsub.h f29, f22, f24, rdn # perform operation
fsub.h f29, f22, f24, rmm # perform operation
fsub.h f29, f22, f24, rne # perform operation
fsub.h f29, f22, f24, rtz # perform operation
fsub.h f29, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f22, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fsub.h f23, f18, f7, dyn # perform operation
fsub.h f23, f18, f7, rdn # perform operation
fsub.h f23, f18, f7, rmm # perform operation
fsub.h f23, f18, f7, rne # perform operation
fsub.h f23, f18, f7, rtz # perform operation
fsub.h f23, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fsub.h f31, f6, f17, dyn # perform operation
fsub.h f31, f6, f17, rdn # perform operation
fsub.h f31, f6, f17, rmm # perform operation
fsub.h f31, f6, f17, rne # perform operation
fsub.h f31, f6, f17, rtz # perform operation
fsub.h f31, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fsub.h f10, f14, f12, dyn # perform operation
fsub.h f10, f14, f12, rdn # perform operation
fsub.h f10, f14, f12, rmm # perform operation
fsub.h f10, f14, f12, rne # perform operation
fsub.h f10, f14, f12, rtz # perform operation
fsub.h f10, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fsub.h f5, f24, f9, dyn # perform operation
fsub.h f5, f24, f9, rdn # perform operation
fsub.h f5, f24, f9, rmm # perform operation
fsub.h f5, f24, f9, rne # perform operation
fsub.h f5, f24, f9, rtz # perform operation
fsub.h f5, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fsub.h f17, f2, f6, dyn # perform operation
fsub.h f17, f2, f6, rdn # perform operation
fsub.h f17, f2, f6, rmm # perform operation
fsub.h f17, f2, f6, rne # perform operation
fsub.h f17, f2, f6, rtz # perform operation
fsub.h f17, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f2, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fsub.h f31, f17, f11, dyn # perform operation
fsub.h f31, f17, f11, rdn # perform operation
fsub.h f31, f17, f11, rmm # perform operation
fsub.h f31, f17, f11, rne # perform operation
fsub.h f31, f17, f11, rtz # perform operation
fsub.h f31, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fsub.h f13, f22, f10, dyn # perform operation
fsub.h f13, f22, f10, rdn # perform operation
fsub.h f13, f22, f10, rmm # perform operation
fsub.h f13, f22, f10, rne # perform operation
fsub.h f13, f22, f10, rtz # perform operation
fsub.h f13, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fsub.h f13, f25, f22, dyn # perform operation
fsub.h f13, f25, f22, rdn # perform operation
fsub.h f13, f25, f22, rmm # perform operation
fsub.h f13, f25, f22, rne # perform operation
fsub.h f13, f25, f22, rtz # perform operation
fsub.h f13, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fsub.h f12, f20, f19, dyn # perform operation
fsub.h f12, f20, f19, rdn # perform operation
fsub.h f12, f20, f19, rmm # perform operation
fsub.h f12, f20, f19, rne # perform operation
fsub.h f12, f20, f19, rtz # perform operation
fsub.h f12, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fsub.h f18, f13, f17, dyn # perform operation
fsub.h f18, f13, f17, rdn # perform operation
fsub.h f18, f13, f17, rmm # perform operation
fsub.h f18, f13, f17, rne # perform operation
fsub.h f18, f13, f17, rtz # perform operation
fsub.h f18, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fsub.h f20, f6, f8, dyn # perform operation
fsub.h f20, f6, f8, rdn # perform operation
fsub.h f20, f6, f8, rmm # perform operation
fsub.h f20, f6, f8, rne # perform operation
fsub.h f20, f6, f8, rtz # perform operation
fsub.h f20, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fsub.h f16, f24, f5, dyn # perform operation
fsub.h f16, f24, f5, rdn # perform operation
fsub.h f16, f24, f5, rmm # perform operation
fsub.h f16, f24, f5, rne # perform operation
fsub.h f16, f24, f5, rtz # perform operation
fsub.h f16, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fsub.h f18, f8, f27, dyn # perform operation
fsub.h f18, f8, f27, rdn # perform operation
fsub.h f18, f8, f27, rmm # perform operation
fsub.h f18, f8, f27, rne # perform operation
fsub.h f18, f8, f27, rtz # perform operation
fsub.h f18, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fsub.h f19, f2, f3, dyn # perform operation
fsub.h f19, f2, f3, rdn # perform operation
fsub.h f19, f2, f3, rmm # perform operation
fsub.h f19, f2, f3, rne # perform operation
fsub.h f19, f2, f3, rtz # perform operation
fsub.h f19, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fsub.h f16, f9, f6, dyn # perform operation
fsub.h f16, f9, f6, rdn # perform operation
fsub.h f16, f9, f6, rmm # perform operation
fsub.h f16, f9, f6, rne # perform operation
fsub.h f16, f9, f6, rtz # perform operation
fsub.h f16, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f9, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fsub.h f21, f6, f30, dyn # perform operation
fsub.h f21, f6, f30, rdn # perform operation
fsub.h f21, f6, f30, rmm # perform operation
fsub.h f21, f6, f30, rne # perform operation
fsub.h f21, f6, f30, rtz # perform operation
fsub.h f21, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f6, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
fsub.h f2, f17, f25, dyn # perform operation
fsub.h f2, f17, f25, rdn # perform operation
fsub.h f2, f17, f25, rmm # perform operation
fsub.h f2, f17, f25, rne # perform operation
fsub.h f2, f17, f25, rtz # perform operation
fsub.h f2, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f17, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fsub.h f31, f14, f25, dyn # perform operation
fsub.h f31, f14, f25, rdn # perform operation
fsub.h f31, f14, f25, rmm # perform operation
fsub.h f31, f14, f25, rne # perform operation
fsub.h f31, f14, f25, rtz # perform operation
fsub.h f31, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fsub.h f5, f10, f27, dyn # perform operation
fsub.h f5, f10, f27, rdn # perform operation
fsub.h f5, f10, f27, rmm # perform operation
fsub.h f5, f10, f27, rne # perform operation
fsub.h f5, f10, f27, rtz # perform operation
fsub.h f5, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
fsub.h f8, f20, f18, dyn # perform operation
fsub.h f8, f20, f18, rdn # perform operation
fsub.h f8, f20, f18, rmm # perform operation
fsub.h f8, f20, f18, rne # perform operation
fsub.h f8, f20, f18, rtz # perform operation
fsub.h f8, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f20, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fsub.h f21, f26, f12, dyn # perform operation
fsub.h f21, f26, f12, rdn # perform operation
fsub.h f21, f26, f12, rmm # perform operation
fsub.h f21, f26, f12, rne # perform operation
fsub.h f21, f26, f12, rtz # perform operation
fsub.h f21, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f15, 0(x2) # load 0x0000fc01 from memory into f15
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fsub.h f25, f15, f13, dyn # perform operation
fsub.h f25, f15, f13, rdn # perform operation
fsub.h f25, f15, f13, rmm # perform operation
fsub.h f25, f15, f13, rne # perform operation
fsub.h f25, f15, f13, rtz # perform operation
fsub.h f25, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fsub.h f19, f15, f10, dyn # perform operation
fsub.h f19, f15, f10, rdn # perform operation
fsub.h f19, f15, f10, rmm # perform operation
fsub.h f19, f15, f10, rne # perform operation
fsub.h f19, f15, f10, rtz # perform operation
fsub.h f19, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fsub.h f24, f17, f11, dyn # perform operation
fsub.h f24, f17, f11, rdn # perform operation
fsub.h f24, f17, f11, rmm # perform operation
fsub.h f24, f17, f11, rne # perform operation
fsub.h f24, f17, f11, rtz # perform operation
fsub.h f24, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fsub.h f3, f18, f5, dyn # perform operation
fsub.h f3, f18, f5, rdn # perform operation
fsub.h f3, f18, f5, rmm # perform operation
fsub.h f3, f18, f5, rne # perform operation
fsub.h f3, f18, f5, rtz # perform operation
fsub.h f3, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fsub.h f9, f28, f12, dyn # perform operation
fsub.h f9, f28, f12, rdn # perform operation
fsub.h f9, f28, f12, rmm # perform operation
fsub.h f9, f28, f12, rne # perform operation
fsub.h f9, f28, f12, rtz # perform operation
fsub.h f9, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fsub.h f3, f27, f30, dyn # perform operation
fsub.h f3, f27, f30, rdn # perform operation
fsub.h f3, f27, f30, rmm # perform operation
fsub.h f3, f27, f30, rne # perform operation
fsub.h f3, f27, f30, rtz # perform operation
fsub.h f3, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fsub.h f13, f6, f31, dyn # perform operation
fsub.h f13, f6, f31, rdn # perform operation
fsub.h f13, f6, f31, rmm # perform operation
fsub.h f13, f6, f31, rne # perform operation
fsub.h f13, f6, f31, rtz # perform operation
fsub.h f13, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fsub.h f12, f27, f6, dyn # perform operation
fsub.h f12, f27, f6, rdn # perform operation
fsub.h f12, f27, f6, rmm # perform operation
fsub.h f12, f27, f6, rne # perform operation
fsub.h f12, f27, f6, rtz # perform operation
fsub.h f12, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fsub.h f7, f18, f3, dyn # perform operation
fsub.h f7, f18, f3, rdn # perform operation
fsub.h f7, f18, f3, rmm # perform operation
fsub.h f7, f18, f3, rne # perform operation
fsub.h f7, f18, f3, rtz # perform operation
fsub.h f7, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fsub.h f7, f2, f25, dyn # perform operation
fsub.h f7, f2, f25, rdn # perform operation
fsub.h f7, f2, f25, rmm # perform operation
fsub.h f7, f2, f25, rne # perform operation
fsub.h f7, f2, f25, rtz # perform operation
fsub.h f7, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f2, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fsub.h f22, f9, f15, dyn # perform operation
fsub.h f22, f9, f15, rdn # perform operation
fsub.h f22, f9, f15, rmm # perform operation
fsub.h f22, f9, f15, rne # perform operation
fsub.h f22, f9, f15, rtz # perform operation
fsub.h f22, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fsub.h f26, f19, f10, dyn # perform operation
fsub.h f26, f19, f10, rdn # perform operation
fsub.h f26, f19, f10, rmm # perform operation
fsub.h f26, f19, f10, rne # perform operation
fsub.h f26, f19, f10, rtz # perform operation
fsub.h f26, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fsub.h f27, f9, f18, dyn # perform operation
fsub.h f27, f9, f18, rdn # perform operation
fsub.h f27, f9, f18, rmm # perform operation
fsub.h f27, f9, f18, rne # perform operation
fsub.h f27, f9, f18, rtz # perform operation
fsub.h f27, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fsub.h f13, f27, f18, dyn # perform operation
fsub.h f13, f27, f18, rdn # perform operation
fsub.h f13, f27, f18, rmm # perform operation
fsub.h f13, f27, f18, rne # perform operation
fsub.h f13, f27, f18, rtz # perform operation
fsub.h f13, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fsub.h f29, f9, f14, dyn # perform operation
fsub.h f29, f9, f14, rdn # perform operation
fsub.h f29, f9, f14, rmm # perform operation
fsub.h f29, f9, f14, rne # perform operation
fsub.h f29, f9, f14, rtz # perform operation
fsub.h f29, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fsub.h f11, f25, f13, dyn # perform operation
fsub.h f11, f25, f13, rdn # perform operation
fsub.h f11, f25, f13, rmm # perform operation
fsub.h f11, f25, f13, rne # perform operation
fsub.h f11, f25, f13, rtz # perform operation
fsub.h f11, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f25, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fsub.h f13, f2, f27, dyn # perform operation
fsub.h f13, f2, f27, rdn # perform operation
fsub.h f13, f2, f27, rmm # perform operation
fsub.h f13, f2, f27, rne # perform operation
fsub.h f13, f2, f27, rtz # perform operation
fsub.h f13, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fsub.h f5, f25, f18, dyn # perform operation
fsub.h f5, f25, f18, rdn # perform operation
fsub.h f5, f25, f18, rmm # perform operation
fsub.h f5, f25, f18, rne # perform operation
fsub.h f5, f25, f18, rtz # perform operation
fsub.h f5, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f25, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fsub.h f23, f5, f19, dyn # perform operation
fsub.h f23, f5, f19, rdn # perform operation
fsub.h f23, f5, f19, rmm # perform operation
fsub.h f23, f5, f19, rne # perform operation
fsub.h f23, f5, f19, rtz # perform operation
fsub.h f23, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f5, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fsub.h f12, f29, f24, dyn # perform operation
fsub.h f12, f29, f24, rdn # perform operation
fsub.h f12, f29, f24, rmm # perform operation
fsub.h f12, f29, f24, rne # perform operation
fsub.h f12, f29, f24, rtz # perform operation
fsub.h f12, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fsub.h f13, f15, f31, dyn # perform operation
fsub.h f13, f15, f31, rdn # perform operation
fsub.h f13, f15, f31, rmm # perform operation
fsub.h f13, f15, f31, rne # perform operation
fsub.h f13, f15, f31, rtz # perform operation
fsub.h f13, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fsub.h f28, f14, f19, dyn # perform operation
fsub.h f28, f14, f19, rdn # perform operation
fsub.h f28, f14, f19, rmm # perform operation
fsub.h f28, f14, f19, rne # perform operation
fsub.h f28, f14, f19, rtz # perform operation
fsub.h f28, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fsub.h f24, f11, f5, dyn # perform operation
fsub.h f24, f11, f5, rdn # perform operation
fsub.h f24, f11, f5, rmm # perform operation
fsub.h f24, f11, f5, rne # perform operation
fsub.h f24, f11, f5, rtz # perform operation
fsub.h f24, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
fsub.h f16, f19, f9, dyn # perform operation
fsub.h f16, f19, f9, rdn # perform operation
fsub.h f16, f19, f9, rmm # perform operation
fsub.h f16, f19, f9, rne # perform operation
fsub.h f16, f19, f9, rtz # perform operation
fsub.h f16, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f19, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fsub.h f31, f11, f12, dyn # perform operation
fsub.h f31, f11, f12, rdn # perform operation
fsub.h f31, f11, f12, rmm # perform operation
fsub.h f31, f11, f12, rne # perform operation
fsub.h f31, f11, f12, rtz # perform operation
fsub.h f31, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fsub.h f6, f12, f5, dyn # perform operation
fsub.h f6, f12, f5, rdn # perform operation
fsub.h f6, f12, f5, rmm # perform operation
fsub.h f6, f12, f5, rne # perform operation
fsub.h f6, f12, f5, rtz # perform operation
fsub.h f6, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
fsub.h f28, f30, f9, dyn # perform operation
fsub.h f28, f30, f9, rdn # perform operation
fsub.h f28, f30, f9, rmm # perform operation
fsub.h f28, f30, f9, rne # perform operation
fsub.h f28, f30, f9, rtz # perform operation
fsub.h f28, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fsub.h f23, f14, f8, dyn # perform operation
fsub.h f23, f14, f8, rdn # perform operation
fsub.h f23, f14, f8, rmm # perform operation
fsub.h f23, f14, f8, rne # perform operation
fsub.h f23, f14, f8, rtz # perform operation
fsub.h f23, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fsub.h f30, f16, f26, dyn # perform operation
fsub.h f30, f16, f26, rdn # perform operation
fsub.h f30, f16, f26, rmm # perform operation
fsub.h f30, f16, f26, rne # perform operation
fsub.h f30, f16, f26, rtz # perform operation
fsub.h f30, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fsub.h f24, f28, f22, dyn # perform operation
fsub.h f24, f28, f22, rdn # perform operation
fsub.h f24, f28, f22, rmm # perform operation
fsub.h f24, f28, f22, rne # perform operation
fsub.h f24, f28, f22, rtz # perform operation
fsub.h f24, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fsub.h f21, f30, f13, dyn # perform operation
fsub.h f21, f30, f13, rdn # perform operation
fsub.h f21, f30, f13, rmm # perform operation
fsub.h f21, f30, f13, rne # perform operation
fsub.h f21, f30, f13, rtz # perform operation
fsub.h f21, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fsub.h f20, f12, f26, dyn # perform operation
fsub.h f20, f12, f26, rdn # perform operation
fsub.h f20, f12, f26, rmm # perform operation
fsub.h f20, f12, f26, rne # perform operation
fsub.h f20, f12, f26, rtz # perform operation
fsub.h f20, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fsub.h f13, f28, f12, dyn # perform operation
fsub.h f13, f28, f12, rdn # perform operation
fsub.h f13, f28, f12, rmm # perform operation
fsub.h f13, f28, f12, rne # perform operation
fsub.h f13, f28, f12, rtz # perform operation
fsub.h f13, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fsub.h f16, f15, f9, dyn # perform operation
fsub.h f16, f15, f9, rdn # perform operation
fsub.h f16, f15, f9, rmm # perform operation
fsub.h f16, f15, f9, rne # perform operation
fsub.h f16, f15, f9, rtz # perform operation
fsub.h f16, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fsub.h f19, f24, f16, dyn # perform operation
fsub.h f19, f24, f16, rdn # perform operation
fsub.h f19, f24, f16, rmm # perform operation
fsub.h f19, f24, f16, rne # perform operation
fsub.h f19, f24, f16, rtz # perform operation
fsub.h f19, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fsub.h f16, f15, f19, dyn # perform operation
fsub.h f16, f15, f19, rdn # perform operation
fsub.h f16, f15, f19, rmm # perform operation
fsub.h f16, f15, f19, rne # perform operation
fsub.h f16, f15, f19, rtz # perform operation
fsub.h f16, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fsub.h f9, f20, f17, dyn # perform operation
fsub.h f9, f20, f17, rdn # perform operation
fsub.h f9, f20, f17, rmm # perform operation
fsub.h f9, f20, f17, rne # perform operation
fsub.h f9, f20, f17, rtz # perform operation
fsub.h f9, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fsub.h f18, f10, f24, dyn # perform operation
fsub.h f18, f10, f24, rdn # perform operation
fsub.h f18, f10, f24, rmm # perform operation
fsub.h f18, f10, f24, rne # perform operation
fsub.h f18, f10, f24, rtz # perform operation
fsub.h f18, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fsub.h f9, f20, f26, dyn # perform operation
fsub.h f9, f20, f26, rdn # perform operation
fsub.h f9, f20, f26, rmm # perform operation
fsub.h f9, f20, f26, rne # perform operation
fsub.h f9, f20, f26, rtz # perform operation
fsub.h f9, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fsub.h f18, f3, f24, dyn # perform operation
fsub.h f18, f3, f24, rdn # perform operation
fsub.h f18, f3, f24, rmm # perform operation
fsub.h f18, f3, f24, rne # perform operation
fsub.h f18, f3, f24, rtz # perform operation
fsub.h f18, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fsub.h f3, f10, f23, dyn # perform operation
fsub.h f3, f10, f23, rdn # perform operation
fsub.h f3, f10, f23, rmm # perform operation
fsub.h f3, f10, f23, rne # perform operation
fsub.h f3, f10, f23, rtz # perform operation
fsub.h f3, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fsub.h f15, f7, f24, dyn # perform operation
fsub.h f15, f7, f24, rdn # perform operation
fsub.h f15, f7, f24, rmm # perform operation
fsub.h f15, f7, f24, rne # perform operation
fsub.h f15, f7, f24, rtz # perform operation
fsub.h f15, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fsub.h f9, f29, f31, dyn # perform operation
fsub.h f9, f29, f31, rdn # perform operation
fsub.h f9, f29, f31, rmm # perform operation
fsub.h f9, f29, f31, rne # perform operation
fsub.h f9, f29, f31, rtz # perform operation
fsub.h f9, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fsub.h f6, f16, f17, dyn # perform operation
fsub.h f6, f16, f17, rdn # perform operation
fsub.h f6, f16, f17, rmm # perform operation
fsub.h f6, f16, f17, rne # perform operation
fsub.h f6, f16, f17, rtz # perform operation
fsub.h f6, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fsub.h f26, f15, f30, dyn # perform operation
fsub.h f26, f15, f30, rdn # perform operation
fsub.h f26, f15, f30, rmm # perform operation
fsub.h f26, f15, f30, rne # perform operation
fsub.h f26, f15, f30, rtz # perform operation
fsub.h f26, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f15, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fsub.h f14, f16, f3, dyn # perform operation
fsub.h f14, f16, f3, rdn # perform operation
fsub.h f14, f16, f3, rmm # perform operation
fsub.h f14, f16, f3, rne # perform operation
fsub.h f14, f16, f3, rtz # perform operation
fsub.h f14, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fsub.h f30, f7, f16, dyn # perform operation
fsub.h f30, f7, f16, rdn # perform operation
fsub.h f30, f7, f16, rmm # perform operation
fsub.h f30, f7, f16, rne # perform operation
fsub.h f30, f7, f16, rtz # perform operation
fsub.h f30, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fsub.h f31, f22, f19, dyn # perform operation
fsub.h f31, f22, f19, rdn # perform operation
fsub.h f31, f22, f19, rmm # perform operation
fsub.h f31, f22, f19, rne # perform operation
fsub.h f31, f22, f19, rtz # perform operation
fsub.h f31, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fsub.h f29, f21, f20, dyn # perform operation
fsub.h f29, f21, f20, rdn # perform operation
fsub.h f29, f21, f20, rmm # perform operation
fsub.h f29, f21, f20, rne # perform operation
fsub.h f29, f21, f20, rtz # perform operation
fsub.h f29, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fsub.h f2, f5, f15, dyn # perform operation
fsub.h f2, f5, f15, rdn # perform operation
fsub.h f2, f5, f15, rmm # perform operation
fsub.h f2, f5, f15, rne # perform operation
fsub.h f2, f5, f15, rtz # perform operation
fsub.h f2, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fsub.h f11, f16, f28, dyn # perform operation
fsub.h f11, f16, f28, rdn # perform operation
fsub.h f11, f16, f28, rmm # perform operation
fsub.h f11, f16, f28, rne # perform operation
fsub.h f11, f16, f28, rtz # perform operation
fsub.h f11, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
fsub.h f5, f18, f2, dyn # perform operation
fsub.h f5, f18, f2, rdn # perform operation
fsub.h f5, f18, f2, rmm # perform operation
fsub.h f5, f18, f2, rne # perform operation
fsub.h f5, f18, f2, rtz # perform operation
fsub.h f5, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fsub.h f22, f26, f11, dyn # perform operation
fsub.h f22, f26, f11, rdn # perform operation
fsub.h f22, f26, f11, rmm # perform operation
fsub.h f22, f26, f11, rne # perform operation
fsub.h f22, f26, f11, rtz # perform operation
fsub.h f22, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f26, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fsub.h f14, f9, f7, dyn # perform operation
fsub.h f14, f9, f7, rdn # perform operation
fsub.h f14, f9, f7, rmm # perform operation
fsub.h f14, f9, f7, rne # perform operation
fsub.h f14, f9, f7, rtz # perform operation
fsub.h f14, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
fsub.h f21, f22, f31, dyn # perform operation
fsub.h f21, f22, f31, rdn # perform operation
fsub.h f21, f22, f31, rmm # perform operation
fsub.h f21, f22, f31, rne # perform operation
fsub.h f21, f22, f31, rtz # perform operation
fsub.h f21, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fsub.h f29, f3, f13, dyn # perform operation
fsub.h f29, f3, f13, rdn # perform operation
fsub.h f29, f3, f13, rmm # perform operation
fsub.h f29, f3, f13, rne # perform operation
fsub.h f29, f3, f13, rtz # perform operation
fsub.h f29, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f3, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fsub.h f22, f25, f5, dyn # perform operation
fsub.h f22, f25, f5, rdn # perform operation
fsub.h f22, f25, f5, rmm # perform operation
fsub.h f22, f25, f5, rne # perform operation
fsub.h f22, f25, f5, rtz # perform operation
fsub.h f22, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f25, f5 # perform operation


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0xc9754a58 # load x3 with value 0xc9754a58
sw x3, 0(x2) # store 0xc9754a58 in memory
flh f15, 0(x2) # load 0xc9754a58 from memory into f15
la x2, scratch
li x3, 0x8ab453d5 # load x3 with value 0x8ab453d5
sw x3, 0(x2) # store 0x8ab453d5 in memory
flh f19, 0(x2) # load 0x8ab453d5 from memory into f19
fsub.h f14, f15, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x0 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0xe7a49de0 # load x3 with value 0xe7a49de0
sw x3, 0(x2) # store 0xe7a49de0 in memory
flw f24, 0(x2) # load 0xe7a49de0 from memory into f24
fsub.h f26, f29, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f24, 0(x2) # load 0xfffe8000 from memory into f24
la x2, scratch
li x3, 0xf6e1b0a8 # load x3 with value 0xf6e1b0a8
sw x3, 0(x2) # store 0xf6e1b0a8 in memory
flw f31, 0(x2) # load 0xf6e1b0a8 from memory into f31
fsub.h f13, f24, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f5, 0(x2) # load 0x7fff3c00 from memory into f5
la x2, scratch
li x3, 0x442c4ab7 # load x3 with value 0x442c4ab7
sw x3, 0(x2) # store 0x442c4ab7 in memory
flw f3, 0(x2) # load 0x442c4ab7 from memory into f3
fsub.h f23, f5, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f16, 0(x2) # load 0xbeefbc00 from memory into f16
la x2, scratch
li x3, 0x9a15cc92 # load x3 with value 0x9a15cc92
sw x3, 0(x2) # store 0x9a15cc92 in memory
flw f9, 0(x2) # load 0x9a15cc92 from memory into f9
fsub.h f31, f16, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f14, 0(x2) # load 0xfeff0400 from memory into f14
la x2, scratch
li x3, 0x7efa3cda # load x3 with value 0x7efa3cda
sw x3, 0(x2) # store 0x7efa3cda in memory
flw f18, 0(x2) # load 0x7efa3cda from memory into f18
fsub.h f30, f14, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f31, 0(x2) # load 0x0fff8400 from memory into f31
la x2, scratch
li x3, 0x1074b7fb # load x3 with value 0x1074b7fb
sw x3, 0(x2) # store 0x1074b7fb in memory
flw f2, 0(x2) # load 0x1074b7fb from memory into f2
fsub.h f30, f31, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f28, 0(x2) # load 0xefff7bff from memory into f28
la x2, scratch
li x3, 0x8f8d9163 # load x3 with value 0x8f8d9163
sw x3, 0(x2) # store 0x8f8d9163 in memory
flw f15, 0(x2) # load 0x8f8d9163 from memory into f15
fsub.h f7, f28, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f9, 0(x2) # load 0xc0defbff from memory into f9
la x2, scratch
li x3, 0xa66c764c # load x3 with value 0xa66c764c
sw x3, 0(x2) # store 0xa66c764c in memory
flw f6, 0(x2) # load 0xa66c764c from memory into f6
fsub.h f8, f9, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f17, 0(x2) # load 0x4f1a7c00 from memory into f17
la x2, scratch
li x3, 0x21747e12 # load x3 with value 0x21747e12
sw x3, 0(x2) # store 0x21747e12 in memory
flw f18, 0(x2) # load 0x21747e12 from memory into f18
fsub.h f8, f17, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f6, 0(x2) # load 0x0ffffc00 from memory into f6
la x2, scratch
li x3, 0x8e09c3ba # load x3 with value 0x8e09c3ba
sw x3, 0(x2) # store 0x8e09c3ba in memory
flw f7, 0(x2) # load 0x8e09c3ba from memory into f7
fsub.h f13, f6, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f25, 0(x2) # load 0xffef7e00 from memory into f25
la x2, scratch
li x3, 0x2df9e559 # load x3 with value 0x2df9e559
sw x3, 0(x2) # store 0x2df9e559 in memory
flw f7, 0(x2) # load 0x2df9e559 from memory into f7
fsub.h f3, f25, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f30, 0(x2) # load 0xfeef7fff from memory into f30
la x2, scratch
li x3, 0x244ebb25 # load x3 with value 0x244ebb25
sw x3, 0(x2) # store 0x244ebb25 in memory
flw f22, 0(x2) # load 0x244ebb25 from memory into f22
fsub.h f12, f30, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f21, 0(x2) # load 0xa1b27c01 from memory into f21
la x2, scratch
li x3, 0x752d6277 # load x3 with value 0x752d6277
sw x3, 0(x2) # store 0x752d6277 in memory
flw f3, 0(x2) # load 0x752d6277 from memory into f3
fsub.h f22, f21, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f6, 0(x2) # load 0x4fd77dff from memory into f6
la x2, scratch
li x3, 0x07ca083d # load x3 with value 0x07ca083d
sw x3, 0(x2) # store 0x07ca083d in memory
flw f22, 0(x2) # load 0x07ca083d from memory into f22
fsub.h f18, f6, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0xe26ee4b6 # load x3 with value 0xe26ee4b6
sw x3, 0(x2) # store 0xe26ee4b6 in memory
flw f5, 0(x2) # load 0xe26ee4b6 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fsub.h f30, f5, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0xe723cc2a # load x3 with value 0xe723cc2a
sw x3, 0(x2) # store 0xe723cc2a in memory
flw f11, 0(x2) # load 0xe723cc2a from memory into f11
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f29, 0(x2) # load 0xfffe8000 from memory into f29
fsub.h f8, f11, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0x6ccef665 # load x3 with value 0x6ccef665
sw x3, 0(x2) # store 0x6ccef665 in memory
flw f10, 0(x2) # load 0x6ccef665 from memory into f10
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f31, 0(x2) # load 0x7fff3c00 from memory into f31
fsub.h f23, f10, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0x3ddb1712 # load x3 with value 0x3ddb1712
sw x3, 0(x2) # store 0x3ddb1712 in memory
flw f15, 0(x2) # load 0x3ddb1712 from memory into f15
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f23, 0(x2) # load 0xbeefbc00 from memory into f23
fsub.h f21, f15, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0x2cdd4799 # load x3 with value 0x2cdd4799
sw x3, 0(x2) # store 0x2cdd4799 in memory
flw f13, 0(x2) # load 0x2cdd4799 from memory into f13
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f26, 0(x2) # load 0xfeff0400 from memory into f26
fsub.h f20, f13, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0x7289d4ce # load x3 with value 0x7289d4ce
sw x3, 0(x2) # store 0x7289d4ce in memory
flw f30, 0(x2) # load 0x7289d4ce from memory into f30
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f10, 0(x2) # load 0x0fff8400 from memory into f10
fsub.h f12, f30, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0x2659da4d # load x3 with value 0x2659da4d
sw x3, 0(x2) # store 0x2659da4d in memory
flw f17, 0(x2) # load 0x2659da4d from memory into f17
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f29, 0(x2) # load 0xefff7bff from memory into f29
fsub.h f12, f17, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0x41dba7d9 # load x3 with value 0x41dba7d9
sw x3, 0(x2) # store 0x41dba7d9 in memory
flw f27, 0(x2) # load 0x41dba7d9 from memory into f27
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f14, 0(x2) # load 0xc0defbff from memory into f14
fsub.h f2, f27, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0x603b27f1 # load x3 with value 0x603b27f1
sw x3, 0(x2) # store 0x603b27f1 in memory
flw f19, 0(x2) # load 0x603b27f1 from memory into f19
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f6, 0(x2) # load 0x4f1a7c00 from memory into f6
fsub.h f30, f19, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0xfa55112c # load x3 with value 0xfa55112c
sw x3, 0(x2) # store 0xfa55112c in memory
flw f25, 0(x2) # load 0xfa55112c from memory into f25
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f31, 0(x2) # load 0x0ffffc00 from memory into f31
fsub.h f16, f25, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0x3dd78e6e # load x3 with value 0x3dd78e6e
sw x3, 0(x2) # store 0x3dd78e6e in memory
flw f15, 0(x2) # load 0x3dd78e6e from memory into f15
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f20, 0(x2) # load 0xffef7e00 from memory into f20
fsub.h f29, f15, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0x4b699c03 # load x3 with value 0x4b699c03
sw x3, 0(x2) # store 0x4b699c03 in memory
flw f17, 0(x2) # load 0x4b699c03 from memory into f17
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f20, 0(x2) # load 0xfeef7fff from memory into f20
fsub.h f11, f17, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0x3b93bde8 # load x3 with value 0x3b93bde8
sw x3, 0(x2) # store 0x3b93bde8 in memory
flw f28, 0(x2) # load 0x3b93bde8 from memory into f28
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f19, 0(x2) # load 0xa1b27c01 from memory into f19
fsub.h f30, f28, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0x20a67df3 # load x3 with value 0x20a67df3
sw x3, 0(x2) # store 0x20a67df3 in memory
flw f9, 0(x2) # load 0x20a67df3 from memory into f9
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f21, 0(x2) # load 0x4fd77dff from memory into f21
fsub.h f13, f9, f21 # perform operation

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
