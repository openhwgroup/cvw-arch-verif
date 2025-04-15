///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fcvt.lu.s.S
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
li x3, 0xad4cdb6f0e815154 # load x3 with value 0xad4cdb6f0e815154
sw x3, 0(x2) # store 0xad4cdb6f0e815154 in memory
flw f13, 0(x2) # load 0xad4cdb6f0e815154 from memory into f13
fcvt.lu.s x0, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x81600d4537f40935 # load x3 with value 0x81600d4537f40935
sw x3, 0(x2) # store 0x81600d4537f40935 in memory
flw f25, 0(x2) # load 0x81600d4537f40935 from memory into f25
fcvt.lu.s x1, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x6be84f66b5e97cc7 # load x3 with value 0x6be84f66b5e97cc7
sw x3, 0(x2) # store 0x6be84f66b5e97cc7 in memory
flw f31, 0(x2) # load 0x6be84f66b5e97cc7 from memory into f31
fcvt.lu.s x2, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x7ff5aa19ffba19e2 # load x3 with value 0x7ff5aa19ffba19e2
sw x3, 0(x2) # store 0x7ff5aa19ffba19e2 in memory
flw f3, 0(x2) # load 0x7ff5aa19ffba19e2 from memory into f3
fcvt.lu.s x3, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1e6e265d4cac17e4 # load x3 with value 0x1e6e265d4cac17e4
sw x3, 0(x2) # store 0x1e6e265d4cac17e4 in memory
flw f15, 0(x2) # load 0x1e6e265d4cac17e4 from memory into f15
fcvt.lu.s x4, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf4b5ae41fddcda2e # load x3 with value 0xf4b5ae41fddcda2e
sw x3, 0(x2) # store 0xf4b5ae41fddcda2e in memory
flw f8, 0(x2) # load 0xf4b5ae41fddcda2e from memory into f8
fcvt.lu.s x5, f8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf9990d5c27a45058 # load x3 with value 0xf9990d5c27a45058
sw x3, 0(x2) # store 0xf9990d5c27a45058 in memory
flw f11, 0(x2) # load 0xf9990d5c27a45058 from memory into f11
fcvt.lu.s x6, f11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x89a9294c29b99f33 # load x3 with value 0x89a9294c29b99f33
sw x3, 0(x2) # store 0x89a9294c29b99f33 in memory
flw f10, 0(x2) # load 0x89a9294c29b99f33 from memory into f10
fcvt.lu.s x7, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x617c8a34464ca741 # load x3 with value 0x617c8a34464ca741
sw x3, 0(x2) # store 0x617c8a34464ca741 in memory
flw f17, 0(x2) # load 0x617c8a34464ca741 from memory into f17
fcvt.lu.s x8, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xf82fbc04a1d56523 # load x3 with value 0xf82fbc04a1d56523
sw x3, 0(x2) # store 0xf82fbc04a1d56523 in memory
flw f30, 0(x2) # load 0xf82fbc04a1d56523 from memory into f30
fcvt.lu.s x9, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x4dc319224eacfed # load x3 with value 0x4dc319224eacfed
sw x3, 0(x2) # store 0x4dc319224eacfed in memory
flw f20, 0(x2) # load 0x4dc319224eacfed from memory into f20
fcvt.lu.s x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xfef64f225076bab3 # load x3 with value 0xfef64f225076bab3
sw x3, 0(x2) # store 0xfef64f225076bab3 in memory
flw f3, 0(x2) # load 0xfef64f225076bab3 from memory into f3
fcvt.lu.s x11, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x69304103e82833e4 # load x3 with value 0x69304103e82833e4
sw x3, 0(x2) # store 0x69304103e82833e4 in memory
flw f29, 0(x2) # load 0x69304103e82833e4 from memory into f29
fcvt.lu.s x12, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xd45f64a41a2b68aa # load x3 with value 0xd45f64a41a2b68aa
sw x3, 0(x2) # store 0xd45f64a41a2b68aa in memory
flw f24, 0(x2) # load 0xd45f64a41a2b68aa from memory into f24
fcvt.lu.s x13, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0xc0ed83b552fca0d5 # load x3 with value 0xc0ed83b552fca0d5
sw x3, 0(x2) # store 0xc0ed83b552fca0d5 in memory
flw f15, 0(x2) # load 0xc0ed83b552fca0d5 from memory into f15
fcvt.lu.s x14, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0xbe297e65a94c9110 # load x3 with value 0xbe297e65a94c9110
sw x3, 0(x2) # store 0xbe297e65a94c9110 in memory
flw f13, 0(x2) # load 0xbe297e65a94c9110 from memory into f13
fcvt.lu.s x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x9ada9467fe8dbbde # load x3 with value 0x9ada9467fe8dbbde
sw x3, 0(x2) # store 0x9ada9467fe8dbbde in memory
flw f7, 0(x2) # load 0x9ada9467fe8dbbde from memory into f7
fcvt.lu.s x16, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x4d36c7a729476c39 # load x3 with value 0x4d36c7a729476c39
sw x3, 0(x2) # store 0x4d36c7a729476c39 in memory
flw f10, 0(x2) # load 0x4d36c7a729476c39 from memory into f10
fcvt.lu.s x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x2594e925295796cf # load x3 with value 0x2594e925295796cf
sw x3, 0(x2) # store 0x2594e925295796cf in memory
flw f25, 0(x2) # load 0x2594e925295796cf from memory into f25
fcvt.lu.s x18, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0xc36a2329381078d6 # load x3 with value 0xc36a2329381078d6
sw x3, 0(x2) # store 0xc36a2329381078d6 in memory
flw f6, 0(x2) # load 0xc36a2329381078d6 from memory into f6
fcvt.lu.s x19, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0xbb4ecb7c958de219 # load x3 with value 0xbb4ecb7c958de219
sw x3, 0(x2) # store 0xbb4ecb7c958de219 in memory
flw f3, 0(x2) # load 0xbb4ecb7c958de219 from memory into f3
fcvt.lu.s x20, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xe05b358fbaf22c4a # load x3 with value 0xe05b358fbaf22c4a
sw x3, 0(x2) # store 0xe05b358fbaf22c4a in memory
flw f12, 0(x2) # load 0xe05b358fbaf22c4a from memory into f12
fcvt.lu.s x21, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xc284ba359e645890 # load x3 with value 0xc284ba359e645890
sw x3, 0(x2) # store 0xc284ba359e645890 in memory
flw f17, 0(x2) # load 0xc284ba359e645890 from memory into f17
fcvt.lu.s x22, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x439e5a2ab0fdeadf # load x3 with value 0x439e5a2ab0fdeadf
sw x3, 0(x2) # store 0x439e5a2ab0fdeadf in memory
flw f25, 0(x2) # load 0x439e5a2ab0fdeadf from memory into f25
fcvt.lu.s x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x493eabdcb94a5076 # load x3 with value 0x493eabdcb94a5076
sw x3, 0(x2) # store 0x493eabdcb94a5076 in memory
flw f27, 0(x2) # load 0x493eabdcb94a5076 from memory into f27
fcvt.lu.s x24, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x94f23e4d64534a63 # load x3 with value 0x94f23e4d64534a63
sw x3, 0(x2) # store 0x94f23e4d64534a63 in memory
flw f21, 0(x2) # load 0x94f23e4d64534a63 from memory into f21
fcvt.lu.s x25, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xd115fdc79cb00259 # load x3 with value 0xd115fdc79cb00259
sw x3, 0(x2) # store 0xd115fdc79cb00259 in memory
flw f5, 0(x2) # load 0xd115fdc79cb00259 from memory into f5
fcvt.lu.s x26, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xd7ad7d9edf9f07e # load x3 with value 0xd7ad7d9edf9f07e
sw x3, 0(x2) # store 0xd7ad7d9edf9f07e in memory
flw f31, 0(x2) # load 0xd7ad7d9edf9f07e from memory into f31
fcvt.lu.s x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x73780c40e5adc452 # load x3 with value 0x73780c40e5adc452
sw x3, 0(x2) # store 0x73780c40e5adc452 in memory
flw f6, 0(x2) # load 0x73780c40e5adc452 from memory into f6
fcvt.lu.s x28, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x4dbb8f52e06cb4d # load x3 with value 0x4dbb8f52e06cb4d
sw x3, 0(x2) # store 0x4dbb8f52e06cb4d in memory
flw f19, 0(x2) # load 0x4dbb8f52e06cb4d from memory into f19
fcvt.lu.s x29, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x5de24541eaa4eefc # load x3 with value 0x5de24541eaa4eefc
sw x3, 0(x2) # store 0x5de24541eaa4eefc in memory
flw f11, 0(x2) # load 0x5de24541eaa4eefc from memory into f11
fcvt.lu.s x30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x502984b8fd98d8f8 # load x3 with value 0x502984b8fd98d8f8
sw x3, 0(x2) # store 0x502984b8fd98d8f8 in memory
flw f30, 0(x2) # load 0x502984b8fd98d8f8 from memory into f30
fcvt.lu.s x31, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x20, x8 # perform first operation
fcvt.lu.s x23, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x16, x11 # perform first operation
fcvt.lu.s x14, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x3, x20 # perform first operation
fcvt.lu.s x27, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f9, f26, f10 # perform first operation
fcvt.lu.s x26, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x30, x5 # perform first operation
fcvt.lu.s x22, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x14, x7 # perform first operation
fcvt.lu.s x8, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x8, x13 # perform first operation
fcvt.lu.s x17, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x3, x14 # perform first operation
fcvt.lu.s x17, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x6, x7 # perform first operation
fcvt.lu.s x3, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x10, x3 # perform first operation
fcvt.lu.s x12, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x2, x15 # perform first operation
fcvt.lu.s x27, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x27, x23 # perform first operation
fcvt.lu.s x7, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x26, x9 # perform first operation
fcvt.lu.s x26, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x30, x12 # perform first operation
fcvt.lu.s x12, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x11, x6 # perform first operation
fcvt.lu.s x2, f13 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xe7796d07f1dec7fe # load x3 with value 0xe7796d07f1dec7fe
sw x3, 0(x2) # store 0xe7796d07f1dec7fe in memory
flw f0, 0(x2) # load 0xe7796d07f1dec7fe from memory into f0
fcvt.lu.s x7, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x8e03fc9a814d50d6 # load x3 with value 0x8e03fc9a814d50d6
sw x3, 0(x2) # store 0x8e03fc9a814d50d6 in memory
flw f1, 0(x2) # load 0x8e03fc9a814d50d6 from memory into f1
fcvt.lu.s x15, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x3dd5c2668333da25 # load x3 with value 0x3dd5c2668333da25
sw x3, 0(x2) # store 0x3dd5c2668333da25 in memory
flw f2, 0(x2) # load 0x3dd5c2668333da25 from memory into f2
fcvt.lu.s x26, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x3ab72b59ac113840 # load x3 with value 0x3ab72b59ac113840
sw x3, 0(x2) # store 0x3ab72b59ac113840 in memory
flw f3, 0(x2) # load 0x3ab72b59ac113840 from memory into f3
fcvt.lu.s x13, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe5662661bd169780 # load x3 with value 0xe5662661bd169780
sw x3, 0(x2) # store 0xe5662661bd169780 in memory
flw f4, 0(x2) # load 0xe5662661bd169780 from memory into f4
fcvt.lu.s x13, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf5223b6492cdfd5b # load x3 with value 0xf5223b6492cdfd5b
sw x3, 0(x2) # store 0xf5223b6492cdfd5b in memory
flw f5, 0(x2) # load 0xf5223b6492cdfd5b from memory into f5
fcvt.lu.s x18, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x16dfc24cd7903110 # load x3 with value 0x16dfc24cd7903110
sw x3, 0(x2) # store 0x16dfc24cd7903110 in memory
flw f6, 0(x2) # load 0x16dfc24cd7903110 from memory into f6
fcvt.lu.s x24, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb06bf4927580b004 # load x3 with value 0xb06bf4927580b004
sw x3, 0(x2) # store 0xb06bf4927580b004 in memory
flw f7, 0(x2) # load 0xb06bf4927580b004 from memory into f7
fcvt.lu.s x5, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xa28c2f82411c3ae # load x3 with value 0xa28c2f82411c3ae
sw x3, 0(x2) # store 0xa28c2f82411c3ae in memory
flw f8, 0(x2) # load 0xa28c2f82411c3ae from memory into f8
fcvt.lu.s x22, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xe34c04bb7d9051df # load x3 with value 0xe34c04bb7d9051df
sw x3, 0(x2) # store 0xe34c04bb7d9051df in memory
flw f9, 0(x2) # load 0xe34c04bb7d9051df from memory into f9
fcvt.lu.s x20, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x9d528b0a6f59664e # load x3 with value 0x9d528b0a6f59664e
sw x3, 0(x2) # store 0x9d528b0a6f59664e in memory
flw f10, 0(x2) # load 0x9d528b0a6f59664e from memory into f10
fcvt.lu.s x23, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xc2841f335c527ad7 # load x3 with value 0xc2841f335c527ad7
sw x3, 0(x2) # store 0xc2841f335c527ad7 in memory
flw f11, 0(x2) # load 0xc2841f335c527ad7 from memory into f11
fcvt.lu.s x17, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x6d2f33db660735b1 # load x3 with value 0x6d2f33db660735b1
sw x3, 0(x2) # store 0x6d2f33db660735b1 in memory
flw f12, 0(x2) # load 0x6d2f33db660735b1 from memory into f12
fcvt.lu.s x29, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x5cff3df49b0faf2d # load x3 with value 0x5cff3df49b0faf2d
sw x3, 0(x2) # store 0x5cff3df49b0faf2d in memory
flw f13, 0(x2) # load 0x5cff3df49b0faf2d from memory into f13
fcvt.lu.s x23, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x1132fe1cec15425 # load x3 with value 0x1132fe1cec15425
sw x3, 0(x2) # store 0x1132fe1cec15425 in memory
flw f14, 0(x2) # load 0x1132fe1cec15425 from memory into f14
fcvt.lu.s x22, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xbe81a2b66b617bfa # load x3 with value 0xbe81a2b66b617bfa
sw x3, 0(x2) # store 0xbe81a2b66b617bfa in memory
flw f15, 0(x2) # load 0xbe81a2b66b617bfa from memory into f15
fcvt.lu.s x30, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x96a7dfcac666b7be # load x3 with value 0x96a7dfcac666b7be
sw x3, 0(x2) # store 0x96a7dfcac666b7be in memory
flw f16, 0(x2) # load 0x96a7dfcac666b7be from memory into f16
fcvt.lu.s x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x1b2842a84cb50474 # load x3 with value 0x1b2842a84cb50474
sw x3, 0(x2) # store 0x1b2842a84cb50474 in memory
flw f17, 0(x2) # load 0x1b2842a84cb50474 from memory into f17
fcvt.lu.s x14, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xb64b2171713009e2 # load x3 with value 0xb64b2171713009e2
sw x3, 0(x2) # store 0xb64b2171713009e2 in memory
flw f18, 0(x2) # load 0xb64b2171713009e2 from memory into f18
fcvt.lu.s x8, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x6b969d81f1743b20 # load x3 with value 0x6b969d81f1743b20
sw x3, 0(x2) # store 0x6b969d81f1743b20 in memory
flw f19, 0(x2) # load 0x6b969d81f1743b20 from memory into f19
fcvt.lu.s x17, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x202a24da6aa62f06 # load x3 with value 0x202a24da6aa62f06
sw x3, 0(x2) # store 0x202a24da6aa62f06 in memory
flw f20, 0(x2) # load 0x202a24da6aa62f06 from memory into f20
fcvt.lu.s x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xcf6328ab6e075764 # load x3 with value 0xcf6328ab6e075764
sw x3, 0(x2) # store 0xcf6328ab6e075764 in memory
flw f21, 0(x2) # load 0xcf6328ab6e075764 from memory into f21
fcvt.lu.s x22, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xc4b4e71c580ccd56 # load x3 with value 0xc4b4e71c580ccd56
sw x3, 0(x2) # store 0xc4b4e71c580ccd56 in memory
flw f22, 0(x2) # load 0xc4b4e71c580ccd56 from memory into f22
fcvt.lu.s x13, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x41f2d27198467900 # load x3 with value 0x41f2d27198467900
sw x3, 0(x2) # store 0x41f2d27198467900 in memory
flw f23, 0(x2) # load 0x41f2d27198467900 from memory into f23
fcvt.lu.s x3, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x76fd5b707aa209e4 # load x3 with value 0x76fd5b707aa209e4
sw x3, 0(x2) # store 0x76fd5b707aa209e4 in memory
flw f24, 0(x2) # load 0x76fd5b707aa209e4 from memory into f24
fcvt.lu.s x9, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x8215571908f18d42 # load x3 with value 0x8215571908f18d42
sw x3, 0(x2) # store 0x8215571908f18d42 in memory
flw f25, 0(x2) # load 0x8215571908f18d42 from memory into f25
fcvt.lu.s x9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xb5849e88858f2eb7 # load x3 with value 0xb5849e88858f2eb7
sw x3, 0(x2) # store 0xb5849e88858f2eb7 in memory
flw f26, 0(x2) # load 0xb5849e88858f2eb7 from memory into f26
fcvt.lu.s x5, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xdc0cacc7275ddf4 # load x3 with value 0xdc0cacc7275ddf4
sw x3, 0(x2) # store 0xdc0cacc7275ddf4 in memory
flw f27, 0(x2) # load 0xdc0cacc7275ddf4 from memory into f27
fcvt.lu.s x15, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x4cfd7a19e6d7a4f5 # load x3 with value 0x4cfd7a19e6d7a4f5
sw x3, 0(x2) # store 0x4cfd7a19e6d7a4f5 in memory
flw f28, 0(x2) # load 0x4cfd7a19e6d7a4f5 from memory into f28
fcvt.lu.s x6, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xe25992fb56a625e5 # load x3 with value 0xe25992fb56a625e5
sw x3, 0(x2) # store 0xe25992fb56a625e5 in memory
flw f29, 0(x2) # load 0xe25992fb56a625e5 from memory into f29
fcvt.lu.s x31, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x3455a8fbd4abbd4c # load x3 with value 0x3455a8fbd4abbd4c
sw x3, 0(x2) # store 0x3455a8fbd4abbd4c in memory
flw f30, 0(x2) # load 0x3455a8fbd4abbd4c from memory into f30
fcvt.lu.s x28, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x8fea5d7bacd749f6 # load x3 with value 0x8fea5d7bacd749f6
sw x3, 0(x2) # store 0x8fea5d7bacd749f6 in memory
flw f31, 0(x2) # load 0x8fea5d7bacd749f6 from memory into f31
fcvt.lu.s x20, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fcvt.lu.s x13, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fcvt.lu.s x19, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fcvt.lu.s x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fcvt.lu.s x2, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fcvt.lu.s x22, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fcvt.lu.s x2, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fcvt.lu.s x30, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fcvt.lu.s x16, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fcvt.lu.s x5, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fcvt.lu.s x31, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fcvt.lu.s x23, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fcvt.lu.s x13, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fcvt.lu.s x8, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fcvt.lu.s x6, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fcvt.lu.s x1, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fcvt.lu.s x12, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fcvt.lu.s x7, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fcvt.lu.s x30, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fcvt.lu.s x21, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fcvt.lu.s x2, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fcvt.lu.s x12, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fcvt.lu.s x14, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
fcvt.lu.s x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fcvt.lu.s x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fcvt.lu.s x14, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fcvt.lu.s x20, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fcvt.lu.s x19, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fcvt.lu.s x12, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fcvt.lu.s x9, f29, dyn # perform operation
fcvt.lu.s x9, f29, rdn # perform operation
fcvt.lu.s x9, f29, rmm # perform operation
fcvt.lu.s x9, f29, rne # perform operation
fcvt.lu.s x9, f29, rtz # perform operation
fcvt.lu.s x9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x9, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x9, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x9, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x9, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x9, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fcvt.lu.s x12, f29, dyn # perform operation
fcvt.lu.s x12, f29, rdn # perform operation
fcvt.lu.s x12, f29, rmm # perform operation
fcvt.lu.s x12, f29, rne # perform operation
fcvt.lu.s x12, f29, rtz # perform operation
fcvt.lu.s x12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x12, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x12, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x12, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x12, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x12, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fcvt.lu.s x8, f17, dyn # perform operation
fcvt.lu.s x8, f17, rdn # perform operation
fcvt.lu.s x8, f17, rmm # perform operation
fcvt.lu.s x8, f17, rne # perform operation
fcvt.lu.s x8, f17, rtz # perform operation
fcvt.lu.s x8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x8, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x8, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x8, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x8, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x8, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fcvt.lu.s x12, f9, dyn # perform operation
fcvt.lu.s x12, f9, rdn # perform operation
fcvt.lu.s x12, f9, rmm # perform operation
fcvt.lu.s x12, f9, rne # perform operation
fcvt.lu.s x12, f9, rtz # perform operation
fcvt.lu.s x12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fcvt.lu.s x20, f12, dyn # perform operation
fcvt.lu.s x20, f12, rdn # perform operation
fcvt.lu.s x20, f12, rmm # perform operation
fcvt.lu.s x20, f12, rne # perform operation
fcvt.lu.s x20, f12, rtz # perform operation
fcvt.lu.s x20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x20, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x20, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x20, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x20, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x20, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fcvt.lu.s x8, f3, dyn # perform operation
fcvt.lu.s x8, f3, rdn # perform operation
fcvt.lu.s x8, f3, rmm # perform operation
fcvt.lu.s x8, f3, rne # perform operation
fcvt.lu.s x8, f3, rtz # perform operation
fcvt.lu.s x8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fcvt.lu.s x14, f16, dyn # perform operation
fcvt.lu.s x14, f16, rdn # perform operation
fcvt.lu.s x14, f16, rmm # perform operation
fcvt.lu.s x14, f16, rne # perform operation
fcvt.lu.s x14, f16, rtz # perform operation
fcvt.lu.s x14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x14, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x14, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x14, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x14, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x14, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fcvt.lu.s x7, f29, dyn # perform operation
fcvt.lu.s x7, f29, rdn # perform operation
fcvt.lu.s x7, f29, rmm # perform operation
fcvt.lu.s x7, f29, rne # perform operation
fcvt.lu.s x7, f29, rtz # perform operation
fcvt.lu.s x7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fcvt.lu.s x12, f2, dyn # perform operation
fcvt.lu.s x12, f2, rdn # perform operation
fcvt.lu.s x12, f2, rmm # perform operation
fcvt.lu.s x12, f2, rne # perform operation
fcvt.lu.s x12, f2, rtz # perform operation
fcvt.lu.s x12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fcvt.lu.s x17, f28, dyn # perform operation
fcvt.lu.s x17, f28, rdn # perform operation
fcvt.lu.s x17, f28, rmm # perform operation
fcvt.lu.s x17, f28, rne # perform operation
fcvt.lu.s x17, f28, rtz # perform operation
fcvt.lu.s x17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fcvt.lu.s x21, f8, dyn # perform operation
fcvt.lu.s x21, f8, rdn # perform operation
fcvt.lu.s x21, f8, rmm # perform operation
fcvt.lu.s x21, f8, rne # perform operation
fcvt.lu.s x21, f8, rtz # perform operation
fcvt.lu.s x21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x21, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x21, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x21, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x21, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x21, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fcvt.lu.s x16, f24, dyn # perform operation
fcvt.lu.s x16, f24, rdn # perform operation
fcvt.lu.s x16, f24, rmm # perform operation
fcvt.lu.s x16, f24, rne # perform operation
fcvt.lu.s x16, f24, rtz # perform operation
fcvt.lu.s x16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x16, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x16, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x16, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x16, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x16, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fcvt.lu.s x6, f13, dyn # perform operation
fcvt.lu.s x6, f13, rdn # perform operation
fcvt.lu.s x6, f13, rmm # perform operation
fcvt.lu.s x6, f13, rne # perform operation
fcvt.lu.s x6, f13, rtz # perform operation
fcvt.lu.s x6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x6, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x6, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x6, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x6, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x6, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fcvt.lu.s x27, f7, dyn # perform operation
fcvt.lu.s x27, f7, rdn # perform operation
fcvt.lu.s x27, f7, rmm # perform operation
fcvt.lu.s x27, f7, rne # perform operation
fcvt.lu.s x27, f7, rtz # perform operation
fcvt.lu.s x27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fcvt.lu.s x31, f21, dyn # perform operation
fcvt.lu.s x31, f21, rdn # perform operation
fcvt.lu.s x31, f21, rmm # perform operation
fcvt.lu.s x31, f21, rne # perform operation
fcvt.lu.s x31, f21, rtz # perform operation
fcvt.lu.s x31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x31, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x31, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x31, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x31, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x31, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fcvt.lu.s x10, f22, dyn # perform operation
fcvt.lu.s x10, f22, rdn # perform operation
fcvt.lu.s x10, f22, rmm # perform operation
fcvt.lu.s x10, f22, rne # perform operation
fcvt.lu.s x10, f22, rtz # perform operation
fcvt.lu.s x10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x10, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x10, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x10, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x10, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x10, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fcvt.lu.s x6, f31, dyn # perform operation
fcvt.lu.s x6, f31, rdn # perform operation
fcvt.lu.s x6, f31, rmm # perform operation
fcvt.lu.s x6, f31, rne # perform operation
fcvt.lu.s x6, f31, rtz # perform operation
fcvt.lu.s x6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x6, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x6, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x6, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x6, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x6, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fcvt.lu.s x12, f7, dyn # perform operation
fcvt.lu.s x12, f7, rdn # perform operation
fcvt.lu.s x12, f7, rmm # perform operation
fcvt.lu.s x12, f7, rne # perform operation
fcvt.lu.s x12, f7, rtz # perform operation
fcvt.lu.s x12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fcvt.lu.s x14, f2, dyn # perform operation
fcvt.lu.s x14, f2, rdn # perform operation
fcvt.lu.s x14, f2, rmm # perform operation
fcvt.lu.s x14, f2, rne # perform operation
fcvt.lu.s x14, f2, rtz # perform operation
fcvt.lu.s x14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x14, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x14, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x14, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x14, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x14, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fcvt.lu.s x7, f28, dyn # perform operation
fcvt.lu.s x7, f28, rdn # perform operation
fcvt.lu.s x7, f28, rmm # perform operation
fcvt.lu.s x7, f28, rne # perform operation
fcvt.lu.s x7, f28, rtz # perform operation
fcvt.lu.s x7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x7, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x7, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x7, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x7, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x7, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fcvt.lu.s x7, f21, dyn # perform operation
fcvt.lu.s x7, f21, rdn # perform operation
fcvt.lu.s x7, f21, rmm # perform operation
fcvt.lu.s x7, f21, rne # perform operation
fcvt.lu.s x7, f21, rtz # perform operation
fcvt.lu.s x7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fcvt.lu.s x11, f17, dyn # perform operation
fcvt.lu.s x11, f17, rdn # perform operation
fcvt.lu.s x11, f17, rmm # perform operation
fcvt.lu.s x11, f17, rne # perform operation
fcvt.lu.s x11, f17, rtz # perform operation
fcvt.lu.s x11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x11, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x11, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x11, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x11, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x11, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
fcvt.lu.s x30, f9, dyn # perform operation
fcvt.lu.s x30, f9, rdn # perform operation
fcvt.lu.s x30, f9, rmm # perform operation
fcvt.lu.s x30, f9, rne # perform operation
fcvt.lu.s x30, f9, rtz # perform operation
fcvt.lu.s x30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fcvt.lu.s x24, f26, dyn # perform operation
fcvt.lu.s x24, f26, rdn # perform operation
fcvt.lu.s x24, f26, rmm # perform operation
fcvt.lu.s x24, f26, rne # perform operation
fcvt.lu.s x24, f26, rtz # perform operation
fcvt.lu.s x24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x24, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x24, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x24, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x24, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x24, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fcvt.lu.s x10, f31, dyn # perform operation
fcvt.lu.s x10, f31, rdn # perform operation
fcvt.lu.s x10, f31, rmm # perform operation
fcvt.lu.s x10, f31, rne # perform operation
fcvt.lu.s x10, f31, rtz # perform operation
fcvt.lu.s x10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x10, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x10, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x10, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x10, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x10, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
fcvt.lu.s x9, f21, dyn # perform operation
fcvt.lu.s x9, f21, rdn # perform operation
fcvt.lu.s x9, f21, rmm # perform operation
fcvt.lu.s x9, f21, rne # perform operation
fcvt.lu.s x9, f21, rtz # perform operation
fcvt.lu.s x9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x9, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x9, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x9, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x9, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x9, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fcvt.lu.s x10, f18, dyn # perform operation
fcvt.lu.s x10, f18, rdn # perform operation
fcvt.lu.s x10, f18, rmm # perform operation
fcvt.lu.s x10, f18, rne # perform operation
fcvt.lu.s x10, f18, rtz # perform operation
fcvt.lu.s x10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x10, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x10, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x10, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x10, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x10, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fcvt.lu.s x15, f31, dyn # perform operation
fcvt.lu.s x15, f31, rdn # perform operation
fcvt.lu.s x15, f31, rmm # perform operation
fcvt.lu.s x15, f31, rne # perform operation
fcvt.lu.s x15, f31, rtz # perform operation
fcvt.lu.s x15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x15, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x15, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x15, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x15, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x15, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0xb1e23f7ce2c2f632 # load x3 with value 0xb1e23f7ce2c2f632
sw x3, 0(x2) # store 0xb1e23f7ce2c2f632 in memory
flw f20, 0(x2) # load 0xb1e23f7ce2c2f632 from memory into f20
fcvt.lu.s x26, f20, dyn # perform operation
fcvt.lu.s x26, f20, rdn # perform operation
fcvt.lu.s x26, f20, rmm # perform operation
fcvt.lu.s x26, f20, rne # perform operation
fcvt.lu.s x26, f20, rtz # perform operation
fcvt.lu.s x26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)


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
