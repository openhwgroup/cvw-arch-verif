///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.l.d.S
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
li x3, 0x04254200e5279f7e # load x3 with value 0x04254200e5279f7e
sd x3, 0(x2) # store 0x04254200e5279f7e in memory
fld f21, 0(x2) # load 0x04254200e5279f7e from memory into f21
fcvt.l.d x0, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x003e3452d8fa302c # load x3 with value 0x003e3452d8fa302c
sd x3, 0(x2) # store 0x003e3452d8fa302c in memory
fld f6, 0(x2) # load 0x003e3452d8fa302c from memory into f6
fcvt.l.d x1, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x4883743154b31608 # load x3 with value 0x4883743154b31608
sd x3, 0(x2) # store 0x4883743154b31608 in memory
fld f16, 0(x2) # load 0x4883743154b31608 from memory into f16
fcvt.l.d x2, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x4b26b2a41d497f6f # load x3 with value 0x4b26b2a41d497f6f
sd x3, 0(x2) # store 0x4b26b2a41d497f6f in memory
fld f2, 0(x2) # load 0x4b26b2a41d497f6f from memory into f2
fcvt.l.d x3, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x46369dba4d0da467 # load x3 with value 0x46369dba4d0da467
sd x3, 0(x2) # store 0x46369dba4d0da467 in memory
fld f17, 0(x2) # load 0x46369dba4d0da467 from memory into f17
fcvt.l.d x4, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x009cff830773615f # load x3 with value 0x009cff830773615f
sd x3, 0(x2) # store 0x009cff830773615f in memory
fld f8, 0(x2) # load 0x009cff830773615f from memory into f8
fcvt.l.d x5, f8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x889f91b01b2c2a0c # load x3 with value 0x889f91b01b2c2a0c
sd x3, 0(x2) # store 0x889f91b01b2c2a0c in memory
fld f14, 0(x2) # load 0x889f91b01b2c2a0c from memory into f14
fcvt.l.d x6, f14 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa3623bc48f520e39 # load x3 with value 0xa3623bc48f520e39
sd x3, 0(x2) # store 0xa3623bc48f520e39 in memory
fld f10, 0(x2) # load 0xa3623bc48f520e39 from memory into f10
fcvt.l.d x7, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x8cac38507cad051b # load x3 with value 0x8cac38507cad051b
sd x3, 0(x2) # store 0x8cac38507cad051b in memory
fld f19, 0(x2) # load 0x8cac38507cad051b from memory into f19
fcvt.l.d x8, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x7f722a31ac22ab26 # load x3 with value 0x7f722a31ac22ab26
sd x3, 0(x2) # store 0x7f722a31ac22ab26 in memory
fld f29, 0(x2) # load 0x7f722a31ac22ab26 from memory into f29
fcvt.l.d x9, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x3da86a7f6c5280c8 # load x3 with value 0x3da86a7f6c5280c8
sd x3, 0(x2) # store 0x3da86a7f6c5280c8 in memory
fld f30, 0(x2) # load 0x3da86a7f6c5280c8 from memory into f30
fcvt.l.d x10, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xfe251b3cc203450e # load x3 with value 0xfe251b3cc203450e
sd x3, 0(x2) # store 0xfe251b3cc203450e in memory
fld f28, 0(x2) # load 0xfe251b3cc203450e from memory into f28
fcvt.l.d x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x15436eeb3cfabe25 # load x3 with value 0x15436eeb3cfabe25
sd x3, 0(x2) # store 0x15436eeb3cfabe25 in memory
fld f18, 0(x2) # load 0x15436eeb3cfabe25 from memory into f18
fcvt.l.d x12, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x38dcf3f634bd386b # load x3 with value 0x38dcf3f634bd386b
sd x3, 0(x2) # store 0x38dcf3f634bd386b in memory
fld f5, 0(x2) # load 0x38dcf3f634bd386b from memory into f5
fcvt.l.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0xe2d67ea5cf7c712a # load x3 with value 0xe2d67ea5cf7c712a
sd x3, 0(x2) # store 0xe2d67ea5cf7c712a in memory
fld f24, 0(x2) # load 0xe2d67ea5cf7c712a from memory into f24
fcvt.l.d x14, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x8f54d12b781b2a3a # load x3 with value 0x8f54d12b781b2a3a
sd x3, 0(x2) # store 0x8f54d12b781b2a3a in memory
fld f28, 0(x2) # load 0x8f54d12b781b2a3a from memory into f28
fcvt.l.d x15, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xa131844b6db96c9a # load x3 with value 0xa131844b6db96c9a
sd x3, 0(x2) # store 0xa131844b6db96c9a in memory
fld f7, 0(x2) # load 0xa131844b6db96c9a from memory into f7
fcvt.l.d x16, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x9e15fdb60ef8063e # load x3 with value 0x9e15fdb60ef8063e
sd x3, 0(x2) # store 0x9e15fdb60ef8063e in memory
fld f21, 0(x2) # load 0x9e15fdb60ef8063e from memory into f21
fcvt.l.d x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0xf4a9c4b951e9bbb3 # load x3 with value 0xf4a9c4b951e9bbb3
sd x3, 0(x2) # store 0xf4a9c4b951e9bbb3 in memory
fld f23, 0(x2) # load 0xf4a9c4b951e9bbb3 from memory into f23
fcvt.l.d x18, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x0a6d461b2c6c208c # load x3 with value 0x0a6d461b2c6c208c
sd x3, 0(x2) # store 0x0a6d461b2c6c208c in memory
fld f13, 0(x2) # load 0x0a6d461b2c6c208c from memory into f13
fcvt.l.d x19, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x49050c463a4effc7 # load x3 with value 0x49050c463a4effc7
sd x3, 0(x2) # store 0x49050c463a4effc7 in memory
fld f29, 0(x2) # load 0x49050c463a4effc7 from memory into f29
fcvt.l.d x20, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xc088fd2ef9eae751 # load x3 with value 0xc088fd2ef9eae751
sd x3, 0(x2) # store 0xc088fd2ef9eae751 in memory
fld f28, 0(x2) # load 0xc088fd2ef9eae751 from memory into f28
fcvt.l.d x21, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x2f3f5d3f7474631b # load x3 with value 0x2f3f5d3f7474631b
sd x3, 0(x2) # store 0x2f3f5d3f7474631b in memory
fld f31, 0(x2) # load 0x2f3f5d3f7474631b from memory into f31
fcvt.l.d x22, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x8d533f72d03ac465 # load x3 with value 0x8d533f72d03ac465
sd x3, 0(x2) # store 0x8d533f72d03ac465 in memory
fld f15, 0(x2) # load 0x8d533f72d03ac465 from memory into f15
fcvt.l.d x23, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xce40f27e937e4fff # load x3 with value 0xce40f27e937e4fff
sd x3, 0(x2) # store 0xce40f27e937e4fff in memory
fld f21, 0(x2) # load 0xce40f27e937e4fff from memory into f21
fcvt.l.d x24, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x12574089aff5d048 # load x3 with value 0x12574089aff5d048
sd x3, 0(x2) # store 0x12574089aff5d048 in memory
fld f27, 0(x2) # load 0x12574089aff5d048 from memory into f27
fcvt.l.d x25, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xf025fee4ba8c2d8e # load x3 with value 0xf025fee4ba8c2d8e
sd x3, 0(x2) # store 0xf025fee4ba8c2d8e in memory
fld f15, 0(x2) # load 0xf025fee4ba8c2d8e from memory into f15
fcvt.l.d x26, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xbbb696e404126278 # load x3 with value 0xbbb696e404126278
sd x3, 0(x2) # store 0xbbb696e404126278 in memory
fld f29, 0(x2) # load 0xbbb696e404126278 from memory into f29
fcvt.l.d x27, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x5000200f74422a6a # load x3 with value 0x5000200f74422a6a
sd x3, 0(x2) # store 0x5000200f74422a6a in memory
fld f27, 0(x2) # load 0x5000200f74422a6a from memory into f27
fcvt.l.d x28, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x4d44b2a4c6a9eb5a # load x3 with value 0x4d44b2a4c6a9eb5a
sd x3, 0(x2) # store 0x4d44b2a4c6a9eb5a in memory
fld f21, 0(x2) # load 0x4d44b2a4c6a9eb5a from memory into f21
fcvt.l.d x29, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0xca8047179930f51c # load x3 with value 0xca8047179930f51c
sd x3, 0(x2) # store 0xca8047179930f51c in memory
fld f21, 0(x2) # load 0xca8047179930f51c from memory into f21
fcvt.l.d x30, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xc6b5f0a7b3847a63 # load x3 with value 0xc6b5f0a7b3847a63
sd x3, 0(x2) # store 0xc6b5f0a7b3847a63 in memory
fld f10, 0(x2) # load 0xc6b5f0a7b3847a63 from memory into f10
fcvt.l.d x31, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x5, x14 # perform first operation
fcvt.l.d x2, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x20, x24 # perform first operation
fcvt.l.d x21, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x24, x17 # perform first operation
fcvt.l.d x30, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f19, f27, f8 # perform first operation
fcvt.l.d x8, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x11, x31 # perform first operation
fcvt.l.d x31, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x31, x30 # perform first operation
fcvt.l.d x31, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x11, x8 # perform first operation
fcvt.l.d x22, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x16, x22 # perform first operation
fcvt.l.d x21, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x18, x7 # perform first operation
fcvt.l.d x3, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x14, x17 # perform first operation
fcvt.l.d x5, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x24, x3 # perform first operation
fcvt.l.d x26, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x19, x6 # perform first operation
fcvt.l.d x26, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x12, x20 # perform first operation
fcvt.l.d x12, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x18, x23 # perform first operation
fcvt.l.d x23, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x15, x12 # perform first operation
fcvt.l.d x17, f22 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xe92c85d0765266ad # load x3 with value 0xe92c85d0765266ad
sd x3, 0(x2) # store 0xe92c85d0765266ad in memory
fld f0, 0(x2) # load 0xe92c85d0765266ad from memory into f0
fcvt.l.d x9, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xe5ff3e2e84718f86 # load x3 with value 0xe5ff3e2e84718f86
sd x3, 0(x2) # store 0xe5ff3e2e84718f86 in memory
fld f1, 0(x2) # load 0xe5ff3e2e84718f86 from memory into f1
fcvt.l.d x15, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x5c895ae6ff4ace47 # load x3 with value 0x5c895ae6ff4ace47
sd x3, 0(x2) # store 0x5c895ae6ff4ace47 in memory
fld f2, 0(x2) # load 0x5c895ae6ff4ace47 from memory into f2
fcvt.l.d x14, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x1216ecbf276a223f # load x3 with value 0x1216ecbf276a223f
sd x3, 0(x2) # store 0x1216ecbf276a223f in memory
fld f3, 0(x2) # load 0x1216ecbf276a223f from memory into f3
fcvt.l.d x16, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf8508e75398f23c6 # load x3 with value 0xf8508e75398f23c6
sd x3, 0(x2) # store 0xf8508e75398f23c6 in memory
fld f4, 0(x2) # load 0xf8508e75398f23c6 from memory into f4
fcvt.l.d x29, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa11e92f65222901c # load x3 with value 0xa11e92f65222901c
sd x3, 0(x2) # store 0xa11e92f65222901c in memory
fld f5, 0(x2) # load 0xa11e92f65222901c from memory into f5
fcvt.l.d x11, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe450db7e50fb0218 # load x3 with value 0xe450db7e50fb0218
sd x3, 0(x2) # store 0xe450db7e50fb0218 in memory
fld f6, 0(x2) # load 0xe450db7e50fb0218 from memory into f6
fcvt.l.d x12, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9dea9af79cf615f7 # load x3 with value 0x9dea9af79cf615f7
sd x3, 0(x2) # store 0x9dea9af79cf615f7 in memory
fld f7, 0(x2) # load 0x9dea9af79cf615f7 from memory into f7
fcvt.l.d x4, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x80f0d2453639e33a # load x3 with value 0x80f0d2453639e33a
sd x3, 0(x2) # store 0x80f0d2453639e33a in memory
fld f8, 0(x2) # load 0x80f0d2453639e33a from memory into f8
fcvt.l.d x12, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x744b314a52bb4c2c # load x3 with value 0x744b314a52bb4c2c
sd x3, 0(x2) # store 0x744b314a52bb4c2c in memory
fld f9, 0(x2) # load 0x744b314a52bb4c2c from memory into f9
fcvt.l.d x8, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x21dd598528132cbf # load x3 with value 0x21dd598528132cbf
sd x3, 0(x2) # store 0x21dd598528132cbf in memory
fld f10, 0(x2) # load 0x21dd598528132cbf from memory into f10
fcvt.l.d x4, f10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x24d29a7ff4e24565 # load x3 with value 0x24d29a7ff4e24565
sd x3, 0(x2) # store 0x24d29a7ff4e24565 in memory
fld f11, 0(x2) # load 0x24d29a7ff4e24565 from memory into f11
fcvt.l.d x17, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x44735783fc506f77 # load x3 with value 0x44735783fc506f77
sd x3, 0(x2) # store 0x44735783fc506f77 in memory
fld f12, 0(x2) # load 0x44735783fc506f77 from memory into f12
fcvt.l.d x9, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x9c1229775b38138c # load x3 with value 0x9c1229775b38138c
sd x3, 0(x2) # store 0x9c1229775b38138c in memory
fld f13, 0(x2) # load 0x9c1229775b38138c from memory into f13
fcvt.l.d x18, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x537bc45aefb018f1 # load x3 with value 0x537bc45aefb018f1
sd x3, 0(x2) # store 0x537bc45aefb018f1 in memory
fld f14, 0(x2) # load 0x537bc45aefb018f1 from memory into f14
fcvt.l.d x23, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x7ba50a6f5c101294 # load x3 with value 0x7ba50a6f5c101294
sd x3, 0(x2) # store 0x7ba50a6f5c101294 in memory
fld f15, 0(x2) # load 0x7ba50a6f5c101294 from memory into f15
fcvt.l.d x25, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x27e5e0b5ce78f261 # load x3 with value 0x27e5e0b5ce78f261
sd x3, 0(x2) # store 0x27e5e0b5ce78f261 in memory
fld f16, 0(x2) # load 0x27e5e0b5ce78f261 from memory into f16
fcvt.l.d x18, f16 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x4b75a6e02b3493fd # load x3 with value 0x4b75a6e02b3493fd
sd x3, 0(x2) # store 0x4b75a6e02b3493fd in memory
fld f17, 0(x2) # load 0x4b75a6e02b3493fd from memory into f17
fcvt.l.d x3, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x6eb79a8bb4b1393f # load x3 with value 0x6eb79a8bb4b1393f
sd x3, 0(x2) # store 0x6eb79a8bb4b1393f in memory
fld f18, 0(x2) # load 0x6eb79a8bb4b1393f from memory into f18
fcvt.l.d x28, f18 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xe05eb44cc7d408d1 # load x3 with value 0xe05eb44cc7d408d1
sd x3, 0(x2) # store 0xe05eb44cc7d408d1 in memory
fld f19, 0(x2) # load 0xe05eb44cc7d408d1 from memory into f19
fcvt.l.d x7, f19 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x39a50fbd59553d7f # load x3 with value 0x39a50fbd59553d7f
sd x3, 0(x2) # store 0x39a50fbd59553d7f in memory
fld f20, 0(x2) # load 0x39a50fbd59553d7f from memory into f20
fcvt.l.d x9, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xac7e1ba65f14a9aa # load x3 with value 0xac7e1ba65f14a9aa
sd x3, 0(x2) # store 0xac7e1ba65f14a9aa in memory
fld f21, 0(x2) # load 0xac7e1ba65f14a9aa from memory into f21
fcvt.l.d x13, f21 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xd79ac3dbe84da3df # load x3 with value 0xd79ac3dbe84da3df
sd x3, 0(x2) # store 0xd79ac3dbe84da3df in memory
fld f22, 0(x2) # load 0xd79ac3dbe84da3df from memory into f22
fcvt.l.d x20, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xc23b97948df41ee9 # load x3 with value 0xc23b97948df41ee9
sd x3, 0(x2) # store 0xc23b97948df41ee9 in memory
fld f23, 0(x2) # load 0xc23b97948df41ee9 from memory into f23
fcvt.l.d x10, f23 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x3257aba5cbc10111 # load x3 with value 0x3257aba5cbc10111
sd x3, 0(x2) # store 0x3257aba5cbc10111 in memory
fld f24, 0(x2) # load 0x3257aba5cbc10111 from memory into f24
fcvt.l.d x31, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x32eea78f6edbc04f # load x3 with value 0x32eea78f6edbc04f
sd x3, 0(x2) # store 0x32eea78f6edbc04f in memory
fld f25, 0(x2) # load 0x32eea78f6edbc04f from memory into f25
fcvt.l.d x25, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x5764c2c0d226485b # load x3 with value 0x5764c2c0d226485b
sd x3, 0(x2) # store 0x5764c2c0d226485b in memory
fld f26, 0(x2) # load 0x5764c2c0d226485b from memory into f26
fcvt.l.d x30, f26 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x99b483063dbe91de # load x3 with value 0x99b483063dbe91de
sd x3, 0(x2) # store 0x99b483063dbe91de in memory
fld f27, 0(x2) # load 0x99b483063dbe91de from memory into f27
fcvt.l.d x9, f27 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x0041049b8e2bf18c # load x3 with value 0x0041049b8e2bf18c
sd x3, 0(x2) # store 0x0041049b8e2bf18c in memory
fld f28, 0(x2) # load 0x0041049b8e2bf18c from memory into f28
fcvt.l.d x23, f28 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xadda1c1efbfa5daa # load x3 with value 0xadda1c1efbfa5daa
sd x3, 0(x2) # store 0xadda1c1efbfa5daa in memory
fld f29, 0(x2) # load 0xadda1c1efbfa5daa from memory into f29
fcvt.l.d x4, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xab8613089931368a # load x3 with value 0xab8613089931368a
sd x3, 0(x2) # store 0xab8613089931368a in memory
fld f30, 0(x2) # load 0xab8613089931368a from memory into f30
fcvt.l.d x28, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x287688c870987951 # load x3 with value 0x287688c870987951
sd x3, 0(x2) # store 0x287688c870987951 in memory
fld f31, 0(x2) # load 0x287688c870987951 from memory into f31
fcvt.l.d x26, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fcvt.l.d x31, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
fcvt.l.d x22, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
fcvt.l.d x28, f10 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
fcvt.l.d x31, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
fcvt.l.d x11, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
fcvt.l.d x10, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f7, 0(x2) # load 0x4000000000000000 from memory into f7
fcvt.l.d x13, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
fcvt.l.d x14, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fcvt.l.d x18, f28 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
fcvt.l.d x11, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
fcvt.l.d x2, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
fcvt.l.d x21, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fcvt.l.d x25, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
fcvt.l.d x26, f28 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fcvt.l.d x28, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fcvt.l.d x7, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
fcvt.l.d x31, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fcvt.l.d x20, f27 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
fcvt.l.d x23, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
fcvt.l.d x18, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fcvt.l.d x26, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fcvt.l.d x4, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f7, 0(x2) # load 0xfff8000000000000 from memory into f7
fcvt.l.d x11, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
fcvt.l.d x4, f3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
fcvt.l.d x12, f18 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f15, 0(x2) # load 0xfff0000000000001 from memory into f15
fcvt.l.d x20, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fcvt.l.d x28, f6 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fcvt.l.d x8, f28 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
fcvt.l.d x8, f30, dyn # perform operation
fcvt.l.d x8, f30, rdn # perform operation
fcvt.l.d x8, f30, rmm # perform operation
fcvt.l.d x8, f30, rne # perform operation
fcvt.l.d x8, f30, rtz # perform operation
fcvt.l.d x8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x8, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x8, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x8, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x8, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x8, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
fcvt.l.d x17, f24, dyn # perform operation
fcvt.l.d x17, f24, rdn # perform operation
fcvt.l.d x17, f24, rmm # perform operation
fcvt.l.d x17, f24, rne # perform operation
fcvt.l.d x17, f24, rtz # perform operation
fcvt.l.d x17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x17, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x17, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x17, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x17, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x17, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
fcvt.l.d x25, f14, dyn # perform operation
fcvt.l.d x25, f14, rdn # perform operation
fcvt.l.d x25, f14, rmm # perform operation
fcvt.l.d x25, f14, rne # perform operation
fcvt.l.d x25, f14, rtz # perform operation
fcvt.l.d x25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x25, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x25, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x25, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x25, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x25, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fcvt.l.d x29, f14, dyn # perform operation
fcvt.l.d x29, f14, rdn # perform operation
fcvt.l.d x29, f14, rmm # perform operation
fcvt.l.d x29, f14, rne # perform operation
fcvt.l.d x29, f14, rtz # perform operation
fcvt.l.d x29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x29, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x29, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x29, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x29, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x29, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
fcvt.l.d x17, f13, dyn # perform operation
fcvt.l.d x17, f13, rdn # perform operation
fcvt.l.d x17, f13, rmm # perform operation
fcvt.l.d x17, f13, rne # perform operation
fcvt.l.d x17, f13, rtz # perform operation
fcvt.l.d x17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x17, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x17, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x17, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x17, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x17, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fcvt.l.d x29, f25, dyn # perform operation
fcvt.l.d x29, f25, rdn # perform operation
fcvt.l.d x29, f25, rmm # perform operation
fcvt.l.d x29, f25, rne # perform operation
fcvt.l.d x29, f25, rtz # perform operation
fcvt.l.d x29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x29, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x29, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x29, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x29, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x29, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
fcvt.l.d x18, f3, dyn # perform operation
fcvt.l.d x18, f3, rdn # perform operation
fcvt.l.d x18, f3, rmm # perform operation
fcvt.l.d x18, f3, rne # perform operation
fcvt.l.d x18, f3, rtz # perform operation
fcvt.l.d x18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x18, f3 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x18, f3 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x18, f3 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x18, f3 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x18, f3 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
fcvt.l.d x23, f4, dyn # perform operation
fcvt.l.d x23, f4, rdn # perform operation
fcvt.l.d x23, f4, rmm # perform operation
fcvt.l.d x23, f4, rne # perform operation
fcvt.l.d x23, f4, rtz # perform operation
fcvt.l.d x23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x23, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x23, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x23, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x23, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x23, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
fcvt.l.d x6, f17, dyn # perform operation
fcvt.l.d x6, f17, rdn # perform operation
fcvt.l.d x6, f17, rmm # perform operation
fcvt.l.d x6, f17, rne # perform operation
fcvt.l.d x6, f17, rtz # perform operation
fcvt.l.d x6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x6, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x6, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x6, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x6, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x6, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
fcvt.l.d x28, f1, dyn # perform operation
fcvt.l.d x28, f1, rdn # perform operation
fcvt.l.d x28, f1, rmm # perform operation
fcvt.l.d x28, f1, rne # perform operation
fcvt.l.d x28, f1, rtz # perform operation
fcvt.l.d x28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x28, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x28, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x28, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x28, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x28, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
fcvt.l.d x1, f20, dyn # perform operation
fcvt.l.d x1, f20, rdn # perform operation
fcvt.l.d x1, f20, rmm # perform operation
fcvt.l.d x1, f20, rne # perform operation
fcvt.l.d x1, f20, rtz # perform operation
fcvt.l.d x1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x1, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x1, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x1, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x1, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x1, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
fcvt.l.d x27, f17, dyn # perform operation
fcvt.l.d x27, f17, rdn # perform operation
fcvt.l.d x27, f17, rmm # perform operation
fcvt.l.d x27, f17, rne # perform operation
fcvt.l.d x27, f17, rtz # perform operation
fcvt.l.d x27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x27, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x27, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x27, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x27, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x27, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
fcvt.l.d x22, f17, dyn # perform operation
fcvt.l.d x22, f17, rdn # perform operation
fcvt.l.d x22, f17, rmm # perform operation
fcvt.l.d x22, f17, rne # perform operation
fcvt.l.d x22, f17, rtz # perform operation
fcvt.l.d x22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x22, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x22, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x22, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x22, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x22, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
fcvt.l.d x20, f21, dyn # perform operation
fcvt.l.d x20, f21, rdn # perform operation
fcvt.l.d x20, f21, rmm # perform operation
fcvt.l.d x20, f21, rne # perform operation
fcvt.l.d x20, f21, rtz # perform operation
fcvt.l.d x20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x20, f21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x20, f21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x20, f21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x20, f21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x20, f21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
fcvt.l.d x8, f20, dyn # perform operation
fcvt.l.d x8, f20, rdn # perform operation
fcvt.l.d x8, f20, rmm # perform operation
fcvt.l.d x8, f20, rne # perform operation
fcvt.l.d x8, f20, rtz # perform operation
fcvt.l.d x8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x8, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x8, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x8, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x8, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x8, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
fcvt.l.d x10, f24, dyn # perform operation
fcvt.l.d x10, f24, rdn # perform operation
fcvt.l.d x10, f24, rmm # perform operation
fcvt.l.d x10, f24, rne # perform operation
fcvt.l.d x10, f24, rtz # perform operation
fcvt.l.d x10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x10, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x10, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x10, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x10, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x10, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
fcvt.l.d x15, f25, dyn # perform operation
fcvt.l.d x15, f25, rdn # perform operation
fcvt.l.d x15, f25, rmm # perform operation
fcvt.l.d x15, f25, rne # perform operation
fcvt.l.d x15, f25, rtz # perform operation
fcvt.l.d x15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x15, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x15, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x15, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x15, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x15, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
fcvt.l.d x12, f9, dyn # perform operation
fcvt.l.d x12, f9, rdn # perform operation
fcvt.l.d x12, f9, rmm # perform operation
fcvt.l.d x12, f9, rne # perform operation
fcvt.l.d x12, f9, rtz # perform operation
fcvt.l.d x12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x12, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x12, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x12, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x12, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x12, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
fcvt.l.d x14, f12, dyn # perform operation
fcvt.l.d x14, f12, rdn # perform operation
fcvt.l.d x14, f12, rmm # perform operation
fcvt.l.d x14, f12, rne # perform operation
fcvt.l.d x14, f12, rtz # perform operation
fcvt.l.d x14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x14, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x14, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x14, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x14, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x14, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
fcvt.l.d x24, f13, dyn # perform operation
fcvt.l.d x24, f13, rdn # perform operation
fcvt.l.d x24, f13, rmm # perform operation
fcvt.l.d x24, f13, rne # perform operation
fcvt.l.d x24, f13, rtz # perform operation
fcvt.l.d x24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x24, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x24, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x24, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x24, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x24, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fcvt.l.d x16, f12, dyn # perform operation
fcvt.l.d x16, f12, rdn # perform operation
fcvt.l.d x16, f12, rmm # perform operation
fcvt.l.d x16, f12, rne # perform operation
fcvt.l.d x16, f12, rtz # perform operation
fcvt.l.d x16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x16, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x16, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x16, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x16, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x16, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fcvt.l.d x17, f30, dyn # perform operation
fcvt.l.d x17, f30, rdn # perform operation
fcvt.l.d x17, f30, rmm # perform operation
fcvt.l.d x17, f30, rne # perform operation
fcvt.l.d x17, f30, rtz # perform operation
fcvt.l.d x17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x17, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x17, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x17, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x17, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x17, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f31, 0(x2) # load 0xfff8000000000000 from memory into f31
fcvt.l.d x28, f31, dyn # perform operation
fcvt.l.d x28, f31, rdn # perform operation
fcvt.l.d x28, f31, rmm # perform operation
fcvt.l.d x28, f31, rne # perform operation
fcvt.l.d x28, f31, rtz # perform operation
fcvt.l.d x28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x28, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x28, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x28, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x28, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x28, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
fcvt.l.d x11, f22, dyn # perform operation
fcvt.l.d x11, f22, rdn # perform operation
fcvt.l.d x11, f22, rmm # perform operation
fcvt.l.d x11, f22, rne # perform operation
fcvt.l.d x11, f22, rtz # perform operation
fcvt.l.d x11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x11, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x11, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x11, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x11, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x11, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fcvt.l.d x2, f13, dyn # perform operation
fcvt.l.d x2, f13, rdn # perform operation
fcvt.l.d x2, f13, rmm # perform operation
fcvt.l.d x2, f13, rne # perform operation
fcvt.l.d x2, f13, rtz # perform operation
fcvt.l.d x2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x2, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x2, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x2, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x2, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x2, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f20, 0(x2) # load 0xfff0000000000001 from memory into f20
fcvt.l.d x3, f20, dyn # perform operation
fcvt.l.d x3, f20, rdn # perform operation
fcvt.l.d x3, f20, rmm # perform operation
fcvt.l.d x3, f20, rne # perform operation
fcvt.l.d x3, f20, rtz # perform operation
fcvt.l.d x3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x3, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x3, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x3, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x3, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x3, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fcvt.l.d x26, f1, dyn # perform operation
fcvt.l.d x26, f1, rdn # perform operation
fcvt.l.d x26, f1, rmm # perform operation
fcvt.l.d x26, f1, rne # perform operation
fcvt.l.d x26, f1, rtz # perform operation
fcvt.l.d x26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x26, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x26, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x26, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1792)
addi x5, x5, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x26, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x26, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fcvt.l.d x11, f8, dyn # perform operation
fcvt.l.d x11, f8, rdn # perform operation
fcvt.l.d x11, f8, rmm # perform operation
fcvt.l.d x11, f8, rne # perform operation
fcvt.l.d x11, f8, rtz # perform operation
fcvt.l.d x11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x11, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x11, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x11, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x11, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x11, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0x81f615db23644540 # load x3 with value 0x81f615db23644540
sd x3, 0(x2) # store 0x81f615db23644540 in memory
fld f17, 0(x2) # load 0x81f615db23644540 from memory into f17
fcvt.l.d x7, f17, dyn # perform operation
fcvt.l.d x7, f17, rdn # perform operation
fcvt.l.d x7, f17, rmm # perform operation
fcvt.l.d x7, f17, rne # perform operation
fcvt.l.d x7, f17, rtz # perform operation
fcvt.l.d x7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x7, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x7, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x7, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x7, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x7, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 88)


.EQU SIGSIZE,1896


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
