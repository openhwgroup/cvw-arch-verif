///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfh/WALLY-COV-fmv.x.h.S
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
li x3, 0xca00ceb2 # load x3 with value 0xca00ceb2
sw x3, 0(x2) # store 0xca00ceb2 in memory
flh f21, 0(x2) # load 0xca00ceb2 from memory into f21
fmv.x.h x0, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x95dead27 # load x3 with value 0x95dead27
sw x3, 0(x2) # store 0x95dead27 in memory
flh f21, 0(x2) # load 0x95dead27 from memory into f21
fmv.x.h x1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x2bcee733 # load x3 with value 0x2bcee733
sw x3, 0(x2) # store 0x2bcee733 in memory
flh f3, 0(x2) # load 0x2bcee733 from memory into f3
fmv.x.h x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xe4413bfe # load x3 with value 0xe4413bfe
sw x3, 0(x2) # store 0xe4413bfe in memory
flh f30, 0(x2) # load 0xe4413bfe from memory into f30
fmv.x.h x3, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5ccb021a # load x3 with value 0x5ccb021a
sw x3, 0(x2) # store 0x5ccb021a in memory
flh f1, 0(x2) # load 0x5ccb021a from memory into f1
fmv.x.h x4, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdfc93acc # load x3 with value 0xdfc93acc
sw x3, 0(x2) # store 0xdfc93acc in memory
flh f30, 0(x2) # load 0xdfc93acc from memory into f30
fmv.x.h x5, f30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x41c6bd1a # load x3 with value 0x41c6bd1a
sw x3, 0(x2) # store 0x41c6bd1a in memory
flh f3, 0(x2) # load 0x41c6bd1a from memory into f3
fmv.x.h x6, f3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc3edd186 # load x3 with value 0xc3edd186
sw x3, 0(x2) # store 0xc3edd186 in memory
flh f6, 0(x2) # load 0xc3edd186 from memory into f6
fmv.x.h x7, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x86602103 # load x3 with value 0x86602103
sw x3, 0(x2) # store 0x86602103 in memory
flh f7, 0(x2) # load 0x86602103 from memory into f7
fmv.x.h x8, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xeec2f25b # load x3 with value 0xeec2f25b
sw x3, 0(x2) # store 0xeec2f25b in memory
flh f7, 0(x2) # load 0xeec2f25b from memory into f7
fmv.x.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x4f5e86d9 # load x3 with value 0x4f5e86d9
sw x3, 0(x2) # store 0x4f5e86d9 in memory
flh f6, 0(x2) # load 0x4f5e86d9 from memory into f6
fmv.x.h x10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x3452d83c # load x3 with value 0x3452d83c
sw x3, 0(x2) # store 0x3452d83c in memory
flh f25, 0(x2) # load 0x3452d83c from memory into f25
fmv.x.h x11, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xdbeba487 # load x3 with value 0xdbeba487
sw x3, 0(x2) # store 0xdbeba487 in memory
flh f30, 0(x2) # load 0xdbeba487 from memory into f30
fmv.x.h x12, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x8b79b679 # load x3 with value 0x8b79b679
sw x3, 0(x2) # store 0x8b79b679 in memory
flh f15, 0(x2) # load 0x8b79b679 from memory into f15
fmv.x.h x13, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x1cd45c9e # load x3 with value 0x1cd45c9e
sw x3, 0(x2) # store 0x1cd45c9e in memory
flh f21, 0(x2) # load 0x1cd45c9e from memory into f21
fmv.x.h x14, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x6d96cf2c # load x3 with value 0x6d96cf2c
sw x3, 0(x2) # store 0x6d96cf2c in memory
flh f13, 0(x2) # load 0x6d96cf2c from memory into f13
fmv.x.h x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xf8e1a480 # load x3 with value 0xf8e1a480
sw x3, 0(x2) # store 0xf8e1a480 in memory
flh f11, 0(x2) # load 0xf8e1a480 from memory into f11
fmv.x.h x16, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xf35dee5f # load x3 with value 0xf35dee5f
sw x3, 0(x2) # store 0xf35dee5f in memory
flh f22, 0(x2) # load 0xf35dee5f from memory into f22
fmv.x.h x17, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x03ce7452 # load x3 with value 0x03ce7452
sw x3, 0(x2) # store 0x03ce7452 in memory
flh f11, 0(x2) # load 0x03ce7452 from memory into f11
fmv.x.h x18, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x0cc65592 # load x3 with value 0x0cc65592
sw x3, 0(x2) # store 0x0cc65592 in memory
flh f19, 0(x2) # load 0x0cc65592 from memory into f19
fmv.x.h x19, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x8b542ce6 # load x3 with value 0x8b542ce6
sw x3, 0(x2) # store 0x8b542ce6 in memory
flh f5, 0(x2) # load 0x8b542ce6 from memory into f5
fmv.x.h x20, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xa0ecd276 # load x3 with value 0xa0ecd276
sw x3, 0(x2) # store 0xa0ecd276 in memory
flh f24, 0(x2) # load 0xa0ecd276 from memory into f24
fmv.x.h x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xb82c15ae # load x3 with value 0xb82c15ae
sw x3, 0(x2) # store 0xb82c15ae in memory
flh f5, 0(x2) # load 0xb82c15ae from memory into f5
fmv.x.h x22, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x35f3e40a # load x3 with value 0x35f3e40a
sw x3, 0(x2) # store 0x35f3e40a in memory
flh f19, 0(x2) # load 0x35f3e40a from memory into f19
fmv.x.h x23, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x8d6db883 # load x3 with value 0x8d6db883
sw x3, 0(x2) # store 0x8d6db883 in memory
flh f12, 0(x2) # load 0x8d6db883 from memory into f12
fmv.x.h x24, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x8696aa50 # load x3 with value 0x8696aa50
sw x3, 0(x2) # store 0x8696aa50 in memory
flh f28, 0(x2) # load 0x8696aa50 from memory into f28
fmv.x.h x25, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xfffd71b9 # load x3 with value 0xfffd71b9
sw x3, 0(x2) # store 0xfffd71b9 in memory
flh f31, 0(x2) # load 0xfffd71b9 from memory into f31
fmv.x.h x26, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xdadc8c2f # load x3 with value 0xdadc8c2f
sw x3, 0(x2) # store 0xdadc8c2f in memory
flh f12, 0(x2) # load 0xdadc8c2f from memory into f12
fmv.x.h x27, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x594bfbe5 # load x3 with value 0x594bfbe5
sw x3, 0(x2) # store 0x594bfbe5 in memory
flh f28, 0(x2) # load 0x594bfbe5 from memory into f28
fmv.x.h x28, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x659c3449 # load x3 with value 0x659c3449
sw x3, 0(x2) # store 0x659c3449 in memory
flh f25, 0(x2) # load 0x659c3449 from memory into f25
fmv.x.h x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x00b15417 # load x3 with value 0x00b15417
sw x3, 0(x2) # store 0x00b15417 in memory
flh f28, 0(x2) # load 0x00b15417 from memory into f28
fmv.x.h x30, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x5dacd603 # load x3 with value 0x5dacd603
sw x3, 0(x2) # store 0x5dacd603 in memory
flh f7, 0(x2) # load 0x5dacd603 from memory into f7
fmv.x.h x31, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x22, x26 # perform first operation
fmv.x.h x9, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x20, x12 # perform first operation
fmv.x.h x19, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x29, x12 # perform first operation
fmv.x.h x17, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f24, f27, f6 # perform first operation
fmv.x.h x27, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x16, x9 # perform first operation
fmv.x.h x9, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x11, x21 # perform first operation
fmv.x.h x30, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x28, x1 # perform first operation
fmv.x.h x14, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x23, x11 # perform first operation
fmv.x.h x17, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x10, x20 # perform first operation
fmv.x.h x3, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x11, x22 # perform first operation
fmv.x.h x3, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x26, x1 # perform first operation
fmv.x.h x9, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x29, x17 # perform first operation
fmv.x.h x21, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x12, x30 # perform first operation
fmv.x.h x12, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x22, x21 # perform first operation
fmv.x.h x21, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x27, x20 # perform first operation
fmv.x.h x9, f31 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x7040cb32 # load x3 with value 0x7040cb32
sw x3, 0(x2) # store 0x7040cb32 in memory
flh f0, 0(x2) # load 0x7040cb32 from memory into f0
fmv.x.h x1, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xae2e437d # load x3 with value 0xae2e437d
sw x3, 0(x2) # store 0xae2e437d in memory
flh f1, 0(x2) # load 0xae2e437d from memory into f1
fmv.x.h x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xfa5d9efc # load x3 with value 0xfa5d9efc
sw x3, 0(x2) # store 0xfa5d9efc in memory
flh f2, 0(x2) # load 0xfa5d9efc from memory into f2
fmv.x.h x23, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xe998067c # load x3 with value 0xe998067c
sw x3, 0(x2) # store 0xe998067c in memory
flh f3, 0(x2) # load 0xe998067c from memory into f3
fmv.x.h x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf1b04ed7 # load x3 with value 0xf1b04ed7
sw x3, 0(x2) # store 0xf1b04ed7 in memory
flh f4, 0(x2) # load 0xf1b04ed7 from memory into f4
fmv.x.h x25, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfe37c080 # load x3 with value 0xfe37c080
sw x3, 0(x2) # store 0xfe37c080 in memory
flh f5, 0(x2) # load 0xfe37c080 from memory into f5
fmv.x.h x22, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x42b7a0e1 # load x3 with value 0x42b7a0e1
sw x3, 0(x2) # store 0x42b7a0e1 in memory
flh f6, 0(x2) # load 0x42b7a0e1 from memory into f6
fmv.x.h x12, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3b0640e3 # load x3 with value 0x3b0640e3
sw x3, 0(x2) # store 0x3b0640e3 in memory
flh f7, 0(x2) # load 0x3b0640e3 from memory into f7
fmv.x.h x13, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x89ae7a62 # load x3 with value 0x89ae7a62
sw x3, 0(x2) # store 0x89ae7a62 in memory
flh f8, 0(x2) # load 0x89ae7a62 from memory into f8
fmv.x.h x21, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x9a0d1269 # load x3 with value 0x9a0d1269
sw x3, 0(x2) # store 0x9a0d1269 in memory
flh f9, 0(x2) # load 0x9a0d1269 from memory into f9
fmv.x.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x9ebd54ee # load x3 with value 0x9ebd54ee
sw x3, 0(x2) # store 0x9ebd54ee in memory
flh f10, 0(x2) # load 0x9ebd54ee from memory into f10
fmv.x.h x29, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xb6e8f63d # load x3 with value 0xb6e8f63d
sw x3, 0(x2) # store 0xb6e8f63d in memory
flh f11, 0(x2) # load 0xb6e8f63d from memory into f11
fmv.x.h x10, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xdec627a5 # load x3 with value 0xdec627a5
sw x3, 0(x2) # store 0xdec627a5 in memory
flh f12, 0(x2) # load 0xdec627a5 from memory into f12
fmv.x.h x16, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xdeaa6561 # load x3 with value 0xdeaa6561
sw x3, 0(x2) # store 0xdeaa6561 in memory
flh f13, 0(x2) # load 0xdeaa6561 from memory into f13
fmv.x.h x22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xf8ebae1d # load x3 with value 0xf8ebae1d
sw x3, 0(x2) # store 0xf8ebae1d in memory
flh f14, 0(x2) # load 0xf8ebae1d from memory into f14
fmv.x.h x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x303c9be9 # load x3 with value 0x303c9be9
sw x3, 0(x2) # store 0x303c9be9 in memory
flh f15, 0(x2) # load 0x303c9be9 from memory into f15
fmv.x.h x24, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x8ffb8ec8 # load x3 with value 0x8ffb8ec8
sw x3, 0(x2) # store 0x8ffb8ec8 in memory
flh f16, 0(x2) # load 0x8ffb8ec8 from memory into f16
fmv.x.h x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x24483964 # load x3 with value 0x24483964
sw x3, 0(x2) # store 0x24483964 in memory
flh f17, 0(x2) # load 0x24483964 from memory into f17
fmv.x.h x6, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x81035793 # load x3 with value 0x81035793
sw x3, 0(x2) # store 0x81035793 in memory
flh f18, 0(x2) # load 0x81035793 from memory into f18
fmv.x.h x28, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x3e02f7a0 # load x3 with value 0x3e02f7a0
sw x3, 0(x2) # store 0x3e02f7a0 in memory
flh f19, 0(x2) # load 0x3e02f7a0 from memory into f19
fmv.x.h x9, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x454cac6b # load x3 with value 0x454cac6b
sw x3, 0(x2) # store 0x454cac6b in memory
flh f20, 0(x2) # load 0x454cac6b from memory into f20
fmv.x.h x8, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xb2be72c5 # load x3 with value 0xb2be72c5
sw x3, 0(x2) # store 0xb2be72c5 in memory
flh f21, 0(x2) # load 0xb2be72c5 from memory into f21
fmv.x.h x8, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x9b6d8cda # load x3 with value 0x9b6d8cda
sw x3, 0(x2) # store 0x9b6d8cda in memory
flh f22, 0(x2) # load 0x9b6d8cda from memory into f22
fmv.x.h x13, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x70f69492 # load x3 with value 0x70f69492
sw x3, 0(x2) # store 0x70f69492 in memory
flh f23, 0(x2) # load 0x70f69492 from memory into f23
fmv.x.h x19, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x55432e08 # load x3 with value 0x55432e08
sw x3, 0(x2) # store 0x55432e08 in memory
flh f24, 0(x2) # load 0x55432e08 from memory into f24
fmv.x.h x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x74eb96e4 # load x3 with value 0x74eb96e4
sw x3, 0(x2) # store 0x74eb96e4 in memory
flh f25, 0(x2) # load 0x74eb96e4 from memory into f25
fmv.x.h x28, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x008ae877 # load x3 with value 0x008ae877
sw x3, 0(x2) # store 0x008ae877 in memory
flh f26, 0(x2) # load 0x008ae877 from memory into f26
fmv.x.h x18, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xedb0ff26 # load x3 with value 0xedb0ff26
sw x3, 0(x2) # store 0xedb0ff26 in memory
flh f27, 0(x2) # load 0xedb0ff26 from memory into f27
fmv.x.h x16, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x459db56e # load x3 with value 0x459db56e
sw x3, 0(x2) # store 0x459db56e in memory
flh f28, 0(x2) # load 0x459db56e from memory into f28
fmv.x.h x8, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x837aff3d # load x3 with value 0x837aff3d
sw x3, 0(x2) # store 0x837aff3d in memory
flh f29, 0(x2) # load 0x837aff3d from memory into f29
fmv.x.h x10, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xb659093f # load x3 with value 0xb659093f
sw x3, 0(x2) # store 0xb659093f in memory
flh f30, 0(x2) # load 0xb659093f from memory into f30
fmv.x.h x3, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x1fc1c7f1 # load x3 with value 0x1fc1c7f1
sw x3, 0(x2) # store 0x1fc1c7f1 in memory
flh f31, 0(x2) # load 0x1fc1c7f1 from memory into f31
fmv.x.h x9, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fmv.x.h x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fmv.x.h x25, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fmv.x.h x11, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fmv.x.h x27, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmv.x.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fmv.x.h x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fmv.x.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fmv.x.h x29, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fmv.x.h x22, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fmv.x.h x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmv.x.h x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fmv.x.h x18, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fmv.x.h x29, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fmv.x.h x9, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmv.x.h x25, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fmv.x.h x14, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fmv.x.h x29, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fmv.x.h x19, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fmv.x.h x22, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmv.x.h x5, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fmv.x.h x23, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fmv.x.h x14, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
fmv.x.h x1, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fmv.x.h x22, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmv.x.h x2, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fmv.x.h x5, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fmv.x.h x21, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fmv.x.h x20, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 364)

