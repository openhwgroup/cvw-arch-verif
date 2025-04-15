///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fclass.s.S
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


# Testcase cp_rd (Test destination rd = x0)
la x2, scratch
li x3, 0x3d3c6540f50ccb4 # load x3 with value 0x3d3c6540f50ccb4
sw x3, 0(x2) # store 0x3d3c6540f50ccb4 in memory
flw f26, 0(x2) # load 0x3d3c6540f50ccb4 from memory into f26
fclass.s x0, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xffa59e17773eb84 # load x3 with value 0xffa59e17773eb84
sw x3, 0(x2) # store 0xffa59e17773eb84 in memory
flw f29, 0(x2) # load 0xffa59e17773eb84 from memory into f29
fclass.s x1, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0xd7a1693dd4722a19 # load x3 with value 0xd7a1693dd4722a19
sw x3, 0(x2) # store 0xd7a1693dd4722a19 in memory
flw f16, 0(x2) # load 0xd7a1693dd4722a19 from memory into f16
fclass.s x2, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xb6067c6ae0d02914 # load x3 with value 0xb6067c6ae0d02914
sw x3, 0(x2) # store 0xb6067c6ae0d02914 in memory
flw f27, 0(x2) # load 0xb6067c6ae0d02914 from memory into f27
fclass.s x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9bd1410a6f05d50e # load x3 with value 0x9bd1410a6f05d50e
sw x3, 0(x2) # store 0x9bd1410a6f05d50e in memory
flw f9, 0(x2) # load 0x9bd1410a6f05d50e from memory into f9
fclass.s x4, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x48fbac9b6dd49393 # load x3 with value 0x48fbac9b6dd49393
sw x3, 0(x2) # store 0x48fbac9b6dd49393 in memory
flw f24, 0(x2) # load 0x48fbac9b6dd49393 from memory into f24
fclass.s x5, f24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x89b2baea523d53a7 # load x3 with value 0x89b2baea523d53a7
sw x3, 0(x2) # store 0x89b2baea523d53a7 in memory
flw f8, 0(x2) # load 0x89b2baea523d53a7 from memory into f8
fclass.s x6, f8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2e445d95c92ad60c # load x3 with value 0x2e445d95c92ad60c
sw x3, 0(x2) # store 0x2e445d95c92ad60c in memory
flw f21, 0(x2) # load 0x2e445d95c92ad60c from memory into f21
fclass.s x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xc8bc25d325c76fbe # load x3 with value 0xc8bc25d325c76fbe
sw x3, 0(x2) # store 0xc8bc25d325c76fbe in memory
flw f21, 0(x2) # load 0xc8bc25d325c76fbe from memory into f21
fclass.s x8, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x8d5e9b423b8843bd # load x3 with value 0x8d5e9b423b8843bd
sw x3, 0(x2) # store 0x8d5e9b423b8843bd in memory
flw f24, 0(x2) # load 0x8d5e9b423b8843bd from memory into f24
fclass.s x9, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xf4a6bca38415c34 # load x3 with value 0xf4a6bca38415c34
sw x3, 0(x2) # store 0xf4a6bca38415c34 in memory
flw f23, 0(x2) # load 0xf4a6bca38415c34 from memory into f23
fclass.s x10, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x5fb2023b34936ca3 # load x3 with value 0x5fb2023b34936ca3
sw x3, 0(x2) # store 0x5fb2023b34936ca3 in memory
flw f31, 0(x2) # load 0x5fb2023b34936ca3 from memory into f31
fclass.s x11, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x4d928e03c456a756 # load x3 with value 0x4d928e03c456a756
sw x3, 0(x2) # store 0x4d928e03c456a756 in memory
flw f2, 0(x2) # load 0x4d928e03c456a756 from memory into f2
fclass.s x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x8a0f980eaf97e453 # load x3 with value 0x8a0f980eaf97e453
sw x3, 0(x2) # store 0x8a0f980eaf97e453 in memory
flw f6, 0(x2) # load 0x8a0f980eaf97e453 from memory into f6
fclass.s x13, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x5c551989f432f75b # load x3 with value 0x5c551989f432f75b
sw x3, 0(x2) # store 0x5c551989f432f75b in memory
flw f5, 0(x2) # load 0x5c551989f432f75b from memory into f5
fclass.s x14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x6ef4f56894d36afe # load x3 with value 0x6ef4f56894d36afe
sw x3, 0(x2) # store 0x6ef4f56894d36afe in memory
flw f18, 0(x2) # load 0x6ef4f56894d36afe from memory into f18
fclass.s x15, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xe2ded0a5154fdb9d # load x3 with value 0xe2ded0a5154fdb9d
sw x3, 0(x2) # store 0xe2ded0a5154fdb9d in memory
flw f22, 0(x2) # load 0xe2ded0a5154fdb9d from memory into f22
fclass.s x16, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x719a1cbaadfa4dbf # load x3 with value 0x719a1cbaadfa4dbf
sw x3, 0(x2) # store 0x719a1cbaadfa4dbf in memory
flw f7, 0(x2) # load 0x719a1cbaadfa4dbf from memory into f7
fclass.s x17, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x3a067d85f15d46e4 # load x3 with value 0x3a067d85f15d46e4
sw x3, 0(x2) # store 0x3a067d85f15d46e4 in memory
flw f20, 0(x2) # load 0x3a067d85f15d46e4 from memory into f20
fclass.s x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x7d1e8e8f448f5f56 # load x3 with value 0x7d1e8e8f448f5f56
sw x3, 0(x2) # store 0x7d1e8e8f448f5f56 in memory
flw f15, 0(x2) # load 0x7d1e8e8f448f5f56 from memory into f15
fclass.s x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0xfcc1e42532623092 # load x3 with value 0xfcc1e42532623092
sw x3, 0(x2) # store 0xfcc1e42532623092 in memory
flw f1, 0(x2) # load 0xfcc1e42532623092 from memory into f1
fclass.s x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xb4e8e47cac554eea # load x3 with value 0xb4e8e47cac554eea
sw x3, 0(x2) # store 0xb4e8e47cac554eea in memory
flw f15, 0(x2) # load 0xb4e8e47cac554eea from memory into f15
fclass.s x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x8957ea3da7670dc4 # load x3 with value 0x8957ea3da7670dc4
sw x3, 0(x2) # store 0x8957ea3da7670dc4 in memory
flw f17, 0(x2) # load 0x8957ea3da7670dc4 from memory into f17
fclass.s x22, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xec9ee594d259a31 # load x3 with value 0xec9ee594d259a31
sw x3, 0(x2) # store 0xec9ee594d259a31 in memory
flw f19, 0(x2) # load 0xec9ee594d259a31 from memory into f19
fclass.s x23, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x1b23b62aea23d7d8 # load x3 with value 0x1b23b62aea23d7d8
sw x3, 0(x2) # store 0x1b23b62aea23d7d8 in memory
flw f13, 0(x2) # load 0x1b23b62aea23d7d8 from memory into f13
fclass.s x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0xdb3af5cbf0eb2bbb # load x3 with value 0xdb3af5cbf0eb2bbb
sw x3, 0(x2) # store 0xdb3af5cbf0eb2bbb in memory
flw f28, 0(x2) # load 0xdb3af5cbf0eb2bbb from memory into f28
fclass.s x25, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xfa7201fb296002b8 # load x3 with value 0xfa7201fb296002b8
sw x3, 0(x2) # store 0xfa7201fb296002b8 in memory
flw f23, 0(x2) # load 0xfa7201fb296002b8 from memory into f23
fclass.s x26, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x1fc0c31f75d67e73 # load x3 with value 0x1fc0c31f75d67e73
sw x3, 0(x2) # store 0x1fc0c31f75d67e73 in memory
flw f20, 0(x2) # load 0x1fc0c31f75d67e73 from memory into f20
fclass.s x27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xc3c2ebd288a1d29c # load x3 with value 0xc3c2ebd288a1d29c
sw x3, 0(x2) # store 0xc3c2ebd288a1d29c in memory
flw f3, 0(x2) # load 0xc3c2ebd288a1d29c from memory into f3
fclass.s x28, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xfd0c43bb9fac5eb9 # load x3 with value 0xfd0c43bb9fac5eb9
sw x3, 0(x2) # store 0xfd0c43bb9fac5eb9 in memory
flw f25, 0(x2) # load 0xfd0c43bb9fac5eb9 from memory into f25
fclass.s x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x506f7b07c2bf9318 # load x3 with value 0x506f7b07c2bf9318
sw x3, 0(x2) # store 0x506f7b07c2bf9318 in memory
flw f16, 0(x2) # load 0x506f7b07c2bf9318 from memory into f16
fclass.s x30, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x1b358426e79912c9 # load x3 with value 0x1b358426e79912c9
sw x3, 0(x2) # store 0x1b358426e79912c9 in memory
flw f26, 0(x2) # load 0x1b358426e79912c9 from memory into f26
fclass.s x31, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x31, x2 # perform first operation
fclass.s x18, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x16, x15 # perform first operation
fclass.s x5, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x6, x5 # perform first operation
fclass.s x21, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f12, f26, f25 # perform first operation
fclass.s x12, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x7, x3 # perform first operation
fclass.s x5, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x2, x30 # perform first operation
fclass.s x2, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x26, x23 # perform first operation
fclass.s x10, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x12, x25 # perform first operation
fclass.s x15, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x14, x18 # perform first operation
fclass.s x20, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x6, x24 # perform first operation
fclass.s x30, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x6, x3 # perform first operation
fclass.s x12, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x16, x19 # perform first operation
fclass.s x15, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x9, x17 # perform first operation
fclass.s x9, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x15, x8 # perform first operation
fclass.s x8, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x10, x19 # perform first operation
fclass.s x23, f5 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x11b62ec2db810a1c # load x3 with value 0x11b62ec2db810a1c
sw x3, 0(x2) # store 0x11b62ec2db810a1c in memory
flw f0, 0(x2) # load 0x11b62ec2db810a1c from memory into f0
fclass.s x27, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x27a197d497d4e881 # load x3 with value 0x27a197d497d4e881
sw x3, 0(x2) # store 0x27a197d497d4e881 in memory
flw f1, 0(x2) # load 0x27a197d497d4e881 from memory into f1
fclass.s x9, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xb11b4df38908c42 # load x3 with value 0xb11b4df38908c42
sw x3, 0(x2) # store 0xb11b4df38908c42 in memory
flw f2, 0(x2) # load 0xb11b4df38908c42 from memory into f2
fclass.s x8, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x7d078f0e524e0f53 # load x3 with value 0x7d078f0e524e0f53
sw x3, 0(x2) # store 0x7d078f0e524e0f53 in memory
flw f3, 0(x2) # load 0x7d078f0e524e0f53 from memory into f3
fclass.s x30, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe27869be90df4303 # load x3 with value 0xe27869be90df4303
sw x3, 0(x2) # store 0xe27869be90df4303 in memory
flw f4, 0(x2) # load 0xe27869be90df4303 from memory into f4
fclass.s x20, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbe6d7c64bced3a96 # load x3 with value 0xbe6d7c64bced3a96
sw x3, 0(x2) # store 0xbe6d7c64bced3a96 in memory
flw f5, 0(x2) # load 0xbe6d7c64bced3a96 from memory into f5
fclass.s x14, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa1cf74180c6d3a74 # load x3 with value 0xa1cf74180c6d3a74
sw x3, 0(x2) # store 0xa1cf74180c6d3a74 in memory
flw f6, 0(x2) # load 0xa1cf74180c6d3a74 from memory into f6
fclass.s x25, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7367370079949de4 # load x3 with value 0x7367370079949de4
sw x3, 0(x2) # store 0x7367370079949de4 in memory
flw f7, 0(x2) # load 0x7367370079949de4 from memory into f7
fclass.s x29, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x10f11775d8bd65a9 # load x3 with value 0x10f11775d8bd65a9
sw x3, 0(x2) # store 0x10f11775d8bd65a9 in memory
flw f8, 0(x2) # load 0x10f11775d8bd65a9 from memory into f8
fclass.s x20, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x7dd7ea1eb3b7c2dc # load x3 with value 0x7dd7ea1eb3b7c2dc
sw x3, 0(x2) # store 0x7dd7ea1eb3b7c2dc in memory
flw f9, 0(x2) # load 0x7dd7ea1eb3b7c2dc from memory into f9
fclass.s x2, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x1d05ac1f814081ee # load x3 with value 0x1d05ac1f814081ee
sw x3, 0(x2) # store 0x1d05ac1f814081ee in memory
flw f10, 0(x2) # load 0x1d05ac1f814081ee from memory into f10
fclass.s x10, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xeeff48c2c738ed9a # load x3 with value 0xeeff48c2c738ed9a
sw x3, 0(x2) # store 0xeeff48c2c738ed9a in memory
flw f11, 0(x2) # load 0xeeff48c2c738ed9a from memory into f11
fclass.s x21, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xfa434a318c753eb5 # load x3 with value 0xfa434a318c753eb5
sw x3, 0(x2) # store 0xfa434a318c753eb5 in memory
flw f12, 0(x2) # load 0xfa434a318c753eb5 from memory into f12
fclass.s x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x670614c7b8e264b7 # load x3 with value 0x670614c7b8e264b7
sw x3, 0(x2) # store 0x670614c7b8e264b7 in memory
flw f13, 0(x2) # load 0x670614c7b8e264b7 from memory into f13
fclass.s x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xf2b3780033e950b7 # load x3 with value 0xf2b3780033e950b7
sw x3, 0(x2) # store 0xf2b3780033e950b7 in memory
flw f14, 0(x2) # load 0xf2b3780033e950b7 from memory into f14
fclass.s x1, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x9a160a33880575fb # load x3 with value 0x9a160a33880575fb
sw x3, 0(x2) # store 0x9a160a33880575fb in memory
flw f15, 0(x2) # load 0x9a160a33880575fb from memory into f15
fclass.s x7, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xd50b3c0254ce9780 # load x3 with value 0xd50b3c0254ce9780
sw x3, 0(x2) # store 0xd50b3c0254ce9780 in memory
flw f16, 0(x2) # load 0xd50b3c0254ce9780 from memory into f16
fclass.s x28, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xdd6ddf6a966a4a49 # load x3 with value 0xdd6ddf6a966a4a49
sw x3, 0(x2) # store 0xdd6ddf6a966a4a49 in memory
flw f17, 0(x2) # load 0xdd6ddf6a966a4a49 from memory into f17
fclass.s x5, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xc87ff76fb8cac49d # load x3 with value 0xc87ff76fb8cac49d
sw x3, 0(x2) # store 0xc87ff76fb8cac49d in memory
flw f18, 0(x2) # load 0xc87ff76fb8cac49d from memory into f18
fclass.s x7, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xc5d265ff5bbcb989 # load x3 with value 0xc5d265ff5bbcb989
sw x3, 0(x2) # store 0xc5d265ff5bbcb989 in memory
flw f19, 0(x2) # load 0xc5d265ff5bbcb989 from memory into f19
fclass.s x8, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x6da452b2f32d9d8 # load x3 with value 0x6da452b2f32d9d8
sw x3, 0(x2) # store 0x6da452b2f32d9d8 in memory
flw f20, 0(x2) # load 0x6da452b2f32d9d8 from memory into f20
fclass.s x5, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x5e79005322ce1275 # load x3 with value 0x5e79005322ce1275
sw x3, 0(x2) # store 0x5e79005322ce1275 in memory
flw f21, 0(x2) # load 0x5e79005322ce1275 from memory into f21
fclass.s x8, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x60c95bd21ea1adfb # load x3 with value 0x60c95bd21ea1adfb
sw x3, 0(x2) # store 0x60c95bd21ea1adfb in memory
flw f22, 0(x2) # load 0x60c95bd21ea1adfb from memory into f22
fclass.s x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x95d74dedd6c61a6a # load x3 with value 0x95d74dedd6c61a6a
sw x3, 0(x2) # store 0x95d74dedd6c61a6a in memory
flw f23, 0(x2) # load 0x95d74dedd6c61a6a from memory into f23
fclass.s x30, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xb99f85e10eace451 # load x3 with value 0xb99f85e10eace451
sw x3, 0(x2) # store 0xb99f85e10eace451 in memory
flw f24, 0(x2) # load 0xb99f85e10eace451 from memory into f24
fclass.s x19, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x98f9e868d1d75ee # load x3 with value 0x98f9e868d1d75ee
sw x3, 0(x2) # store 0x98f9e868d1d75ee in memory
flw f25, 0(x2) # load 0x98f9e868d1d75ee from memory into f25
fclass.s x7, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x7e0462e024cbc954 # load x3 with value 0x7e0462e024cbc954
sw x3, 0(x2) # store 0x7e0462e024cbc954 in memory
flw f26, 0(x2) # load 0x7e0462e024cbc954 from memory into f26
fclass.s x17, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x258295732a8fceef # load x3 with value 0x258295732a8fceef
sw x3, 0(x2) # store 0x258295732a8fceef in memory
flw f27, 0(x2) # load 0x258295732a8fceef from memory into f27
fclass.s x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xb42204e2f7e9524 # load x3 with value 0xb42204e2f7e9524
sw x3, 0(x2) # store 0xb42204e2f7e9524 in memory
flw f28, 0(x2) # load 0xb42204e2f7e9524 from memory into f28
fclass.s x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x7d4fc0e078681267 # load x3 with value 0x7d4fc0e078681267
sw x3, 0(x2) # store 0x7d4fc0e078681267 in memory
flw f29, 0(x2) # load 0x7d4fc0e078681267 from memory into f29
fclass.s x14, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xf5b2572ab52c15fe # load x3 with value 0xf5b2572ab52c15fe
sw x3, 0(x2) # store 0xf5b2572ab52c15fe in memory
flw f30, 0(x2) # load 0xf5b2572ab52c15fe from memory into f30
fclass.s x24, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x291a59dfac682ffc # load x3 with value 0x291a59dfac682ffc
sw x3, 0(x2) # store 0x291a59dfac682ffc in memory
flw f31, 0(x2) # load 0x291a59dfac682ffc from memory into f31
fclass.s x20, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fclass.s x29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fclass.s x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fclass.s x21, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fclass.s x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fclass.s x5, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fclass.s x24, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fclass.s x24, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fclass.s x7, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fclass.s x23, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fclass.s x15, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fclass.s x26, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fclass.s x20, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fclass.s x16, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fclass.s x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fclass.s x28, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fclass.s x3, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fclass.s x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fclass.s x8, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fclass.s x26, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fclass.s x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
fclass.s x5, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fclass.s x29, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
fclass.s x6, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fclass.s x16, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fclass.s x17, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
fclass.s x10, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fclass.s x19, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fclass.s x19, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 728)

.EQU SIGSIZE,736


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
