///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfh/WALLY-COV-fcvt.w.h.S
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
li x3, 0xf996ffdd # load x3 with value 0xf996ffdd
sw x3, 0(x2) # store 0xf996ffdd in memory
flh f14, 0(x2) # load 0xf996ffdd from memory into f14
fcvt.w.h x0, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xf9e179a9 # load x3 with value 0xf9e179a9
sw x3, 0(x2) # store 0xf9e179a9 in memory
flh f28, 0(x2) # load 0xf9e179a9 from memory into f28
fcvt.w.h x1, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x9901fcf1 # load x3 with value 0x9901fcf1
sw x3, 0(x2) # store 0x9901fcf1 in memory
flh f10, 0(x2) # load 0x9901fcf1 from memory into f10
fcvt.w.h x2, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xc4f32d59 # load x3 with value 0xc4f32d59
sw x3, 0(x2) # store 0xc4f32d59 in memory
flh f28, 0(x2) # load 0xc4f32d59 from memory into f28
fcvt.w.h x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x23494bd0 # load x3 with value 0x23494bd0
sw x3, 0(x2) # store 0x23494bd0 in memory
flh f30, 0(x2) # load 0x23494bd0 from memory into f30
fcvt.w.h x4, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6bacf857 # load x3 with value 0x6bacf857
sw x3, 0(x2) # store 0x6bacf857 in memory
flh f26, 0(x2) # load 0x6bacf857 from memory into f26
fcvt.w.h x5, f26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6c262dcc # load x3 with value 0x6c262dcc
sw x3, 0(x2) # store 0x6c262dcc in memory
flh f17, 0(x2) # load 0x6c262dcc from memory into f17
fcvt.w.h x6, f17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd5093ad9 # load x3 with value 0xd5093ad9
sw x3, 0(x2) # store 0xd5093ad9 in memory
flh f8, 0(x2) # load 0xd5093ad9 from memory into f8
fcvt.w.h x7, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x7f831a06 # load x3 with value 0x7f831a06
sw x3, 0(x2) # store 0x7f831a06 in memory
flh f7, 0(x2) # load 0x7f831a06 from memory into f7
fcvt.w.h x8, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xc01198f9 # load x3 with value 0xc01198f9
sw x3, 0(x2) # store 0xc01198f9 in memory
flh f25, 0(x2) # load 0xc01198f9 from memory into f25
fcvt.w.h x9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xdc3c89a6 # load x3 with value 0xdc3c89a6
sw x3, 0(x2) # store 0xdc3c89a6 in memory
flh f9, 0(x2) # load 0xdc3c89a6 from memory into f9
fcvt.w.h x10, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xef4cf827 # load x3 with value 0xef4cf827
sw x3, 0(x2) # store 0xef4cf827 in memory
flh f2, 0(x2) # load 0xef4cf827 from memory into f2
fcvt.w.h x11, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x89f3c61b # load x3 with value 0x89f3c61b
sw x3, 0(x2) # store 0x89f3c61b in memory
flh f3, 0(x2) # load 0x89f3c61b from memory into f3
fcvt.w.h x12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xb23443d2 # load x3 with value 0xb23443d2
sw x3, 0(x2) # store 0xb23443d2 in memory
flh f6, 0(x2) # load 0xb23443d2 from memory into f6
fcvt.w.h x13, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0xbc9ecff2 # load x3 with value 0xbc9ecff2
sw x3, 0(x2) # store 0xbc9ecff2 in memory
flh f25, 0(x2) # load 0xbc9ecff2 from memory into f25
fcvt.w.h x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0xd3d21250 # load x3 with value 0xd3d21250
sw x3, 0(x2) # store 0xd3d21250 in memory
flh f21, 0(x2) # load 0xd3d21250 from memory into f21
fcvt.w.h x15, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xb9ee8327 # load x3 with value 0xb9ee8327
sw x3, 0(x2) # store 0xb9ee8327 in memory
flh f21, 0(x2) # load 0xb9ee8327 from memory into f21
fcvt.w.h x16, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x40744087 # load x3 with value 0x40744087
sw x3, 0(x2) # store 0x40744087 in memory
flh f13, 0(x2) # load 0x40744087 from memory into f13
fcvt.w.h x17, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x5f92ebd1 # load x3 with value 0x5f92ebd1
sw x3, 0(x2) # store 0x5f92ebd1 in memory
flh f17, 0(x2) # load 0x5f92ebd1 from memory into f17
fcvt.w.h x18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0xe7edb828 # load x3 with value 0xe7edb828
sw x3, 0(x2) # store 0xe7edb828 in memory
flh f18, 0(x2) # load 0xe7edb828 from memory into f18
fcvt.w.h x19, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x893104da # load x3 with value 0x893104da
sw x3, 0(x2) # store 0x893104da in memory
flh f19, 0(x2) # load 0x893104da from memory into f19
fcvt.w.h x20, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xc2abb3b2 # load x3 with value 0xc2abb3b2
sw x3, 0(x2) # store 0xc2abb3b2 in memory
flh f3, 0(x2) # load 0xc2abb3b2 from memory into f3
fcvt.w.h x21, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x4416cd69 # load x3 with value 0x4416cd69
sw x3, 0(x2) # store 0x4416cd69 in memory
flh f25, 0(x2) # load 0x4416cd69 from memory into f25
fcvt.w.h x22, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xb25a4999 # load x3 with value 0xb25a4999
sw x3, 0(x2) # store 0xb25a4999 in memory
flh f22, 0(x2) # load 0xb25a4999 from memory into f22
fcvt.w.h x23, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xde8d572f # load x3 with value 0xde8d572f
sw x3, 0(x2) # store 0xde8d572f in memory
flh f13, 0(x2) # load 0xde8d572f from memory into f13
fcvt.w.h x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x1231f500 # load x3 with value 0x1231f500
sw x3, 0(x2) # store 0x1231f500 in memory
flh f12, 0(x2) # load 0x1231f500 from memory into f12
fcvt.w.h x25, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x2cf0f13c # load x3 with value 0x2cf0f13c
sw x3, 0(x2) # store 0x2cf0f13c in memory
flh f29, 0(x2) # load 0x2cf0f13c from memory into f29
fcvt.w.h x26, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x83eb8038 # load x3 with value 0x83eb8038
sw x3, 0(x2) # store 0x83eb8038 in memory
flh f10, 0(x2) # load 0x83eb8038 from memory into f10
fcvt.w.h x27, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x86fe098f # load x3 with value 0x86fe098f
sw x3, 0(x2) # store 0x86fe098f in memory
flh f7, 0(x2) # load 0x86fe098f from memory into f7
fcvt.w.h x28, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x23379a22 # load x3 with value 0x23379a22
sw x3, 0(x2) # store 0x23379a22 in memory
flh f8, 0(x2) # load 0x23379a22 from memory into f8
fcvt.w.h x29, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x7e88be29 # load x3 with value 0x7e88be29
sw x3, 0(x2) # store 0x7e88be29 in memory
flh f30, 0(x2) # load 0x7e88be29 from memory into f30
fcvt.w.h x30, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x5f979599 # load x3 with value 0x5f979599
sw x3, 0(x2) # store 0x5f979599 in memory
flh f30, 0(x2) # load 0x5f979599 from memory into f30
fcvt.w.h x31, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x5, x20 # perform first operation
fcvt.w.h x22, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x31, x8 # perform first operation
fcvt.w.h x2, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x21, x24 # perform first operation
fcvt.w.h x30, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f17, f18, f1 # perform first operation
fcvt.w.h x19, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x17, x9 # perform first operation
fcvt.w.h x3, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x1, x26 # perform first operation
fcvt.w.h x20, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x30, x19 # perform first operation
fcvt.w.h x9, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x11, x23 # perform first operation
fcvt.w.h x12, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x11, x26 # perform first operation
fcvt.w.h x9, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x21, x9 # perform first operation
fcvt.w.h x24, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x20, x17 # perform first operation
fcvt.w.h x25, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x8, x31 # perform first operation
fcvt.w.h x18, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x7, x15 # perform first operation
fcvt.w.h x7, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x3, x18 # perform first operation
fcvt.w.h x18, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x8, x19 # perform first operation
fcvt.w.h x15, f6 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xd2193a22 # load x3 with value 0xd2193a22
sw x3, 0(x2) # store 0xd2193a22 in memory
flh f0, 0(x2) # load 0xd2193a22 from memory into f0
fcvt.w.h x13, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x60e9075c # load x3 with value 0x60e9075c
sw x3, 0(x2) # store 0x60e9075c in memory
flh f1, 0(x2) # load 0x60e9075c from memory into f1
fcvt.w.h x10, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xc9e23903 # load x3 with value 0xc9e23903
sw x3, 0(x2) # store 0xc9e23903 in memory
flh f2, 0(x2) # load 0xc9e23903 from memory into f2
fcvt.w.h x20, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xa5c48814 # load x3 with value 0xa5c48814
sw x3, 0(x2) # store 0xa5c48814 in memory
flh f3, 0(x2) # load 0xa5c48814 from memory into f3
fcvt.w.h x9, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x08c57959 # load x3 with value 0x08c57959
sw x3, 0(x2) # store 0x08c57959 in memory
flh f4, 0(x2) # load 0x08c57959 from memory into f4
fcvt.w.h x15, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf6795ef0 # load x3 with value 0xf6795ef0
sw x3, 0(x2) # store 0xf6795ef0 in memory
flh f5, 0(x2) # load 0xf6795ef0 from memory into f5
fcvt.w.h x26, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6714cc86 # load x3 with value 0x6714cc86
sw x3, 0(x2) # store 0x6714cc86 in memory
flh f6, 0(x2) # load 0x6714cc86 from memory into f6
fcvt.w.h x21, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3e9cddb8 # load x3 with value 0x3e9cddb8
sw x3, 0(x2) # store 0x3e9cddb8 in memory
flh f7, 0(x2) # load 0x3e9cddb8 from memory into f7
fcvt.w.h x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x302a6147 # load x3 with value 0x302a6147
sw x3, 0(x2) # store 0x302a6147 in memory
flh f8, 0(x2) # load 0x302a6147 from memory into f8
fcvt.w.h x8, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x837f1575 # load x3 with value 0x837f1575
sw x3, 0(x2) # store 0x837f1575 in memory
flh f9, 0(x2) # load 0x837f1575 from memory into f9
fcvt.w.h x8, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x0ae2ce4c # load x3 with value 0x0ae2ce4c
sw x3, 0(x2) # store 0x0ae2ce4c in memory
flh f10, 0(x2) # load 0x0ae2ce4c from memory into f10
fcvt.w.h x19, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x17989da8 # load x3 with value 0x17989da8
sw x3, 0(x2) # store 0x17989da8 in memory
flh f11, 0(x2) # load 0x17989da8 from memory into f11
fcvt.w.h x20, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x7ad7c8f2 # load x3 with value 0x7ad7c8f2
sw x3, 0(x2) # store 0x7ad7c8f2 in memory
flh f12, 0(x2) # load 0x7ad7c8f2 from memory into f12
fcvt.w.h x16, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xc6a6816f # load x3 with value 0xc6a6816f
sw x3, 0(x2) # store 0xc6a6816f in memory
flh f13, 0(x2) # load 0xc6a6816f from memory into f13
fcvt.w.h x16, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x59e902d3 # load x3 with value 0x59e902d3
sw x3, 0(x2) # store 0x59e902d3 in memory
flh f14, 0(x2) # load 0x59e902d3 from memory into f14
fcvt.w.h x2, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x9bfdf476 # load x3 with value 0x9bfdf476
sw x3, 0(x2) # store 0x9bfdf476 in memory
flh f15, 0(x2) # load 0x9bfdf476 from memory into f15
fcvt.w.h x15, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x3439547c # load x3 with value 0x3439547c
sw x3, 0(x2) # store 0x3439547c in memory
flh f16, 0(x2) # load 0x3439547c from memory into f16
fcvt.w.h x7, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x71ccaf40 # load x3 with value 0x71ccaf40
sw x3, 0(x2) # store 0x71ccaf40 in memory
flh f17, 0(x2) # load 0x71ccaf40 from memory into f17
fcvt.w.h x26, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xd1271559 # load x3 with value 0xd1271559
sw x3, 0(x2) # store 0xd1271559 in memory
flh f18, 0(x2) # load 0xd1271559 from memory into f18
fcvt.w.h x22, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xf80d71a1 # load x3 with value 0xf80d71a1
sw x3, 0(x2) # store 0xf80d71a1 in memory
flh f19, 0(x2) # load 0xf80d71a1 from memory into f19
fcvt.w.h x9, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x49eab3eb # load x3 with value 0x49eab3eb
sw x3, 0(x2) # store 0x49eab3eb in memory
flh f20, 0(x2) # load 0x49eab3eb from memory into f20
fcvt.w.h x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x730ce68c # load x3 with value 0x730ce68c
sw x3, 0(x2) # store 0x730ce68c in memory
flh f21, 0(x2) # load 0x730ce68c from memory into f21
fcvt.w.h x16, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xb1f6f6c3 # load x3 with value 0xb1f6f6c3
sw x3, 0(x2) # store 0xb1f6f6c3 in memory
flh f22, 0(x2) # load 0xb1f6f6c3 from memory into f22
fcvt.w.h x9, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xe0591229 # load x3 with value 0xe0591229
sw x3, 0(x2) # store 0xe0591229 in memory
flh f23, 0(x2) # load 0xe0591229 from memory into f23
fcvt.w.h x27, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x1c9dbbac # load x3 with value 0x1c9dbbac
sw x3, 0(x2) # store 0x1c9dbbac in memory
flh f24, 0(x2) # load 0x1c9dbbac from memory into f24
fcvt.w.h x28, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xa74eb2bc # load x3 with value 0xa74eb2bc
sw x3, 0(x2) # store 0xa74eb2bc in memory
flh f25, 0(x2) # load 0xa74eb2bc from memory into f25
fcvt.w.h x1, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xf6a64fcc # load x3 with value 0xf6a64fcc
sw x3, 0(x2) # store 0xf6a64fcc in memory
flh f26, 0(x2) # load 0xf6a64fcc from memory into f26
fcvt.w.h x21, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xf2a42994 # load x3 with value 0xf2a42994
sw x3, 0(x2) # store 0xf2a42994 in memory
flh f27, 0(x2) # load 0xf2a42994 from memory into f27
fcvt.w.h x10, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x61fb6a5f # load x3 with value 0x61fb6a5f
sw x3, 0(x2) # store 0x61fb6a5f in memory
flh f28, 0(x2) # load 0x61fb6a5f from memory into f28
fcvt.w.h x22, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xbaa923bd # load x3 with value 0xbaa923bd
sw x3, 0(x2) # store 0xbaa923bd in memory
flh f29, 0(x2) # load 0xbaa923bd from memory into f29
fcvt.w.h x16, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x059ed693 # load x3 with value 0x059ed693
sw x3, 0(x2) # store 0x059ed693 in memory
flh f30, 0(x2) # load 0x059ed693 from memory into f30
fcvt.w.h x7, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x55d46755 # load x3 with value 0x55d46755
sw x3, 0(x2) # store 0x55d46755 in memory
flh f31, 0(x2) # load 0x55d46755 from memory into f31
fcvt.w.h x10, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fcvt.w.h x26, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fcvt.w.h x26, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fcvt.w.h x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fcvt.w.h x15, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fcvt.w.h x12, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fcvt.w.h x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fcvt.w.h x5, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fcvt.w.h x19, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fcvt.w.h x8, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fcvt.w.h x10, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fcvt.w.h x6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fcvt.w.h x16, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fcvt.w.h x20, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fcvt.w.h x12, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fcvt.w.h x20, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fcvt.w.h x1, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fcvt.w.h x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fcvt.w.h x20, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fcvt.w.h x9, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fcvt.w.h x21, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fcvt.w.h x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fcvt.w.h x15, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
fcvt.w.h x29, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fcvt.w.h x28, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fcvt.w.h x6, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f15, 0(x2) # load 0x0000fc01 from memory into f15
fcvt.w.h x12, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fcvt.w.h x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fcvt.w.h x21, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 364)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fcvt.w.h x19, f14, dyn # perform operation
fcvt.w.h x19, f14, rdn # perform operation
fcvt.w.h x19, f14, rmm # perform operation
fcvt.w.h x19, f14, rne # perform operation
fcvt.w.h x19, f14, rtz # perform operation
fcvt.w.h x19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x19, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 368)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x19, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 372)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x19, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 376)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x19, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x19, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 384)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fcvt.w.h x3, f15, dyn # perform operation
fcvt.w.h x3, f15, rdn # perform operation
fcvt.w.h x3, f15, rmm # perform operation
fcvt.w.h x3, f15, rne # perform operation
fcvt.w.h x3, f15, rtz # perform operation
fcvt.w.h x3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x3, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 388)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x3, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 392)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x3, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 396)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x3, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x3, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 404)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fcvt.w.h x6, f11, dyn # perform operation
fcvt.w.h x6, f11, rdn # perform operation
fcvt.w.h x6, f11, rmm # perform operation
fcvt.w.h x6, f11, rne # perform operation
fcvt.w.h x6, f11, rtz # perform operation
fcvt.w.h x6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x6, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x6, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 412)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x6, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x6, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 420)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x6, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 424)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fcvt.w.h x3, f22, dyn # perform operation
fcvt.w.h x3, f22, rdn # perform operation
fcvt.w.h x3, f22, rmm # perform operation
fcvt.w.h x3, f22, rne # perform operation
fcvt.w.h x3, f22, rtz # perform operation
fcvt.w.h x3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 428)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 432)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 436)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 444)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fcvt.w.h x8, f3, dyn # perform operation
fcvt.w.h x8, f3, rdn # perform operation
fcvt.w.h x8, f3, rmm # perform operation
fcvt.w.h x8, f3, rne # perform operation
fcvt.w.h x8, f3, rtz # perform operation
fcvt.w.h x8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 452)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 456)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 460)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 464)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fcvt.w.h x23, f8, dyn # perform operation
fcvt.w.h x23, f8, rdn # perform operation
fcvt.w.h x23, f8, rmm # perform operation
fcvt.w.h x23, f8, rne # perform operation
fcvt.w.h x23, f8, rtz # perform operation
fcvt.w.h x23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 468)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 476)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 484)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fcvt.w.h x1, f22, dyn # perform operation
fcvt.w.h x1, f22, rdn # perform operation
fcvt.w.h x1, f22, rmm # perform operation
fcvt.w.h x1, f22, rne # perform operation
fcvt.w.h x1, f22, rtz # perform operation
fcvt.w.h x1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 488)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 492)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 500)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fcvt.w.h x21, f10, dyn # perform operation
fcvt.w.h x21, f10, rdn # perform operation
fcvt.w.h x21, f10, rmm # perform operation
fcvt.w.h x21, f10, rne # perform operation
fcvt.w.h x21, f10, rtz # perform operation
fcvt.w.h x21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x21, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 508)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x21, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 512)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x21, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 516)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x21, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x21, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 524)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fcvt.w.h x3, f7, dyn # perform operation
fcvt.w.h x3, f7, rdn # perform operation
fcvt.w.h x3, f7, rmm # perform operation
fcvt.w.h x3, f7, rne # perform operation
fcvt.w.h x3, f7, rtz # perform operation
fcvt.w.h x3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 532)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 540)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fcvt.w.h x2, f15, dyn # perform operation
fcvt.w.h x2, f15, rdn # perform operation
fcvt.w.h x2, f15, rmm # perform operation
fcvt.w.h x2, f15, rne # perform operation
fcvt.w.h x2, f15, rtz # perform operation
fcvt.w.h x2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x2, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 548)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x2, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 552)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x2, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 556)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x2, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x2, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 564)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fcvt.w.h x22, f29, dyn # perform operation
fcvt.w.h x22, f29, rdn # perform operation
fcvt.w.h x22, f29, rmm # perform operation
fcvt.w.h x22, f29, rne # perform operation
fcvt.w.h x22, f29, rtz # perform operation
fcvt.w.h x22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x22, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x22, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 572)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x22, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 576)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x22, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 580)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x22, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 584)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fcvt.w.h x9, f7, dyn # perform operation
fcvt.w.h x9, f7, rdn # perform operation
fcvt.w.h x9, f7, rmm # perform operation
fcvt.w.h x9, f7, rne # perform operation
fcvt.w.h x9, f7, rtz # perform operation
fcvt.w.h x9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 588)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 592)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 596)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 604)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fcvt.w.h x28, f19, dyn # perform operation
fcvt.w.h x28, f19, rdn # perform operation
fcvt.w.h x28, f19, rmm # perform operation
fcvt.w.h x28, f19, rne # perform operation
fcvt.w.h x28, f19, rtz # perform operation
fcvt.w.h x28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 608)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 612)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 616)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 620)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fcvt.w.h x27, f30, dyn # perform operation
fcvt.w.h x27, f30, rdn # perform operation
fcvt.w.h x27, f30, rmm # perform operation
fcvt.w.h x27, f30, rne # perform operation
fcvt.w.h x27, f30, rtz # perform operation
fcvt.w.h x27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 628)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 636)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 644)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fcvt.w.h x16, f2, dyn # perform operation
fcvt.w.h x16, f2, rdn # perform operation
fcvt.w.h x16, f2, rmm # perform operation
fcvt.w.h x16, f2, rne # perform operation
fcvt.w.h x16, f2, rtz # perform operation
fcvt.w.h x16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x16, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 648)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x16, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 652)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x16, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 656)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x16, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 660)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x16, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fcvt.w.h x19, f8, dyn # perform operation
fcvt.w.h x19, f8, rdn # perform operation
fcvt.w.h x19, f8, rmm # perform operation
fcvt.w.h x19, f8, rne # perform operation
fcvt.w.h x19, f8, rtz # perform operation
fcvt.w.h x19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 668)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 672)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 676)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 684)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fcvt.w.h x17, f7, dyn # perform operation
fcvt.w.h x17, f7, rdn # perform operation
fcvt.w.h x17, f7, rmm # perform operation
fcvt.w.h x17, f7, rne # perform operation
fcvt.w.h x17, f7, rtz # perform operation
fcvt.w.h x17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x17, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 688)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x17, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 692)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x17, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x17, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 700)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x17, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 704)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fcvt.w.h x28, f3, dyn # perform operation
fcvt.w.h x28, f3, rdn # perform operation
fcvt.w.h x28, f3, rmm # perform operation
fcvt.w.h x28, f3, rne # perform operation
fcvt.w.h x28, f3, rtz # perform operation
fcvt.w.h x28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x28, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 708)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x28, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 712)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x28, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 716)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x28, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x28, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 724)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fcvt.w.h x8, f30, dyn # perform operation
fcvt.w.h x8, f30, rdn # perform operation
fcvt.w.h x8, f30, rmm # perform operation
fcvt.w.h x8, f30, rne # perform operation
fcvt.w.h x8, f30, rtz # perform operation
fcvt.w.h x8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 732)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 740)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 744)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fcvt.w.h x28, f26, dyn # perform operation
fcvt.w.h x28, f26, rdn # perform operation
fcvt.w.h x28, f26, rmm # perform operation
fcvt.w.h x28, f26, rne # perform operation
fcvt.w.h x28, f26, rtz # perform operation
fcvt.w.h x28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 748)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 752)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 756)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 764)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fcvt.w.h x6, f7, dyn # perform operation
fcvt.w.h x6, f7, rdn # perform operation
fcvt.w.h x6, f7, rmm # perform operation
fcvt.w.h x6, f7, rne # perform operation
fcvt.w.h x6, f7, rtz # perform operation
fcvt.w.h x6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x6, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 768)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x6, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 772)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x6, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 776)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x6, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 780)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x6, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fcvt.w.h x18, f20, dyn # perform operation
fcvt.w.h x18, f20, rdn # perform operation
fcvt.w.h x18, f20, rmm # perform operation
fcvt.w.h x18, f20, rne # perform operation
fcvt.w.h x18, f20, rtz # perform operation
fcvt.w.h x18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 788)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 796)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 804)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
fcvt.w.h x26, f12, dyn # perform operation
fcvt.w.h x26, f12, rdn # perform operation
fcvt.w.h x26, f12, rmm # perform operation
fcvt.w.h x26, f12, rne # perform operation
fcvt.w.h x26, f12, rtz # perform operation
fcvt.w.h x26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x26, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x26, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 812)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x26, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x26, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 820)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x26, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 824)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fcvt.w.h x20, f1, dyn # perform operation
fcvt.w.h x20, f1, rdn # perform operation
fcvt.w.h x20, f1, rmm # perform operation
fcvt.w.h x20, f1, rne # perform operation
fcvt.w.h x20, f1, rtz # perform operation
fcvt.w.h x20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 828)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 832)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 836)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 844)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fcvt.w.h x24, f10, dyn # perform operation
fcvt.w.h x24, f10, rdn # perform operation
fcvt.w.h x24, f10, rmm # perform operation
fcvt.w.h x24, f10, rne # perform operation
fcvt.w.h x24, f10, rtz # perform operation
fcvt.w.h x24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 848)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 852)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 856)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 860)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 864)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
fcvt.w.h x27, f18, dyn # perform operation
fcvt.w.h x27, f18, rdn # perform operation
fcvt.w.h x27, f18, rmm # perform operation
fcvt.w.h x27, f18, rne # perform operation
fcvt.w.h x27, f18, rtz # perform operation
fcvt.w.h x27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x27, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 868)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x27, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x27, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 876)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x27, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x27, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 884)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
fcvt.w.h x10, f21, dyn # perform operation
fcvt.w.h x10, f21, rdn # perform operation
fcvt.w.h x10, f21, rmm # perform operation
fcvt.w.h x10, f21, rne # perform operation
fcvt.w.h x10, f21, rtz # perform operation
fcvt.w.h x10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x10, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 888)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x10, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 892)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x10, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 896)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x10, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 900)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x10, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fcvt.w.h x28, f22, dyn # perform operation
fcvt.w.h x28, f22, rdn # perform operation
fcvt.w.h x28, f22, rmm # perform operation
fcvt.w.h x28, f22, rne # perform operation
fcvt.w.h x28, f22, rtz # perform operation
fcvt.w.h x28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x28, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 908)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x28, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x28, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 916)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x28, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x28, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 924)


