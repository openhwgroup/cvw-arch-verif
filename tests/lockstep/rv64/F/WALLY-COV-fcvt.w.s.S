///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fcvt.w.s.S
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
li x3, 0x6840d9daedd8d6cb # load x3 with value 0x6840d9daedd8d6cb
sw x3, 0(x2) # store 0x6840d9daedd8d6cb in memory
flw f21, 0(x2) # load 0x6840d9daedd8d6cb from memory into f21
fcvt.w.s x0, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xfab1e172204bf5fb # load x3 with value 0xfab1e172204bf5fb
sw x3, 0(x2) # store 0xfab1e172204bf5fb in memory
flw f10, 0(x2) # load 0xfab1e172204bf5fb from memory into f10
fcvt.w.s x1, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x5f64bc5f875b6440 # load x3 with value 0x5f64bc5f875b6440
sw x3, 0(x2) # store 0x5f64bc5f875b6440 in memory
flw f3, 0(x2) # load 0x5f64bc5f875b6440 from memory into f3
fcvt.w.s x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xa24f4172dab6412a # load x3 with value 0xa24f4172dab6412a
sw x3, 0(x2) # store 0xa24f4172dab6412a in memory
flw f24, 0(x2) # load 0xa24f4172dab6412a from memory into f24
fcvt.w.s x3, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcdba7cdf342029cd # load x3 with value 0xcdba7cdf342029cd
sw x3, 0(x2) # store 0xcdba7cdf342029cd in memory
flw f19, 0(x2) # load 0xcdba7cdf342029cd from memory into f19
fcvt.w.s x4, f19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe1684c3fe0cf78d3 # load x3 with value 0xe1684c3fe0cf78d3
sw x3, 0(x2) # store 0xe1684c3fe0cf78d3 in memory
flw f7, 0(x2) # load 0xe1684c3fe0cf78d3 from memory into f7
fcvt.w.s x5, f7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb85ca232260ffec7 # load x3 with value 0xb85ca232260ffec7
sw x3, 0(x2) # store 0xb85ca232260ffec7 in memory
flw f12, 0(x2) # load 0xb85ca232260ffec7 from memory into f12
fcvt.w.s x6, f12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa18d025a2ef6e37f # load x3 with value 0xa18d025a2ef6e37f
sw x3, 0(x2) # store 0xa18d025a2ef6e37f in memory
flw f3, 0(x2) # load 0xa18d025a2ef6e37f from memory into f3
fcvt.w.s x7, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xd3d4f8bdde987f11 # load x3 with value 0xd3d4f8bdde987f11
sw x3, 0(x2) # store 0xd3d4f8bdde987f11 in memory
flw f13, 0(x2) # load 0xd3d4f8bdde987f11 from memory into f13
fcvt.w.s x8, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xab0d5bb937028dcd # load x3 with value 0xab0d5bb937028dcd
sw x3, 0(x2) # store 0xab0d5bb937028dcd in memory
flw f7, 0(x2) # load 0xab0d5bb937028dcd from memory into f7
fcvt.w.s x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xb8ea22b9545e55d6 # load x3 with value 0xb8ea22b9545e55d6
sw x3, 0(x2) # store 0xb8ea22b9545e55d6 in memory
flw f30, 0(x2) # load 0xb8ea22b9545e55d6 from memory into f30
fcvt.w.s x10, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xda9cd61fea38f8f9 # load x3 with value 0xda9cd61fea38f8f9
sw x3, 0(x2) # store 0xda9cd61fea38f8f9 in memory
flw f7, 0(x2) # load 0xda9cd61fea38f8f9 from memory into f7
fcvt.w.s x11, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xc82cd883791f9d1b # load x3 with value 0xc82cd883791f9d1b
sw x3, 0(x2) # store 0xc82cd883791f9d1b in memory
flw f2, 0(x2) # load 0xc82cd883791f9d1b from memory into f2
fcvt.w.s x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xc08e4a7e2ebdf592 # load x3 with value 0xc08e4a7e2ebdf592
sw x3, 0(x2) # store 0xc08e4a7e2ebdf592 in memory
flw f9, 0(x2) # load 0xc08e4a7e2ebdf592 from memory into f9
fcvt.w.s x13, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x15b6f56ee3931e9e # load x3 with value 0x15b6f56ee3931e9e
sw x3, 0(x2) # store 0x15b6f56ee3931e9e in memory
flw f26, 0(x2) # load 0x15b6f56ee3931e9e from memory into f26
fcvt.w.s x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x3574975dd33ed703 # load x3 with value 0x3574975dd33ed703
sw x3, 0(x2) # store 0x3574975dd33ed703 in memory
flw f12, 0(x2) # load 0x3574975dd33ed703 from memory into f12
fcvt.w.s x15, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x542067697e3970bd # load x3 with value 0x542067697e3970bd
sw x3, 0(x2) # store 0x542067697e3970bd in memory
flw f24, 0(x2) # load 0x542067697e3970bd from memory into f24
fcvt.w.s x16, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x60c42dcb2345d2e9 # load x3 with value 0x60c42dcb2345d2e9
sw x3, 0(x2) # store 0x60c42dcb2345d2e9 in memory
flw f6, 0(x2) # load 0x60c42dcb2345d2e9 from memory into f6
fcvt.w.s x17, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x21ca7cf37999fb84 # load x3 with value 0x21ca7cf37999fb84
sw x3, 0(x2) # store 0x21ca7cf37999fb84 in memory
flw f31, 0(x2) # load 0x21ca7cf37999fb84 from memory into f31
fcvt.w.s x18, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x1e5787069a112ac2 # load x3 with value 0x1e5787069a112ac2
sw x3, 0(x2) # store 0x1e5787069a112ac2 in memory
flw f30, 0(x2) # load 0x1e5787069a112ac2 from memory into f30
fcvt.w.s x19, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x809e6be5bebebf86 # load x3 with value 0x809e6be5bebebf86
sw x3, 0(x2) # store 0x809e6be5bebebf86 in memory
flw f26, 0(x2) # load 0x809e6be5bebebf86 from memory into f26
fcvt.w.s x20, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x26a6c47e42f01241 # load x3 with value 0x26a6c47e42f01241
sw x3, 0(x2) # store 0x26a6c47e42f01241 in memory
flw f11, 0(x2) # load 0x26a6c47e42f01241 from memory into f11
fcvt.w.s x21, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xbcb6d74977fa1b63 # load x3 with value 0xbcb6d74977fa1b63
sw x3, 0(x2) # store 0xbcb6d74977fa1b63 in memory
flw f7, 0(x2) # load 0xbcb6d74977fa1b63 from memory into f7
fcvt.w.s x22, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xb7b410e19bf63347 # load x3 with value 0xb7b410e19bf63347
sw x3, 0(x2) # store 0xb7b410e19bf63347 in memory
flw f16, 0(x2) # load 0xb7b410e19bf63347 from memory into f16
fcvt.w.s x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x47e141a3d0fcbcfe # load x3 with value 0x47e141a3d0fcbcfe
sw x3, 0(x2) # store 0x47e141a3d0fcbcfe in memory
flw f6, 0(x2) # load 0x47e141a3d0fcbcfe from memory into f6
fcvt.w.s x24, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0xa9a21c325e262b6e # load x3 with value 0xa9a21c325e262b6e
sw x3, 0(x2) # store 0xa9a21c325e262b6e in memory
flw f1, 0(x2) # load 0xa9a21c325e262b6e from memory into f1
fcvt.w.s x25, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x94b95ac2a09c189a # load x3 with value 0x94b95ac2a09c189a
sw x3, 0(x2) # store 0x94b95ac2a09c189a in memory
flw f23, 0(x2) # load 0x94b95ac2a09c189a from memory into f23
fcvt.w.s x26, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xd322a037145bc41a # load x3 with value 0xd322a037145bc41a
sw x3, 0(x2) # store 0xd322a037145bc41a in memory
flw f28, 0(x2) # load 0xd322a037145bc41a from memory into f28
fcvt.w.s x27, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x7427e6fd38af5152 # load x3 with value 0x7427e6fd38af5152
sw x3, 0(x2) # store 0x7427e6fd38af5152 in memory
flw f3, 0(x2) # load 0x7427e6fd38af5152 from memory into f3
fcvt.w.s x28, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x9d4aa19dee787a43 # load x3 with value 0x9d4aa19dee787a43
sw x3, 0(x2) # store 0x9d4aa19dee787a43 in memory
flw f11, 0(x2) # load 0x9d4aa19dee787a43 from memory into f11
fcvt.w.s x29, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0xaf8618b8d27022ea # load x3 with value 0xaf8618b8d27022ea
sw x3, 0(x2) # store 0xaf8618b8d27022ea in memory
flw f28, 0(x2) # load 0xaf8618b8d27022ea from memory into f28
fcvt.w.s x30, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x8425415e96d9475f # load x3 with value 0x8425415e96d9475f
sw x3, 0(x2) # store 0x8425415e96d9475f in memory
flw f6, 0(x2) # load 0x8425415e96d9475f from memory into f6
fcvt.w.s x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x21, x15 # perform first operation
fcvt.w.s x16, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x24, x22 # perform first operation
fcvt.w.s x19, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x11, x8 # perform first operation
fcvt.w.s x7, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f29, f24, f28 # perform first operation
fcvt.w.s x29, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x31, x30 # perform first operation
fcvt.w.s x25, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x22, x14 # perform first operation
fcvt.w.s x26, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x31, x18 # perform first operation
fcvt.w.s x17, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x24, x16 # perform first operation
fcvt.w.s x1, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x7, x14 # perform first operation
fcvt.w.s x2, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x29, x16 # perform first operation
fcvt.w.s x10, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x25, x28 # perform first operation
fcvt.w.s x30, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x17, x18 # perform first operation
fcvt.w.s x21, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x25, x5 # perform first operation
fcvt.w.s x25, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x6, x24 # perform first operation
fcvt.w.s x24, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x16, x21 # perform first operation
fcvt.w.s x19, f17 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x2c5c7f59c86fe715 # load x3 with value 0x2c5c7f59c86fe715
sw x3, 0(x2) # store 0x2c5c7f59c86fe715 in memory
flw f0, 0(x2) # load 0x2c5c7f59c86fe715 from memory into f0
fcvt.w.s x3, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xc491bb61094b149f # load x3 with value 0xc491bb61094b149f
sw x3, 0(x2) # store 0xc491bb61094b149f in memory
flw f1, 0(x2) # load 0xc491bb61094b149f from memory into f1
fcvt.w.s x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x642736b701c06dd1 # load x3 with value 0x642736b701c06dd1
sw x3, 0(x2) # store 0x642736b701c06dd1 in memory
flw f2, 0(x2) # load 0x642736b701c06dd1 from memory into f2
fcvt.w.s x15, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x62c450d22f7de7ed # load x3 with value 0x62c450d22f7de7ed
sw x3, 0(x2) # store 0x62c450d22f7de7ed in memory
flw f3, 0(x2) # load 0x62c450d22f7de7ed from memory into f3
fcvt.w.s x16, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4d11f464c41a6f1 # load x3 with value 0x4d11f464c41a6f1
sw x3, 0(x2) # store 0x4d11f464c41a6f1 in memory
flw f4, 0(x2) # load 0x4d11f464c41a6f1 from memory into f4
fcvt.w.s x5, f4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
la x2, scratch
li x3, 0xbb2846eb85c526eb # load x3 with value 0xbb2846eb85c526eb
sw x3, 0(x2) # store 0xbb2846eb85c526eb in memory
flw f5, 0(x2) # load 0xbb2846eb85c526eb from memory into f5
fcvt.w.s x15, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3c03c22c8d59c60a # load x3 with value 0x3c03c22c8d59c60a
sw x3, 0(x2) # store 0x3c03c22c8d59c60a in memory
flw f6, 0(x2) # load 0x3c03c22c8d59c60a from memory into f6
fcvt.w.s x25, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9645b25b2b9da7f2 # load x3 with value 0x9645b25b2b9da7f2
sw x3, 0(x2) # store 0x9645b25b2b9da7f2 in memory
flw f7, 0(x2) # load 0x9645b25b2b9da7f2 from memory into f7
fcvt.w.s x8, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x7656da3dce8341c2 # load x3 with value 0x7656da3dce8341c2
sw x3, 0(x2) # store 0x7656da3dce8341c2 in memory
flw f8, 0(x2) # load 0x7656da3dce8341c2 from memory into f8
fcvt.w.s x7, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xc6f33d77b91b28b5 # load x3 with value 0xc6f33d77b91b28b5
sw x3, 0(x2) # store 0xc6f33d77b91b28b5 in memory
flw f9, 0(x2) # load 0xc6f33d77b91b28b5 from memory into f9
fcvt.w.s x1, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xa20215562ebc1996 # load x3 with value 0xa20215562ebc1996
sw x3, 0(x2) # store 0xa20215562ebc1996 in memory
flw f10, 0(x2) # load 0xa20215562ebc1996 from memory into f10
fcvt.w.s x10, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x86acd90ed6315772 # load x3 with value 0x86acd90ed6315772
sw x3, 0(x2) # store 0x86acd90ed6315772 in memory
flw f11, 0(x2) # load 0x86acd90ed6315772 from memory into f11
fcvt.w.s x19, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xdf5d85f55bd3af91 # load x3 with value 0xdf5d85f55bd3af91
sw x3, 0(x2) # store 0xdf5d85f55bd3af91 in memory
flw f12, 0(x2) # load 0xdf5d85f55bd3af91 from memory into f12
fcvt.w.s x5, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xd38634785a93afc0 # load x3 with value 0xd38634785a93afc0
sw x3, 0(x2) # store 0xd38634785a93afc0 in memory
flw f13, 0(x2) # load 0xd38634785a93afc0 from memory into f13
fcvt.w.s x30, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xd05a761e5ce812d0 # load x3 with value 0xd05a761e5ce812d0
sw x3, 0(x2) # store 0xd05a761e5ce812d0 in memory
flw f14, 0(x2) # load 0xd05a761e5ce812d0 from memory into f14
fcvt.w.s x1, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x77c969bc348ef6b3 # load x3 with value 0x77c969bc348ef6b3
sw x3, 0(x2) # store 0x77c969bc348ef6b3 in memory
flw f15, 0(x2) # load 0x77c969bc348ef6b3 from memory into f15
fcvt.w.s x26, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x93b2d75c6266bb26 # load x3 with value 0x93b2d75c6266bb26
sw x3, 0(x2) # store 0x93b2d75c6266bb26 in memory
flw f16, 0(x2) # load 0x93b2d75c6266bb26 from memory into f16
fcvt.w.s x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x4e5d9a721bf08350 # load x3 with value 0x4e5d9a721bf08350
sw x3, 0(x2) # store 0x4e5d9a721bf08350 in memory
flw f17, 0(x2) # load 0x4e5d9a721bf08350 from memory into f17
fcvt.w.s x6, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xdaa6fb0c7ea7f3db # load x3 with value 0xdaa6fb0c7ea7f3db
sw x3, 0(x2) # store 0xdaa6fb0c7ea7f3db in memory
flw f18, 0(x2) # load 0xdaa6fb0c7ea7f3db from memory into f18
fcvt.w.s x22, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xb40a2a0bba5d23c8 # load x3 with value 0xb40a2a0bba5d23c8
sw x3, 0(x2) # store 0xb40a2a0bba5d23c8 in memory
flw f19, 0(x2) # load 0xb40a2a0bba5d23c8 from memory into f19
fcvt.w.s x9, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x3782f17fd0f7753e # load x3 with value 0x3782f17fd0f7753e
sw x3, 0(x2) # store 0x3782f17fd0f7753e in memory
flw f20, 0(x2) # load 0x3782f17fd0f7753e from memory into f20
fcvt.w.s x16, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x5dd4d69a8b141e47 # load x3 with value 0x5dd4d69a8b141e47
sw x3, 0(x2) # store 0x5dd4d69a8b141e47 in memory
flw f21, 0(x2) # load 0x5dd4d69a8b141e47 from memory into f21
fcvt.w.s x30, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x7c2e361d57f42832 # load x3 with value 0x7c2e361d57f42832
sw x3, 0(x2) # store 0x7c2e361d57f42832 in memory
flw f22, 0(x2) # load 0x7c2e361d57f42832 from memory into f22
fcvt.w.s x30, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x2f9ac79efbdd1743 # load x3 with value 0x2f9ac79efbdd1743
sw x3, 0(x2) # store 0x2f9ac79efbdd1743 in memory
flw f23, 0(x2) # load 0x2f9ac79efbdd1743 from memory into f23
fcvt.w.s x2, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x102b853f4cefebba # load x3 with value 0x102b853f4cefebba
sw x3, 0(x2) # store 0x102b853f4cefebba in memory
flw f24, 0(x2) # load 0x102b853f4cefebba from memory into f24
fcvt.w.s x3, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x6560a4af4eb355a0 # load x3 with value 0x6560a4af4eb355a0
sw x3, 0(x2) # store 0x6560a4af4eb355a0 in memory
flw f25, 0(x2) # load 0x6560a4af4eb355a0 from memory into f25
fcvt.w.s x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xef35940bf3b76a4d # load x3 with value 0xef35940bf3b76a4d
sw x3, 0(x2) # store 0xef35940bf3b76a4d in memory
flw f26, 0(x2) # load 0xef35940bf3b76a4d from memory into f26
fcvt.w.s x3, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xba9b49087b6b440b # load x3 with value 0xba9b49087b6b440b
sw x3, 0(x2) # store 0xba9b49087b6b440b in memory
flw f27, 0(x2) # load 0xba9b49087b6b440b from memory into f27
fcvt.w.s x30, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xdfe5b4321aea3191 # load x3 with value 0xdfe5b4321aea3191
sw x3, 0(x2) # store 0xdfe5b4321aea3191 in memory
flw f28, 0(x2) # load 0xdfe5b4321aea3191 from memory into f28
fcvt.w.s x8, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xd9f3a7f7fe75474c # load x3 with value 0xd9f3a7f7fe75474c
sw x3, 0(x2) # store 0xd9f3a7f7fe75474c in memory
flw f29, 0(x2) # load 0xd9f3a7f7fe75474c from memory into f29
fcvt.w.s x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xdbaceb6f82044c74 # load x3 with value 0xdbaceb6f82044c74
sw x3, 0(x2) # store 0xdbaceb6f82044c74 in memory
flw f30, 0(x2) # load 0xdbaceb6f82044c74 from memory into f30
fcvt.w.s x15, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x8e49caed659c32c # load x3 with value 0x8e49caed659c32c
sw x3, 0(x2) # store 0x8e49caed659c32c in memory
flw f31, 0(x2) # load 0x8e49caed659c32c from memory into f31
fcvt.w.s x21, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fcvt.w.s x24, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fcvt.w.s x7, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fcvt.w.s x18, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fcvt.w.s x31, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fcvt.w.s x14, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fcvt.w.s x6, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fcvt.w.s x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fcvt.w.s x11, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fcvt.w.s x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fcvt.w.s x3, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fcvt.w.s x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fcvt.w.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fcvt.w.s x9, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fcvt.w.s x16, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fcvt.w.s x13, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fcvt.w.s x28, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fcvt.w.s x30, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fcvt.w.s x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fcvt.w.s x6, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fcvt.w.s x6, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fcvt.w.s x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fcvt.w.s x17, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f18, 0(x2) # load 0xffffffff from memory into f18
fcvt.w.s x7, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fcvt.w.s x1, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fcvt.w.s x26, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f22, 0(x2) # load 0xffbfffff from memory into f22
fcvt.w.s x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fcvt.w.s x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fcvt.w.s x24, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fcvt.w.s x9, f16, dyn # perform operation
fcvt.w.s x9, f16, rdn # perform operation
fcvt.w.s x9, f16, rmm # perform operation
fcvt.w.s x9, f16, rne # perform operation
fcvt.w.s x9, f16, rtz # perform operation
fcvt.w.s x9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x9, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x9, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x9, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x9, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x9, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fcvt.w.s x22, f10, dyn # perform operation
fcvt.w.s x22, f10, rdn # perform operation
fcvt.w.s x22, f10, rmm # perform operation
fcvt.w.s x22, f10, rne # perform operation
fcvt.w.s x22, f10, rtz # perform operation
fcvt.w.s x22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fcvt.w.s x3, f14, dyn # perform operation
fcvt.w.s x3, f14, rdn # perform operation
fcvt.w.s x3, f14, rmm # perform operation
fcvt.w.s x3, f14, rne # perform operation
fcvt.w.s x3, f14, rtz # perform operation
fcvt.w.s x3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fcvt.w.s x3, f27, dyn # perform operation
fcvt.w.s x3, f27, rdn # perform operation
fcvt.w.s x3, f27, rmm # perform operation
fcvt.w.s x3, f27, rne # perform operation
fcvt.w.s x3, f27, rtz # perform operation
fcvt.w.s x3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fcvt.w.s x6, f12, dyn # perform operation
fcvt.w.s x6, f12, rdn # perform operation
fcvt.w.s x6, f12, rmm # perform operation
fcvt.w.s x6, f12, rne # perform operation
fcvt.w.s x6, f12, rtz # perform operation
fcvt.w.s x6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fcvt.w.s x8, f16, dyn # perform operation
fcvt.w.s x8, f16, rdn # perform operation
fcvt.w.s x8, f16, rmm # perform operation
fcvt.w.s x8, f16, rne # perform operation
fcvt.w.s x8, f16, rtz # perform operation
fcvt.w.s x8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x8, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x8, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x8, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x8, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x8, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fcvt.w.s x26, f9, dyn # perform operation
fcvt.w.s x26, f9, rdn # perform operation
fcvt.w.s x26, f9, rmm # perform operation
fcvt.w.s x26, f9, rne # perform operation
fcvt.w.s x26, f9, rtz # perform operation
fcvt.w.s x26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x26, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x26, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x26, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x26, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x26, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fcvt.w.s x12, f28, dyn # perform operation
fcvt.w.s x12, f28, rdn # perform operation
fcvt.w.s x12, f28, rmm # perform operation
fcvt.w.s x12, f28, rne # perform operation
fcvt.w.s x12, f28, rtz # perform operation
fcvt.w.s x12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x12, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x12, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x12, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x12, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x12, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fcvt.w.s x8, f30, dyn # perform operation
fcvt.w.s x8, f30, rdn # perform operation
fcvt.w.s x8, f30, rmm # perform operation
fcvt.w.s x8, f30, rne # perform operation
fcvt.w.s x8, f30, rtz # perform operation
fcvt.w.s x8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fcvt.w.s x23, f27, dyn # perform operation
fcvt.w.s x23, f27, rdn # perform operation
fcvt.w.s x23, f27, rmm # perform operation
fcvt.w.s x23, f27, rne # perform operation
fcvt.w.s x23, f27, rtz # perform operation
fcvt.w.s x23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fcvt.w.s x2, f10, dyn # perform operation
fcvt.w.s x2, f10, rdn # perform operation
fcvt.w.s x2, f10, rmm # perform operation
fcvt.w.s x2, f10, rne # perform operation
fcvt.w.s x2, f10, rtz # perform operation
fcvt.w.s x2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x2, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x2, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x2, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x2, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x2, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fcvt.w.s x26, f8, dyn # perform operation
fcvt.w.s x26, f8, rdn # perform operation
fcvt.w.s x26, f8, rmm # perform operation
fcvt.w.s x26, f8, rne # perform operation
fcvt.w.s x26, f8, rtz # perform operation
fcvt.w.s x26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x26, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x26, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x26, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x26, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x26, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fcvt.w.s x6, f30, dyn # perform operation
fcvt.w.s x6, f30, rdn # perform operation
fcvt.w.s x6, f30, rmm # perform operation
fcvt.w.s x6, f30, rne # perform operation
fcvt.w.s x6, f30, rtz # perform operation
fcvt.w.s x6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x6, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x6, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x6, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x6, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x6, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fcvt.w.s x26, f7, dyn # perform operation
fcvt.w.s x26, f7, rdn # perform operation
fcvt.w.s x26, f7, rmm # perform operation
fcvt.w.s x26, f7, rne # perform operation
fcvt.w.s x26, f7, rtz # perform operation
fcvt.w.s x26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x26, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x26, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x26, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x26, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x26, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fcvt.w.s x24, f13, dyn # perform operation
fcvt.w.s x24, f13, rdn # perform operation
fcvt.w.s x24, f13, rmm # perform operation
fcvt.w.s x24, f13, rne # perform operation
fcvt.w.s x24, f13, rtz # perform operation
fcvt.w.s x24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fcvt.w.s x6, f10, dyn # perform operation
fcvt.w.s x6, f10, rdn # perform operation
fcvt.w.s x6, f10, rmm # perform operation
fcvt.w.s x6, f10, rne # perform operation
fcvt.w.s x6, f10, rtz # perform operation
fcvt.w.s x6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fcvt.w.s x17, f5, dyn # perform operation
fcvt.w.s x17, f5, rdn # perform operation
fcvt.w.s x17, f5, rmm # perform operation
fcvt.w.s x17, f5, rne # perform operation
fcvt.w.s x17, f5, rtz # perform operation
fcvt.w.s x17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fcvt.w.s x12, f19, dyn # perform operation
fcvt.w.s x12, f19, rdn # perform operation
fcvt.w.s x12, f19, rmm # perform operation
fcvt.w.s x12, f19, rne # perform operation
fcvt.w.s x12, f19, rtz # perform operation
fcvt.w.s x12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x12, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x12, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x12, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x12, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x12, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fcvt.w.s x12, f9, dyn # perform operation
fcvt.w.s x12, f9, rdn # perform operation
fcvt.w.s x12, f9, rmm # perform operation
fcvt.w.s x12, f9, rne # perform operation
fcvt.w.s x12, f9, rtz # perform operation
fcvt.w.s x12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fcvt.w.s x9, f14, dyn # perform operation
fcvt.w.s x9, f14, rdn # perform operation
fcvt.w.s x9, f14, rmm # perform operation
fcvt.w.s x9, f14, rne # perform operation
fcvt.w.s x9, f14, rtz # perform operation
fcvt.w.s x9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x9, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x9, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x9, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x9, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x9, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fcvt.w.s x27, f3, dyn # perform operation
fcvt.w.s x27, f3, rdn # perform operation
fcvt.w.s x27, f3, rmm # perform operation
fcvt.w.s x27, f3, rne # perform operation
fcvt.w.s x27, f3, rtz # perform operation
fcvt.w.s x27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fcvt.w.s x16, f19, dyn # perform operation
fcvt.w.s x16, f19, rdn # perform operation
fcvt.w.s x16, f19, rmm # perform operation
fcvt.w.s x16, f19, rne # perform operation
fcvt.w.s x16, f19, rtz # perform operation
fcvt.w.s x16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x16, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x16, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x16, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x16, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x16, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
fcvt.w.s x22, f13, dyn # perform operation
fcvt.w.s x22, f13, rdn # perform operation
fcvt.w.s x22, f13, rmm # perform operation
fcvt.w.s x22, f13, rne # perform operation
fcvt.w.s x22, f13, rtz # perform operation
fcvt.w.s x22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fcvt.w.s x24, f5, dyn # perform operation
fcvt.w.s x24, f5, rdn # perform operation
fcvt.w.s x24, f5, rmm # perform operation
fcvt.w.s x24, f5, rne # perform operation
fcvt.w.s x24, f5, rtz # perform operation
fcvt.w.s x24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
fcvt.w.s x28, f29, dyn # perform operation
fcvt.w.s x28, f29, rdn # perform operation
fcvt.w.s x28, f29, rmm # perform operation
fcvt.w.s x28, f29, rne # perform operation
fcvt.w.s x28, f29, rtz # perform operation
fcvt.w.s x28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f31, 0(x2) # load 0xffbfffff from memory into f31
fcvt.w.s x18, f31, dyn # perform operation
fcvt.w.s x18, f31, rdn # perform operation
fcvt.w.s x18, f31, rmm # perform operation
fcvt.w.s x18, f31, rne # perform operation
fcvt.w.s x18, f31, rtz # perform operation
fcvt.w.s x18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x18, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x18, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x18, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x18, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x18, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fcvt.w.s x25, f5, dyn # perform operation
fcvt.w.s x25, f5, rdn # perform operation
fcvt.w.s x25, f5, rmm # perform operation
fcvt.w.s x25, f5, rne # perform operation
fcvt.w.s x25, f5, rtz # perform operation
fcvt.w.s x25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fcvt.w.s x22, f12, dyn # perform operation
fcvt.w.s x22, f12, rdn # perform operation
fcvt.w.s x22, f12, rmm # perform operation
fcvt.w.s x22, f12, rne # perform operation
fcvt.w.s x22, f12, rtz # perform operation
fcvt.w.s x22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x22, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x22, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x22, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x22, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x22, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0x19ff0a5f2c548afd # load x3 with value 0x19ff0a5f2c548afd
sw x3, 0(x2) # store 0x19ff0a5f2c548afd in memory
flw f11, 0(x2) # load 0x19ff0a5f2c548afd from memory into f11
fcvt.w.s x15, f11, dyn # perform operation
fcvt.w.s x15, f11, rdn # perform operation
fcvt.w.s x15, f11, rmm # perform operation
fcvt.w.s x15, f11, rne # perform operation
fcvt.w.s x15, f11, rtz # perform operation
fcvt.w.s x15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)


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