# Testcase Improper NaNBoxed argument test (Value 0x0 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fmv.x.h x18, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 368)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f21, 0(x2) # load 0xfffe8000 from memory into f21
fmv.x.h x28, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 372)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f2, 0(x2) # load 0x7fff3c00 from memory into f2
fmv.x.h x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f11, 0(x2) # load 0xbeefbc00 from memory into f11
fmv.x.h x27, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 380)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f24, 0(x2) # load 0xfeff0400 from memory into f24
fmv.x.h x23, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 384)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f10, 0(x2) # load 0x0fff8400 from memory into f10
fmv.x.h x6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 388)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f15, 0(x2) # load 0xefff7bff from memory into f15
fmv.x.h x20, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 392)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f18, 0(x2) # load 0xc0defbff from memory into f18
fmv.x.h x1, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 396)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f10, 0(x2) # load 0x4f1a7c00 from memory into f10
fmv.x.h x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f1, 0(x2) # load 0x0ffffc00 from memory into f1
fmv.x.h x7, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 404)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f6, 0(x2) # load 0xffef7e00 from memory into f6
fmv.x.h x18, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 408)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f19, 0(x2) # load 0xfeef7fff from memory into f19
fmv.x.h x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 412)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f19, 0(x2) # load 0xa1b27c01 from memory into f19
fmv.x.h x31, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f20, 0(x2) # load 0x4fd77dff from memory into f20
fmv.x.h x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 420)

.EQU SIGSIZE,424


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
