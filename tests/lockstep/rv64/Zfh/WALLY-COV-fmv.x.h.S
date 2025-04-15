///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fmv.x.h.S
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
li x3, 0x996e2c4b044fed93 # load x3 with value 0x996e2c4b044fed93
sw x3, 0(x2) # store 0x996e2c4b044fed93 in memory
flh f21, 0(x2) # load 0x996e2c4b044fed93 from memory into f21
fmv.x.h x0, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x6a54d029ba1413ae # load x3 with value 0x6a54d029ba1413ae
sw x3, 0(x2) # store 0x6a54d029ba1413ae in memory
flh f15, 0(x2) # load 0x6a54d029ba1413ae from memory into f15
fmv.x.h x1, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x5ccb021ae509757e # load x3 with value 0x5ccb021ae509757e
sw x3, 0(x2) # store 0x5ccb021ae509757e in memory
flh f5, 0(x2) # load 0x5ccb021ae509757e from memory into f5
fmv.x.h x2, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x2772155c59f0cf75 # load x3 with value 0x2772155c59f0cf75
sw x3, 0(x2) # store 0x2772155c59f0cf75 in memory
flh f30, 0(x2) # load 0x2772155c59f0cf75 from memory into f30
fmv.x.h x3, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8660210387b6aa7f # load x3 with value 0x8660210387b6aa7f
sw x3, 0(x2) # store 0x8660210387b6aa7f in memory
flh f31, 0(x2) # load 0x8660210387b6aa7f from memory into f31
fmv.x.h x4, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x19405f9193facc1e # load x3 with value 0x19405f9193facc1e
sw x3, 0(x2) # store 0x19405f9193facc1e in memory
flh f10, 0(x2) # load 0x19405f9193facc1e from memory into f10
fmv.x.h x5, f10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb95d2962786158db # load x3 with value 0xb95d2962786158db
sw x3, 0(x2) # store 0xb95d2962786158db in memory
flh f2, 0(x2) # load 0xb95d2962786158db from memory into f2
fmv.x.h x6, f2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd3f0da72ccb6ed80 # load x3 with value 0xd3f0da72ccb6ed80
sw x3, 0(x2) # store 0xd3f0da72ccb6ed80 in memory
flh f6, 0(x2) # load 0xd3f0da72ccb6ed80 from memory into f6
fmv.x.h x7, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x8deff80a64670121 # load x3 with value 0x8deff80a64670121
sw x3, 0(x2) # store 0x8deff80a64670121 in memory
flh f7, 0(x2) # load 0x8deff80a64670121 from memory into f7
fmv.x.h x8, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xac008694005e92d1 # load x3 with value 0xac008694005e92d1
sw x3, 0(x2) # store 0xac008694005e92d1 in memory
flh f8, 0(x2) # load 0xac008694005e92d1 from memory into f8
fmv.x.h x9, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x4e18cb2c8c54378d # load x3 with value 0x4e18cb2c8c54378d
sw x3, 0(x2) # store 0x4e18cb2c8c54378d in memory
flh f7, 0(x2) # load 0x4e18cb2c8c54378d from memory into f7
fmv.x.h x10, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x59c0f507bf905baa # load x3 with value 0x59c0f507bf905baa
sw x3, 0(x2) # store 0x59c0f507bf905baa in memory
flh f22, 0(x2) # load 0x59c0f507bf905baa from memory into f22
fmv.x.h x11, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xd6fc85671ad0911b # load x3 with value 0xd6fc85671ad0911b
sw x3, 0(x2) # store 0xd6fc85671ad0911b in memory
flh f14, 0(x2) # load 0xd6fc85671ad0911b from memory into f14
fmv.x.h x12, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x907e4c8c3b9e5302 # load x3 with value 0x907e4c8c3b9e5302
sw x3, 0(x2) # store 0x907e4c8c3b9e5302 in memory
flh f28, 0(x2) # load 0x907e4c8c3b9e5302 from memory into f28
fmv.x.h x13, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x5dd2f5b88696aa50 # load x3 with value 0x5dd2f5b88696aa50
sw x3, 0(x2) # store 0x5dd2f5b88696aa50 in memory
flh f28, 0(x2) # load 0x5dd2f5b88696aa50 from memory into f28
fmv.x.h x14, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x3dc044b02d1a9af2 # load x3 with value 0x3dc044b02d1a9af2
sw x3, 0(x2) # store 0x3dc044b02d1a9af2 in memory
flh f12, 0(x2) # load 0x3dc044b02d1a9af2 from memory into f12
fmv.x.h x15, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x40e618e805d1c386 # load x3 with value 0x40e618e805d1c386
sw x3, 0(x2) # store 0x40e618e805d1c386 in memory
flh f28, 0(x2) # load 0x40e618e805d1c386 from memory into f28
fmv.x.h x16, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xaaaedf800eab4ae4 # load x3 with value 0xaaaedf800eab4ae4
sw x3, 0(x2) # store 0xaaaedf800eab4ae4 in memory
flh f16, 0(x2) # load 0xaaaedf800eab4ae4 from memory into f16
fmv.x.h x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0xc5c1fd52454856aa # load x3 with value 0xc5c1fd52454856aa
sw x3, 0(x2) # store 0xc5c1fd52454856aa in memory
flh f20, 0(x2) # load 0xc5c1fd52454856aa from memory into f20
fmv.x.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x78cfc6baebe8caad # load x3 with value 0x78cfc6baebe8caad
sw x3, 0(x2) # store 0x78cfc6baebe8caad in memory
flh f29, 0(x2) # load 0x78cfc6baebe8caad from memory into f29
fmv.x.h x19, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x6cd6fb32a16a9d06 # load x3 with value 0x6cd6fb32a16a9d06
sw x3, 0(x2) # store 0x6cd6fb32a16a9d06 in memory
flh f21, 0(x2) # load 0x6cd6fb32a16a9d06 from memory into f21
fmv.x.h x20, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x571b4151040e30da # load x3 with value 0x571b4151040e30da
sw x3, 0(x2) # store 0x571b4151040e30da in memory
flh f3, 0(x2) # load 0x571b4151040e30da from memory into f3
fmv.x.h x21, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xdef57edaf3def245 # load x3 with value 0xdef57edaf3def245
sw x3, 0(x2) # store 0xdef57edaf3def245 in memory
flh f21, 0(x2) # load 0xdef57edaf3def245 from memory into f21
fmv.x.h x22, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x40d30676b79dfa8d # load x3 with value 0x40d30676b79dfa8d
sw x3, 0(x2) # store 0x40d30676b79dfa8d in memory
flh f25, 0(x2) # load 0x40d30676b79dfa8d from memory into f25
fmv.x.h x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xbf4a49399b0c7397 # load x3 with value 0xbf4a49399b0c7397
sw x3, 0(x2) # store 0xbf4a49399b0c7397 in memory
flh f27, 0(x2) # load 0xbf4a49399b0c7397 from memory into f27
fmv.x.h x24, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x9cf6bcff0c1d440a # load x3 with value 0x9cf6bcff0c1d440a
sw x3, 0(x2) # store 0x9cf6bcff0c1d440a in memory
flh f6, 0(x2) # load 0x9cf6bcff0c1d440a from memory into f6
fmv.x.h x25, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x8402605e06267cb8 # load x3 with value 0x8402605e06267cb8
sw x3, 0(x2) # store 0x8402605e06267cb8 in memory
flh f6, 0(x2) # load 0x8402605e06267cb8 from memory into f6
fmv.x.h x26, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xbcd3eb4f9b07d3a # load x3 with value 0xbcd3eb4f9b07d3a
sw x3, 0(x2) # store 0xbcd3eb4f9b07d3a in memory
flh f2, 0(x2) # load 0xbcd3eb4f9b07d3a from memory into f2
fmv.x.h x27, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xa7126bade30883a5 # load x3 with value 0xa7126bade30883a5
sw x3, 0(x2) # store 0xa7126bade30883a5 in memory
flh f15, 0(x2) # load 0xa7126bade30883a5 from memory into f15
fmv.x.h x28, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xa894f527555a694d # load x3 with value 0xa894f527555a694d
sw x3, 0(x2) # store 0xa894f527555a694d in memory
flh f29, 0(x2) # load 0xa894f527555a694d from memory into f29
fmv.x.h x29, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x7d443a2d512e4bb0 # load x3 with value 0x7d443a2d512e4bb0
sw x3, 0(x2) # store 0x7d443a2d512e4bb0 in memory
flh f2, 0(x2) # load 0x7d443a2d512e4bb0 from memory into f2
fmv.x.h x30, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x96c39a63e83c4e5e # load x3 with value 0x96c39a63e83c4e5e
sw x3, 0(x2) # store 0x96c39a63e83c4e5e in memory
flh f28, 0(x2) # load 0x96c39a63e83c4e5e from memory into f28
fmv.x.h x31, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x22, x26 # perform first operation
fmv.x.h x8, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x29, x9 # perform first operation
fmv.x.h x26, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x6, x13 # perform first operation
fmv.x.h x22, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f30, f5, f7 # perform first operation
fmv.x.h x5, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x13, x11 # perform first operation
fmv.x.h x12, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x26, x6 # perform first operation
fmv.x.h x26, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x28, x1 # perform first operation
fmv.x.h x19, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x5, x15 # perform first operation
fmv.x.h x18, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x15, x9 # perform first operation
fmv.x.h x6, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x15, x10 # perform first operation
fmv.x.h x20, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x8, x22 # perform first operation
fmv.x.h x19, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x9, x3 # perform first operation
fmv.x.h x12, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x6, x2 # perform first operation
fmv.x.h x6, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x21, x6 # perform first operation
fmv.x.h x6, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x3, x29 # perform first operation
fmv.x.h x21, f30 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x7040cb32b920544b # load x3 with value 0x7040cb32b920544b
sw x3, 0(x2) # store 0x7040cb32b920544b in memory
flh f0, 0(x2) # load 0x7040cb32b920544b from memory into f0
fmv.x.h x1, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x57cc79c4b97ac19c # load x3 with value 0x57cc79c4b97ac19c
sw x3, 0(x2) # store 0x57cc79c4b97ac19c in memory
flh f1, 0(x2) # load 0x57cc79c4b97ac19c from memory into f1
fmv.x.h x9, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xe998067c39c611c6 # load x3 with value 0xe998067c39c611c6
sw x3, 0(x2) # store 0xe998067c39c611c6 in memory
flh f2, 0(x2) # load 0xe998067c39c611c6 from memory into f2
fmv.x.h x18, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xace8dd0eb2da1550 # load x3 with value 0xace8dd0eb2da1550
sw x3, 0(x2) # store 0xace8dd0eb2da1550 in memory
flh f3, 0(x2) # load 0xace8dd0eb2da1550 from memory into f3
fmv.x.h x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2decfc311514092e # load x3 with value 0x2decfc311514092e
sw x3, 0(x2) # store 0x2decfc311514092e in memory
flh f4, 0(x2) # load 0x2decfc311514092e from memory into f4
fmv.x.h x14, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x137b168611d6374f # load x3 with value 0x137b168611d6374f
sw x3, 0(x2) # store 0x137b168611d6374f in memory
flh f5, 0(x2) # load 0x137b168611d6374f from memory into f5
fmv.x.h x10, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5f4a24382a5289f # load x3 with value 0x5f4a24382a5289f
sw x3, 0(x2) # store 0x5f4a24382a5289f in memory
flh f6, 0(x2) # load 0x5f4a24382a5289f from memory into f6
fmv.x.h x31, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6bd9903dee4ef049 # load x3 with value 0x6bd9903dee4ef049
sw x3, 0(x2) # store 0x6bd9903dee4ef049 in memory
flh f7, 0(x2) # load 0x6bd9903dee4ef049 from memory into f7
fmv.x.h x15, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xc205e963a11f4efa # load x3 with value 0xc205e963a11f4efa
sw x3, 0(x2) # store 0xc205e963a11f4efa in memory
flh f8, 0(x2) # load 0xc205e963a11f4efa from memory into f8
fmv.x.h x20, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x5d0d56fa6211ea93 # load x3 with value 0x5d0d56fa6211ea93
sw x3, 0(x2) # store 0x5d0d56fa6211ea93 in memory
flh f9, 0(x2) # load 0x5d0d56fa6211ea93 from memory into f9
fmv.x.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x33e314d3830b807d # load x3 with value 0x33e314d3830b807d
sw x3, 0(x2) # store 0x33e314d3830b807d in memory
flh f10, 0(x2) # load 0x33e314d3830b807d from memory into f10
fmv.x.h x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x98e36004fa7fbc57 # load x3 with value 0x98e36004fa7fbc57
sw x3, 0(x2) # store 0x98e36004fa7fbc57 in memory
flh f11, 0(x2) # load 0x98e36004fa7fbc57 from memory into f11
fmv.x.h x31, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x3f4a8b86d69b8a5f # load x3 with value 0x3f4a8b86d69b8a5f
sw x3, 0(x2) # store 0x3f4a8b86d69b8a5f in memory
flh f12, 0(x2) # load 0x3f4a8b86d69b8a5f from memory into f12
fmv.x.h x3, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x9b6b9f3c947546e7 # load x3 with value 0x9b6b9f3c947546e7
sw x3, 0(x2) # store 0x9b6b9f3c947546e7 in memory
flh f13, 0(x2) # load 0x9b6b9f3c947546e7 from memory into f13
fmv.x.h x5, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x312dca653e02f7a0 # load x3 with value 0x312dca653e02f7a0
sw x3, 0(x2) # store 0x312dca653e02f7a0 in memory
flh f14, 0(x2) # load 0x312dca653e02f7a0 from memory into f14
fmv.x.h x9, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x1af57794b2be72c5 # load x3 with value 0x1af57794b2be72c5
sw x3, 0(x2) # store 0x1af57794b2be72c5 in memory
flh f15, 0(x2) # load 0x1af57794b2be72c5 from memory into f15
fmv.x.h x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x218b83bb61b8a298 # load x3 with value 0x218b83bb61b8a298
sw x3, 0(x2) # store 0x218b83bb61b8a298 in memory
flh f16, 0(x2) # load 0x218b83bb61b8a298 from memory into f16
fmv.x.h x26, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x63ec17f9aec1422b # load x3 with value 0x63ec17f9aec1422b
sw x3, 0(x2) # store 0x63ec17f9aec1422b in memory
flh f17, 0(x2) # load 0x63ec17f9aec1422b from memory into f17
fmv.x.h x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xf80c356316a689d8 # load x3 with value 0xf80c356316a689d8
sw x3, 0(x2) # store 0xf80c356316a689d8 in memory
flh f18, 0(x2) # load 0xf80c356316a689d8 from memory into f18
fmv.x.h x17, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x3e5783c51e9c902e # load x3 with value 0x3e5783c51e9c902e
sw x3, 0(x2) # store 0x3e5783c51e9c902e in memory
flh f19, 0(x2) # load 0x3e5783c51e9c902e from memory into f19
fmv.x.h x6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x8246fad4c9c9d775 # load x3 with value 0x8246fad4c9c9d775
sw x3, 0(x2) # store 0x8246fad4c9c9d775 in memory
flh f20, 0(x2) # load 0x8246fad4c9c9d775 from memory into f20
fmv.x.h x3, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x8242b363bfcf8a0c # load x3 with value 0x8242b363bfcf8a0c
sw x3, 0(x2) # store 0x8242b363bfcf8a0c in memory
flh f21, 0(x2) # load 0x8242b363bfcf8a0c from memory into f21
fmv.x.h x11, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xae40291f4619c9fe # load x3 with value 0xae40291f4619c9fe
sw x3, 0(x2) # store 0xae40291f4619c9fe in memory
flh f22, 0(x2) # load 0xae40291f4619c9fe from memory into f22
fmv.x.h x20, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x157a993631f6173 # load x3 with value 0x157a993631f6173
sw x3, 0(x2) # store 0x157a993631f6173 in memory
flh f23, 0(x2) # load 0x157a993631f6173 from memory into f23
fmv.x.h x6, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x859a25022de78890 # load x3 with value 0x859a25022de78890
sw x3, 0(x2) # store 0x859a25022de78890 in memory
flh f24, 0(x2) # load 0x859a25022de78890 from memory into f24
fmv.x.h x20, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x7e06a92ecea60e7a # load x3 with value 0x7e06a92ecea60e7a
sw x3, 0(x2) # store 0x7e06a92ecea60e7a in memory
flh f25, 0(x2) # load 0x7e06a92ecea60e7a from memory into f25
fmv.x.h x15, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xe789b3a69b8ab662 # load x3 with value 0xe789b3a69b8ab662
sw x3, 0(x2) # store 0xe789b3a69b8ab662 in memory
flh f26, 0(x2) # load 0xe789b3a69b8ab662 from memory into f26
fmv.x.h x6, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x37d823287089c391 # load x3 with value 0x37d823287089c391
sw x3, 0(x2) # store 0x37d823287089c391 in memory
flh f27, 0(x2) # load 0x37d823287089c391 from memory into f27
fmv.x.h x27, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x80b81f402ec99ccf # load x3 with value 0x80b81f402ec99ccf
sw x3, 0(x2) # store 0x80b81f402ec99ccf in memory
flh f28, 0(x2) # load 0x80b81f402ec99ccf from memory into f28
fmv.x.h x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x728379d4940d2dbb # load x3 with value 0x728379d4940d2dbb
sw x3, 0(x2) # store 0x728379d4940d2dbb in memory
flh f29, 0(x2) # load 0x728379d4940d2dbb from memory into f29
fmv.x.h x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x1b52c0130dba185b # load x3 with value 0x1b52c0130dba185b
sw x3, 0(x2) # store 0x1b52c0130dba185b in memory
flh f30, 0(x2) # load 0x1b52c0130dba185b from memory into f30
fmv.x.h x30, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x54f82a0ee9ec1a52 # load x3 with value 0x54f82a0ee9ec1a52
sw x3, 0(x2) # store 0x54f82a0ee9ec1a52 in memory
flh f31, 0(x2) # load 0x54f82a0ee9ec1a52 from memory into f31
fmv.x.h x30, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fmv.x.h x26, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fmv.x.h x30, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fmv.x.h x22, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fmv.x.h x5, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fmv.x.h x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fmv.x.h x9, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fmv.x.h x1, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fmv.x.h x11, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fmv.x.h x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fmv.x.h x31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmv.x.h x30, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fmv.x.h x30, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fmv.x.h x2, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fmv.x.h x11, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fmv.x.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmv.x.h x12, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fmv.x.h x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fmv.x.h x25, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmv.x.h x21, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fmv.x.h x5, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fmv.x.h x14, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fmv.x.h x24, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
fmv.x.h x13, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fmv.x.h x2, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fmv.x.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
fmv.x.h x23, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fmv.x.h x20, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fmv.x.h x8, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

