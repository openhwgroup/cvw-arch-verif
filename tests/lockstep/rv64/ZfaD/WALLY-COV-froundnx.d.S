///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaD/WALLY-COV-froundnx.d.S
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
add x2, x29, x24 # perform first operation
froundnx.d f11, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x22, x12 # perform first operation
froundnx.d f9, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x24, x14 # perform first operation
froundnx.d f10, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f16, f15, f29 # perform first operation
froundnx.d f19, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x27, x9 # perform first operation
froundnx.d f27, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x22, x11 # perform first operation
froundnx.d f11, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f14, f3, f2 # perform first operation
froundnx.d f14, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f30, f10 # perform first operation
froundnx.d f27, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f29, f16, f6 # perform first operation
froundnx.d f29, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f8, f22, f3 # perform first operation
froundnx.d f22, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f14, f25, f3 # perform first operation
froundnx.d f3, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f24, f2, f25 # perform first operation
froundnx.d f30, f6 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb09be456777f21df # load x3 with value 0xb09be456777f21df
sd x3, 0(x2) # store 0xb09be456777f21df in memory
fld f0, 0(x2) # load 0xb09be456777f21df from memory into f0
froundnx.d f7, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6a8104e9f0ae23e1 # load x3 with value 0x6a8104e9f0ae23e1
sd x3, 0(x2) # store 0x6a8104e9f0ae23e1 in memory
fld f1, 0(x2) # load 0x6a8104e9f0ae23e1 from memory into f1
froundnx.d f25, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x842ca21adbd28bca # load x3 with value 0x842ca21adbd28bca
sd x3, 0(x2) # store 0x842ca21adbd28bca in memory
fld f2, 0(x2) # load 0x842ca21adbd28bca from memory into f2
froundnx.d f5, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e2094dc5c7691bf # load x3 with value 0x8e2094dc5c7691bf
sd x3, 0(x2) # store 0x8e2094dc5c7691bf in memory
fld f3, 0(x2) # load 0x8e2094dc5c7691bf from memory into f3
froundnx.d f24, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1649ca3251c9e10 # load x3 with value 0xa1649ca3251c9e10
sd x3, 0(x2) # store 0xa1649ca3251c9e10 in memory
fld f4, 0(x2) # load 0xa1649ca3251c9e10 from memory into f4
froundnx.d f21, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x88d3b805c7cb7418 # load x3 with value 0x88d3b805c7cb7418
sd x3, 0(x2) # store 0x88d3b805c7cb7418 in memory
fld f5, 0(x2) # load 0x88d3b805c7cb7418 from memory into f5
froundnx.d f3, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb70923014b93d559 # load x3 with value 0xb70923014b93d559
sd x3, 0(x2) # store 0xb70923014b93d559 in memory
fld f6, 0(x2) # load 0xb70923014b93d559 from memory into f6
froundnx.d f11, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x10fe6da05dba36f8 # load x3 with value 0x10fe6da05dba36f8
sd x3, 0(x2) # store 0x10fe6da05dba36f8 in memory
fld f7, 0(x2) # load 0x10fe6da05dba36f8 from memory into f7
froundnx.d f31, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6c28860b52483efb # load x3 with value 0x6c28860b52483efb
sd x3, 0(x2) # store 0x6c28860b52483efb in memory
fld f8, 0(x2) # load 0x6c28860b52483efb from memory into f8
froundnx.d f19, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8f63a3b861a054be # load x3 with value 0x8f63a3b861a054be
sd x3, 0(x2) # store 0x8f63a3b861a054be in memory
fld f9, 0(x2) # load 0x8f63a3b861a054be from memory into f9
froundnx.d f10, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8322d649daf464b6 # load x3 with value 0x8322d649daf464b6
sd x3, 0(x2) # store 0x8322d649daf464b6 in memory
fld f10, 0(x2) # load 0x8322d649daf464b6 from memory into f10
froundnx.d f28, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a9e73631130a9c3 # load x3 with value 0x2a9e73631130a9c3
sd x3, 0(x2) # store 0x2a9e73631130a9c3 in memory
fld f11, 0(x2) # load 0x2a9e73631130a9c3 from memory into f11
froundnx.d f30, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb53a245696e35131 # load x3 with value 0xb53a245696e35131
sd x3, 0(x2) # store 0xb53a245696e35131 in memory
fld f12, 0(x2) # load 0xb53a245696e35131 from memory into f12
froundnx.d f31, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x03686db3f137a505 # load x3 with value 0x03686db3f137a505
sd x3, 0(x2) # store 0x03686db3f137a505 in memory
fld f13, 0(x2) # load 0x03686db3f137a505 from memory into f13
froundnx.d f9, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf995086fc8153d9f # load x3 with value 0xf995086fc8153d9f
sd x3, 0(x2) # store 0xf995086fc8153d9f in memory
fld f14, 0(x2) # load 0xf995086fc8153d9f from memory into f14
froundnx.d f20, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a15528ab4e6bb6d # load x3 with value 0x5a15528ab4e6bb6d
sd x3, 0(x2) # store 0x5a15528ab4e6bb6d in memory
fld f15, 0(x2) # load 0x5a15528ab4e6bb6d from memory into f15
froundnx.d f24, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb7de3fd13ee63c07 # load x3 with value 0xb7de3fd13ee63c07
sd x3, 0(x2) # store 0xb7de3fd13ee63c07 in memory
fld f16, 0(x2) # load 0xb7de3fd13ee63c07 from memory into f16
froundnx.d f20, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6877e6896c8e59e2 # load x3 with value 0x6877e6896c8e59e2
sd x3, 0(x2) # store 0x6877e6896c8e59e2 in memory
fld f17, 0(x2) # load 0x6877e6896c8e59e2 from memory into f17
froundnx.d f30, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x19aeb184afa4b845 # load x3 with value 0x19aeb184afa4b845
sd x3, 0(x2) # store 0x19aeb184afa4b845 in memory
fld f18, 0(x2) # load 0x19aeb184afa4b845 from memory into f18
froundnx.d f28, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf14fada01a548604 # load x3 with value 0xf14fada01a548604
sd x3, 0(x2) # store 0xf14fada01a548604 in memory
fld f19, 0(x2) # load 0xf14fada01a548604 from memory into f19
froundnx.d f18, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x618b3d560bd2b63c # load x3 with value 0x618b3d560bd2b63c
sd x3, 0(x2) # store 0x618b3d560bd2b63c in memory
fld f20, 0(x2) # load 0x618b3d560bd2b63c from memory into f20
froundnx.d f29, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x014f9f4ab753caf8 # load x3 with value 0x014f9f4ab753caf8
sd x3, 0(x2) # store 0x014f9f4ab753caf8 in memory
fld f21, 0(x2) # load 0x014f9f4ab753caf8 from memory into f21
froundnx.d f11, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x76750884a7c24380 # load x3 with value 0x76750884a7c24380
sd x3, 0(x2) # store 0x76750884a7c24380 in memory
fld f22, 0(x2) # load 0x76750884a7c24380 from memory into f22
froundnx.d f24, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcda84bb6165577f6 # load x3 with value 0xcda84bb6165577f6
sd x3, 0(x2) # store 0xcda84bb6165577f6 in memory
fld f23, 0(x2) # load 0xcda84bb6165577f6 from memory into f23
froundnx.d f6, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfce54788b6e6a0d7 # load x3 with value 0xfce54788b6e6a0d7
sd x3, 0(x2) # store 0xfce54788b6e6a0d7 in memory
fld f24, 0(x2) # load 0xfce54788b6e6a0d7 from memory into f24
froundnx.d f22, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe1d7c08545a91ed8 # load x3 with value 0xe1d7c08545a91ed8
sd x3, 0(x2) # store 0xe1d7c08545a91ed8 in memory
fld f25, 0(x2) # load 0xe1d7c08545a91ed8 from memory into f25
froundnx.d f14, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xabbc0ce0f15c17eb # load x3 with value 0xabbc0ce0f15c17eb
sd x3, 0(x2) # store 0xabbc0ce0f15c17eb in memory
fld f26, 0(x2) # load 0xabbc0ce0f15c17eb from memory into f26
froundnx.d f12, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x74d3ab6fee75a56d # load x3 with value 0x74d3ab6fee75a56d
sd x3, 0(x2) # store 0x74d3ab6fee75a56d in memory
fld f27, 0(x2) # load 0x74d3ab6fee75a56d from memory into f27
froundnx.d f16, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x450014bc48cbead9 # load x3 with value 0x450014bc48cbead9
sd x3, 0(x2) # store 0x450014bc48cbead9 in memory
fld f28, 0(x2) # load 0x450014bc48cbead9 from memory into f28
froundnx.d f1, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1ee7f3e8fc483752 # load x3 with value 0x1ee7f3e8fc483752
sd x3, 0(x2) # store 0x1ee7f3e8fc483752 in memory
fld f29, 0(x2) # load 0x1ee7f3e8fc483752 from memory into f29
froundnx.d f3, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x212a0dcaad7bcdfa # load x3 with value 0x212a0dcaad7bcdfa
sd x3, 0(x2) # store 0x212a0dcaad7bcdfa in memory
fld f30, 0(x2) # load 0x212a0dcaad7bcdfa from memory into f30
froundnx.d f20, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1778ff785ad49b3a # load x3 with value 0x1778ff785ad49b3a
sd x3, 0(x2) # store 0x1778ff785ad49b3a in memory
fld f31, 0(x2) # load 0x1778ff785ad49b3a from memory into f31
froundnx.d f24, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6e7cb41b062330b7 # load x3 with value 0x6e7cb41b062330b7
sd x3, 0(x2) # store 0x6e7cb41b062330b7 in memory
fld f27, 0(x2) # load 0x6e7cb41b062330b7 from memory into f27
froundnx.d f0, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xde5cc1cf5e83f18c # load x3 with value 0xde5cc1cf5e83f18c
sd x3, 0(x2) # store 0xde5cc1cf5e83f18c in memory
fld f18, 0(x2) # load 0xde5cc1cf5e83f18c from memory into f18
froundnx.d f1, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1875f94c6f6e2032 # load x3 with value 0x1875f94c6f6e2032
sd x3, 0(x2) # store 0x1875f94c6f6e2032 in memory
fld f17, 0(x2) # load 0x1875f94c6f6e2032 from memory into f17
froundnx.d f2, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1e1df0f143b93f61 # load x3 with value 0x1e1df0f143b93f61
sd x3, 0(x2) # store 0x1e1df0f143b93f61 in memory
fld f25, 0(x2) # load 0x1e1df0f143b93f61 from memory into f25
froundnx.d f3, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x57061379cb50bbfa # load x3 with value 0x57061379cb50bbfa
sd x3, 0(x2) # store 0x57061379cb50bbfa in memory
fld f18, 0(x2) # load 0x57061379cb50bbfa from memory into f18
froundnx.d f4, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd9d2f5643df7a699 # load x3 with value 0xd9d2f5643df7a699
sd x3, 0(x2) # store 0xd9d2f5643df7a699 in memory
fld f9, 0(x2) # load 0xd9d2f5643df7a699 from memory into f9
froundnx.d f5, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6e8af82b2dca532f # load x3 with value 0x6e8af82b2dca532f
sd x3, 0(x2) # store 0x6e8af82b2dca532f in memory
fld f27, 0(x2) # load 0x6e8af82b2dca532f from memory into f27
froundnx.d f6, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe123aa8106c5b8cd # load x3 with value 0xe123aa8106c5b8cd
sd x3, 0(x2) # store 0xe123aa8106c5b8cd in memory
fld f16, 0(x2) # load 0xe123aa8106c5b8cd from memory into f16
froundnx.d f7, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1fc504c2d259d7e2 # load x3 with value 0x1fc504c2d259d7e2
sd x3, 0(x2) # store 0x1fc504c2d259d7e2 in memory
fld f22, 0(x2) # load 0x1fc504c2d259d7e2 from memory into f22
froundnx.d f8, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6b35c00d3ace5df4 # load x3 with value 0x6b35c00d3ace5df4
sd x3, 0(x2) # store 0x6b35c00d3ace5df4 in memory
fld f7, 0(x2) # load 0x6b35c00d3ace5df4 from memory into f7
froundnx.d f9, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4bf34f167a8895b1 # load x3 with value 0x4bf34f167a8895b1
sd x3, 0(x2) # store 0x4bf34f167a8895b1 in memory
fld f5, 0(x2) # load 0x4bf34f167a8895b1 from memory into f5
froundnx.d f10, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaa461d432c59af7b # load x3 with value 0xaa461d432c59af7b
sd x3, 0(x2) # store 0xaa461d432c59af7b in memory
fld f27, 0(x2) # load 0xaa461d432c59af7b from memory into f27
froundnx.d f11, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0b5ffbbf3426c98c # load x3 with value 0x0b5ffbbf3426c98c
sd x3, 0(x2) # store 0x0b5ffbbf3426c98c in memory
fld f31, 0(x2) # load 0x0b5ffbbf3426c98c from memory into f31
froundnx.d f12, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7884b041e5b65389 # load x3 with value 0x7884b041e5b65389
sd x3, 0(x2) # store 0x7884b041e5b65389 in memory
fld f3, 0(x2) # load 0x7884b041e5b65389 from memory into f3
froundnx.d f13, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x33c0b76d850861fb # load x3 with value 0x33c0b76d850861fb
sd x3, 0(x2) # store 0x33c0b76d850861fb in memory
fld f25, 0(x2) # load 0x33c0b76d850861fb from memory into f25
froundnx.d f14, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1883fb3a21cc625a # load x3 with value 0x1883fb3a21cc625a
sd x3, 0(x2) # store 0x1883fb3a21cc625a in memory
fld f10, 0(x2) # load 0x1883fb3a21cc625a from memory into f10
froundnx.d f15, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x71c5c8245f580593 # load x3 with value 0x71c5c8245f580593
sd x3, 0(x2) # store 0x71c5c8245f580593 in memory
fld f2, 0(x2) # load 0x71c5c8245f580593 from memory into f2
froundnx.d f16, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd5e512e7258f9cf # load x3 with value 0xfd5e512e7258f9cf
sd x3, 0(x2) # store 0xfd5e512e7258f9cf in memory
fld f19, 0(x2) # load 0xfd5e512e7258f9cf from memory into f19
froundnx.d f17, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x30389e6f0d0e7bc0 # load x3 with value 0x30389e6f0d0e7bc0
sd x3, 0(x2) # store 0x30389e6f0d0e7bc0 in memory
fld f28, 0(x2) # load 0x30389e6f0d0e7bc0 from memory into f28
froundnx.d f18, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1e20e5c631709ca2 # load x3 with value 0x1e20e5c631709ca2
sd x3, 0(x2) # store 0x1e20e5c631709ca2 in memory
fld f22, 0(x2) # load 0x1e20e5c631709ca2 from memory into f22
froundnx.d f19, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd2d42ebfe4c2d8fb # load x3 with value 0xd2d42ebfe4c2d8fb
sd x3, 0(x2) # store 0xd2d42ebfe4c2d8fb in memory
fld f8, 0(x2) # load 0xd2d42ebfe4c2d8fb from memory into f8
froundnx.d f20, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e28f7ff463eb629 # load x3 with value 0x7e28f7ff463eb629
sd x3, 0(x2) # store 0x7e28f7ff463eb629 in memory
fld f13, 0(x2) # load 0x7e28f7ff463eb629 from memory into f13
froundnx.d f21, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x09e9ff2c7c29d7ce # load x3 with value 0x09e9ff2c7c29d7ce
sd x3, 0(x2) # store 0x09e9ff2c7c29d7ce in memory
fld f9, 0(x2) # load 0x09e9ff2c7c29d7ce from memory into f9
froundnx.d f22, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0855e727fd3b17f6 # load x3 with value 0x0855e727fd3b17f6
sd x3, 0(x2) # store 0x0855e727fd3b17f6 in memory
fld f26, 0(x2) # load 0x0855e727fd3b17f6 from memory into f26
froundnx.d f23, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb8c99de8bd348016 # load x3 with value 0xb8c99de8bd348016
sd x3, 0(x2) # store 0xb8c99de8bd348016 in memory
fld f14, 0(x2) # load 0xb8c99de8bd348016 from memory into f14
froundnx.d f24, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8c962f7f481cbbab # load x3 with value 0x8c962f7f481cbbab
sd x3, 0(x2) # store 0x8c962f7f481cbbab in memory
fld f7, 0(x2) # load 0x8c962f7f481cbbab from memory into f7
froundnx.d f25, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7eccde54bddf56bc # load x3 with value 0x7eccde54bddf56bc
sd x3, 0(x2) # store 0x7eccde54bddf56bc in memory
fld f11, 0(x2) # load 0x7eccde54bddf56bc from memory into f11
froundnx.d f26, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x95f7854d546c48d7 # load x3 with value 0x95f7854d546c48d7
sd x3, 0(x2) # store 0x95f7854d546c48d7 in memory
fld f8, 0(x2) # load 0x95f7854d546c48d7 from memory into f8
froundnx.d f27, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x79288c14511ab34b # load x3 with value 0x79288c14511ab34b
sd x3, 0(x2) # store 0x79288c14511ab34b in memory
fld f11, 0(x2) # load 0x79288c14511ab34b from memory into f11
froundnx.d f28, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8df739e027896c27 # load x3 with value 0x8df739e027896c27
sd x3, 0(x2) # store 0x8df739e027896c27 in memory
fld f30, 0(x2) # load 0x8df739e027896c27 from memory into f30
froundnx.d f29, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xce4f519bb3dd0753 # load x3 with value 0xce4f519bb3dd0753
sd x3, 0(x2) # store 0xce4f519bb3dd0753 in memory
fld f6, 0(x2) # load 0xce4f519bb3dd0753 from memory into f6
froundnx.d f30, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a7cc537afc739cf # load x3 with value 0x2a7cc537afc739cf
sd x3, 0(x2) # store 0x2a7cc537afc739cf in memory
fld f3, 0(x2) # load 0x2a7cc537afc739cf from memory into f3
froundnx.d f31, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
froundnx.d f14, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
froundnx.d f6, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
froundnx.d f6, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
froundnx.d f22, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
froundnx.d f30, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
froundnx.d f16, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
froundnx.d f8, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
froundnx.d f25, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
froundnx.d f23, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
froundnx.d f22, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
froundnx.d f18, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
froundnx.d f5, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
froundnx.d f1, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
froundnx.d f12, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
froundnx.d f8, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
froundnx.d f27, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
froundnx.d f13, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
froundnx.d f16, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
froundnx.d f5, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
froundnx.d f11, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
froundnx.d f11, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
froundnx.d f7, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f9, 0(x2) # load 0xfff8000000000000 from memory into f9
froundnx.d f1, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
froundnx.d f7, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
froundnx.d f27, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f20, 0(x2) # load 0xfff0000000000001 from memory into f20
froundnx.d f26, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
froundnx.d f2, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
froundnx.d f14, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6f9af531149def67 # load x3 with value 0x6f9af531149def67
sd x3, 0(x2) # store 0x6f9af531149def67 in memory
fld f0, 0(x2) # load 0x6f9af531149def67 from memory into f0
froundnx.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1460c1606d1b0e47 # load x3 with value 0x1460c1606d1b0e47
sd x3, 0(x2) # store 0x1460c1606d1b0e47 in memory
fld f1, 0(x2) # load 0x1460c1606d1b0e47 from memory into f1
froundnx.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb15a8b4a6dad0771 # load x3 with value 0xb15a8b4a6dad0771
sd x3, 0(x2) # store 0xb15a8b4a6dad0771 in memory
fld f2, 0(x2) # load 0xb15a8b4a6dad0771 from memory into f2
froundnx.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcd6d942eac6238dd # load x3 with value 0xcd6d942eac6238dd
sd x3, 0(x2) # store 0xcd6d942eac6238dd in memory
fld f3, 0(x2) # load 0xcd6d942eac6238dd from memory into f3
froundnx.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x39f2537608ccc689 # load x3 with value 0x39f2537608ccc689
sd x3, 0(x2) # store 0x39f2537608ccc689 in memory
fld f4, 0(x2) # load 0x39f2537608ccc689 from memory into f4
froundnx.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x76f1b8b805fb0a6c # load x3 with value 0x76f1b8b805fb0a6c
sd x3, 0(x2) # store 0x76f1b8b805fb0a6c in memory
fld f5, 0(x2) # load 0x76f1b8b805fb0a6c from memory into f5
froundnx.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc3746225ceb8c3b # load x3 with value 0xdc3746225ceb8c3b
sd x3, 0(x2) # store 0xdc3746225ceb8c3b in memory
fld f6, 0(x2) # load 0xdc3746225ceb8c3b from memory into f6
froundnx.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa2fdcfc28f6eaca1 # load x3 with value 0xa2fdcfc28f6eaca1
sd x3, 0(x2) # store 0xa2fdcfc28f6eaca1 in memory
fld f7, 0(x2) # load 0xa2fdcfc28f6eaca1 from memory into f7
froundnx.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb315acd404677e41 # load x3 with value 0xb315acd404677e41
sd x3, 0(x2) # store 0xb315acd404677e41 in memory
fld f8, 0(x2) # load 0xb315acd404677e41 from memory into f8
froundnx.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbaf3f93ad9424412 # load x3 with value 0xbaf3f93ad9424412
sd x3, 0(x2) # store 0xbaf3f93ad9424412 in memory
fld f9, 0(x2) # load 0xbaf3f93ad9424412 from memory into f9
froundnx.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1530e6fb29adf272 # load x3 with value 0x1530e6fb29adf272
sd x3, 0(x2) # store 0x1530e6fb29adf272 in memory
fld f10, 0(x2) # load 0x1530e6fb29adf272 from memory into f10
froundnx.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x79010176c9f07f7f # load x3 with value 0x79010176c9f07f7f
sd x3, 0(x2) # store 0x79010176c9f07f7f in memory
fld f11, 0(x2) # load 0x79010176c9f07f7f from memory into f11
froundnx.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x96c235e5e8448918 # load x3 with value 0x96c235e5e8448918
sd x3, 0(x2) # store 0x96c235e5e8448918 in memory
fld f12, 0(x2) # load 0x96c235e5e8448918 from memory into f12
froundnx.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12a9f7e9b8cc19fe # load x3 with value 0x12a9f7e9b8cc19fe
sd x3, 0(x2) # store 0x12a9f7e9b8cc19fe in memory
fld f13, 0(x2) # load 0x12a9f7e9b8cc19fe from memory into f13
froundnx.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd097b26abfce5925 # load x3 with value 0xd097b26abfce5925
sd x3, 0(x2) # store 0xd097b26abfce5925 in memory
fld f14, 0(x2) # load 0xd097b26abfce5925 from memory into f14
froundnx.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8c3e2a118217502 # load x3 with value 0xa8c3e2a118217502
sd x3, 0(x2) # store 0xa8c3e2a118217502 in memory
fld f15, 0(x2) # load 0xa8c3e2a118217502 from memory into f15
froundnx.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x259f24fff8cbef26 # load x3 with value 0x259f24fff8cbef26
sd x3, 0(x2) # store 0x259f24fff8cbef26 in memory
fld f16, 0(x2) # load 0x259f24fff8cbef26 from memory into f16
froundnx.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1252eccecc3ff763 # load x3 with value 0x1252eccecc3ff763
sd x3, 0(x2) # store 0x1252eccecc3ff763 in memory
fld f17, 0(x2) # load 0x1252eccecc3ff763 from memory into f17
froundnx.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x634b2350ae6b66e4 # load x3 with value 0x634b2350ae6b66e4
sd x3, 0(x2) # store 0x634b2350ae6b66e4 in memory
fld f18, 0(x2) # load 0x634b2350ae6b66e4 from memory into f18
froundnx.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x54c04edf27306896 # load x3 with value 0x54c04edf27306896
sd x3, 0(x2) # store 0x54c04edf27306896 in memory
fld f19, 0(x2) # load 0x54c04edf27306896 from memory into f19
froundnx.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x05c85e02d99c4f2b # load x3 with value 0x05c85e02d99c4f2b
sd x3, 0(x2) # store 0x05c85e02d99c4f2b in memory
fld f20, 0(x2) # load 0x05c85e02d99c4f2b from memory into f20
froundnx.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0d02aad705fb7ee5 # load x3 with value 0x0d02aad705fb7ee5
sd x3, 0(x2) # store 0x0d02aad705fb7ee5 in memory
fld f21, 0(x2) # load 0x0d02aad705fb7ee5 from memory into f21
froundnx.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdd1fb698fd525245 # load x3 with value 0xdd1fb698fd525245
sd x3, 0(x2) # store 0xdd1fb698fd525245 in memory
fld f22, 0(x2) # load 0xdd1fb698fd525245 from memory into f22
froundnx.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6a9f3e1ebe1f7841 # load x3 with value 0x6a9f3e1ebe1f7841
sd x3, 0(x2) # store 0x6a9f3e1ebe1f7841 in memory
fld f23, 0(x2) # load 0x6a9f3e1ebe1f7841 from memory into f23
froundnx.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2fd06f89449fd6e1 # load x3 with value 0x2fd06f89449fd6e1
sd x3, 0(x2) # store 0x2fd06f89449fd6e1 in memory
fld f24, 0(x2) # load 0x2fd06f89449fd6e1 from memory into f24
froundnx.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x87e1b1af005f4ee3 # load x3 with value 0x87e1b1af005f4ee3
sd x3, 0(x2) # store 0x87e1b1af005f4ee3 in memory
fld f25, 0(x2) # load 0x87e1b1af005f4ee3 from memory into f25
froundnx.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x34fb70117e0bc3cc # load x3 with value 0x34fb70117e0bc3cc
sd x3, 0(x2) # store 0x34fb70117e0bc3cc in memory
fld f26, 0(x2) # load 0x34fb70117e0bc3cc from memory into f26
froundnx.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1607cc5203e8f38e # load x3 with value 0x1607cc5203e8f38e
sd x3, 0(x2) # store 0x1607cc5203e8f38e in memory
fld f27, 0(x2) # load 0x1607cc5203e8f38e from memory into f27
froundnx.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2c263ee0786ce7a5 # load x3 with value 0x2c263ee0786ce7a5
sd x3, 0(x2) # store 0x2c263ee0786ce7a5 in memory
fld f28, 0(x2) # load 0x2c263ee0786ce7a5 from memory into f28
froundnx.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x538d0a3fd7178b4a # load x3 with value 0x538d0a3fd7178b4a
sd x3, 0(x2) # store 0x538d0a3fd7178b4a in memory
fld f29, 0(x2) # load 0x538d0a3fd7178b4a from memory into f29
froundnx.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd4ab1bf47ecb3ed # load x3 with value 0xfd4ab1bf47ecb3ed
sd x3, 0(x2) # store 0xfd4ab1bf47ecb3ed in memory
fld f30, 0(x2) # load 0xfd4ab1bf47ecb3ed from memory into f30
froundnx.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xabaa77b1b5a2d92e # load x3 with value 0xabaa77b1b5a2d92e
sd x3, 0(x2) # store 0xabaa77b1b5a2d92e in memory
fld f31, 0(x2) # load 0xabaa77b1b5a2d92e from memory into f31
froundnx.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa93e03da64ca21a2 # load x3 with value 0xa93e03da64ca21a2
sd x3, 0(x2) # store 0xa93e03da64ca21a2 in memory
fld f21, 0(x2) # load 0xa93e03da64ca21a2 from memory into f21
froundnx.d f26, f21, dyn # perform operation
froundnx.d f26, f21, rdn # perform operation
froundnx.d f26, f21, rmm # perform operation
froundnx.d f26, f21, rne # perform operation
froundnx.d f26, f21, rtz # perform operation
froundnx.d f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
froundnx.d f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
froundnx.d f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
froundnx.d f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
froundnx.d f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
froundnx.d f26, f21 # perform operation


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