# Testcase cp_frm
la x2, scratch
li x3, 0x49eed847 # load x3 with value 0x49eed847
sw x3, 0(x2) # store 0x49eed847 in memory
flh f11, 0(x2) # load 0x49eed847 from memory into f11
fcvt.w.h x26, f11, dyn # perform operation
fcvt.w.h x26, f11, rdn # perform operation
fcvt.w.h x26, f11, rmm # perform operation
fcvt.w.h x26, f11, rne # perform operation
fcvt.w.h x26, f11, rtz # perform operation
fcvt.w.h x26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x26, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 928)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x26, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 932)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x26, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 936)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x26, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 940)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x26, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 944)


# Testcase Improper NaNBoxed argument test (Value 0x0 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fcvt.w.h x3, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 948)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f23, 0(x2) # load 0xfffe8000 from memory into f23
fcvt.w.h x1, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f9, 0(x2) # load 0x7fff3c00 from memory into f9
fcvt.w.h x10, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 956)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f9, 0(x2) # load 0xbeefbc00 from memory into f9
fcvt.w.h x21, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 960)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f11, 0(x2) # load 0xfeff0400 from memory into f11
fcvt.w.h x25, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 964)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f28, 0(x2) # load 0x0fff8400 from memory into f28
fcvt.w.h x1, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f6, 0(x2) # load 0xefff7bff from memory into f6
fcvt.w.h x5, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 972)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f21, 0(x2) # load 0xc0defbff from memory into f21
fcvt.w.h x9, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f8, 0(x2) # load 0x4f1a7c00 from memory into f8
fcvt.w.h x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 980)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f7, 0(x2) # load 0x0ffffc00 from memory into f7
fcvt.w.h x18, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 984)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f7, 0(x2) # load 0xffef7e00 from memory into f7
fcvt.w.h x30, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 988)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f14, 0(x2) # load 0xfeef7fff from memory into f14
fcvt.w.h x1, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 992)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f6, 0(x2) # load 0xa1b27c01 from memory into f6
fcvt.w.h x21, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 996)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f15, 0(x2) # load 0x4fd77dff from memory into f15
fcvt.w.h x1, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1000)

.EQU SIGSIZE,1004


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
