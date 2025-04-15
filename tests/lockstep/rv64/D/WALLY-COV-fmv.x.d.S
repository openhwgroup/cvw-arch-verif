///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fmv.x.d.S
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
li x3, 0x904e875ed04357a5 # load x3 with value 0x904e875ed04357a5
sd x3, 0(x2) # store 0x904e875ed04357a5 in memory
fld f1, 0(x2) # load 0x904e875ed04357a5 from memory into f1
fmv.x.d x0, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xb40e06c15b2ce376 # load x3 with value 0xb40e06c15b2ce376
sd x3, 0(x2) # store 0xb40e06c15b2ce376 in memory
fld f21, 0(x2) # load 0xb40e06c15b2ce376 from memory into f21
fmv.x.d x1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0xdab127b183a066eb # load x3 with value 0xdab127b183a066eb
sd x3, 0(x2) # store 0xdab127b183a066eb in memory
fld f9, 0(x2) # load 0xdab127b183a066eb from memory into f9
fmv.x.d x2, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x12dacdffc482e4c7 # load x3 with value 0x12dacdffc482e4c7
sd x3, 0(x2) # store 0x12dacdffc482e4c7 in memory
fld f26, 0(x2) # load 0x12dacdffc482e4c7 from memory into f26
fmv.x.d x3, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x093fe9e0b586936d # load x3 with value 0x093fe9e0b586936d
sd x3, 0(x2) # store 0x093fe9e0b586936d in memory
fld f21, 0(x2) # load 0x093fe9e0b586936d from memory into f21
fmv.x.d x4, f21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x33129f410d61e884 # load x3 with value 0x33129f410d61e884
sd x3, 0(x2) # store 0x33129f410d61e884 in memory
fld f16, 0(x2) # load 0x33129f410d61e884 from memory into f16
fmv.x.d x5, f16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5f067338dc360442 # load x3 with value 0x5f067338dc360442
sd x3, 0(x2) # store 0x5f067338dc360442 in memory
fld f11, 0(x2) # load 0x5f067338dc360442 from memory into f11
fmv.x.d x6, f11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7270ead6a2c8b099 # load x3 with value 0x7270ead6a2c8b099
sd x3, 0(x2) # store 0x7270ead6a2c8b099 in memory
fld f24, 0(x2) # load 0x7270ead6a2c8b099 from memory into f24
fmv.x.d x7, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xd9d542e24c59cafb # load x3 with value 0xd9d542e24c59cafb
sd x3, 0(x2) # store 0xd9d542e24c59cafb in memory
fld f22, 0(x2) # load 0xd9d542e24c59cafb from memory into f22
fmv.x.d x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x257d7a1444ac1a63 # load x3 with value 0x257d7a1444ac1a63
sd x3, 0(x2) # store 0x257d7a1444ac1a63 in memory
fld f30, 0(x2) # load 0x257d7a1444ac1a63 from memory into f30
fmv.x.d x9, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x054b6cbcec1616b7 # load x3 with value 0x054b6cbcec1616b7
sd x3, 0(x2) # store 0x054b6cbcec1616b7 in memory
fld f3, 0(x2) # load 0x054b6cbcec1616b7 from memory into f3
fmv.x.d x10, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x1a69fc8c30eb0de4 # load x3 with value 0x1a69fc8c30eb0de4
sd x3, 0(x2) # store 0x1a69fc8c30eb0de4 in memory
fld f25, 0(x2) # load 0x1a69fc8c30eb0de4 from memory into f25
fmv.x.d x11, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x41ea7b88f1df0247 # load x3 with value 0x41ea7b88f1df0247
sd x3, 0(x2) # store 0x41ea7b88f1df0247 in memory
fld f25, 0(x2) # load 0x41ea7b88f1df0247 from memory into f25
fmv.x.d x12, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x381ba18c462c64ea # load x3 with value 0x381ba18c462c64ea
sd x3, 0(x2) # store 0x381ba18c462c64ea in memory
fld f16, 0(x2) # load 0x381ba18c462c64ea from memory into f16
fmv.x.d x13, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x5f96f75edf9b2f51 # load x3 with value 0x5f96f75edf9b2f51
sd x3, 0(x2) # store 0x5f96f75edf9b2f51 in memory
fld f30, 0(x2) # load 0x5f96f75edf9b2f51 from memory into f30
fmv.x.d x14, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0xc6417bc35a533c32 # load x3 with value 0xc6417bc35a533c32
sd x3, 0(x2) # store 0xc6417bc35a533c32 in memory
fld f9, 0(x2) # load 0xc6417bc35a533c32 from memory into f9
fmv.x.d x15, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xfd7d3a9fcfd2b2d1 # load x3 with value 0xfd7d3a9fcfd2b2d1
sd x3, 0(x2) # store 0xfd7d3a9fcfd2b2d1 in memory
fld f11, 0(x2) # load 0xfd7d3a9fcfd2b2d1 from memory into f11
fmv.x.d x16, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xd7261f96e1ea3f61 # load x3 with value 0xd7261f96e1ea3f61
sd x3, 0(x2) # store 0xd7261f96e1ea3f61 in memory
fld f14, 0(x2) # load 0xd7261f96e1ea3f61 from memory into f14
fmv.x.d x17, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x9ebe5ce68c1717a9 # load x3 with value 0x9ebe5ce68c1717a9
sd x3, 0(x2) # store 0x9ebe5ce68c1717a9 in memory
fld f31, 0(x2) # load 0x9ebe5ce68c1717a9 from memory into f31
fmv.x.d x18, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0xfdb63c416d7dfbb6 # load x3 with value 0xfdb63c416d7dfbb6
sd x3, 0(x2) # store 0xfdb63c416d7dfbb6 in memory
fld f10, 0(x2) # load 0xfdb63c416d7dfbb6 from memory into f10
fmv.x.d x19, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0xc1d7c2c73fcd0f12 # load x3 with value 0xc1d7c2c73fcd0f12
sd x3, 0(x2) # store 0xc1d7c2c73fcd0f12 in memory
fld f7, 0(x2) # load 0xc1d7c2c73fcd0f12 from memory into f7
fmv.x.d x20, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xb78d0249f76b80ca # load x3 with value 0xb78d0249f76b80ca
sd x3, 0(x2) # store 0xb78d0249f76b80ca in memory
fld f26, 0(x2) # load 0xb78d0249f76b80ca from memory into f26
fmv.x.d x21, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x24336ebc34c8712c # load x3 with value 0x24336ebc34c8712c
sd x3, 0(x2) # store 0x24336ebc34c8712c in memory
fld f20, 0(x2) # load 0x24336ebc34c8712c from memory into f20
fmv.x.d x22, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x1649ca6958a55cd8 # load x3 with value 0x1649ca6958a55cd8
sd x3, 0(x2) # store 0x1649ca6958a55cd8 in memory
fld f17, 0(x2) # load 0x1649ca6958a55cd8 from memory into f17
fmv.x.d x23, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xc00ce39201f47c93 # load x3 with value 0xc00ce39201f47c93
sd x3, 0(x2) # store 0xc00ce39201f47c93 in memory
fld f17, 0(x2) # load 0xc00ce39201f47c93 from memory into f17
fmv.x.d x24, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0xbe3408abb6b4abcd # load x3 with value 0xbe3408abb6b4abcd
sd x3, 0(x2) # store 0xbe3408abb6b4abcd in memory
fld f3, 0(x2) # load 0xbe3408abb6b4abcd from memory into f3
fmv.x.d x25, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x6936ca3d40e28d9f # load x3 with value 0x6936ca3d40e28d9f
sd x3, 0(x2) # store 0x6936ca3d40e28d9f in memory
fld f3, 0(x2) # load 0x6936ca3d40e28d9f from memory into f3
fmv.x.d x26, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x087de8c8003602ec # load x3 with value 0x087de8c8003602ec
sd x3, 0(x2) # store 0x087de8c8003602ec in memory
fld f23, 0(x2) # load 0x087de8c8003602ec from memory into f23
fmv.x.d x27, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x466253c8cb92d9e7 # load x3 with value 0x466253c8cb92d9e7
sd x3, 0(x2) # store 0x466253c8cb92d9e7 in memory
fld f16, 0(x2) # load 0x466253c8cb92d9e7 from memory into f16
fmv.x.d x28, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xca472a90bb37d271 # load x3 with value 0xca472a90bb37d271
sd x3, 0(x2) # store 0xca472a90bb37d271 in memory
fld f25, 0(x2) # load 0xca472a90bb37d271 from memory into f25
fmv.x.d x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0xf1bd1230b4559a52 # load x3 with value 0xf1bd1230b4559a52
sd x3, 0(x2) # store 0xf1bd1230b4559a52 in memory
fld f1, 0(x2) # load 0xf1bd1230b4559a52 from memory into f1
fmv.x.d x30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x00436437c32f5b1b # load x3 with value 0x00436437c32f5b1b
sd x3, 0(x2) # store 0x00436437c32f5b1b in memory
fld f12, 0(x2) # load 0x00436437c32f5b1b from memory into f12
fmv.x.d x31, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x10, x16 # perform first operation
fmv.x.d x7, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x26, x18 # perform first operation
fmv.x.d x27, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x26, x3 # perform first operation
fmv.x.d x15, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f21, f26, f1 # perform first operation
fmv.x.d x26, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x19, x9 # perform first operation
fmv.x.d x9, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x24, x1 # perform first operation
fmv.x.d x27, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x27, x29 # perform first operation
fmv.x.d x31, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x22, x23 # perform first operation
fmv.x.d x21, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x3, x27 # perform first operation
fmv.x.d x29, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x29, x23 # perform first operation
fmv.x.d x14, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x17, x2 # perform first operation
fmv.x.d x23, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x16, x20 # perform first operation
fmv.x.d x31, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x30, x17 # perform first operation
fmv.x.d x30, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x31, x28 # perform first operation
fmv.x.d x28, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x3, x6 # perform first operation
fmv.x.d x19, f9 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xd436c961f680f159 # load x3 with value 0xd436c961f680f159
sd x3, 0(x2) # store 0xd436c961f680f159 in memory
fld f0, 0(x2) # load 0xd436c961f680f159 from memory into f0
fmv.x.d x11, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x7a47c6a40a2683af # load x3 with value 0x7a47c6a40a2683af
sd x3, 0(x2) # store 0x7a47c6a40a2683af in memory
fld f1, 0(x2) # load 0x7a47c6a40a2683af from memory into f1
fmv.x.d x13, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x395ca75b5301fc63 # load x3 with value 0x395ca75b5301fc63
sd x3, 0(x2) # store 0x395ca75b5301fc63 in memory
fld f2, 0(x2) # load 0x395ca75b5301fc63 from memory into f2
fmv.x.d x24, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x243aa709bc7b8b44 # load x3 with value 0x243aa709bc7b8b44
sd x3, 0(x2) # store 0x243aa709bc7b8b44 in memory
fld f3, 0(x2) # load 0x243aa709bc7b8b44 from memory into f3
fmv.x.d x7, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x679dccddeb57c6cd # load x3 with value 0x679dccddeb57c6cd
sd x3, 0(x2) # store 0x679dccddeb57c6cd in memory
fld f4, 0(x2) # load 0x679dccddeb57c6cd from memory into f4
fmv.x.d x26, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xaede8382ebe2e846 # load x3 with value 0xaede8382ebe2e846
sd x3, 0(x2) # store 0xaede8382ebe2e846 in memory
fld f5, 0(x2) # load 0xaede8382ebe2e846 from memory into f5
fmv.x.d x12, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x64fcb40780ec144b # load x3 with value 0x64fcb40780ec144b
sd x3, 0(x2) # store 0x64fcb40780ec144b in memory
fld f6, 0(x2) # load 0x64fcb40780ec144b from memory into f6
fmv.x.d x7, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
la x2, scratch
li x3, 0xc0a0a9f560a03c4d # load x3 with value 0xc0a0a9f560a03c4d
sd x3, 0(x2) # store 0xc0a0a9f560a03c4d in memory
fld f7, 0(x2) # load 0xc0a0a9f560a03c4d from memory into f7
fmv.x.d x28, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x69dccb48faaf48b7 # load x3 with value 0x69dccb48faaf48b7
sd x3, 0(x2) # store 0x69dccb48faaf48b7 in memory
fld f8, 0(x2) # load 0x69dccb48faaf48b7 from memory into f8
fmv.x.d x6, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x70c8b8a675079f98 # load x3 with value 0x70c8b8a675079f98
sd x3, 0(x2) # store 0x70c8b8a675079f98 in memory
fld f9, 0(x2) # load 0x70c8b8a675079f98 from memory into f9
fmv.x.d x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xb3a50431281acdfd # load x3 with value 0xb3a50431281acdfd
sd x3, 0(x2) # store 0xb3a50431281acdfd in memory
fld f10, 0(x2) # load 0xb3a50431281acdfd from memory into f10
fmv.x.d x3, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x1c8188fcfc98a73e # load x3 with value 0x1c8188fcfc98a73e
sd x3, 0(x2) # store 0x1c8188fcfc98a73e in memory
fld f11, 0(x2) # load 0x1c8188fcfc98a73e from memory into f11
fmv.x.d x13, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xe788c0b371946512 # load x3 with value 0xe788c0b371946512
sd x3, 0(x2) # store 0xe788c0b371946512 in memory
fld f12, 0(x2) # load 0xe788c0b371946512 from memory into f12
fmv.x.d x17, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x2988fd35fcd916b2 # load x3 with value 0x2988fd35fcd916b2
sd x3, 0(x2) # store 0x2988fd35fcd916b2 in memory
fld f13, 0(x2) # load 0x2988fd35fcd916b2 from memory into f13
fmv.x.d x22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x40002936d15bde01 # load x3 with value 0x40002936d15bde01
sd x3, 0(x2) # store 0x40002936d15bde01 in memory
fld f14, 0(x2) # load 0x40002936d15bde01 from memory into f14
fmv.x.d x22, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x2fe8f06d68bc33d3 # load x3 with value 0x2fe8f06d68bc33d3
sd x3, 0(x2) # store 0x2fe8f06d68bc33d3 in memory
fld f15, 0(x2) # load 0x2fe8f06d68bc33d3 from memory into f15
fmv.x.d x20, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xd58be01b2c882c18 # load x3 with value 0xd58be01b2c882c18
sd x3, 0(x2) # store 0xd58be01b2c882c18 in memory
fld f16, 0(x2) # load 0xd58be01b2c882c18 from memory into f16
fmv.x.d x7, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x949de23dc29cfc7f # load x3 with value 0x949de23dc29cfc7f
sd x3, 0(x2) # store 0x949de23dc29cfc7f in memory
fld f17, 0(x2) # load 0x949de23dc29cfc7f from memory into f17
fmv.x.d x27, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x94e7c93a4ba1d3df # load x3 with value 0x94e7c93a4ba1d3df
sd x3, 0(x2) # store 0x94e7c93a4ba1d3df in memory
fld f18, 0(x2) # load 0x94e7c93a4ba1d3df from memory into f18
fmv.x.d x14, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x0b86cf796bac4fea # load x3 with value 0x0b86cf796bac4fea
sd x3, 0(x2) # store 0x0b86cf796bac4fea in memory
fld f19, 0(x2) # load 0x0b86cf796bac4fea from memory into f19
fmv.x.d x9, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x6e116e3f65d662bf # load x3 with value 0x6e116e3f65d662bf
sd x3, 0(x2) # store 0x6e116e3f65d662bf in memory
fld f20, 0(x2) # load 0x6e116e3f65d662bf from memory into f20
fmv.x.d x6, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xcb0a70750046c8b8 # load x3 with value 0xcb0a70750046c8b8
sd x3, 0(x2) # store 0xcb0a70750046c8b8 in memory
fld f21, 0(x2) # load 0xcb0a70750046c8b8 from memory into f21
fmv.x.d x11, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xb82ffdea44e9cb58 # load x3 with value 0xb82ffdea44e9cb58
sd x3, 0(x2) # store 0xb82ffdea44e9cb58 in memory
fld f22, 0(x2) # load 0xb82ffdea44e9cb58 from memory into f22
fmv.x.d x12, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x3500f74e077ecb7e # load x3 with value 0x3500f74e077ecb7e
sd x3, 0(x2) # store 0x3500f74e077ecb7e in memory
fld f23, 0(x2) # load 0x3500f74e077ecb7e from memory into f23
fmv.x.d x15, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x2a1ca4a5973a7175 # load x3 with value 0x2a1ca4a5973a7175
sd x3, 0(x2) # store 0x2a1ca4a5973a7175 in memory
fld f24, 0(x2) # load 0x2a1ca4a5973a7175 from memory into f24
fmv.x.d x14, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x00b16115120e7a0a # load x3 with value 0x00b16115120e7a0a
sd x3, 0(x2) # store 0x00b16115120e7a0a in memory
fld f25, 0(x2) # load 0x00b16115120e7a0a from memory into f25
fmv.x.d x21, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xc9d5edf6ebffee2c # load x3 with value 0xc9d5edf6ebffee2c
sd x3, 0(x2) # store 0xc9d5edf6ebffee2c in memory
fld f26, 0(x2) # load 0xc9d5edf6ebffee2c from memory into f26
fmv.x.d x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xc58a8541af17d26c # load x3 with value 0xc58a8541af17d26c
sd x3, 0(x2) # store 0xc58a8541af17d26c in memory
fld f27, 0(x2) # load 0xc58a8541af17d26c from memory into f27
fmv.x.d x11, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x5587e19e6df0a7d9 # load x3 with value 0x5587e19e6df0a7d9
sd x3, 0(x2) # store 0x5587e19e6df0a7d9 in memory
fld f28, 0(x2) # load 0x5587e19e6df0a7d9 from memory into f28
fmv.x.d x19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x5c5f6d6dd747807a # load x3 with value 0x5c5f6d6dd747807a
sd x3, 0(x2) # store 0x5c5f6d6dd747807a in memory
fld f29, 0(x2) # load 0x5c5f6d6dd747807a from memory into f29
fmv.x.d x31, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x66d0b4ef5fc7561e # load x3 with value 0x66d0b4ef5fc7561e
sd x3, 0(x2) # store 0x66d0b4ef5fc7561e in memory
fld f30, 0(x2) # load 0x66d0b4ef5fc7561e from memory into f30
fmv.x.d x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xe374d420c27ea863 # load x3 with value 0xe374d420c27ea863
sd x3, 0(x2) # store 0xe374d420c27ea863 in memory
fld f31, 0(x2) # load 0xe374d420c27ea863 from memory into f31
fmv.x.d x9, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fmv.x.d x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fmv.x.d x2, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
fmv.x.d x14, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fmv.x.d x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
fmv.x.d x12, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fmv.x.d x19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
fmv.x.d x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fmv.x.d x3, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
fmv.x.d x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
fmv.x.d x13, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fmv.x.d x28, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
fmv.x.d x26, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
fmv.x.d x16, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fmv.x.d x23, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
fmv.x.d x1, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fmv.x.d x9, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fmv.x.d x18, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fmv.x.d x20, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fmv.x.d x19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
fmv.x.d x21, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
fmv.x.d x10, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
fmv.x.d x22, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f31, 0(x2) # load 0xfff8000000000000 from memory into f31
fmv.x.d x19, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
fmv.x.d x1, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fmv.x.d x30, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f8, 0(x2) # load 0xfff0000000000001 from memory into f8
fmv.x.d x27, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
fmv.x.d x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
fmv.x.d x25, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 728)

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
