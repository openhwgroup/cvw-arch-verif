///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fcvt.wu.s.S
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
li x3, 0xf186e4c5 # load x3 with value 0xf186e4c5
sw x3, 0(x2) # store 0xf186e4c5 in memory
flw f24, 0(x2) # load 0xf186e4c5 from memory into f24
fcvt.wu.s x0, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x191c0f14 # load x3 with value 0x191c0f14
sw x3, 0(x2) # store 0x191c0f14 in memory
flw f16, 0(x2) # load 0x191c0f14 from memory into f16
fcvt.wu.s x1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x8e3172f2 # load x3 with value 0x8e3172f2
sw x3, 0(x2) # store 0x8e3172f2 in memory
flw f8, 0(x2) # load 0x8e3172f2 from memory into f8
fcvt.wu.s x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xac92cab5 # load x3 with value 0xac92cab5
sw x3, 0(x2) # store 0xac92cab5 in memory
flw f19, 0(x2) # load 0xac92cab5 from memory into f19
fcvt.wu.s x3, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x180f1dcc # load x3 with value 0x180f1dcc
sw x3, 0(x2) # store 0x180f1dcc in memory
flw f25, 0(x2) # load 0x180f1dcc from memory into f25
fcvt.wu.s x4, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe1fcb153 # load x3 with value 0xe1fcb153
sw x3, 0(x2) # store 0xe1fcb153 in memory
flw f30, 0(x2) # load 0xe1fcb153 from memory into f30
fcvt.wu.s x5, f30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe6449eec # load x3 with value 0xe6449eec
sw x3, 0(x2) # store 0xe6449eec in memory
flw f20, 0(x2) # load 0xe6449eec from memory into f20
fcvt.wu.s x6, f20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x0a373eb9 # load x3 with value 0x0a373eb9
sw x3, 0(x2) # store 0x0a373eb9 in memory
flw f31, 0(x2) # load 0x0a373eb9 from memory into f31
fcvt.wu.s x7, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x32ea2db8 # load x3 with value 0x32ea2db8
sw x3, 0(x2) # store 0x32ea2db8 in memory
flw f15, 0(x2) # load 0x32ea2db8 from memory into f15
fcvt.wu.s x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x0477eebb # load x3 with value 0x0477eebb
sw x3, 0(x2) # store 0x0477eebb in memory
flw f11, 0(x2) # load 0x0477eebb from memory into f11
fcvt.wu.s x9, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x6d14f466 # load x3 with value 0x6d14f466
sw x3, 0(x2) # store 0x6d14f466 in memory
flw f12, 0(x2) # load 0x6d14f466 from memory into f12
fcvt.wu.s x10, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x3d7dde53 # load x3 with value 0x3d7dde53
sw x3, 0(x2) # store 0x3d7dde53 in memory
flw f23, 0(x2) # load 0x3d7dde53 from memory into f23
fcvt.wu.s x11, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x14800478 # load x3 with value 0x14800478
sw x3, 0(x2) # store 0x14800478 in memory
flw f19, 0(x2) # load 0x14800478 from memory into f19
fcvt.wu.s x12, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x7b11d3f0 # load x3 with value 0x7b11d3f0
sw x3, 0(x2) # store 0x7b11d3f0 in memory
flw f14, 0(x2) # load 0x7b11d3f0 from memory into f14
fcvt.wu.s x13, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x75d35f93 # load x3 with value 0x75d35f93
sw x3, 0(x2) # store 0x75d35f93 in memory
flw f22, 0(x2) # load 0x75d35f93 from memory into f22
fcvt.wu.s x14, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x58d35798 # load x3 with value 0x58d35798
sw x3, 0(x2) # store 0x58d35798 in memory
flw f11, 0(x2) # load 0x58d35798 from memory into f11
fcvt.wu.s x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xcf2d262d # load x3 with value 0xcf2d262d
sw x3, 0(x2) # store 0xcf2d262d in memory
flw f30, 0(x2) # load 0xcf2d262d from memory into f30
fcvt.wu.s x16, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x5f5276b8 # load x3 with value 0x5f5276b8
sw x3, 0(x2) # store 0x5f5276b8 in memory
flw f23, 0(x2) # load 0x5f5276b8 from memory into f23
fcvt.wu.s x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x5ce5afbf # load x3 with value 0x5ce5afbf
sw x3, 0(x2) # store 0x5ce5afbf in memory
flw f10, 0(x2) # load 0x5ce5afbf from memory into f10
fcvt.wu.s x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0xf734dea9 # load x3 with value 0xf734dea9
sw x3, 0(x2) # store 0xf734dea9 in memory
flw f23, 0(x2) # load 0xf734dea9 from memory into f23
fcvt.wu.s x19, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x4dddcf96 # load x3 with value 0x4dddcf96
sw x3, 0(x2) # store 0x4dddcf96 in memory
flw f8, 0(x2) # load 0x4dddcf96 from memory into f8
fcvt.wu.s x20, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x7c9d1e42 # load x3 with value 0x7c9d1e42
sw x3, 0(x2) # store 0x7c9d1e42 in memory
flw f13, 0(x2) # load 0x7c9d1e42 from memory into f13
fcvt.wu.s x21, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x1a649c13 # load x3 with value 0x1a649c13
sw x3, 0(x2) # store 0x1a649c13 in memory
flw f28, 0(x2) # load 0x1a649c13 from memory into f28
fcvt.wu.s x22, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xe759ed8b # load x3 with value 0xe759ed8b
sw x3, 0(x2) # store 0xe759ed8b in memory
flw f16, 0(x2) # load 0xe759ed8b from memory into f16
fcvt.wu.s x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xb3aba0cc # load x3 with value 0xb3aba0cc
sw x3, 0(x2) # store 0xb3aba0cc in memory
flw f2, 0(x2) # load 0xb3aba0cc from memory into f2
fcvt.wu.s x24, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x7e26bd4e # load x3 with value 0x7e26bd4e
sw x3, 0(x2) # store 0x7e26bd4e in memory
flw f19, 0(x2) # load 0x7e26bd4e from memory into f19
fcvt.wu.s x25, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x728402b6 # load x3 with value 0x728402b6
sw x3, 0(x2) # store 0x728402b6 in memory
flw f16, 0(x2) # load 0x728402b6 from memory into f16
fcvt.wu.s x26, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xdfb52384 # load x3 with value 0xdfb52384
sw x3, 0(x2) # store 0xdfb52384 in memory
flw f25, 0(x2) # load 0xdfb52384 from memory into f25
fcvt.wu.s x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xa99b487b # load x3 with value 0xa99b487b
sw x3, 0(x2) # store 0xa99b487b in memory
flw f6, 0(x2) # load 0xa99b487b from memory into f6
fcvt.wu.s x28, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xada5ea94 # load x3 with value 0xada5ea94
sw x3, 0(x2) # store 0xada5ea94 in memory
flw f30, 0(x2) # load 0xada5ea94 from memory into f30
fcvt.wu.s x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0xd7b48dbd # load x3 with value 0xd7b48dbd
sw x3, 0(x2) # store 0xd7b48dbd in memory
flw f18, 0(x2) # load 0xd7b48dbd from memory into f18
fcvt.wu.s x30, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x27f38092 # load x3 with value 0x27f38092
sw x3, 0(x2) # store 0x27f38092 in memory
flw f27, 0(x2) # load 0x27f38092 from memory into f27
fcvt.wu.s x31, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x17, x15 # perform first operation
fcvt.wu.s x29, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x30, x29 # perform first operation
fcvt.wu.s x7, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x20, x11 # perform first operation
fcvt.wu.s x14, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f31, f8, f12 # perform first operation
fcvt.wu.s x22, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x8, x12 # perform first operation
fcvt.wu.s x12, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x23, x30 # perform first operation
fcvt.wu.s x13, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x28, x10 # perform first operation
fcvt.wu.s x12, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x29, x26 # perform first operation
fcvt.wu.s x9, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x16, x31 # perform first operation
fcvt.wu.s x21, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x9, x22 # perform first operation
fcvt.wu.s x7, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x11, x8 # perform first operation
fcvt.wu.s x9, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x13, x3 # perform first operation
fcvt.wu.s x12, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x24, x27 # perform first operation
fcvt.wu.s x24, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x6, x30 # perform first operation
fcvt.wu.s x30, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x3, x6 # perform first operation
fcvt.wu.s x23, f13 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xb53ae4e3 # load x3 with value 0xb53ae4e3
sw x3, 0(x2) # store 0xb53ae4e3 in memory
flw f0, 0(x2) # load 0xb53ae4e3 from memory into f0
fcvt.wu.s x7, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xdc5d9517 # load x3 with value 0xdc5d9517
sw x3, 0(x2) # store 0xdc5d9517 in memory
flw f1, 0(x2) # load 0xdc5d9517 from memory into f1
fcvt.wu.s x13, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xb58d5ee9 # load x3 with value 0xb58d5ee9
sw x3, 0(x2) # store 0xb58d5ee9 in memory
flw f2, 0(x2) # load 0xb58d5ee9 from memory into f2
fcvt.wu.s x22, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x993341ad # load x3 with value 0x993341ad
sw x3, 0(x2) # store 0x993341ad in memory
flw f3, 0(x2) # load 0x993341ad from memory into f3
fcvt.wu.s x6, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x337c2726 # load x3 with value 0x337c2726
sw x3, 0(x2) # store 0x337c2726 in memory
flw f4, 0(x2) # load 0x337c2726 from memory into f4
fcvt.wu.s x5, f4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
la x2, scratch
li x3, 0x0cfc3fe7 # load x3 with value 0x0cfc3fe7
sw x3, 0(x2) # store 0x0cfc3fe7 in memory
flw f5, 0(x2) # load 0x0cfc3fe7 from memory into f5
fcvt.wu.s x10, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x0ecc2132 # load x3 with value 0x0ecc2132
sw x3, 0(x2) # store 0x0ecc2132 in memory
flw f6, 0(x2) # load 0x0ecc2132 from memory into f6
fcvt.wu.s x20, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x0effecda # load x3 with value 0x0effecda
sw x3, 0(x2) # store 0x0effecda in memory
flw f7, 0(x2) # load 0x0effecda from memory into f7
fcvt.wu.s x8, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xc722f8d7 # load x3 with value 0xc722f8d7
sw x3, 0(x2) # store 0xc722f8d7 in memory
flw f8, 0(x2) # load 0xc722f8d7 from memory into f8
fcvt.wu.s x26, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x48c007b6 # load x3 with value 0x48c007b6
sw x3, 0(x2) # store 0x48c007b6 in memory
flw f9, 0(x2) # load 0x48c007b6 from memory into f9
fcvt.wu.s x19, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x7744d360 # load x3 with value 0x7744d360
sw x3, 0(x2) # store 0x7744d360 in memory
flw f10, 0(x2) # load 0x7744d360 from memory into f10
fcvt.wu.s x16, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x3c02ed1e # load x3 with value 0x3c02ed1e
sw x3, 0(x2) # store 0x3c02ed1e in memory
flw f11, 0(x2) # load 0x3c02ed1e from memory into f11
fcvt.wu.s x5, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x198e328a # load x3 with value 0x198e328a
sw x3, 0(x2) # store 0x198e328a in memory
flw f12, 0(x2) # load 0x198e328a from memory into f12
fcvt.wu.s x28, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x84686c03 # load x3 with value 0x84686c03
sw x3, 0(x2) # store 0x84686c03 in memory
flw f13, 0(x2) # load 0x84686c03 from memory into f13
fcvt.wu.s x14, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x4861c2b2 # load x3 with value 0x4861c2b2
sw x3, 0(x2) # store 0x4861c2b2 in memory
flw f14, 0(x2) # load 0x4861c2b2 from memory into f14
fcvt.wu.s x23, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xcce8635e # load x3 with value 0xcce8635e
sw x3, 0(x2) # store 0xcce8635e in memory
flw f15, 0(x2) # load 0xcce8635e from memory into f15
fcvt.wu.s x31, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x4265f58c # load x3 with value 0x4265f58c
sw x3, 0(x2) # store 0x4265f58c in memory
flw f16, 0(x2) # load 0x4265f58c from memory into f16
fcvt.wu.s x5, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xf20d3e22 # load x3 with value 0xf20d3e22
sw x3, 0(x2) # store 0xf20d3e22 in memory
flw f17, 0(x2) # load 0xf20d3e22 from memory into f17
fcvt.wu.s x14, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xf1f0d7a8 # load x3 with value 0xf1f0d7a8
sw x3, 0(x2) # store 0xf1f0d7a8 in memory
flw f18, 0(x2) # load 0xf1f0d7a8 from memory into f18
fcvt.wu.s x25, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x845dc9ea # load x3 with value 0x845dc9ea
sw x3, 0(x2) # store 0x845dc9ea in memory
flw f19, 0(x2) # load 0x845dc9ea from memory into f19
fcvt.wu.s x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x4eaa4bc7 # load x3 with value 0x4eaa4bc7
sw x3, 0(x2) # store 0x4eaa4bc7 in memory
flw f20, 0(x2) # load 0x4eaa4bc7 from memory into f20
fcvt.wu.s x17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xd3cb7556 # load x3 with value 0xd3cb7556
sw x3, 0(x2) # store 0xd3cb7556 in memory
flw f21, 0(x2) # load 0xd3cb7556 from memory into f21
fcvt.wu.s x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x1e5abf78 # load x3 with value 0x1e5abf78
sw x3, 0(x2) # store 0x1e5abf78 in memory
flw f22, 0(x2) # load 0x1e5abf78 from memory into f22
fcvt.wu.s x31, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xb33c92d9 # load x3 with value 0xb33c92d9
sw x3, 0(x2) # store 0xb33c92d9 in memory
flw f23, 0(x2) # load 0xb33c92d9 from memory into f23
fcvt.wu.s x26, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x53b65cd2 # load x3 with value 0x53b65cd2
sw x3, 0(x2) # store 0x53b65cd2 in memory
flw f24, 0(x2) # load 0x53b65cd2 from memory into f24
fcvt.wu.s x20, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xb3c9b299 # load x3 with value 0xb3c9b299
sw x3, 0(x2) # store 0xb3c9b299 in memory
flw f25, 0(x2) # load 0xb3c9b299 from memory into f25
fcvt.wu.s x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x04e6adc4 # load x3 with value 0x04e6adc4
sw x3, 0(x2) # store 0x04e6adc4 in memory
flw f26, 0(x2) # load 0x04e6adc4 from memory into f26
fcvt.wu.s x22, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x011a42eb # load x3 with value 0x011a42eb
sw x3, 0(x2) # store 0x011a42eb in memory
flw f27, 0(x2) # load 0x011a42eb from memory into f27
fcvt.wu.s x20, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x49bed810 # load x3 with value 0x49bed810
sw x3, 0(x2) # store 0x49bed810 in memory
flw f28, 0(x2) # load 0x49bed810 from memory into f28
fcvt.wu.s x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x45fca384 # load x3 with value 0x45fca384
sw x3, 0(x2) # store 0x45fca384 in memory
flw f29, 0(x2) # load 0x45fca384 from memory into f29
fcvt.wu.s x10, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xac63ed9c # load x3 with value 0xac63ed9c
sw x3, 0(x2) # store 0xac63ed9c in memory
flw f30, 0(x2) # load 0xac63ed9c from memory into f30
fcvt.wu.s x20, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x0972a08e # load x3 with value 0x0972a08e
sw x3, 0(x2) # store 0x0972a08e in memory
flw f31, 0(x2) # load 0x0972a08e from memory into f31
fcvt.wu.s x15, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fcvt.wu.s x15, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fcvt.wu.s x11, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fcvt.wu.s x12, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fcvt.wu.s x24, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fcvt.wu.s x8, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fcvt.wu.s x27, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fcvt.wu.s x7, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fcvt.wu.s x6, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fcvt.wu.s x22, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fcvt.wu.s x18, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fcvt.wu.s x7, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fcvt.wu.s x8, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fcvt.wu.s x8, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fcvt.wu.s x7, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fcvt.wu.s x21, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fcvt.wu.s x21, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fcvt.wu.s x24, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fcvt.wu.s x8, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fcvt.wu.s x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fcvt.wu.s x13, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fcvt.wu.s x23, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fcvt.wu.s x20, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
fcvt.wu.s x31, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fcvt.wu.s x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fcvt.wu.s x19, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fcvt.wu.s x3, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fcvt.wu.s x5, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fcvt.wu.s x18, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 364)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fcvt.wu.s x11, f14, dyn # perform operation
fcvt.wu.s x11, f14, rdn # perform operation
fcvt.wu.s x11, f14, rmm # perform operation
fcvt.wu.s x11, f14, rne # perform operation
fcvt.wu.s x11, f14, rtz # perform operation
fcvt.wu.s x11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 368)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 372)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 376)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 380)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fcvt.wu.s x15, f17, dyn # perform operation
fcvt.wu.s x15, f17, rdn # perform operation
fcvt.wu.s x15, f17, rmm # perform operation
fcvt.wu.s x15, f17, rne # perform operation
fcvt.wu.s x15, f17, rtz # perform operation
fcvt.wu.s x15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x15, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 388)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x15, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x15, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 396)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x15, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x15, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 404)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fcvt.wu.s x13, f17, dyn # perform operation
fcvt.wu.s x13, f17, rdn # perform operation
fcvt.wu.s x13, f17, rmm # perform operation
fcvt.wu.s x13, f17, rne # perform operation
fcvt.wu.s x13, f17, rtz # perform operation
fcvt.wu.s x13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 412)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 420)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 424)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
fcvt.wu.s x18, f10, dyn # perform operation
fcvt.wu.s x18, f10, rdn # perform operation
fcvt.wu.s x18, f10, rmm # perform operation
fcvt.wu.s x18, f10, rne # perform operation
fcvt.wu.s x18, f10, rtz # perform operation
fcvt.wu.s x18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 428)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 436)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 444)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fcvt.wu.s x25, f8, dyn # perform operation
fcvt.wu.s x25, f8, rdn # perform operation
fcvt.wu.s x25, f8, rmm # perform operation
fcvt.wu.s x25, f8, rne # perform operation
fcvt.wu.s x25, f8, rtz # perform operation
fcvt.wu.s x25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x25, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x25, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 452)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x25, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x25, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 460)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x25, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 464)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fcvt.wu.s x12, f18, dyn # perform operation
fcvt.wu.s x12, f18, rdn # perform operation
fcvt.wu.s x12, f18, rmm # perform operation
fcvt.wu.s x12, f18, rne # perform operation
fcvt.wu.s x12, f18, rtz # perform operation
fcvt.wu.s x12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x12, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 468)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x12, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x12, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 476)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x12, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x12, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 484)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fcvt.wu.s x1, f22, dyn # perform operation
fcvt.wu.s x1, f22, rdn # perform operation
fcvt.wu.s x1, f22, rmm # perform operation
fcvt.wu.s x1, f22, rne # perform operation
fcvt.wu.s x1, f22, rtz # perform operation
fcvt.wu.s x1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 488)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 492)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 500)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fcvt.wu.s x29, f14, dyn # perform operation
fcvt.wu.s x29, f14, rdn # perform operation
fcvt.wu.s x29, f14, rmm # perform operation
fcvt.wu.s x29, f14, rne # perform operation
fcvt.wu.s x29, f14, rtz # perform operation
fcvt.wu.s x29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 508)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 516)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 524)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fcvt.wu.s x3, f11, dyn # perform operation
fcvt.wu.s x3, f11, rdn # perform operation
fcvt.wu.s x3, f11, rmm # perform operation
fcvt.wu.s x3, f11, rne # perform operation
fcvt.wu.s x3, f11, rtz # perform operation
fcvt.wu.s x3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x3, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x3, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 532)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x3, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x3, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 540)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x3, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fcvt.wu.s x13, f19, dyn # perform operation
fcvt.wu.s x13, f19, rdn # perform operation
fcvt.wu.s x13, f19, rmm # perform operation
fcvt.wu.s x13, f19, rne # perform operation
fcvt.wu.s x13, f19, rtz # perform operation
fcvt.wu.s x13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x13, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 548)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x13, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x13, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 556)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x13, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x13, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 564)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fcvt.wu.s x25, f13, dyn # perform operation
fcvt.wu.s x25, f13, rdn # perform operation
fcvt.wu.s x25, f13, rmm # perform operation
fcvt.wu.s x25, f13, rne # perform operation
fcvt.wu.s x25, f13, rtz # perform operation
fcvt.wu.s x25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x25, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 568)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x25, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 572)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x25, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 576)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x25, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 580)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x25, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 584)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fcvt.wu.s x21, f22, dyn # perform operation
fcvt.wu.s x21, f22, rdn # perform operation
fcvt.wu.s x21, f22, rmm # perform operation
fcvt.wu.s x21, f22, rne # perform operation
fcvt.wu.s x21, f22, rtz # perform operation
fcvt.wu.s x21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x21, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 588)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x21, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 592)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x21, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 596)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x21, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x21, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 604)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fcvt.wu.s x23, f17, dyn # perform operation
fcvt.wu.s x23, f17, rdn # perform operation
fcvt.wu.s x23, f17, rmm # perform operation
fcvt.wu.s x23, f17, rne # perform operation
fcvt.wu.s x23, f17, rtz # perform operation
fcvt.wu.s x23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x23, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 608)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x23, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 612)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x23, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x23, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 620)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x23, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fcvt.wu.s x27, f25, dyn # perform operation
fcvt.wu.s x27, f25, rdn # perform operation
fcvt.wu.s x27, f25, rmm # perform operation
fcvt.wu.s x27, f25, rne # perform operation
fcvt.wu.s x27, f25, rtz # perform operation
fcvt.wu.s x27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 628)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 636)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 644)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fcvt.wu.s x24, f22, dyn # perform operation
fcvt.wu.s x24, f22, rdn # perform operation
fcvt.wu.s x24, f22, rmm # perform operation
fcvt.wu.s x24, f22, rne # perform operation
fcvt.wu.s x24, f22, rtz # perform operation
fcvt.wu.s x24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x24, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 648)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x24, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 652)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x24, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 656)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x24, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 660)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x24, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 664)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fcvt.wu.s x7, f23, dyn # perform operation
fcvt.wu.s x7, f23, rdn # perform operation
fcvt.wu.s x7, f23, rmm # perform operation
fcvt.wu.s x7, f23, rne # perform operation
fcvt.wu.s x7, f23, rtz # perform operation
fcvt.wu.s x7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x7, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 668)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x7, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 672)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x7, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 676)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x7, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x7, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 684)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fcvt.wu.s x9, f10, dyn # perform operation
fcvt.wu.s x9, f10, rdn # perform operation
fcvt.wu.s x9, f10, rmm # perform operation
fcvt.wu.s x9, f10, rne # perform operation
fcvt.wu.s x9, f10, rtz # perform operation
fcvt.wu.s x9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x9, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x9, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 692)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x9, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 696)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x9, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 700)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x9, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 704)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fcvt.wu.s x3, f22, dyn # perform operation
fcvt.wu.s x3, f22, rdn # perform operation
fcvt.wu.s x3, f22, rmm # perform operation
fcvt.wu.s x3, f22, rne # perform operation
fcvt.wu.s x3, f22, rtz # perform operation
fcvt.wu.s x3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 708)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 716)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 724)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fcvt.wu.s x25, f29, dyn # perform operation
fcvt.wu.s x25, f29, rdn # perform operation
fcvt.wu.s x25, f29, rmm # perform operation
fcvt.wu.s x25, f29, rne # perform operation
fcvt.wu.s x25, f29, rtz # perform operation
fcvt.wu.s x25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x25, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 728)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x25, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 732)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x25, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 736)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x25, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 740)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x25, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 744)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fcvt.wu.s x7, f12, dyn # perform operation
fcvt.wu.s x7, f12, rdn # perform operation
fcvt.wu.s x7, f12, rmm # perform operation
fcvt.wu.s x7, f12, rne # perform operation
fcvt.wu.s x7, f12, rtz # perform operation
fcvt.wu.s x7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x7, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 748)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x7, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 752)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x7, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 756)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x7, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x7, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 764)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
fcvt.wu.s x30, f11, dyn # perform operation
fcvt.wu.s x30, f11, rdn # perform operation
fcvt.wu.s x30, f11, rmm # perform operation
fcvt.wu.s x30, f11, rne # perform operation
fcvt.wu.s x30, f11, rtz # perform operation
fcvt.wu.s x30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 772)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 776)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 780)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 784)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fcvt.wu.s x22, f3, dyn # perform operation
fcvt.wu.s x22, f3, rdn # perform operation
fcvt.wu.s x22, f3, rmm # perform operation
fcvt.wu.s x22, f3, rne # perform operation
fcvt.wu.s x22, f3, rtz # perform operation
fcvt.wu.s x22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x22, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 788)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x22, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x22, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 796)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x22, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x22, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 804)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fcvt.wu.s x23, f3, dyn # perform operation
fcvt.wu.s x23, f3, rdn # perform operation
fcvt.wu.s x23, f3, rmm # perform operation
fcvt.wu.s x23, f3, rne # perform operation
fcvt.wu.s x23, f3, rtz # perform operation
fcvt.wu.s x23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x23, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x23, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 812)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x23, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x23, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 820)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x23, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fcvt.wu.s x26, f13, dyn # perform operation
fcvt.wu.s x26, f13, rdn # perform operation
fcvt.wu.s x26, f13, rmm # perform operation
fcvt.wu.s x26, f13, rne # perform operation
fcvt.wu.s x26, f13, rtz # perform operation
fcvt.wu.s x26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x26, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 828)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x26, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x26, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 836)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x26, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x26, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 844)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fcvt.wu.s x9, f7, dyn # perform operation
fcvt.wu.s x9, f7, rdn # perform operation
fcvt.wu.s x9, f7, rmm # perform operation
fcvt.wu.s x9, f7, rne # perform operation
fcvt.wu.s x9, f7, rtz # perform operation
fcvt.wu.s x9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 848)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 852)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 856)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 860)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
fcvt.wu.s x5, f23, dyn # perform operation
fcvt.wu.s x5, f23, rdn # perform operation
fcvt.wu.s x5, f23, rmm # perform operation
fcvt.wu.s x5, f23, rne # perform operation
fcvt.wu.s x5, f23, rtz # perform operation
fcvt.wu.s x5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x5, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 868)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x5, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 872)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x5, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 876)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x5, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x5, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 884)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fcvt.wu.s x27, f3, dyn # perform operation
fcvt.wu.s x27, f3, rdn # perform operation
fcvt.wu.s x27, f3, rmm # perform operation
fcvt.wu.s x27, f3, rne # perform operation
fcvt.wu.s x27, f3, rtz # perform operation
fcvt.wu.s x27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 892)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 900)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 904)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fcvt.wu.s x1, f22, dyn # perform operation
fcvt.wu.s x1, f22, rdn # perform operation
fcvt.wu.s x1, f22, rmm # perform operation
fcvt.wu.s x1, f22, rne # perform operation
fcvt.wu.s x1, f22, rtz # perform operation
fcvt.wu.s x1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 908)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 916)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 924)


# Testcase cp_frm
la x2, scratch
li x3, 0x182f7180 # load x3 with value 0x182f7180
sw x3, 0(x2) # store 0x182f7180 in memory
flw f17, 0(x2) # load 0x182f7180 from memory into f17
fcvt.wu.s x10, f17, dyn # perform operation
fcvt.wu.s x10, f17, rdn # perform operation
fcvt.wu.s x10, f17, rmm # perform operation
fcvt.wu.s x10, f17, rne # perform operation
fcvt.wu.s x10, f17, rtz # perform operation
fcvt.wu.s x10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x10, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x10, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 932)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x10, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 936)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x10, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 940)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x10, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 944)


.EQU SIGSIZE,948


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
