///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.w.d.S
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
li x3, 0xe9ce5fac96b306d9 # load x3 with value 0xe9ce5fac96b306d9
sd x3, 0(x2) # store 0xe9ce5fac96b306d9 in memory
fld f17, 0(x2) # load 0xe9ce5fac96b306d9 from memory into f17
fcvt.w.d x0, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xa711a4ffc605389a # load x3 with value 0xa711a4ffc605389a
sd x3, 0(x2) # store 0xa711a4ffc605389a in memory
fld f23, 0(x2) # load 0xa711a4ffc605389a from memory into f23
fcvt.w.d x1, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x384d6a0e328c7c73 # load x3 with value 0x384d6a0e328c7c73
sd x3, 0(x2) # store 0x384d6a0e328c7c73 in memory
fld f24, 0(x2) # load 0x384d6a0e328c7c73 from memory into f24
fcvt.w.d x2, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x899979402c3e4b2d # load x3 with value 0x899979402c3e4b2d
sd x3, 0(x2) # store 0x899979402c3e4b2d in memory
fld f27, 0(x2) # load 0x899979402c3e4b2d from memory into f27
fcvt.w.d x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xadfabaef6df7c207 # load x3 with value 0xadfabaef6df7c207
sd x3, 0(x2) # store 0xadfabaef6df7c207 in memory
fld f27, 0(x2) # load 0xadfabaef6df7c207 from memory into f27
fcvt.w.d x4, f27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x16fbfbafdcc06ad3 # load x3 with value 0x16fbfbafdcc06ad3
sd x3, 0(x2) # store 0x16fbfbafdcc06ad3 in memory
fld f6, 0(x2) # load 0x16fbfbafdcc06ad3 from memory into f6
fcvt.w.d x5, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
la x2, scratch
li x3, 0x1b3dbe0ae4d69eb4 # load x3 with value 0x1b3dbe0ae4d69eb4
sd x3, 0(x2) # store 0x1b3dbe0ae4d69eb4 in memory
fld f17, 0(x2) # load 0x1b3dbe0ae4d69eb4 from memory into f17
fcvt.w.d x6, f17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbcb23ca721796db9 # load x3 with value 0xbcb23ca721796db9
sd x3, 0(x2) # store 0xbcb23ca721796db9 in memory
fld f3, 0(x2) # load 0xbcb23ca721796db9 from memory into f3
fcvt.w.d x7, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x21e4c89a65e709c2 # load x3 with value 0x21e4c89a65e709c2
sd x3, 0(x2) # store 0x21e4c89a65e709c2 in memory
fld f29, 0(x2) # load 0x21e4c89a65e709c2 from memory into f29
fcvt.w.d x8, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xc7e1645cb2967dd5 # load x3 with value 0xc7e1645cb2967dd5
sd x3, 0(x2) # store 0xc7e1645cb2967dd5 in memory
fld f9, 0(x2) # load 0xc7e1645cb2967dd5 from memory into f9
fcvt.w.d x9, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x0105301215d04976 # load x3 with value 0x0105301215d04976
sd x3, 0(x2) # store 0x0105301215d04976 in memory
fld f26, 0(x2) # load 0x0105301215d04976 from memory into f26
fcvt.w.d x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xa0093d0a2620bb27 # load x3 with value 0xa0093d0a2620bb27
sd x3, 0(x2) # store 0xa0093d0a2620bb27 in memory
fld f12, 0(x2) # load 0xa0093d0a2620bb27 from memory into f12
fcvt.w.d x11, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x6fb4285c7113f901 # load x3 with value 0x6fb4285c7113f901
sd x3, 0(x2) # store 0x6fb4285c7113f901 in memory
fld f9, 0(x2) # load 0x6fb4285c7113f901 from memory into f9
fcvt.w.d x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xd5a6cc31e458651b # load x3 with value 0xd5a6cc31e458651b
sd x3, 0(x2) # store 0xd5a6cc31e458651b in memory
fld f20, 0(x2) # load 0xd5a6cc31e458651b from memory into f20
fcvt.w.d x13, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0xaaa42c2827cf25bd # load x3 with value 0xaaa42c2827cf25bd
sd x3, 0(x2) # store 0xaaa42c2827cf25bd in memory
fld f6, 0(x2) # load 0xaaa42c2827cf25bd from memory into f6
fcvt.w.d x14, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x94abd6b6c76d894d # load x3 with value 0x94abd6b6c76d894d
sd x3, 0(x2) # store 0x94abd6b6c76d894d in memory
fld f1, 0(x2) # load 0x94abd6b6c76d894d from memory into f1
fcvt.w.d x15, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x77f91140e53109b9 # load x3 with value 0x77f91140e53109b9
sd x3, 0(x2) # store 0x77f91140e53109b9 in memory
fld f17, 0(x2) # load 0x77f91140e53109b9 from memory into f17
fcvt.w.d x16, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x520e3bf0515d6332 # load x3 with value 0x520e3bf0515d6332
sd x3, 0(x2) # store 0x520e3bf0515d6332 in memory
fld f24, 0(x2) # load 0x520e3bf0515d6332 from memory into f24
fcvt.w.d x17, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x7d756fda1997eaf3 # load x3 with value 0x7d756fda1997eaf3
sd x3, 0(x2) # store 0x7d756fda1997eaf3 in memory
fld f22, 0(x2) # load 0x7d756fda1997eaf3 from memory into f22
fcvt.w.d x18, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x144a99b64c98400d # load x3 with value 0x144a99b64c98400d
sd x3, 0(x2) # store 0x144a99b64c98400d in memory
fld f8, 0(x2) # load 0x144a99b64c98400d from memory into f8
fcvt.w.d x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0xf56c496e0db5c577 # load x3 with value 0xf56c496e0db5c577
sd x3, 0(x2) # store 0xf56c496e0db5c577 in memory
fld f2, 0(x2) # load 0xf56c496e0db5c577 from memory into f2
fcvt.w.d x20, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x20dc1ca6c07d48fe # load x3 with value 0x20dc1ca6c07d48fe
sd x3, 0(x2) # store 0x20dc1ca6c07d48fe in memory
fld f8, 0(x2) # load 0x20dc1ca6c07d48fe from memory into f8
fcvt.w.d x21, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x7485061e69cb38da # load x3 with value 0x7485061e69cb38da
sd x3, 0(x2) # store 0x7485061e69cb38da in memory
fld f3, 0(x2) # load 0x7485061e69cb38da from memory into f3
fcvt.w.d x22, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x28cf26e7ef443e42 # load x3 with value 0x28cf26e7ef443e42
sd x3, 0(x2) # store 0x28cf26e7ef443e42 in memory
fld f22, 0(x2) # load 0x28cf26e7ef443e42 from memory into f22
fcvt.w.d x23, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x4db333110d3f18b8 # load x3 with value 0x4db333110d3f18b8
sd x3, 0(x2) # store 0x4db333110d3f18b8 in memory
fld f2, 0(x2) # load 0x4db333110d3f18b8 from memory into f2
fcvt.w.d x24, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0xd6a0179cf3832bfd # load x3 with value 0xd6a0179cf3832bfd
sd x3, 0(x2) # store 0xd6a0179cf3832bfd in memory
fld f18, 0(x2) # load 0xd6a0179cf3832bfd from memory into f18
fcvt.w.d x25, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xd9fe2f9d7b1d6261 # load x3 with value 0xd9fe2f9d7b1d6261
sd x3, 0(x2) # store 0xd9fe2f9d7b1d6261 in memory
fld f30, 0(x2) # load 0xd9fe2f9d7b1d6261 from memory into f30
fcvt.w.d x26, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x787d4ab9c3a544e0 # load x3 with value 0x787d4ab9c3a544e0
sd x3, 0(x2) # store 0x787d4ab9c3a544e0 in memory
fld f7, 0(x2) # load 0x787d4ab9c3a544e0 from memory into f7
fcvt.w.d x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x7cebae6bf2c7d60b # load x3 with value 0x7cebae6bf2c7d60b
sd x3, 0(x2) # store 0x7cebae6bf2c7d60b in memory
fld f8, 0(x2) # load 0x7cebae6bf2c7d60b from memory into f8
fcvt.w.d x28, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x776b364bf96376ae # load x3 with value 0x776b364bf96376ae
sd x3, 0(x2) # store 0x776b364bf96376ae in memory
fld f23, 0(x2) # load 0x776b364bf96376ae from memory into f23
fcvt.w.d x29, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x08caa84ad153dec8 # load x3 with value 0x08caa84ad153dec8
sd x3, 0(x2) # store 0x08caa84ad153dec8 in memory
fld f12, 0(x2) # load 0x08caa84ad153dec8 from memory into f12
fcvt.w.d x30, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xb11e58fa1d4b4fb8 # load x3 with value 0xb11e58fa1d4b4fb8
sd x3, 0(x2) # store 0xb11e58fa1d4b4fb8 in memory
fld f1, 0(x2) # load 0xb11e58fa1d4b4fb8 from memory into f1
fcvt.w.d x31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x24, x6 # perform first operation
fcvt.w.d x29, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x15, x9 # perform first operation
fcvt.w.d x14, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x20, x13 # perform first operation
fcvt.w.d x24, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f28, f20, f19 # perform first operation
fcvt.w.d x23, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x19, x24 # perform first operation
fcvt.w.d x24, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x16, x8 # perform first operation
fcvt.w.d x16, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x21, x25 # perform first operation
fcvt.w.d x9, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x18, x1 # perform first operation
fcvt.w.d x25, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x21, x7 # perform first operation
fcvt.w.d x24, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x29, x17 # perform first operation
fcvt.w.d x26, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x9, x18 # perform first operation
fcvt.w.d x25, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x16, x15 # perform first operation
fcvt.w.d x28, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x5, x30 # perform first operation
fcvt.w.d x5, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x30, x6 # perform first operation
fcvt.w.d x6, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x20, x15 # perform first operation
fcvt.w.d x19, f7 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xf0860b362edd02bb # load x3 with value 0xf0860b362edd02bb
sd x3, 0(x2) # store 0xf0860b362edd02bb in memory
fld f0, 0(x2) # load 0xf0860b362edd02bb from memory into f0
fcvt.w.d x11, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x2b75afb7b15e140a # load x3 with value 0x2b75afb7b15e140a
sd x3, 0(x2) # store 0x2b75afb7b15e140a in memory
fld f1, 0(x2) # load 0x2b75afb7b15e140a from memory into f1
fcvt.w.d x30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xc50da1b135af47d5 # load x3 with value 0xc50da1b135af47d5
sd x3, 0(x2) # store 0xc50da1b135af47d5 in memory
fld f2, 0(x2) # load 0xc50da1b135af47d5 from memory into f2
fcvt.w.d x9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x4cd20893e447f7c6 # load x3 with value 0x4cd20893e447f7c6
sd x3, 0(x2) # store 0x4cd20893e447f7c6 in memory
fld f3, 0(x2) # load 0x4cd20893e447f7c6 from memory into f3
fcvt.w.d x15, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe5e7e38897224a21 # load x3 with value 0xe5e7e38897224a21
sd x3, 0(x2) # store 0xe5e7e38897224a21 in memory
fld f4, 0(x2) # load 0xe5e7e38897224a21 from memory into f4
fcvt.w.d x15, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9e882ac5b4a05c6d # load x3 with value 0x9e882ac5b4a05c6d
sd x3, 0(x2) # store 0x9e882ac5b4a05c6d in memory
fld f5, 0(x2) # load 0x9e882ac5b4a05c6d from memory into f5
fcvt.w.d x19, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1e65e3ee07c126cd # load x3 with value 0x1e65e3ee07c126cd
sd x3, 0(x2) # store 0x1e65e3ee07c126cd in memory
fld f6, 0(x2) # load 0x1e65e3ee07c126cd from memory into f6
fcvt.w.d x29, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xde23a249edb20828 # load x3 with value 0xde23a249edb20828
sd x3, 0(x2) # store 0xde23a249edb20828 in memory
fld f7, 0(x2) # load 0xde23a249edb20828 from memory into f7
fcvt.w.d x26, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x7d705d7f60a9e6fe # load x3 with value 0x7d705d7f60a9e6fe
sd x3, 0(x2) # store 0x7d705d7f60a9e6fe in memory
fld f8, 0(x2) # load 0x7d705d7f60a9e6fe from memory into f8
fcvt.w.d x25, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xcdbcb2a396136a9e # load x3 with value 0xcdbcb2a396136a9e
sd x3, 0(x2) # store 0xcdbcb2a396136a9e in memory
fld f9, 0(x2) # load 0xcdbcb2a396136a9e from memory into f9
fcvt.w.d x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x918a4f4c42d310bb # load x3 with value 0x918a4f4c42d310bb
sd x3, 0(x2) # store 0x918a4f4c42d310bb in memory
fld f10, 0(x2) # load 0x918a4f4c42d310bb from memory into f10
fcvt.w.d x15, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xa2dd5b1b07d447a5 # load x3 with value 0xa2dd5b1b07d447a5
sd x3, 0(x2) # store 0xa2dd5b1b07d447a5 in memory
fld f11, 0(x2) # load 0xa2dd5b1b07d447a5 from memory into f11
fcvt.w.d x10, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xa4d23d6b5661f7be # load x3 with value 0xa4d23d6b5661f7be
sd x3, 0(x2) # store 0xa4d23d6b5661f7be in memory
fld f12, 0(x2) # load 0xa4d23d6b5661f7be from memory into f12
fcvt.w.d x16, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xe3625984a6727baa # load x3 with value 0xe3625984a6727baa
sd x3, 0(x2) # store 0xe3625984a6727baa in memory
fld f13, 0(x2) # load 0xe3625984a6727baa from memory into f13
fcvt.w.d x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x19746cdf74b0ffd5 # load x3 with value 0x19746cdf74b0ffd5
sd x3, 0(x2) # store 0x19746cdf74b0ffd5 in memory
fld f14, 0(x2) # load 0x19746cdf74b0ffd5 from memory into f14
fcvt.w.d x20, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x9e46bc71b6c0452a # load x3 with value 0x9e46bc71b6c0452a
sd x3, 0(x2) # store 0x9e46bc71b6c0452a in memory
fld f15, 0(x2) # load 0x9e46bc71b6c0452a from memory into f15
fcvt.w.d x15, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xc64e340854b52f0d # load x3 with value 0xc64e340854b52f0d
sd x3, 0(x2) # store 0xc64e340854b52f0d in memory
fld f16, 0(x2) # load 0xc64e340854b52f0d from memory into f16
fcvt.w.d x12, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xc7f9128eb938332e # load x3 with value 0xc7f9128eb938332e
sd x3, 0(x2) # store 0xc7f9128eb938332e in memory
fld f17, 0(x2) # load 0xc7f9128eb938332e from memory into f17
fcvt.w.d x7, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x16dd142b4765648c # load x3 with value 0x16dd142b4765648c
sd x3, 0(x2) # store 0x16dd142b4765648c in memory
fld f18, 0(x2) # load 0x16dd142b4765648c from memory into f18
fcvt.w.d x23, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xa6a6fc7c7cc4bec7 # load x3 with value 0xa6a6fc7c7cc4bec7
sd x3, 0(x2) # store 0xa6a6fc7c7cc4bec7 in memory
fld f19, 0(x2) # load 0xa6a6fc7c7cc4bec7 from memory into f19
fcvt.w.d x10, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x89070062e6cdb4b2 # load x3 with value 0x89070062e6cdb4b2
sd x3, 0(x2) # store 0x89070062e6cdb4b2 in memory
fld f20, 0(x2) # load 0x89070062e6cdb4b2 from memory into f20
fcvt.w.d x31, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x48112988789ec32c # load x3 with value 0x48112988789ec32c
sd x3, 0(x2) # store 0x48112988789ec32c in memory
fld f21, 0(x2) # load 0x48112988789ec32c from memory into f21
fcvt.w.d x19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xd0fb9ae1e4825cdf # load x3 with value 0xd0fb9ae1e4825cdf
sd x3, 0(x2) # store 0xd0fb9ae1e4825cdf in memory
fld f22, 0(x2) # load 0xd0fb9ae1e4825cdf from memory into f22
fcvt.w.d x20, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x6553c1580f7526e5 # load x3 with value 0x6553c1580f7526e5
sd x3, 0(x2) # store 0x6553c1580f7526e5 in memory
fld f23, 0(x2) # load 0x6553c1580f7526e5 from memory into f23
fcvt.w.d x30, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xb85b3c52d01524be # load x3 with value 0xb85b3c52d01524be
sd x3, 0(x2) # store 0xb85b3c52d01524be in memory
fld f24, 0(x2) # load 0xb85b3c52d01524be from memory into f24
fcvt.w.d x3, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xa5e26ad2b9994c34 # load x3 with value 0xa5e26ad2b9994c34
sd x3, 0(x2) # store 0xa5e26ad2b9994c34 in memory
fld f25, 0(x2) # load 0xa5e26ad2b9994c34 from memory into f25
fcvt.w.d x17, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x280c3c11617c5bd0 # load x3 with value 0x280c3c11617c5bd0
sd x3, 0(x2) # store 0x280c3c11617c5bd0 in memory
fld f26, 0(x2) # load 0x280c3c11617c5bd0 from memory into f26
fcvt.w.d x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x3c47c97c48d75c16 # load x3 with value 0x3c47c97c48d75c16
sd x3, 0(x2) # store 0x3c47c97c48d75c16 in memory
fld f27, 0(x2) # load 0x3c47c97c48d75c16 from memory into f27
fcvt.w.d x20, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x9792a227952698f1 # load x3 with value 0x9792a227952698f1
sd x3, 0(x2) # store 0x9792a227952698f1 in memory
fld f28, 0(x2) # load 0x9792a227952698f1 from memory into f28
fcvt.w.d x19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x95ccd46eb613c371 # load x3 with value 0x95ccd46eb613c371
sd x3, 0(x2) # store 0x95ccd46eb613c371 in memory
fld f29, 0(x2) # load 0x95ccd46eb613c371 from memory into f29
fcvt.w.d x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x5aece447e2227ad7 # load x3 with value 0x5aece447e2227ad7
sd x3, 0(x2) # store 0x5aece447e2227ad7 in memory
fld f30, 0(x2) # load 0x5aece447e2227ad7 from memory into f30
fcvt.w.d x2, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x3a599b029b75103d # load x3 with value 0x3a599b029b75103d
sd x3, 0(x2) # store 0x3a599b029b75103d in memory
fld f31, 0(x2) # load 0x3a599b029b75103d from memory into f31
fcvt.w.d x24, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
fcvt.w.d x23, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fcvt.w.d x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
fcvt.w.d x19, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
fcvt.w.d x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
fcvt.w.d x24, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fcvt.w.d x24, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
fcvt.w.d x30, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
fcvt.w.d x7, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
fcvt.w.d x2, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fcvt.w.d x5, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fcvt.w.d x28, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
fcvt.w.d x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
fcvt.w.d x12, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
fcvt.w.d x15, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
fcvt.w.d x12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
fcvt.w.d x5, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fcvt.w.d x2, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fcvt.w.d x19, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fcvt.w.d x14, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fcvt.w.d x11, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
fcvt.w.d x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fcvt.w.d x13, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f11, 0(x2) # load 0xfff8000000000000 from memory into f11
fcvt.w.d x22, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fcvt.w.d x18, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fcvt.w.d x26, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f30, 0(x2) # load 0xfff0000000000001 from memory into f30
fcvt.w.d x7, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fcvt.w.d x9, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
fcvt.w.d x15, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
fcvt.w.d x9, f20, dyn # perform operation
fcvt.w.d x9, f20, rdn # perform operation
fcvt.w.d x9, f20, rmm # perform operation
fcvt.w.d x9, f20, rne # perform operation
fcvt.w.d x9, f20, rtz # perform operation
fcvt.w.d x9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x9, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x9, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x9, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x9, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x9, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fcvt.w.d x6, f8, dyn # perform operation
fcvt.w.d x6, f8, rdn # perform operation
fcvt.w.d x6, f8, rmm # perform operation
fcvt.w.d x6, f8, rne # perform operation
fcvt.w.d x6, f8, rtz # perform operation
fcvt.w.d x6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x6, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x6, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x6, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x6, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x6, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fcvt.w.d x24, f13, dyn # perform operation
fcvt.w.d x24, f13, rdn # perform operation
fcvt.w.d x24, f13, rmm # perform operation
fcvt.w.d x24, f13, rne # perform operation
fcvt.w.d x24, f13, rtz # perform operation
fcvt.w.d x24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
fcvt.w.d x8, f31, dyn # perform operation
fcvt.w.d x8, f31, rdn # perform operation
fcvt.w.d x8, f31, rmm # perform operation
fcvt.w.d x8, f31, rne # perform operation
fcvt.w.d x8, f31, rtz # perform operation
fcvt.w.d x8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
fcvt.w.d x27, f6, dyn # perform operation
fcvt.w.d x27, f6, rdn # perform operation
fcvt.w.d x27, f6, rmm # perform operation
fcvt.w.d x27, f6, rne # perform operation
fcvt.w.d x27, f6, rtz # perform operation
fcvt.w.d x27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x27, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x27, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x27, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x27, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x27, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fcvt.w.d x23, f25, dyn # perform operation
fcvt.w.d x23, f25, rdn # perform operation
fcvt.w.d x23, f25, rmm # perform operation
fcvt.w.d x23, f25, rne # perform operation
fcvt.w.d x23, f25, rtz # perform operation
fcvt.w.d x23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
fcvt.w.d x28, f14, dyn # perform operation
fcvt.w.d x28, f14, rdn # perform operation
fcvt.w.d x28, f14, rmm # perform operation
fcvt.w.d x28, f14, rne # perform operation
fcvt.w.d x28, f14, rtz # perform operation
fcvt.w.d x28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
fcvt.w.d x13, f5, dyn # perform operation
fcvt.w.d x13, f5, rdn # perform operation
fcvt.w.d x13, f5, rmm # perform operation
fcvt.w.d x13, f5, rne # perform operation
fcvt.w.d x13, f5, rtz # perform operation
fcvt.w.d x13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
fcvt.w.d x16, f29, dyn # perform operation
fcvt.w.d x16, f29, rdn # perform operation
fcvt.w.d x16, f29, rmm # perform operation
fcvt.w.d x16, f29, rne # perform operation
fcvt.w.d x16, f29, rtz # perform operation
fcvt.w.d x16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x16, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x16, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x16, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x16, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x16, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
fcvt.w.d x21, f15, dyn # perform operation
fcvt.w.d x21, f15, rdn # perform operation
fcvt.w.d x21, f15, rmm # perform operation
fcvt.w.d x21, f15, rne # perform operation
fcvt.w.d x21, f15, rtz # perform operation
fcvt.w.d x21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fcvt.w.d x2, f8, dyn # perform operation
fcvt.w.d x2, f8, rdn # perform operation
fcvt.w.d x2, f8, rmm # perform operation
fcvt.w.d x2, f8, rne # perform operation
fcvt.w.d x2, f8, rtz # perform operation
fcvt.w.d x2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f23, 0(x2) # load 0xffefffffffffffff from memory into f23
fcvt.w.d x15, f23, dyn # perform operation
fcvt.w.d x15, f23, rdn # perform operation
fcvt.w.d x15, f23, rmm # perform operation
fcvt.w.d x15, f23, rne # perform operation
fcvt.w.d x15, f23, rtz # perform operation
fcvt.w.d x15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x15, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x15, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x15, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x15, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x15, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
fcvt.w.d x19, f15, dyn # perform operation
fcvt.w.d x19, f15, rdn # perform operation
fcvt.w.d x19, f15, rmm # perform operation
fcvt.w.d x19, f15, rne # perform operation
fcvt.w.d x19, f15, rtz # perform operation
fcvt.w.d x19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
fcvt.w.d x22, f10, dyn # perform operation
fcvt.w.d x22, f10, rdn # perform operation
fcvt.w.d x22, f10, rmm # perform operation
fcvt.w.d x22, f10, rne # perform operation
fcvt.w.d x22, f10, rtz # perform operation
fcvt.w.d x22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
fcvt.w.d x22, f2, dyn # perform operation
fcvt.w.d x22, f2, rdn # perform operation
fcvt.w.d x22, f2, rmm # perform operation
fcvt.w.d x22, f2, rne # perform operation
fcvt.w.d x22, f2, rtz # perform operation
fcvt.w.d x22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x22, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x22, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x22, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x22, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x22, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
fcvt.w.d x20, f23, dyn # perform operation
fcvt.w.d x20, f23, rdn # perform operation
fcvt.w.d x20, f23, rmm # perform operation
fcvt.w.d x20, f23, rne # perform operation
fcvt.w.d x20, f23, rtz # perform operation
fcvt.w.d x20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x20, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x20, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x20, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x20, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x20, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
fcvt.w.d x21, f24, dyn # perform operation
fcvt.w.d x21, f24, rdn # perform operation
fcvt.w.d x21, f24, rmm # perform operation
fcvt.w.d x21, f24, rne # perform operation
fcvt.w.d x21, f24, rtz # perform operation
fcvt.w.d x21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fcvt.w.d x22, f31, dyn # perform operation
fcvt.w.d x22, f31, rdn # perform operation
fcvt.w.d x22, f31, rmm # perform operation
fcvt.w.d x22, f31, rne # perform operation
fcvt.w.d x22, f31, rtz # perform operation
fcvt.w.d x22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x22, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x22, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x22, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x22, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x22, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f23, 0(x2) # load 0x7ff0000000000000 from memory into f23
fcvt.w.d x17, f23, dyn # perform operation
fcvt.w.d x17, f23, rdn # perform operation
fcvt.w.d x17, f23, rmm # perform operation
fcvt.w.d x17, f23, rne # perform operation
fcvt.w.d x17, f23, rtz # perform operation
fcvt.w.d x17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fcvt.w.d x30, f5, dyn # perform operation
fcvt.w.d x30, f5, rdn # perform operation
fcvt.w.d x30, f5, rmm # perform operation
fcvt.w.d x30, f5, rne # perform operation
fcvt.w.d x30, f5, rtz # perform operation
fcvt.w.d x30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x30, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x30, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x30, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x30, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x30, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fcvt.w.d x28, f1, dyn # perform operation
fcvt.w.d x28, f1, rdn # perform operation
fcvt.w.d x28, f1, rmm # perform operation
fcvt.w.d x28, f1, rne # perform operation
fcvt.w.d x28, f1, rtz # perform operation
fcvt.w.d x28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x28, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x28, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x28, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x28, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x28, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fcvt.w.d x25, f30, dyn # perform operation
fcvt.w.d x25, f30, rdn # perform operation
fcvt.w.d x25, f30, rmm # perform operation
fcvt.w.d x25, f30, rne # perform operation
fcvt.w.d x25, f30, rtz # perform operation
fcvt.w.d x25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x25, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x25, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x25, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x25, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x25, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f24, 0(x2) # load 0xfff8000000000000 from memory into f24
fcvt.w.d x20, f24, dyn # perform operation
fcvt.w.d x20, f24, rdn # perform operation
fcvt.w.d x20, f24, rmm # perform operation
fcvt.w.d x20, f24, rne # perform operation
fcvt.w.d x20, f24, rtz # perform operation
fcvt.w.d x20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x20, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x20, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x20, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x20, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x20, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fcvt.w.d x5, f2, dyn # perform operation
fcvt.w.d x5, f2, rdn # perform operation
fcvt.w.d x5, f2, rmm # perform operation
fcvt.w.d x5, f2, rne # perform operation
fcvt.w.d x5, f2, rtz # perform operation
fcvt.w.d x5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fcvt.w.d x31, f13, dyn # perform operation
fcvt.w.d x31, f13, rdn # perform operation
fcvt.w.d x31, f13, rmm # perform operation
fcvt.w.d x31, f13, rne # perform operation
fcvt.w.d x31, f13, rtz # perform operation
fcvt.w.d x31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x31, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x31, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x31, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x31, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x31, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f23, 0(x2) # load 0xfff0000000000001 from memory into f23
fcvt.w.d x9, f23, dyn # perform operation
fcvt.w.d x9, f23, rdn # perform operation
fcvt.w.d x9, f23, rmm # perform operation
fcvt.w.d x9, f23, rne # perform operation
fcvt.w.d x9, f23, rtz # perform operation
fcvt.w.d x9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fcvt.w.d x17, f21, dyn # perform operation
fcvt.w.d x17, f21, rdn # perform operation
fcvt.w.d x17, f21, rmm # perform operation
fcvt.w.d x17, f21, rne # perform operation
fcvt.w.d x17, f21, rtz # perform operation
fcvt.w.d x17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fcvt.w.d x5, f3, dyn # perform operation
fcvt.w.d x5, f3, rdn # perform operation
fcvt.w.d x5, f3, rmm # perform operation
fcvt.w.d x5, f3, rne # perform operation
fcvt.w.d x5, f3, rtz # perform operation
fcvt.w.d x5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x5, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x5, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x5, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x5, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x5, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0x3ed8df54f8f897be # load x3 with value 0x3ed8df54f8f897be
sd x3, 0(x2) # store 0x3ed8df54f8f897be in memory
fld f28, 0(x2) # load 0x3ed8df54f8f897be from memory into f28
fcvt.w.d x3, f28, dyn # perform operation
fcvt.w.d x3, f28, rdn # perform operation
fcvt.w.d x3, f28, rmm # perform operation
fcvt.w.d x3, f28, rne # perform operation
fcvt.w.d x3, f28, rtz # perform operation
fcvt.w.d x3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)


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
