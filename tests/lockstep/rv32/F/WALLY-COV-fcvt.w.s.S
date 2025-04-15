///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fcvt.w.s.S
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
li x3, 0xe93cd038 # load x3 with value 0xe93cd038
sw x3, 0(x2) # store 0xe93cd038 in memory
flw f21, 0(x2) # load 0xe93cd038 from memory into f21
fcvt.w.s x0, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x4b89cec0 # load x3 with value 0x4b89cec0
sw x3, 0(x2) # store 0x4b89cec0 in memory
flw f5, 0(x2) # load 0x4b89cec0 from memory into f5
fcvt.w.s x1, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x6f3cf1a4 # load x3 with value 0x6f3cf1a4
sw x3, 0(x2) # store 0x6f3cf1a4 in memory
flw f5, 0(x2) # load 0x6f3cf1a4 from memory into f5
fcvt.w.s x2, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xa0337d86 # load x3 with value 0xa0337d86
sw x3, 0(x2) # store 0xa0337d86 in memory
flw f21, 0(x2) # load 0xa0337d86 from memory into f21
fcvt.w.s x3, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xac794e3f # load x3 with value 0xac794e3f
sw x3, 0(x2) # store 0xac794e3f in memory
flw f7, 0(x2) # load 0xac794e3f from memory into f7
fcvt.w.s x4, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xeeba303a # load x3 with value 0xeeba303a
sw x3, 0(x2) # store 0xeeba303a in memory
flw f18, 0(x2) # load 0xeeba303a from memory into f18
fcvt.w.s x5, f18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa24f4172 # load x3 with value 0xa24f4172
sw x3, 0(x2) # store 0xa24f4172 in memory
flw f24, 0(x2) # load 0xa24f4172 from memory into f24
fcvt.w.s x6, f24 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3c5975f5 # load x3 with value 0x3c5975f5
sw x3, 0(x2) # store 0x3c5975f5 in memory
flw f19, 0(x2) # load 0x3c5975f5 from memory into f19
fcvt.w.s x7, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x27cd1cfe # load x3 with value 0x27cd1cfe
sw x3, 0(x2) # store 0x27cd1cfe in memory
flw f28, 0(x2) # load 0x27cd1cfe from memory into f28
fcvt.w.s x8, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xe1684c3f # load x3 with value 0xe1684c3f
sw x3, 0(x2) # store 0xe1684c3f in memory
flw f31, 0(x2) # load 0xe1684c3f from memory into f31
fcvt.w.s x9, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xe2021c5e # load x3 with value 0xe2021c5e
sw x3, 0(x2) # store 0xe2021c5e in memory
flw f27, 0(x2) # load 0xe2021c5e from memory into f27
fcvt.w.s x10, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xdcb1e14a # load x3 with value 0xdcb1e14a
sw x3, 0(x2) # store 0xdcb1e14a in memory
flw f11, 0(x2) # load 0xdcb1e14a from memory into f11
fcvt.w.s x11, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xb7bd0c67 # load x3 with value 0xb7bd0c67
sw x3, 0(x2) # store 0xb7bd0c67 in memory
flw f3, 0(x2) # load 0xb7bd0c67 from memory into f3
fcvt.w.s x12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x02f3acaf # load x3 with value 0x02f3acaf
sw x3, 0(x2) # store 0x02f3acaf in memory
flw f21, 0(x2) # load 0x02f3acaf from memory into f21
fcvt.w.s x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0xa331ee2b # load x3 with value 0xa331ee2b
sw x3, 0(x2) # store 0xa331ee2b in memory
flw f19, 0(x2) # load 0xa331ee2b from memory into f19
fcvt.w.s x14, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0xdbae6804 # load x3 with value 0xdbae6804
sw x3, 0(x2) # store 0xdbae6804 in memory
flw f10, 0(x2) # load 0xdbae6804 from memory into f10
fcvt.w.s x15, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xd90b1f75 # load x3 with value 0xd90b1f75
sw x3, 0(x2) # store 0xd90b1f75 in memory
flw f7, 0(x2) # load 0xd90b1f75 from memory into f7
fcvt.w.s x16, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xefa5079a # load x3 with value 0xefa5079a
sw x3, 0(x2) # store 0xefa5079a in memory
flw f5, 0(x2) # load 0xefa5079a from memory into f5
fcvt.w.s x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x13d92a7f # load x3 with value 0x13d92a7f
sw x3, 0(x2) # store 0x13d92a7f in memory
flw f5, 0(x2) # load 0x13d92a7f from memory into f5
fcvt.w.s x18, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x530a45ba # load x3 with value 0x530a45ba
sw x3, 0(x2) # store 0x530a45ba in memory
flw f10, 0(x2) # load 0x530a45ba from memory into f10
fcvt.w.s x19, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x4ad25dbe # load x3 with value 0x4ad25dbe
sw x3, 0(x2) # store 0x4ad25dbe in memory
flw f11, 0(x2) # load 0x4ad25dbe from memory into f11
fcvt.w.s x20, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xf478d143 # load x3 with value 0xf478d143
sw x3, 0(x2) # store 0xf478d143 in memory
flw f15, 0(x2) # load 0xf478d143 from memory into f15
fcvt.w.s x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x15b6f56e # load x3 with value 0x15b6f56e
sw x3, 0(x2) # store 0x15b6f56e in memory
flw f14, 0(x2) # load 0x15b6f56e from memory into f14
fcvt.w.s x22, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x33cba60c # load x3 with value 0x33cba60c
sw x3, 0(x2) # store 0x33cba60c in memory
flw f9, 0(x2) # load 0x33cba60c from memory into f9
fcvt.w.s x23, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x70a5691d # load x3 with value 0x70a5691d
sw x3, 0(x2) # store 0x70a5691d in memory
flw f17, 0(x2) # load 0x70a5691d from memory into f17
fcvt.w.s x24, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x4941eb93 # load x3 with value 0x4941eb93
sw x3, 0(x2) # store 0x4941eb93 in memory
flw f24, 0(x2) # load 0x4941eb93 from memory into f24
fcvt.w.s x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xe3c434c4 # load x3 with value 0xe3c434c4
sw x3, 0(x2) # store 0xe3c434c4 in memory
flw f21, 0(x2) # load 0xe3c434c4 from memory into f21
fcvt.w.s x26, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x0b3e39f2 # load x3 with value 0x0b3e39f2
sw x3, 0(x2) # store 0x0b3e39f2 in memory
flw f13, 0(x2) # load 0x0b3e39f2 from memory into f13
fcvt.w.s x27, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xa264e4cd # load x3 with value 0xa264e4cd
sw x3, 0(x2) # store 0xa264e4cd in memory
flw f28, 0(x2) # load 0xa264e4cd from memory into f28
fcvt.w.s x28, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x1a39e0e4 # load x3 with value 0x1a39e0e4
sw x3, 0(x2) # store 0x1a39e0e4 in memory
flw f20, 0(x2) # load 0x1a39e0e4 from memory into f20
fcvt.w.s x29, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x5d3dcdfb # load x3 with value 0x5d3dcdfb
sw x3, 0(x2) # store 0x5d3dcdfb in memory
flw f1, 0(x2) # load 0x5d3dcdfb from memory into f1
fcvt.w.s x30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x0dc5cd53 # load x3 with value 0x0dc5cd53
sw x3, 0(x2) # store 0x0dc5cd53 in memory
flw f6, 0(x2) # load 0x0dc5cd53 from memory into f6
fcvt.w.s x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x21, x15 # perform first operation
fcvt.w.s x31, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x8, x22 # perform first operation
fcvt.w.s x21, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x5, x9 # perform first operation
fcvt.w.s x27, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f13, f14, f18 # perform first operation
fcvt.w.s x18, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x16, x15 # perform first operation
fcvt.w.s x30, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x31, x30 # perform first operation
fcvt.w.s x5, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x31, x18 # perform first operation
fcvt.w.s x30, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x27, x31 # perform first operation
fcvt.w.s x7, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x11, x26 # perform first operation
fcvt.w.s x5, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x22, x24 # perform first operation
fcvt.w.s x14, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x16, x18 # perform first operation
fcvt.w.s x30, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x24, x1 # perform first operation
fcvt.w.s x22, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x14, x13 # perform first operation
fcvt.w.s x14, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x31, x9 # perform first operation
fcvt.w.s x9, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x14, x12 # perform first operation
fcvt.w.s x11, f29 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xc86fe715 # load x3 with value 0xc86fe715
sw x3, 0(x2) # store 0xc86fe715 in memory
flw f0, 0(x2) # load 0xc86fe715 from memory into f0
fcvt.w.s x3, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x1b9925b3 # load x3 with value 0x1b9925b3
sw x3, 0(x2) # store 0x1b9925b3 in memory
flw f1, 0(x2) # load 0x1b9925b3 from memory into f1
fcvt.w.s x8, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x910695af # load x3 with value 0x910695af
sw x3, 0(x2) # store 0x910695af in memory
flw f2, 0(x2) # load 0x910695af from memory into f2
fcvt.w.s x27, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x6d62a3bf # load x3 with value 0x6d62a3bf
sw x3, 0(x2) # store 0x6d62a3bf in memory
flw f3, 0(x2) # load 0x6d62a3bf from memory into f3
fcvt.w.s x3, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf7e8aebe # load x3 with value 0xf7e8aebe
sw x3, 0(x2) # store 0xf7e8aebe in memory
flw f4, 0(x2) # load 0xf7e8aebe from memory into f4
fcvt.w.s x25, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdefcec31 # load x3 with value 0xdefcec31
sw x3, 0(x2) # store 0xdefcec31 in memory
flw f5, 0(x2) # load 0xdefcec31 from memory into f5
fcvt.w.s x21, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc4b2deb5 # load x3 with value 0xc4b2deb5
sw x3, 0(x2) # store 0xc4b2deb5 in memory
flw f6, 0(x2) # load 0xc4b2deb5 from memory into f6
fcvt.w.s x23, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xceb33926 # load x3 with value 0xceb33926
sw x3, 0(x2) # store 0xceb33926 in memory
flw f7, 0(x2) # load 0xceb33926 from memory into f7
fcvt.w.s x20, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x390a8efe # load x3 with value 0x390a8efe
sw x3, 0(x2) # store 0x390a8efe in memory
flw f8, 0(x2) # load 0x390a8efe from memory into f8
fcvt.w.s x22, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x7414c030 # load x3 with value 0x7414c030
sw x3, 0(x2) # store 0x7414c030 in memory
flw f9, 0(x2) # load 0x7414c030 from memory into f9
fcvt.w.s x1, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x5a60fdf8 # load x3 with value 0x5a60fdf8
sw x3, 0(x2) # store 0x5a60fdf8 in memory
flw f10, 0(x2) # load 0x5a60fdf8 from memory into f10
fcvt.w.s x3, f10 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x9fb1d53e # load x3 with value 0x9fb1d53e
sw x3, 0(x2) # store 0x9fb1d53e in memory
flw f11, 0(x2) # load 0x9fb1d53e from memory into f11
fcvt.w.s x3, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x82aab150 # load x3 with value 0x82aab150
sw x3, 0(x2) # store 0x82aab150 in memory
flw f12, 0(x2) # load 0x82aab150 from memory into f12
fcvt.w.s x24, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xc190e6e7 # load x3 with value 0xc190e6e7
sw x3, 0(x2) # store 0xc190e6e7 in memory
flw f13, 0(x2) # load 0xc190e6e7 from memory into f13
fcvt.w.s x18, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x2de5258c # load x3 with value 0x2de5258c
sw x3, 0(x2) # store 0x2de5258c in memory
flw f14, 0(x2) # load 0x2de5258c from memory into f14
fcvt.w.s x27, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x8e1bdcf6 # load x3 with value 0x8e1bdcf6
sw x3, 0(x2) # store 0x8e1bdcf6 in memory
flw f15, 0(x2) # load 0x8e1bdcf6 from memory into f15
fcvt.w.s x24, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x512a0a21 # load x3 with value 0x512a0a21
sw x3, 0(x2) # store 0x512a0a21 in memory
flw f16, 0(x2) # load 0x512a0a21 from memory into f16
fcvt.w.s x29, f16 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x5c1a1b15 # load x3 with value 0x5c1a1b15
sw x3, 0(x2) # store 0x5c1a1b15 in memory
flw f17, 0(x2) # load 0x5c1a1b15 from memory into f17
fcvt.w.s x17, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x33a6ad59 # load x3 with value 0x33a6ad59
sw x3, 0(x2) # store 0x33a6ad59 in memory
flw f18, 0(x2) # load 0x33a6ad59 from memory into f18
fcvt.w.s x26, f18 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x562ec014 # load x3 with value 0x562ec014
sw x3, 0(x2) # store 0x562ec014 in memory
flw f19, 0(x2) # load 0x562ec014 from memory into f19
fcvt.w.s x13, f19 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xf995a643 # load x3 with value 0xf995a643
sw x3, 0(x2) # store 0xf995a643 in memory
flw f20, 0(x2) # load 0xf995a643 from memory into f20
fcvt.w.s x1, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x59fcd8ba # load x3 with value 0x59fcd8ba
sw x3, 0(x2) # store 0x59fcd8ba in memory
flw f21, 0(x2) # load 0x59fcd8ba from memory into f21
fcvt.w.s x12, f21 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x61eb765b # load x3 with value 0x61eb765b
sw x3, 0(x2) # store 0x61eb765b in memory
flw f22, 0(x2) # load 0x61eb765b from memory into f22
fcvt.w.s x3, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x7f29a9a0 # load x3 with value 0x7f29a9a0
sw x3, 0(x2) # store 0x7f29a9a0 in memory
flw f23, 0(x2) # load 0x7f29a9a0 from memory into f23
fcvt.w.s x6, f23 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x05fe12c6 # load x3 with value 0x05fe12c6
sw x3, 0(x2) # store 0x05fe12c6 in memory
flw f24, 0(x2) # load 0x05fe12c6 from memory into f24
fcvt.w.s x14, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xeb109305 # load x3 with value 0xeb109305
sw x3, 0(x2) # store 0xeb109305 in memory
flw f25, 0(x2) # load 0xeb109305 from memory into f25
fcvt.w.s x8, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xee634309 # load x3 with value 0xee634309
sw x3, 0(x2) # store 0xee634309 in memory
flw f26, 0(x2) # load 0xee634309 from memory into f26
fcvt.w.s x2, f26 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x0f40449b # load x3 with value 0x0f40449b
sw x3, 0(x2) # store 0x0f40449b in memory
flw f27, 0(x2) # load 0x0f40449b from memory into f27
fcvt.w.s x25, f27 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x4cefebba # load x3 with value 0x4cefebba
sw x3, 0(x2) # store 0x4cefebba in memory
flw f28, 0(x2) # load 0x4cefebba from memory into f28
fcvt.w.s x3, f28 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x4bcc1413 # load x3 with value 0x4bcc1413
sw x3, 0(x2) # store 0x4bcc1413 in memory
flw f29, 0(x2) # load 0x4bcc1413 from memory into f29
fcvt.w.s x10, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x68a39ca2 # load x3 with value 0x68a39ca2
sw x3, 0(x2) # store 0x68a39ca2 in memory
flw f30, 0(x2) # load 0x68a39ca2 from memory into f30
fcvt.w.s x26, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xb13823c3 # load x3 with value 0xb13823c3
sw x3, 0(x2) # store 0xb13823c3 in memory
flw f31, 0(x2) # load 0xb13823c3 from memory into f31
fcvt.w.s x16, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fcvt.w.s x26, f28 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fcvt.w.s x29, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fcvt.w.s x20, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fcvt.w.s x19, f26 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fcvt.w.s x9, f6 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fcvt.w.s x6, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fcvt.w.s x26, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fcvt.w.s x7, f25 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fcvt.w.s x26, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fcvt.w.s x26, f10 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fcvt.w.s x14, f2 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fcvt.w.s x30, f26 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fcvt.w.s x30, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fcvt.w.s x20, f26 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fcvt.w.s x14, f28 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fcvt.w.s x11, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
fcvt.w.s x16, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fcvt.w.s x18, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fcvt.w.s x11, f19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fcvt.w.s x3, f12 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fcvt.w.s x16, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fcvt.w.s x27, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
fcvt.w.s x7, f10 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fcvt.w.s x9, f21 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fcvt.w.s x28, f16 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
fcvt.w.s x29, f27 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fcvt.w.s x20, f28 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fcvt.w.s x28, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 364)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fcvt.w.s x7, f16, dyn # perform operation
fcvt.w.s x7, f16, rdn # perform operation
fcvt.w.s x7, f16, rmm # perform operation
fcvt.w.s x7, f16, rne # perform operation
fcvt.w.s x7, f16, rtz # perform operation
fcvt.w.s x7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x7, f16 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 368)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x7, f16 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 372)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x7, f16 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 376)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x7, f16 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 380)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x7, f16 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 384)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fcvt.w.s x15, f17, dyn # perform operation
fcvt.w.s x15, f17, rdn # perform operation
fcvt.w.s x15, f17, rmm # perform operation
fcvt.w.s x15, f17, rne # perform operation
fcvt.w.s x15, f17, rtz # perform operation
fcvt.w.s x15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x15, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 388)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x15, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 392)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x15, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 396)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x15, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x15, f17 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 404)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fcvt.w.s x31, f20, dyn # perform operation
fcvt.w.s x31, f20, rdn # perform operation
fcvt.w.s x31, f20, rmm # perform operation
fcvt.w.s x31, f20, rne # perform operation
fcvt.w.s x31, f20, rtz # perform operation
fcvt.w.s x31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x31, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 408)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x31, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 412)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x31, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 416)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x31, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 420)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x31, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 424)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fcvt.w.s x19, f2, dyn # perform operation
fcvt.w.s x19, f2, rdn # perform operation
fcvt.w.s x19, f2, rmm # perform operation
fcvt.w.s x19, f2, rne # perform operation
fcvt.w.s x19, f2, rtz # perform operation
fcvt.w.s x19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x19, f2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 428)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x19, f2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 432)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x19, f2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 436)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x19, f2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x19, f2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 444)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fcvt.w.s x6, f22, dyn # perform operation
fcvt.w.s x6, f22, rdn # perform operation
fcvt.w.s x6, f22, rmm # perform operation
fcvt.w.s x6, f22, rne # perform operation
fcvt.w.s x6, f22, rtz # perform operation
fcvt.w.s x6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x6, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 448)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x6, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 452)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x6, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 456)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x6, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 460)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x6, f22 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 464)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fcvt.w.s x12, f29, dyn # perform operation
fcvt.w.s x12, f29, rdn # perform operation
fcvt.w.s x12, f29, rmm # perform operation
fcvt.w.s x12, f29, rne # perform operation
fcvt.w.s x12, f29, rtz # perform operation
fcvt.w.s x12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x12, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 468)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x12, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 472)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x12, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 476)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x12, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x12, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 484)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fcvt.w.s x25, f30, dyn # perform operation
fcvt.w.s x25, f30, rdn # perform operation
fcvt.w.s x25, f30, rmm # perform operation
fcvt.w.s x25, f30, rne # perform operation
fcvt.w.s x25, f30, rtz # perform operation
fcvt.w.s x25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x25, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 488)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x25, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 492)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x25, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 496)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x25, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 500)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x25, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 504)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fcvt.w.s x4, f1, dyn # perform operation
fcvt.w.s x4, f1, rdn # perform operation
fcvt.w.s x4, f1, rmm # perform operation
fcvt.w.s x4, f1, rne # perform operation
fcvt.w.s x4, f1, rtz # perform operation
fcvt.w.s x4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x4, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 508)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x4, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 512)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x4, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 516)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x4, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x4, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 524)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fcvt.w.s x24, f19, dyn # perform operation
fcvt.w.s x24, f19, rdn # perform operation
fcvt.w.s x24, f19, rmm # perform operation
fcvt.w.s x24, f19, rne # perform operation
fcvt.w.s x24, f19, rtz # perform operation
fcvt.w.s x24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x24, f19 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 528)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x24, f19 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 532)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x24, f19 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 536)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x24, f19 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 540)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x24, f19 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 544)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fcvt.w.s x11, f8, dyn # perform operation
fcvt.w.s x11, f8, rdn # perform operation
fcvt.w.s x11, f8, rmm # perform operation
fcvt.w.s x11, f8, rne # perform operation
fcvt.w.s x11, f8, rtz # perform operation
fcvt.w.s x11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x11, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 548)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x11, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 552)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x11, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 556)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x11, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x11, f8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 564)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fcvt.w.s x28, f26, dyn # perform operation
fcvt.w.s x28, f26, rdn # perform operation
fcvt.w.s x28, f26, rmm # perform operation
fcvt.w.s x28, f26, rne # perform operation
fcvt.w.s x28, f26, rtz # perform operation
fcvt.w.s x28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x28, f26 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 568)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x28, f26 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 572)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x28, f26 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 576)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x28, f26 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 580)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x28, f26 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 584)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fcvt.w.s x7, f14, dyn # perform operation
fcvt.w.s x7, f14, rdn # perform operation
fcvt.w.s x7, f14, rmm # perform operation
fcvt.w.s x7, f14, rne # perform operation
fcvt.w.s x7, f14, rtz # perform operation
fcvt.w.s x7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x7, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 588)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x7, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 592)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x7, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 596)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x7, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x7, f14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 604)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fcvt.w.s x25, f9, dyn # perform operation
fcvt.w.s x25, f9, rdn # perform operation
fcvt.w.s x25, f9, rmm # perform operation
fcvt.w.s x25, f9, rne # perform operation
fcvt.w.s x25, f9, rtz # perform operation
fcvt.w.s x25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x25, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 608)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x25, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 612)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x25, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 616)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x25, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 620)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x25, f9 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 624)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fcvt.w.s x6, f24, dyn # perform operation
fcvt.w.s x6, f24, rdn # perform operation
fcvt.w.s x6, f24, rmm # perform operation
fcvt.w.s x6, f24, rne # perform operation
fcvt.w.s x6, f24, rtz # perform operation
fcvt.w.s x6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x6, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 628)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x6, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 632)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x6, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 636)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x6, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x6, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 644)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fcvt.w.s x21, f7, dyn # perform operation
fcvt.w.s x21, f7, rdn # perform operation
fcvt.w.s x21, f7, rmm # perform operation
fcvt.w.s x21, f7, rne # perform operation
fcvt.w.s x21, f7, rtz # perform operation
fcvt.w.s x21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x21, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 648)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x21, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 652)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x21, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 656)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x21, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 660)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x21, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 664)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fcvt.w.s x26, f7, dyn # perform operation
fcvt.w.s x26, f7, rdn # perform operation
fcvt.w.s x26, f7, rmm # perform operation
fcvt.w.s x26, f7, rne # perform operation
fcvt.w.s x26, f7, rtz # perform operation
fcvt.w.s x26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x26, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 668)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x26, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 672)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x26, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 676)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x26, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x26, f7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 684)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fcvt.w.s x7, f4, dyn # perform operation
fcvt.w.s x7, f4, rdn # perform operation
fcvt.w.s x7, f4, rmm # perform operation
fcvt.w.s x7, f4, rne # perform operation
fcvt.w.s x7, f4, rtz # perform operation
fcvt.w.s x7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x7, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 688)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x7, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 692)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x7, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 696)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x7, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 700)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x7, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 704)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fcvt.w.s x16, f31, dyn # perform operation
fcvt.w.s x16, f31, rdn # perform operation
fcvt.w.s x16, f31, rmm # perform operation
fcvt.w.s x16, f31, rne # perform operation
fcvt.w.s x16, f31, rtz # perform operation
fcvt.w.s x16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x16, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 708)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x16, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 712)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x16, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 716)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x16, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x16, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 724)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fcvt.w.s x24, f13, dyn # perform operation
fcvt.w.s x24, f13, rdn # perform operation
fcvt.w.s x24, f13, rmm # perform operation
fcvt.w.s x24, f13, rne # perform operation
fcvt.w.s x24, f13, rtz # perform operation
fcvt.w.s x24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x24, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 728)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x24, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 732)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x24, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 736)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x24, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 740)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x24, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 744)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fcvt.w.s x29, f4, dyn # perform operation
fcvt.w.s x29, f4, rdn # perform operation
fcvt.w.s x29, f4, rmm # perform operation
fcvt.w.s x29, f4, rne # perform operation
fcvt.w.s x29, f4, rtz # perform operation
fcvt.w.s x29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x29, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 748)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x29, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 752)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x29, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 756)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x29, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x29, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 764)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
fcvt.w.s x9, f11, dyn # perform operation
fcvt.w.s x9, f11, rdn # perform operation
fcvt.w.s x9, f11, rmm # perform operation
fcvt.w.s x9, f11, rne # perform operation
fcvt.w.s x9, f11, rtz # perform operation
fcvt.w.s x9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x9, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 768)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x9, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 772)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x9, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 776)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x9, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 780)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x9, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 784)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fcvt.w.s x24, f23, dyn # perform operation
fcvt.w.s x24, f23, rdn # perform operation
fcvt.w.s x24, f23, rmm # perform operation
fcvt.w.s x24, f23, rne # perform operation
fcvt.w.s x24, f23, rtz # perform operation
fcvt.w.s x24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x24, f23 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 788)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x24, f23 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 792)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x24, f23 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 796)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x24, f23 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x24, f23 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 804)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
fcvt.w.s x11, f24, dyn # perform operation
fcvt.w.s x11, f24, rdn # perform operation
fcvt.w.s x11, f24, rmm # perform operation
fcvt.w.s x11, f24, rne # perform operation
fcvt.w.s x11, f24, rtz # perform operation
fcvt.w.s x11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x11, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 808)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x11, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 812)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x11, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 816)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x11, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 820)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x11, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 824)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fcvt.w.s x21, f3, dyn # perform operation
fcvt.w.s x21, f3, rdn # perform operation
fcvt.w.s x21, f3, rmm # perform operation
fcvt.w.s x21, f3, rne # perform operation
fcvt.w.s x21, f3, rtz # perform operation
fcvt.w.s x21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x21, f3 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 828)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x21, f3 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 832)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x21, f3 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 836)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x21, f3 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x21, f3 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 844)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fcvt.w.s x31, f15, dyn # perform operation
fcvt.w.s x31, f15, rdn # perform operation
fcvt.w.s x31, f15, rmm # perform operation
fcvt.w.s x31, f15, rne # perform operation
fcvt.w.s x31, f15, rtz # perform operation
fcvt.w.s x31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x31, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 848)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x31, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 852)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x31, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 856)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x31, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 860)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x31, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 864)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
fcvt.w.s x9, f1, dyn # perform operation
fcvt.w.s x9, f1, rdn # perform operation
fcvt.w.s x9, f1, rmm # perform operation
fcvt.w.s x9, f1, rne # perform operation
fcvt.w.s x9, f1, rtz # perform operation
fcvt.w.s x9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x9, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 868)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x9, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 872)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x9, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 876)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x9, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x9, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 884)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fcvt.w.s x23, f18, dyn # perform operation
fcvt.w.s x23, f18, rdn # perform operation
fcvt.w.s x23, f18, rmm # perform operation
fcvt.w.s x23, f18, rne # perform operation
fcvt.w.s x23, f18, rtz # perform operation
fcvt.w.s x23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x23, f18 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 888)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x23, f18 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 892)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x23, f18 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 896)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x23, f18 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 900)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x23, f18 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 904)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fcvt.w.s x2, f13, dyn # perform operation
fcvt.w.s x2, f13, rdn # perform operation
fcvt.w.s x2, f13, rmm # perform operation
fcvt.w.s x2, f13, rne # perform operation
fcvt.w.s x2, f13, rtz # perform operation
fcvt.w.s x2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x2, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 908)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x2, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 912)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x2, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 916)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x2, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x2, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 924)


# Testcase cp_frm
la x2, scratch
li x3, 0x2c548afd # load x3 with value 0x2c548afd
sw x3, 0(x2) # store 0x2c548afd in memory
flw f11, 0(x2) # load 0x2c548afd from memory into f11
fcvt.w.s x23, f11, dyn # perform operation
fcvt.w.s x23, f11, rdn # perform operation
fcvt.w.s x23, f11, rmm # perform operation
fcvt.w.s x23, f11, rne # perform operation
fcvt.w.s x23, f11, rtz # perform operation
fcvt.w.s x23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x23, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 928)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x23, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 932)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x23, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 936)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x23, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 940)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x23, f11 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 944)


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