# Testcase Improper NaNBoxed argument test (Value 0x0 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fmv.x.h x27, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 736)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f13, 0(x2) # load 0xfffe8000 from memory into f13
fmv.x.h x26, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 744)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f31, 0(x2) # load 0x7fff3c00 from memory into f31
fmv.x.h x29, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 752)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f8, 0(x2) # load 0xbeefbc00 from memory into f8
fmv.x.h x28, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 760)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f24, 0(x2) # load 0xfeff0400 from memory into f24
fmv.x.h x23, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f31, 0(x2) # load 0x0fff8400 from memory into f31
fmv.x.h x3, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 776)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f1, 0(x2) # load 0xefff7bff from memory into f1
fmv.x.h x23, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 784)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f27, 0(x2) # load 0xc0defbff from memory into f27
fmv.x.h x17, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f3, 0(x2) # load 0x4f1a7c00 from memory into f3
fmv.x.h x6, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f21, 0(x2) # load 0x0ffffc00 from memory into f21
fmv.x.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 808)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f8, 0(x2) # load 0xffef7e00 from memory into f8
fmv.x.h x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f9, 0(x2) # load 0xfeef7fff from memory into f9
fmv.x.h x25, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f28, 0(x2) # load 0xa1b27c01 from memory into f28
fmv.x.h x29, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 832)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f26, 0(x2) # load 0x4fd77dff from memory into f26
fmv.x.h x7, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 840)

.EQU SIGSIZE,848


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
